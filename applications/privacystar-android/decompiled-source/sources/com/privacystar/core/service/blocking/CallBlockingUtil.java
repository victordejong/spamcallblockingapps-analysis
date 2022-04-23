package com.privacystar.core.service.blocking;

import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.os.Build;
import android.os.IBinder;
import android.support.annotation.RequiresApi;
import android.support.p001v4.app.NotificationCompat;
import android.telecom.TelecomManager;
import android.telephony.TelephonyManager;
import android.view.KeyEvent;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.blocking.BlockOccurrence;
import com.privacystar.core.data.model.DeviceExclusion;
import com.privacystar.core.data.model.helper.CallStatsRealm;
import com.privacystar.core.data.model.helper.DeviceExclusionRealm;
import com.privacystar.core.data.model.helper.EventControlRealm;
import com.privacystar.core.data.offender.OffenderLookupUtil;
import com.privacystar.core.data.offender.PhoneRecord;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.blocking.Blocker;
import com.privacystar.core.service.blocking.api21.BlockingOverlayService;
import com.privacystar.core.service.workers.CampaignWorkerManager;
import com.privacystar.core.util.BlockingManager;
import com.privacystar.core.util.InformationUtil;
import com.privacystar.core.util.NumbersUtil;
import com.privacystar.core.util.ParsedPhoneNumber;
import com.privacystar.core.util.PermissionUtils;
import com.privacystar.core.util.Text;
import io.realm.Realm;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/blocking/CallBlockingUtil.class */
public class CallBlockingUtil {
    private static final int CACHE_SIZE = 5;
    private static String[] cacheKeys = new String[5];
    private static Map<String, String>[] cacheValues = new HashMap[5];
    private static boolean goToVoicemail = false;
    private static boolean hasSeenIncomingNumbers = false;
    private static boolean hitOffHook = false;
    private static boolean isAbleToBlock = false;
    private static boolean isEsteem = false;
    private static boolean isExceptionalDevice = false;
    private static boolean isModifyPermissionGranted = false;
    private static boolean isSilenceCompatible = false;
    private static Hashtable<Integer, String> lolgen;
    private static boolean lolgenCached = false;
    private static int place;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/blocking/CallBlockingUtil$MediaButtonConsts.class */
    private static class MediaButtonConsts {
        public static final String actionMediaButton = "android.intent.action.MEDIA_BUTTON";
        public static final String extraKeyEvent = "android.intent.extra.KEY_EVENT";
        public static final int headSetPlugOff = 0;
        public static final int headSetPlugOn = 1;
        public static final String headsetPlug = "android.intent.action.HEADSET_PLUG";
        public static final String headsetPlugName = "name";
        public static final String headsetPlugState = "state";
        public static final int keyEventActionDown = 0;
        public static final int keyEventActionUp = 1;
        public static final int keycodeHeadset = 79;
        public static final String permissionName = "android.permission.CALL_PRIVILEGED";

        private MediaButtonConsts() throws InstantiationException {
            throw new InstantiationException("This util class can't be instantiated.");
        }
    }

    public static void answerCallLollipop(Context context) {
        try {
            Blocker.SystemBlocker.hangUp(null);
            if (BlockingOverlayService.isShowing()) {
                BlockingOverlayService.blockCall();
            } else {
                Intent intent = new Intent(context, BlockingOverlayService.class);
                intent.putExtra(BlockingOverlayService.EXTRA_BLOCK_IMMEDIATELY, true);
                if (Build.VERSION.SDK_INT >= 26) {
                    context.startForegroundService(intent);
                } else {
                    context.startService(intent);
                }
            }
        } catch (Exception e) {
            Timber.m32e(e, "trying to answer call.", new Object[0]);
        }
    }

    public static void answerCallTelephony() throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        Timber.m37d("CallBlockingUtil**Answering call original", new Object[0]);
        PreferenceUtil.putPhoneStateHangUp(true);
        Object iTelephony = getITelephony();
        iTelephony.getClass().getMethod("answerRingingCall", new Class[0]).invoke(iTelephony, new Object[0]);
    }

    public static void blockCall(int i, boolean z, Context context) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException, InterruptedException {
        blockCall(i, z, getGoToVoicemail(), context);
    }

    public static void blockCall(int i, boolean z, boolean z2, Context context) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException, InterruptedException {
        boolean z3 = z2 || shouldSendToVoicemail();
        if ((z && i == 2) || (i == 1 && z3)) {
            Blocker.hangUp(context);
            if (z3) {
                unsilenceRinger(context);
            }
        } else if (!z || i != 3) {
            Blocker.answer(context);
        } else {
            BlockingOverlayService.emergencyStop();
        }
    }

    public static void bluetoothBlockCall(boolean z, Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        boolean isBluetoothScoOn = audioManager.isBluetoothScoOn();
        if (!isBluetoothScoOn) {
            Intent intent = new Intent(MediaButtonConsts.headsetPlug);
            intent.putExtra("state", 1);
            intent.putExtra("name", "");
            context.sendOrderedBroadcast(intent, MediaButtonConsts.permissionName);
        }
        mediaButtonPresses(context, z);
        if (!isBluetoothScoOn) {
            Intent intent2 = new Intent(MediaButtonConsts.headsetPlug);
            intent2.putExtra("state", 0);
            intent2.putExtra("name", "");
            context.sendOrderedBroadcast(intent2, MediaButtonConsts.permissionName);
            audioManager.setBluetoothScoOn(false);
        }
    }

    public static void bluetoothEndCall(Context context) {
        try {
            Thread.sleep(750L);
        } catch (InterruptedException e) {
            Timber.m23w(e, "InterruptException while trying to sleep. Continuing despite this.", new Object[0]);
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        boolean z = telephonyManager.getCallState() == 2;
        boolean z2 = telephonyManager.getCallState() == 1;
        Timber.m37d("Call status after attempted to end call/ send to voicemail ----> call off hook: %s   call still ringing: %s", Boolean.toString(z), Boolean.toString(z2));
        if (z) {
            bluetoothBlockCall(true, context);
        } else if (z2 && getGoToVoicemail()) {
            bluetoothBlockCall(false, context);
        }
    }

    public static void cacheInformation(Context context, Realm realm) {
        setHasSeenIncomingNumber(PreferenceUtil.getHasSeenIncomingPhoneNumber());
        setIsAbleToBlock(isAbleToBlock(context, realm));
        setIsRingerSilenceCompatible(isRingerSilenceCompatible());
        setIsEsteem(isEsteem());
        setIsExceptionalDevice(isExceptionalDevice());
    }

    public static void cacheVolumeSettings(Context context) {
        if (getIsRingerSilenceCompatible()) {
            Timber.m37d("Saving existing volume settings", new Object[0]);
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            PreferenceUtil.putVibrateSetting(audioManager.getVibrateSetting(0));
            if (getIsEsteem()) {
                PreferenceUtil.putRingerMode(audioManager.getRingerMode());
                PreferenceUtil.putRingerVolume(audioManager.getStreamVolume(2));
            }
        }
    }

    public static Map<String, String> cachedShouldBlock(ParsedPhoneNumber parsedPhoneNumber, Context context) {
        String number;
        Map<String, String> shouldBlock;
        synchronized (CallBlockingUtil.class) {
            if (parsedPhoneNumber == null) {
                number = "";
            } else {
                try {
                    number = parsedPhoneNumber.getNumber();
                } catch (Throwable th) {
                    throw th;
                }
            }
            shouldBlock = BlockingManager.getInstance().shouldBlock(parsedPhoneNumber, true, context);
            if (place >= 4) {
                place = 0;
            } else {
                place++;
            }
            cacheKeys[place] = number;
            cacheValues[place] = shouldBlock;
        }
        return shouldBlock;
    }

    public static void clearShouldBlockCache() {
        synchronized (CallBlockingUtil.class) {
            try {
                cacheKeys = new String[5];
                cacheValues = new HashMap[5];
                place = 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean getGoToVoicemail() {
        return goToVoicemail;
    }

    public static boolean getHasSeenIncomingNumbers() {
        return hasSeenIncomingNumbers;
    }

    public static boolean getHitOffHook() {
        return hitOffHook;
    }

    public static Object getITelephony() throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        return Class.forName("com.android.internal.telephony.ITelephony$Stub").getMethod("asInterface", IBinder.class).invoke(null, (IBinder) Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "phone"));
    }

    private static int getIntentCount() {
        return PreferenceUtil.getCallReceiverIntentCount();
    }

    public static boolean getIsAbleToBlock() {
        Timber.m28v("isAbleToBlock: [%b]", Boolean.valueOf(isAbleToBlock));
        return isAbleToBlock;
    }

    public static boolean getIsEsteem() {
        return isEsteem;
    }

    public static boolean getIsExceptionalDevice() {
        return isExceptionalDevice;
    }

    public static boolean getIsRingerSilenceCompatible() {
        return isSilenceCompatible;
    }

    public static void handleCall(Map<String, String> map, int i, boolean z, ParsedPhoneNumber parsedPhoneNumber, Context context, Realm realm) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException, InterruptedException {
        boolean phoneStateHangUp = PreferenceUtil.getPhoneStateHangUp();
        if (PreferenceUtil.getPhoneStateCallInProgress() && !phoneStateHangUp) {
            return;
        }
        if ((z && i == 1) || phoneStateHangUp) {
            Timber.m37d("***Blocking call from: [%s]", parsedPhoneNumber);
            PhoneRecord phoneRecord = null;
            try {
                if (NumbersUtil.isValidNumber(parsedPhoneNumber.getNumber())) {
                    phoneRecord = OffenderLookupUtil.findRecord(realm, Long.parseLong(parsedPhoneNumber.getNumber()));
                } else {
                    Timber.m37d("Incoming number is not valid for processing: [%s]", parsedPhoneNumber.getNumber());
                }
                if (phoneRecord != null && phoneRecord.recordType.getId() == 3) {
                    AnalyticsManager.INSTANCE.fire(Event.ScammerBlockedEvent.INSTANCE);
                }
            } catch (Exception e) {
                Timber.m23w(e, "Error looking up offender record.", new Object[0]);
            }
            if ("blacklist".equals(map.get(BlockingManager.REASON_CONSTANT))) {
                AnalyticsManager.INSTANCE.fire(Event.UserNumberBlockedEvent.INSTANCE);
            }
            if (getIsAbleToBlock()) {
                blockCall(i, phoneStateHangUp, context);
                if (!phoneStateHangUp) {
                    BlockOccurrence.newBlockOccurrence(NotificationCompat.CATEGORY_CALL, parsedPhoneNumber.getNumber(), map.get(BlockingManager.REASON_CONSTANT), map.get(BlockingManager.ACTION_CONSTANT));
                    if (context.getResources().getBoolean(C1566R.bool.variant_has_local_notifications)) {
                        handleCallBlockMilestoneMessage(realm);
                    }
                } else if (PreferenceUtil.getCallSilenced()) {
                    unsilenceRinger(context);
                }
            } else {
                blockCall(i, phoneStateHangUp, true, context);
                BlockOccurrence.newBlockOccurrence(NotificationCompat.CATEGORY_CALL, parsedPhoneNumber.getNumber(), map.get(BlockingManager.REASON_CONSTANT), map.get(BlockingManager.ACTION_CONSTANT));
                if (context.getResources().getBoolean(C1566R.bool.variant_has_local_notifications)) {
                    handleCallBlockMilestoneMessage(realm);
                }
            }
        } else if (!z && i == 1) {
            Timber.m37d("**Call should not be blocked.", new Object[0]);
        }
    }

    public static void handleCallBlockMilestoneMessage(Realm realm) {
        if (CallStatsRealm.INSTANCE.getCount(realm) >= 50 && !PreferenceUtil.getHasReachedFiftyBlockedCallsMilestone()) {
            CampaignWorkerManager.INSTANCE.scheduleSpamCallMilestoneMessage();
            PreferenceUtil.putHasReachedFiftyBlockedCallsMilestone(true);
        }
    }

    public static boolean isAbleToBlock(Context context, Realm realm) {
        return !isExcludedDevice(realm, context);
    }

    public static boolean isCorrectRingingIntent(Intent intent) {
        int intentCount = getIntentCount();
        if (!intent.getStringExtra("state").equals(TelephonyManager.EXTRA_STATE_RINGING)) {
            setIntentCount(0);
            Timber.m37d("Resetting the intentCount to 0.", new Object[0]);
            return true;
        } else if (intentCount == 1) {
            setIntentCount(0);
            Timber.m37d("Received Intent #2.", new Object[0]);
            return true;
        } else {
            setIntentCount(1);
            if (intent.hasExtra("incoming_number")) {
                Timber.m37d("Received Intent #1. Has Incoming Number - " + intent.getStringExtra("incoming_number"), new Object[0]);
                return true;
            }
            Timber.m37d("Received Intent #1. Missing Incoming Number.", new Object[0]);
            return false;
        }
    }

    public static boolean isEsteem() {
        return Text.equals(Build.MODEL, "LG-MS910");
    }

    public static boolean isExceptionalDevice() {
        String str = Build.MODEL;
        return Text.equalsIgnoreCase(str, "XT897") || Text.equalsIgnoreCase(str, "LG-E970") || Text.equalsIgnoreCase(str, "LG-LS970") || Text.startsWithIgnoreCase(str, "LG-P970");
    }

    public static boolean isExcludedDevice(Realm realm, Context context) {
        String str = Build.VERSION.RELEASE;
        if (isModifyPermissionGranted(context)) {
            return false;
        }
        String str2 = str;
        if (str.length() > 3) {
            str2 = str.substring(0, 3);
        }
        if (str2.startsWith("5.") && Text.equalsIgnoreCase("samsung", InformationUtil.getDeviceManufacturer())) {
            return true;
        }
        DeviceExclusion deviceExclusion = new DeviceExclusion();
        deviceExclusion.setMake(InformationUtil.getDeviceManufacturer().toLowerCase());
        deviceExclusion.setModel(InformationUtil.getDeviceName().toLowerCase());
        deviceExclusion.setOs(str2);
        boolean isExcluded = DeviceExclusionRealm.isExcluded(realm, deviceExclusion);
        Timber.m37d("Exclusion for %s %s running %s was %sfound.", deviceExclusion.getMake(), deviceExclusion.getModel(), deviceExclusion.getOs(), isExcluded ? "" : "not ");
        return isExcluded;
    }

    public static boolean isModifyPermissionGranted(Context context) {
        return context.checkCallingOrSelfPermission("android.permission.MODIFY_PHONE_STATE") == 0;
    }

    public static boolean isRingerSilenceCompatible() {
        return !Text.equals(Build.VERSION.RELEASE, "2.2.1");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$setDataChanged$0$CallBlockingUtil(Context context) {
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            Blocker.resetBlocker();
            clearShouldBlockCache();
            cacheInformation(context.getApplicationContext(), defaultInstance);
            BlockingManager.getInstance().clearEventControlManagers();
            EventControlRealm.manageEventControlTable();
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }

    public static void mediaButtonPresses(Context context) {
        mediaButtonPresses(context, true);
    }

    private static void mediaButtonPresses(Context context, boolean z) {
        Intent intent = new Intent(MediaButtonConsts.actionMediaButton);
        intent.putExtra(MediaButtonConsts.extraKeyEvent, new KeyEvent(0, 79));
        context.sendOrderedBroadcast(intent, MediaButtonConsts.permissionName);
        if (z) {
            Intent intent2 = new Intent(MediaButtonConsts.actionMediaButton);
            intent2.putExtra(MediaButtonConsts.extraKeyEvent, new KeyEvent(1, 79));
            context.sendOrderedBroadcast(intent2, MediaButtonConsts.permissionName);
        }
    }

    public static void setDataChanged(final Context context) {
        new Thread(new Runnable(context) { // from class: com.privacystar.core.service.blocking.CallBlockingUtil$$Lambda$0
            private final Context arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = context;
            }

            @Override // java.lang.Runnable
            public void run() {
                CallBlockingUtil.lambda$setDataChanged$0$CallBlockingUtil(this.arg$1);
            }
        }).start();
    }

    public static void setGoToVoicemail(boolean z) {
        Timber.m28v("Setting goToVoicemail: [%b]", Boolean.valueOf(z));
        goToVoicemail = z;
    }

    public static void setHasSeenIncomingNumber(boolean z) {
        hasSeenIncomingNumbers = z;
    }

    public static void setHitOffHook(boolean z) {
        hitOffHook = z;
    }

    private static void setIntentCount(int i) {
        PreferenceUtil.putCallReceiverIntentCount(i);
    }

    public static void setIsAbleToBlock(boolean z) {
        isAbleToBlock = z;
    }

    public static void setIsEsteem(boolean z) {
        isEsteem = z;
    }

    public static void setIsExceptionalDevice(boolean z) {
        isExceptionalDevice = z;
    }

    public static void setIsRingerSilenceCompatible(boolean z) {
        isSilenceCompatible = z;
    }

    public static boolean shouldSendToVoicemail() {
        if (Build.VERSION.SDK_INT >= 26) {
            return PreferenceUtil.getSendToVoicemailSetting();
        }
        return false;
    }

    public static void silenceRinger(Context context) {
        if ((Build.VERSION.SDK_INT < 23 || ((NotificationManager) context.getSystemService("notification")).isNotificationPolicyAccessGranted()) && getIsRingerSilenceCompatible()) {
            cacheVolumeSettings(context);
            PreferenceUtil.putCallSilenced(true);
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            audioManager.setVibrateSetting(0, 0);
            if (getIsEsteem()) {
                Timber.m37d("Silencing Ringer, Esteem", new Object[0]);
                audioManager.setRingerMode(0);
                audioManager.setStreamVolume(2, 0, 2);
                return;
            }
            Timber.m37d("Silencing Ringer", new Object[0]);
            if (Build.VERSION.SDK_INT >= 23) {
                int streamVolume = audioManager.getStreamVolume(2);
                PreferenceUtil.putMuteRingerVolume(streamVolume);
                if (streamVolume > 0) {
                    audioManager.adjustStreamVolume(2, -100, 0);
                    return;
                }
                return;
            }
            audioManager.setStreamMute(2, true);
        }
    }

    @RequiresApi(26)
    public static void telecomManagerAnswerCall(Context context) throws IllegalArgumentException {
        TelecomManager telecomManager = (TelecomManager) context.getSystemService("telecom");
        if (telecomManager == null || !PermissionUtils.checkPermission(context, "android.permission.ANSWER_PHONE_CALLS")) {
            Timber.m37d("COULD NOT ANSWER", new Object[0]);
        } else {
            telecomManager.acceptRingingCall();
        }
    }

    @RequiresApi(28)
    public static void telecomManagerEndCall(Context context) throws IllegalArgumentException {
        TelecomManager telecomManager = (TelecomManager) context.getSystemService("telecom");
        if (telecomManager != null && PermissionUtils.checkPermission(context, "android.permission.ANSWER_PHONE_CALLS")) {
            boolean endCall = telecomManager.endCall();
            Timber.m37d("Successfully ended call? " + endCall, new Object[0]);
        }
    }

    public static void telephonyEndCall() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException, ClassNotFoundException, NoSuchMethodException {
        Object iTelephony = getITelephony();
        iTelephony.getClass().getMethod("endCall", new Class[0]).invoke(iTelephony, new Object[0]);
        Timber.m28v("Invoked endCall via ITelephony.", new Object[0]);
    }

    public static void unsilenceRinger(Context context) {
        if (getIsRingerSilenceCompatible()) {
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            audioManager.setVibrateSetting(0, PreferenceUtil.getVibrateSetting());
            if (getIsEsteem()) {
                Timber.m37d("Unsilencing Ringer, Esteem", new Object[0]);
                audioManager.setRingerMode(PreferenceUtil.getRingerMode());
                audioManager.setStreamVolume(2, PreferenceUtil.getRingerVolume(), 2);
            } else {
                Timber.m37d("Unsilencing Ringer", new Object[0]);
                if (Build.VERSION.SDK_INT >= 23) {
                    int muteRingerVolume = PreferenceUtil.getMuteRingerVolume();
                    NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
                    if (muteRingerVolume > 0) {
                        try {
                            if (notificationManager.isNotificationPolicyAccessGranted()) {
                                audioManager.adjustStreamVolume(2, 100, 0);
                            }
                        } catch (RuntimeException e) {
                            Timber.m23w(e, "Failed to unmute ringer due to Android internal failure.", new Object[0]);
                        }
                    }
                } else {
                    audioManager.setStreamMute(2, false);
                }
            }
            PreferenceUtil.putCallSilenced(false);
        }
    }
}
