package com.callapp.contacts.manager.phone;

import android.content.ComponentName;
import android.content.Intent;
import android.database.Cursor;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.RingtoneManager;
import android.media.ToneGenerator;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.PowerManager;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.speech.tts.TextToSpeech;
import android.speech.tts.UtteranceProgressListener;
import android.telecom.Call;
import android.telecom.CallAudioState;
import android.telecom.InCallService;
import android.telecom.PhoneAccountHandle;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.util.Pair;
import com.callapp.common.util.Sets;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.PostCallActivity;
import com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView;
import com.callapp.contacts.activity.contact.details.overlay.DuringCallOverlayView;
import com.callapp.contacts.activity.contact.details.overlay.IncomingCallOverlayView;
import com.callapp.contacts.activity.missedcall.MissedCallManager;
import com.callapp.contacts.framework.dao.ContentQuery;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.inCallService.AudioModeProvider;
import com.callapp.contacts.inCallService.TelecomAdapter;
import com.callapp.contacts.loader.FastCacheDataLoader;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.loader.device.DeviceDataLoader;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.manager.IncognitoCallManager;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.OverlayManager;
import com.callapp.contacts.manager.ProximityManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.TextToSpeechWrapper;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.keyguard.KeyguardActivityStateManager;
import com.callapp.contacts.manager.keyguard.LockscreenKeyguardManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.call.CallState;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.CallReminderFrequentData;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.contacts.recorder.CallRecorderManager;
import com.callapp.contacts.recorder.recordertest.RecorderTestData;
import com.callapp.contacts.recorder.recordertest.RecorderTestManager;
import com.callapp.contacts.service.CallAppService;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ArrayUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.PowerUtils;
import com.callapp.contacts.util.callappRomHelper.romHelper.base.detector.RomDetector;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppChatHeadLifecycleObserver;
import com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppChatHeadLifecycleObserverManager;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.sinch.verification.flashcall.initialization.FlashCallInitializationDetails;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import org.apache.commons.lang3.e;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/phone/PhoneStateManager.class */
public class PhoneStateManager extends PhoneStateListener implements AudioManager.OnAudioFocusChangeListener, ManagedLifecycle, ContactDataChangeListener {
    public static final int CALL_STATE_OUTGOING_RINGING = -2;
    public static final String CALL_STATE_OUTGOING_RINGING_STRING = "OUTGOING";
    private static final int CALL_STATE_UNSET = -1;
    private static final int LUNCHER_SCREEN_DELAY = 5000;
    private static final int MAX_DELAY_TIME_BETWEEN = 100;
    private static final int MAX_OUTGOING_CALL_AUDIO_QUERY_SLEEP_TIME = 300;
    private static final int MAX_OUTGOING_CALL_AUDIO_QUERY_TIME = 4000;
    private static final int MAX_TIME_WAIT_FOR_INCOMING_CALL = 15000;
    private static final int NUM_TO_RETRY_TO_WAIT_FOR_IS_RINGING = 20;
    private static final int OPEN_CALL_SCREEN_DELAY = 1000;
    private static final int RE_TRY_REGISTER_AUDIO_FOCUS = 5000;
    private static final int TIME_CLEAR_RINGING_FLAG = 15000;
    public static List<Phone> blockedCallsList = new ArrayList();
    private Call conferenceManager;
    private CallState currentCallState;
    private Handler handler;
    private HandlerThread handlerThread;
    private boolean isConferencesActivityVisible;
    private boolean isContactDetailsActivityVisible;
    private boolean isStateBeforeMerge;
    private Handler notificationHandler;
    private HandlerThread notificationHandlerThread;
    private Handler ringerHandler;
    private MediaPlayer ringtoneMediaPlayer;
    private boolean screenStateBeforeRinging;
    private boolean shouldShowConference;
    private boolean shouldVibrateWhenRinging;
    private TelephonyManager telephonyManager;
    private TextToSpeechWrapper textToSpeechWrapper;
    private final Object waitForIncomingCallLock = new Object();
    private final Object callListLock = new Object();
    private final Map<String, CallData> callList = Collections.synchronizedMap(new LinkedHashMap());
    private final Map<String, Call> callDataToTelecomCall = Collections.synchronizedMap(new LinkedHashMap());
    private final ArrayList<Pair<CallData, ContactData>> contactsByCalls = new ArrayList<>();
    private final Object listenersLock = new Object();
    private final Collection<CallStateListener> listeners = Sets.a(new ConcurrentHashMap());
    private final Object callDetailsListenersLock = new Object();
    private final Collection<CallDetailsListener> callDetailsListeners = Sets.a(new ConcurrentHashMap());
    private HandlerThread ringerHandlerThread = null;
    private UpdateLastCallStatusTask updateLastCallStatusTask = new UpdateLastCallStatusTask();
    private boolean notify = true;
    private int lastStateHandledFromTelephonyManager = -1;
    private int lastStateHandledGlobally = -1;
    private final Object callStateChangedFromTelephonyManagerLock = new Object();
    private final Object callStateChangedFromTelecomLock = new Object();
    private Phone lastOutgoingRingingPhoneHandled = null;
    private Boolean isLastCallIncoming = null;
    private boolean isOffhookBeforeOutgoing = false;
    private int currRingerMode = -1;
    private int currStreamRingVolume = -1;
    private boolean isFirstUpdateFromTelephonyManager = true;
    private updateCallDetails updateCallDetails = new updateCallDetails();
    private CallActionSource callActionSource = CallActionSource.NONE;
    private boolean isIncomingCallOpenedOverlay = false;
    private Object ringtoneMediaPlayerLock = new Object();
    private boolean isVibrating = false;
    private ToneGenerator toneGenerator = null;
    private boolean isCurrentlyRinging = false;
    private int requestAudioFocusResult = -1;
    private final Object screenWakeLockLock = new Object();
    private PowerManager.WakeLock screenWakeLock = null;
    private final Map<Call.Details, Boolean> callScreeningServiceHandleMap = new ConcurrentHashMap();
    private final Map<Phone, Boolean> callScreeningServiceHandleNonDefaultMap = new ConcurrentHashMap();
    private Runnable ringerRunnable = new Runnable() { // from class: com.callapp.contacts.manager.phone.PhoneStateManager.1
        @Override // java.lang.Runnable
        public void run() {
            PhoneStateManager.this.isCurrentlyRinging = false;
        }
    };
    private Map<Integer, Pair<EVENT_SOURCE, String>> lastHandledEvents = new HashMap();

    /* renamed from: com.callapp.contacts.manager.phone.PhoneStateManager$2  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/phone/PhoneStateManager$2.class */
    class AnonymousClass2 extends Call.Callback {

        /* renamed from: a  reason: collision with root package name */
        int f15158a = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

        AnonymousClass2() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Call call) {
            PhoneStateManager.this.updateCallList(call);
        }

        @Override // android.telecom.Call.Callback
        public void onCallDestroyed(Call call) {
            call.unregisterCallback(this);
        }

        @Override // android.telecom.Call.Callback
        public void onCannedTextResponsesLoaded(Call call, List<String> list) {
        }

        @Override // android.telecom.Call.Callback
        public void onChildrenChanged(Call call, List<Call> list) {
        }

        @Override // android.telecom.Call.Callback
        public void onConferenceableCallsChanged(Call call, List<Call> list) {
        }

        @Override // android.telecom.Call.Callback
        public void onDetailsChanged(Call call, Call.Details details) {
        }

        @Override // android.telecom.Call.Callback
        public void onParentChanged(Call call, Call call2) {
        }

        @Override // android.telecom.Call.Callback
        public void onPostDialWait(Call call, String str) {
        }

        @Override // android.telecom.Call.Callback
        public void onStateChanged(final Call call, int i) {
            if (i == 2) {
                PhoneStateManager.this.screenStateBeforeRinging = PowerUtils.isScreenOn();
                Prefs.dE.b(1);
                Prefs.hp.b(1);
            }
            if (this.f15158a != i) {
                this.f15158a = i;
                CLog.a(PhoneStateManager.class, "TelecommCallCallback onStateChanged number= " + PhoneStateManager.this.getPhoneNumber(call) + ", call=" + call + " newState=" + i + " list size " + PhoneStateManager.this.callList.size());
                PhoneStateManager.this.handler.post(new Runnable() { // from class: com.callapp.contacts.manager.phone._$$Lambda$PhoneStateManager$2$t7foFZ7JjfLPhMlvTK4Ey78n90E
                    @Override // java.lang.Runnable
                    public final void run() {
                        PhoneStateManager.AnonymousClass2.this.a(call);
                    }
                });
                return;
            }
            CLog.a(PhoneStateManager.class, "TelecommCallCallback skipped: " + call + ", " + i);
        }

        @Override // android.telecom.Call.Callback
        public void onVideoCallChanged(Call call, InCallService.VideoCall videoCall) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.manager.phone.PhoneStateManager$25  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/phone/PhoneStateManager$25.class */
    public static /* synthetic */ class AnonymousClass25 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15171a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[BlockManager.BlockMethod.values().length];
            f15171a = iArr;
            try {
                iArr[BlockManager.BlockMethod.SILENT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f15171a[BlockManager.BlockMethod.HANG_UP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource.class */
    public enum CallActionSource {
        ACTIVITY,
        WIDGET,
        NONE
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent.class */
    public class CallStateChangedEvent {

        /* renamed from: a  reason: collision with root package name */
        final EVENT_SOURCE f15182a;

        /* renamed from: b  reason: collision with root package name */
        final int f15183b;

        /* renamed from: c  reason: collision with root package name */
        final String f15184c;

        CallStateChangedEvent(EVENT_SOURCE event_source, int i, String str) {
            this.f15182a = event_source;
            this.f15183b = i;
            this.f15184c = str;
        }

        public String toString() {
            return "CallStateChangedEvent{eventSource=" + this.f15182a + ", state=" + this.f15183b + ", number='" + this.f15184c + "'}";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE.class */
    public enum EVENT_SOURCE {
        RECEIVER,
        TELEPHONY_MANAGER,
        TELECOM
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/phone/PhoneStateManager$NotifyTask.class */
    public class NotifyTask extends Task {

        /* renamed from: b  reason: collision with root package name */
        private final CallStateListener f15187b;

        /* renamed from: c  reason: collision with root package name */
        private final CallData f15188c;

        public NotifyTask(CallStateListener callStateListener, CallData callData) {
            this.f15187b = callStateListener;
            this.f15188c = callData;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            long currentTimeMillis = System.currentTimeMillis();
            this.f15187b.onCallStateChanged(this.f15188c);
            CLog.a(PhoneStateManager.class, this.f15187b.toString() + " onCallDetailsChanged() took " + (System.currentTimeMillis() - currentTimeMillis));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask.class */
    public class UpdateLastCallStatusTask extends Task {
        private UpdateLastCallStatusTask() {
        }

        /* JADX WARN: Removed duplicated region for block: B:38:0x009b  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00d2  */
        @Override // com.callapp.contacts.manager.task.Task
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void doTask() {
            /*
                Method dump skipped, instructions count: 260
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.phone.PhoneStateManager.UpdateLastCallStatusTask.doTask():void");
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/phone/PhoneStateManager$updateCallDetails.class */
    public class updateCallDetails implements Runnable {
        public updateCallDetails() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (PhoneManager.get().isDefaultPhoneApp() && CollectionUtils.b(PhoneStateManager.this.callDetailsListeners)) {
                synchronized (PhoneStateManager.this.callDetailsListenersLock) {
                    for (CallDetailsListener callDetailsListener : PhoneStateManager.this.callDetailsListeners) {
                        callDetailsListener.onCallDetailsChanged(PhoneStateManager.this.getCallsState());
                    }
                }
            }
        }
    }

    private void acquireScreenWakeLock() {
        synchronized (this.screenWakeLockLock) {
            if (this.screenWakeLock == null) {
                PowerManager.WakeLock newWakeLock = ((PowerManager) Singletons.a("power")).newWakeLock(805306394, getClass().getSimpleName());
                this.screenWakeLock = newWakeLock;
                newWakeLock.acquire(TimeUnit.SECONDS.toMillis(5L));
            }
        }
    }

    private CallData addCall(Phone phone, CallState callState, Boolean bool) {
        CLog.a(PhoneStateManager.class, "addCall(number: %s, callState: %s)", phone, callState);
        if (this.notify && phone.isNotEmpty()) {
            startTheServiceAsForeground(phone.getRawNumber(), bool.booleanValue());
        }
        removeEndedCalls();
        CallData callData = new CallData(phone, Singletons.get().getSimManager().getActiveCalls().get(phone), callState, bool);
        callData.setMarkedAsIncognito(IncognitoCallManager.get().isIncognito(phone));
        String a2 = phone.a();
        callData.setCallId(a2);
        synchronized (this.callListLock) {
            this.callList.put(a2, callData);
            AnalyticsManager.get().a(Constants.CALLS, "addCall", bool.booleanValue() ? "incoming" : "outgoing");
        }
        CallRecorderManager.get().a(callData, this.callList.size());
        registerForContactDataChanges(callData, 0L);
        return callData;
    }

    private CallData addTelecomCall(CallState callState, Boolean bool, Call call) {
        SimManager.SimId simId;
        Call.Details details;
        this.isStateBeforeMerge = Arrays.equals(ArrayUtils.a(getCallsState()), Constants.CALL_BEFORE_MERGE);
        Phone a2 = PhoneManager.get().a(getPhoneNumber(call));
        CLog.a(PhoneStateManager.class, "addTelecomCall(number: %s, callState: %s)", a2, callState);
        SimManager simManager = Singletons.get().getSimManager();
        if (Build.VERSION.SDK_INT >= 23) {
            simId = null;
            if (simManager.getDualSimOperators() != null) {
                PhoneAccountHandle accountHandle = call.getDetails().getAccountHandle();
                simId = null;
                if (accountHandle != null) {
                    simId = simManager.a(accountHandle);
                }
            }
        } else {
            simId = SimManager.SimId.ASK;
        }
        CallData callData = new CallData(a2, simId, callState, bool);
        if (Build.VERSION.SDK_INT >= 30 && (details = call.getDetails()) != null) {
            callData.setVerificationStatus(details.getCallerNumberVerificationStatus());
        }
        callData.setMarkedAsIncognito(IncognitoCallManager.get().isIncognito(a2));
        String telecomId = getTelecomId(call);
        CallData callData2 = this.callList.get(telecomId);
        if (callData2 != null) {
            CLog.a(PhoneStateManager.class, "telecom id already exist ".concat(String.valueOf(telecomId)));
            return callData2;
        }
        if (telecomId != null) {
            startTheServiceAsForeground(callData.getNumber().getRawNumber(), bool.booleanValue());
            Boolean bool2 = this.callScreeningServiceHandleMap.get(call.getDetails());
            if (bool2 == null) {
                callData.setBlocked(((Boolean) BlockManager.a(callData.getNumber()).first).booleanValue());
            } else {
                callData.setBlocked(bool2.booleanValue());
            }
            CLog.a(PhoneStateManager.class, "telecom id added ".concat(String.valueOf(telecomId)));
            callData.setCallId(telecomId);
            callData.setIsVoiceMail(PhoneManager.get().b(call));
            callData.setConferenceManager(call.getDetails().hasProperty(1));
            synchronized (this.callListLock) {
                this.callList.put(telecomId, callData);
                this.callDataToTelecomCall.put(callData.getCallId(), call);
                AnalyticsManager.get().a(Constants.CALLS, "addTelecomCall", bool.booleanValue() ? "incoming" : "outgoing");
            }
            CallRecorderManager.get().a(callData, this.callList.size());
            registerForContactDataChanges(callData, 0L);
            onCallDetailsChanged();
        }
        return callData;
    }

    private CallData callToCallData(Call call) {
        CallData callData;
        String telecomId = getTelecomId(call);
        if (telecomId == null) {
            CLog.a(PhoneStateManager.class, "something went wrong telecom id is null");
            return null;
        }
        synchronized (this.callListLock) {
            callData = this.callList.get(telecomId);
        }
        return callData;
    }

    private void cancelNotification(final boolean z) {
        this.notificationHandler.post(new Runnable() { // from class: com.callapp.contacts.manager.phone.PhoneStateManager.21
            @Override // java.lang.Runnable
            public void run() {
                OverlayManager.get().a();
                if (!z || !CallRecorderManager.get().isRecording()) {
                    NotificationManager.get().a(12);
                    CallAppApplication.get().a(false, (Intent) null);
                    return;
                }
                NotificationManager.get().a((CallData) null, (ContactData) null, true, true);
            }
        });
    }

    private void createContactLoader(Phone phone) {
        Singletons.get().getContactLoaderManager().asyncCreateContactLoaderAndLoad(phone, 0L, ExtractedInfo.Builder.getBuilderAccordingToOrigin(phone, IMDataExtractionUtils.RecognizedPersonOrigin.CALL).build());
    }

    private void findActiveOrBackgroundAndUpdateContactDetails(boolean z) {
        CallData activeOrBackgroundCall = PhoneManager.get().getActiveOrBackgroundCall();
        if (activeOrBackgroundCall != null) {
            showCallAppIfNeeded(activeOrBackgroundCall, z);
        }
    }

    public static PhoneStateManager get() {
        return Singletons.get().getPhoneStateManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] getCallsState() {
        int i;
        int i2;
        int i3;
        if (Build.VERSION.SDK_INT >= 23) {
            synchronized (this.callListLock) {
                i3 = 0;
                i2 = 0;
                i = 0;
                for (Call call : this.callDataToTelecomCall.values()) {
                    if (call.getVideoCall() == null || call.getDetails().getVideoState() == 0) {
                        int state = call.getState();
                        if (state == 1 || state == 2) {
                            i++;
                        } else if (state == 3) {
                            i2++;
                        } else if (state == 4) {
                            i3++;
                        }
                    }
                }
            }
        } else {
            i3 = 0;
            i2 = 0;
            i = 0;
        }
        CLog.a(PhoneStateManager.class, "[" + i3 + "," + i2 + "," + i + "]");
        return new int[]{i3, i2, i};
    }

    private Runnable getInternalSilenceRingerRunnable() {
        return new Runnable() { // from class: com.callapp.contacts.manager.phone.PhoneStateManager.5
            @Override // java.lang.Runnable
            public void run() {
                CLog.a(PhoneStateManager.class, "internalSilenceRinger called");
                PhoneStateManager.this.shouldVibrateWhenRinging |= PhoneStateManager.this.isShouldVibrateWhenRinging();
                if (PhoneStateManager.this.isVibrating) {
                    PhoneStateManager.this.isVibrating = false;
                    ((Vibrator) CallAppApplication.get().getSystemService("vibrator")).cancel();
                }
                synchronized (PhoneStateManager.this.ringtoneMediaPlayerLock) {
                    if (PhoneStateManager.this.ringtoneMediaPlayer != null) {
                        PhoneStateManager.this.ringtoneMediaPlayer.stop();
                        PhoneStateManager.this.ringtoneMediaPlayer.release();
                        PhoneStateManager.this.ringtoneMediaPlayer = null;
                    }
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getPhoneNumber(Call call) {
        if (Build.VERSION.SDK_INT < 23) {
            return null;
        }
        PhoneManager.get();
        String a2 = PhoneManager.a(call);
        String str = a2;
        if (a2 == null) {
            if (call.getDetails().hasProperty(1)) {
                CLog.a(PhoneStateManager.class, "conference number");
                str = Activities.getString(2131886626);
            } else {
                CLog.a(PhoneStateManager.class, "phone pumber is null setting as private");
                str = Activities.getString(2131886488);
            }
        }
        return str;
    }

    private String getStateName(int i) {
        return i != -2 ? i != 0 ? i != 1 ? i != 2 ? "" : TelephonyManager.EXTRA_STATE_OFFHOOK : TelephonyManager.EXTRA_STATE_RINGING : TelephonyManager.EXTRA_STATE_IDLE : CALL_STATE_OUTGOING_RINGING_STRING;
    }

    private String getTelecomId(Call call) {
        return e.a(call);
    }

    private void handlePostCall(CallData callData) {
        ContactData contactDataByCallData;
        if (Prefs.aW.get().booleanValue() && (contactDataByCallData = getContactDataByCallData(callData)) != null && !callData.isCallWaiting() && !Prefs.bm.get().booleanValue() && isValidNumberToShowCallScreen(callData)) {
            Intent intent = new Intent(CallAppApplication.get(), PostCallActivity.class);
            Collection<String> names = contactDataByCallData.getNames();
            if (CollectionUtils.b(names)) {
                intent.putExtra(ContactDetailsActivity.EXTRA_FULL_NAME, names.iterator().next());
            }
            intent.putExtra(Constants.EXTRA_CONTACT_ID, contactDataByCallData.getDeviceId());
            intent.putExtra(Constants.EXTRA_PHONE_NUMBER, callData.getNumber().getRawNumber());
            intent.putExtra(PostCallActivity.EXTRA_POST_CALL_DATA, callData);
            if (contactDataByCallData != null) {
                intent.putExtra(PostCallActivity.EXTRA_IS_SPAMMER, contactDataByCallData.isSpammer());
            }
            intent.putExtra(PostCallActivity.EXTRA_IS_BLOCKED, callData.isBlocked());
            intent.setFlags(268435456);
            Activities.b(CallAppApplication.get(), intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRequestAudioFocus() {
        try {
            this.requestAudioFocusResult = ((AudioManager) Singletons.a("audio")).requestAudioFocus(this, 2, 1);
            CLog.a(PhoneStateManager.class, "register to request Audio Focus. Result: " + this.requestAudioFocusResult);
        } catch (Exception e) {
            CLog.a(PhoneStateManager.class, e);
        }
    }

    private void incrementNumOfCallsToday() {
        Date date = Prefs.cF.get();
        Date date2 = date;
        if (date == null) {
            date2 = new Date();
            Prefs.cF.set(date2);
        }
        if (!DateUtils.a(new Date(), date2)) {
            Prefs.cG.set(0);
            Prefs.cF.set(new Date());
            Prefs.cH.set(0);
            Prefs.cI.set(Boolean.FALSE);
        }
        Prefs.cG.b(1);
        Prefs.by.a(500);
        CLog.a(PhoneStateManager.class, "Call number " + Prefs.cG.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isDateRecent(Date date) {
        return date.after(DateUtils.a(-30, 13).getTime());
    }

    private static boolean isInCallAudioMode(int i) {
        return i == 2 || i == 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isShouldVibrateWhenRinging() {
        boolean z = false;
        try {
            if (Settings.System.getInt(CallAppApplication.get().getContentResolver(), "vibrate_when_ringing") == 1) {
                z = true;
            }
        } catch (Exception e) {
        }
        return z;
    }

    private boolean isValidNumberToShowCallScreen(CallData callData) {
        if (Build.VERSION.SDK_INT < 23 || !PhoneManager.get().isDefaultPhoneApp()) {
            return callData.getNumber().isNotEmpty() && !StringUtils.e(callData.getNumber().toString(), "*") && !PhoneManager.get().b(callData.getNumber()) && callData.getNumber().isValidForSearch();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$onAudioStateChanged$0(CallAudioState callAudioState) {
        AudioModeProvider audioModeProvider = AudioModeProvider.get();
        if (audioModeProvider.f14423b == null) {
            audioModeProvider.f14423b = new CallAudioState(false, 1, 15);
        }
        audioModeProvider.a(callAudioState, callAudioState.isMuted());
        audioModeProvider.f14422a = callAudioState.getSupportedRouteMask();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$updateNotificationAndWidget$1() {
        if (get().isAnyCallActive()) {
            get().updateCallAppInCallNotification();
            if (CallAppChatHeadLifecycleObserverManager.get().isRegisteredActivity()) {
                CallAppChatHeadLifecycleObserverManager.get().a();
            } else {
                CallAppChatHeadLifecycleObserver.a(1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void manuallyRingOrVibrate(CallData callData) {
        Cursor cursor;
        Uri uri;
        Throwable th;
        int ringerMode = ((AudioManager) CallAppApplication.get().getSystemService("audio")).getRingerMode();
        if (ringerMode == 0) {
            CLog.a(PhoneStateManager.class, "handleRinger: silent mode");
        } else if (ringerMode == 1) {
            startVibrating();
            CLog.a(PhoneStateManager.class, "handleRinger: starting vibrate");
        } else if (ringerMode != 2) {
            CLog.a(PhoneStateManager.class, "PhoneStateManager ringerMode: ".concat(String.valueOf(ringerMode)));
        } else if (Build.VERSION.SDK_INT >= 21) {
            CLog.a(PhoneStateManager.class, "handleRinger: strating ringtone");
            Cursor cursor2 = null;
            try {
                Cursor b2 = ContentQuery.a(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(getPhoneNumber(getTelecomCallFromCallData(callData))))).c("custom_ringtone").b();
                uri = null;
                cursor = b2;
                if (b2 != null) {
                    uri = null;
                    cursor = b2;
                    try {
                        if (b2.moveToNext()) {
                            uri = Uri.parse(b2.getString(0));
                            cursor = b2;
                        }
                    } catch (Exception e) {
                        uri = null;
                        cursor = b2;
                    } catch (Throwable th2) {
                        th = th2;
                        cursor2 = b2;
                        IoUtils.a(cursor2);
                        throw th;
                    }
                }
            } catch (Exception e2) {
                cursor = null;
                uri = null;
            } catch (Throwable th3) {
                th = th3;
            }
            IoUtils.a(cursor);
            Uri uri2 = uri;
            if (uri == null) {
                try {
                    Uri actualDefaultRingtoneUri = RingtoneManager.getActualDefaultRingtoneUri(CallAppApplication.get(), 1);
                    uri2 = actualDefaultRingtoneUri;
                    if (actualDefaultRingtoneUri == null) {
                        uri2 = RingtoneManager.getDefaultUri(1);
                    }
                } catch (SecurityException e3) {
                    uri2 = RingtoneManager.getDefaultUri(1);
                }
            }
            if (uri2 != null) {
                try {
                    MediaPlayer mediaPlayer = new MediaPlayer();
                    mediaPlayer.setDataSource(CallAppApplication.get(), uri2);
                    mediaPlayer.setAudioStreamType(2);
                    mediaPlayer.setLooping(true);
                    mediaPlayer.prepare();
                    synchronized (this.ringtoneMediaPlayerLock) {
                        this.ringtoneMediaPlayer = mediaPlayer;
                        mediaPlayer.start();
                    }
                    boolean isShouldVibrateWhenRinging = isShouldVibrateWhenRinging();
                    this.shouldVibrateWhenRinging = isShouldVibrateWhenRinging;
                    if (isShouldVibrateWhenRinging) {
                        startVibrating();
                    }
                } catch (Exception e4) {
                    CLog.a(PhoneStateManager.class, e4);
                }
            }
        }
    }

    private void notifyIncomingCall() {
        synchronized (this.waitForIncomingCallLock) {
            this.waitForIncomingCallLock.notify();
        }
    }

    private void notifyListeners(CallData callData) {
        notifyListeners(callData, false);
    }

    private void notifyListeners(CallData callData, boolean z) {
        if (this.notify || z) {
            MultiTaskRunner multiTaskRunner = new MultiTaskRunner();
            synchronized (this.listenersLock) {
                for (CallStateListener callStateListener : this.listeners) {
                    multiTaskRunner.a(new NotifyTask(callStateListener, callData));
                }
            }
            multiTaskRunner.a();
        }
    }

    private void onCallDetailsChanged() {
        this.handler.removeCallbacks(this.updateCallDetails);
        this.handler.postDelayed(this.updateCallDetails, 200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0077, code lost:
        if (android.telephony.PhoneNumberUtils.compare(r0, r0 == null ? null : r0.toString()) != false) goto L_0x007a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCallStateChanged(com.callapp.contacts.manager.phone.PhoneStateManager.CallStateChangedEvent r8) {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.phone.PhoneStateManager.onCallStateChanged(com.callapp.contacts.manager.phone.PhoneStateManager$CallStateChangedEvent):void");
    }

    private void onIdleState() {
        LinkedHashMap linkedHashMap;
        this.isLastCallIncoming = null;
        this.isOffhookBeforeOutgoing = false;
        this.lastOutgoingRingingPhoneHandled = null;
        this.updateLastCallStatusTask.cancel();
        Singletons.get().getSimManager().getActiveCalls().clear();
        if (!CallAppApplication.get().isUnitTestMode()) {
            PhoneManager.get().setSpeakerphoneOn(false);
            PhoneManager.get().f15124b = false;
        }
        synchronized (this.callListLock) {
            linkedHashMap = new LinkedHashMap(this.callList);
        }
        for (CallData callData : linkedHashMap.values()) {
            callData.setState(CallState.POST_CALL);
            handlePostCall(callData);
            AnalyticsDataManager.a(callData, callData.isCallAnswered().booleanValue() ? callData.getTalkingStartTime() : System.currentTimeMillis());
            notifyListeners(callData, true);
        }
        postCall();
    }

    private void onOffHookState(Phone phone) {
        CallData callData;
        Prefs.f.b(1);
        Prefs.by.a(500);
        Prefs.e.a(3);
        Boolean bool = this.isLastCallIncoming;
        if (bool == null || !bool.booleanValue()) {
            if (this.isLastCallIncoming != null) {
                if (Prefs.bm.get().booleanValue() && !CallAppApplication.get().isUnitTestMode()) {
                    CLog.a(PhoneStateManager.class, "waitForCallMode returned: ".concat(String.valueOf(waitForCallMode())));
                }
                Phone phone2 = this.lastOutgoingRingingPhoneHandled;
                if (phone2 != null) {
                    callData = addCall(phone2, CallState.RINGING_OUTGOING, Boolean.FALSE);
                    notifyListeners(callData);
                }
            } else {
                this.isOffhookBeforeOutgoing = true;
            }
            callData = null;
        } else {
            callData = getLastCall();
        }
        if (callData != null) {
            int callListSize = getCallListSize();
            if (callListSize == 1) {
                callData.setState(CallState.TALKING);
                final Phone number = callData.getNumber();
                new Task() { // from class: com.callapp.contacts.manager.phone.PhoneStateManager.10
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        MissedCallManager.a(number, CallReminderFrequentData.FrequentType.DELETE);
                    }
                }.execute();
                this.handler.postDelayed(new Runnable() { // from class: com.callapp.contacts.manager.phone.PhoneStateManager.11
                    @Override // java.lang.Runnable
                    public void run() {
                        CallRecorderManager.get().a();
                    }
                }, 2000L);
                notifyListeners(callData);
                if (!callData.isIncoming() || Prefs.bm.get().booleanValue()) {
                    showCallAppIfNeeded(callData, true);
                }
            } else if (callListSize > 1) {
                this.updateLastCallStatusTask.schedule(1000);
            }
        }
    }

    private void onOutgoingCallStarted(Phone phone) {
        this.isLastCallIncoming = Boolean.FALSE;
        this.lastOutgoingRingingPhoneHandled = phone;
        incrementNumOfCallsToday();
        if (this.isOffhookBeforeOutgoing || getCallListSize() == 0) {
            Singletons.get().getContactLoaderManager().asyncCreateContactLoaderAndLoad(phone, 0L, ExtractedInfo.Builder.getBuilderAccordingToOrigin(phone, IMDataExtractionUtils.RecognizedPersonOrigin.CALL).build());
            if (this.isOffhookBeforeOutgoing) {
                onOffHookState(phone);
                return;
            }
            return;
        }
        addCall(this.lastOutgoingRingingPhoneHandled, CallState.RINGING_OUTGOING, Boolean.FALSE);
        this.notify = false;
        removeCallScreenDueToWaitingCall(true);
        this.updateLastCallStatusTask.cancel();
    }

    private void onRingingIncomingState(Phone phone) {
        this.isLastCallIncoming = Boolean.TRUE;
        incrementNumOfCallsToday();
        Boolean bool = this.callScreeningServiceHandleNonDefaultMap.get(phone);
        Boolean bool2 = bool;
        if (bool == null) {
            Boolean bool3 = (Boolean) BlockManager.a(phone).first;
            bool2 = bool3;
            if (bool3.booleanValue()) {
                bool2 = bool3;
                if (getCallListSize() == 0) {
                    bool2 = bool3;
                    if (handleBlockedCall(phone, false)) {
                        return;
                    }
                }
            }
        }
        createContactLoader(phone);
        CallData addCall = addCall(phone, CallState.RINGING_INCOMING, Boolean.TRUE);
        addCall.setBlocked(bool2.booleanValue());
        Prefs.dE.b(1);
        Prefs.hp.b(1);
        int callListSize = getCallListSize();
        speakNameIfNeeded(addCall);
        if (phone.isNotEmpty() && callListSize > 0) {
            if (callListSize > 1) {
                removeCallScreenDueToWaitingCall(false);
                addCall.setCallWaiting(true);
            }
            notifyListeners(addCall);
            showCallAppIfNeeded(addCall, false, true, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openCallScreenIfNeeded(Intent intent, String str) {
        if (intent.getBooleanExtra(BaseContactDetailsActivity.EXTRA_OPEN_CONTACT_DETAILS, true)) {
            startFullDetailsActivity(str, intent, false);
            acquireScreenWakeLock();
            return;
        }
        updateNotificationAndWidget();
    }

    private void postCall() {
        this.isIncomingCallOpenedOverlay = false;
        TextToSpeechWrapper textToSpeechWrapper = this.textToSpeechWrapper;
        if (textToSpeechWrapper != null) {
            textToSpeechWrapper.a();
        }
        CallRecorderManager callRecorderManager = CallRecorderManager.get();
        if (callRecorderManager.c() && callRecorderManager.f15659b != null) {
            callRecorderManager.a(3, (RecorderTestData) null);
        }
        callRecorderManager.f15659b = null;
        cancelNotification(false);
        KeyguardActivityStateManager keyguardActivityStateManager = KeyguardActivityStateManager.get();
        synchronized (keyguardActivityStateManager) {
            keyguardActivityStateManager.a();
        }
        ProximityManager.get().a();
        removeEndedCalls();
        unregisterAllContactData();
        restoreRingerMode();
        this.notify = true;
        this.isCurrentlyRinging = false;
        if (this.ringerHandler != null || Prefs.h.get().booleanValue()) {
            Handler handler = this.ringerHandler;
            if (handler != null) {
                handler.removeCallbacks(this.ringerRunnable);
                retryRequestAudioFocusIfNeeded();
            }
            internalSilenceRinger();
        }
        this.callScreeningServiceHandleMap.clear();
        this.callScreeningServiceHandleNonDefaultMap.clear();
        this.conferenceManager = null;
        MissedCallManager.a();
        RecorderTestManager.get().setInRecorderTestMode(false);
        RecorderTestManager.get().setRecorderTestRawNumber(null);
        CallAppChatHeadLifecycleObserver.a(-1);
    }

    private void printCalls(List<Call> list) {
        if (Prefs.n.get().booleanValue()) {
            CLog.a(PhoneStateManager.class, "Call in Confrence");
            for (Call call : list) {
                PhoneManager.get();
                CLog.a(PhoneStateManager.class, PhoneManager.a(call));
            }
        }
    }

    private void printState(int i, String str, EVENT_SOURCE event_source) {
        if (Prefs.n.get().booleanValue()) {
            CLog.a(PhoneStateManager.class, "CALL_STATE: [%s], number: [%s], eventSource: [%s]", getStateName(i), str, event_source);
            StringBuilder sb = new StringBuilder("printCalls:\n");
            synchronized (this.callListLock) {
                int i2 = 0;
                for (CallData callData : this.callList.values()) {
                    sb.append(String.format("Call #%s {number: %s, state: %s}\n", Integer.valueOf(i2), callData.getNumber(), callData.getState()));
                    i2++;
                }
            }
            sb.append("printStateHistory:\n");
            for (Map.Entry<Integer, Pair<EVENT_SOURCE, String>> entry : this.lastHandledEvents.entrySet()) {
                sb.append(String.format("\nType: %s, eventSource: %s, number %s", entry.getKey(), entry.getValue().first, entry.getValue().second));
            }
            CLog.a(PhoneStateManager.class, sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerForContactDataChanges(final CallData callData, final long j) {
        new Task() { // from class: com.callapp.contacts.manager.phone.PhoneStateManager.22
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                Pair<ContactData, Set<ContactField>> registerForContactDetailsStack = Singletons.get().getContactLoaderManager().registerForContactDetailsStack(callData.getNumber(), ExtractedInfo.Builder.getBuilderAccordingToOrigin(callData.getNumber(), IMDataExtractionUtils.RecognizedPersonOrigin.CALL).build(), j, PhoneStateManager.this, ContactFieldEnumSets.PHOTO_AND_NAME_FIELDS);
                if (((Set) registerForContactDetailsStack.second).size() > 0) {
                    PhoneStateManager.this.onContactChanged((ContactData) registerForContactDetailsStack.first, (Set) registerForContactDetailsStack.second);
                }
                ((ContactData) registerForContactDetailsStack.first).fireChange(ContactField.call);
                if (PhoneStateManager.this.getContactDataByCallData(callData) != null || callData.getState().isIdle()) {
                    PhoneStateManager.this.unRegisterForContactDataChanges((ContactData) registerForContactDetailsStack.first);
                    return;
                }
                synchronized (PhoneStateManager.this.contactsByCalls) {
                    PhoneStateManager.this.contactsByCalls.add(new Pair(callData, registerForContactDetailsStack.first));
                }
            }
        }.execute();
    }

    private void releaseScreenWakeLock() {
        synchronized (this.screenWakeLockLock) {
            PowerManager.WakeLock wakeLock = this.screenWakeLock;
            if (wakeLock != null) {
                if (wakeLock.isHeld()) {
                    try {
                        this.screenWakeLock.release();
                    } catch (Exception e) {
                        CLog.b(PhoneStateManager.class, e);
                    }
                }
                this.screenWakeLock = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeCall(String str) {
        synchronized (this.callListLock) {
            CallData remove = this.callList.remove(str);
            if (!(!CollectionUtils.b(this.callDataToTelecomCall) || remove == null || remove.getCallId() == null)) {
                this.callDataToTelecomCall.remove(remove.getCallId());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeCallScreenDueToWaitingCall(boolean z) {
        notifyListeners(new CallData(Phone.f17100b, CallState.POST_CALL, null), true);
        if (z) {
            cancelNotification(true);
        }
    }

    private void removeEndedCalls() {
        synchronized (this.callListLock) {
            Iterator<Map.Entry<String, CallData>> it2 = this.callList.entrySet().iterator();
            while (it2.hasNext()) {
                CallData value = it2.next().getValue();
                if (value.getState().isIdle()) {
                    it2.remove();
                    if (value.getCallId() != null) {
                        this.callDataToTelecomCall.remove(value.getCallId());
                    }
                    CLog.a(PhoneStateManager.class, " phone " + value.getNumber().a() + " removed");
                }
            }
        }
    }

    private void restoreRingerMode() {
        int i = this.currRingerMode;
        if (i != -1) {
            PhoneManager.setRingerMode(i);
            this.currRingerMode = -1;
        }
        int i2 = this.currStreamRingVolume;
        if (i2 != -1) {
            PhoneManager.setStreamVolume(2, i2);
            this.currStreamRingVolume = -1;
        }
    }

    private void retryRequestAudioFocusIfNeeded() {
        if (this.requestAudioFocusResult != 1) {
            this.ringerHandler.postDelayed(new Runnable() { // from class: com.callapp.contacts.manager.phone.PhoneStateManager.7
                @Override // java.lang.Runnable
                public void run() {
                    PhoneStateManager.this.handleRequestAudioFocus();
                }
            }, 5000L);
        }
    }

    private void setCallAsFirstCallInCallList(Call call) {
        String telecomId = getTelecomId(call);
        if (StringUtils.b((CharSequence) telecomId)) {
            synchronized (this.callListLock) {
                CallData remove = this.callList.remove(telecomId);
                if (remove != null) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap(this.callList);
                    this.callList.clear();
                    this.callList.put(telecomId, remove);
                    this.callList.putAll(linkedHashMap);
                }
            }
        }
    }

    private void setRecorderTestData(CallData callData) {
        if (!RecorderTestManager.get().isInRecorderTestMode()) {
            return;
        }
        if (getCallListSize() == 1) {
            if (callData.getState().isConnectingOrOutgoing()) {
                RecorderTestManager.get().setRecorderTestRawNumber(callData.getNumber().getRawNumber());
            }
        } else if (callData.getState().isTalking()) {
            RecorderTestManager.get().setInRecorderTestMode(false);
        }
    }

    private void showBlockedNotification() {
        new Task() { // from class: com.callapp.contacts.manager.phone.PhoneStateManager.9
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                NotificationManager.get().a(PhoneStateManager.blockedCallsList);
            }
        }.schedule(5000);
    }

    private void showCallScreen(CallData callData, boolean z, boolean z2, boolean z3) {
        if ((PhoneManager.get().isDefaultPhoneApp() || Prefs.bm.get().booleanValue()) && getCallListSize() == 1) {
            synchronized (KeyguardActivityStateManager.get()) {
                LockscreenKeyguardManager.get().a();
            }
        }
        Intent intent = new Intent();
        ContactDetailsActivity.fillIntentWithCallData(intent, 0L, callData.getNumber().getRawNumber(), callData.getCallId(), ExtractedInfo.Builder.getBuilderAccordingToOrigin(callData.getNumber(), IMDataExtractionUtils.RecognizedPersonOrigin.CALL).build(), false, null, null);
        intent.putExtra(BaseContactDetailsActivity.EXTRA_SHOW_KEYPAD, z);
        intent.putExtra(PostCallActivity.EXTRA_IS_BLOCKED, callData.isBlocked());
        if (callData.getState() == CallState.RINGING_INCOMING) {
            intent.putExtra(Constants.EXTRA_IS_INCOMING, true);
        }
        intent.putExtra(ContactDetailsActivity.EXTRA_IS_CALL_WAITING, callData.isCallWaiting());
        if (IncognitoCallManager.get().isIncognito(callData.getNumber())) {
            intent.putExtra(BaseContactDetailsActivity.EXTRA_INCOGNITO_CALL, true);
        }
        intent.putExtra(BaseContactDetailsActivity.EXTRA_OPEN_CONTACT_DETAILS, z2);
        showCallScreen(intent, !PhoneManager.get().isDefaultPhoneApp(), z3);
    }

    private void speakNameIfNeeded(CallData callData) {
        if (getCallListSize() <= 1) {
            final Phone number = callData.getNumber();
            if (!number.isEmpty()) {
                if (!Prefs.f15235c.get().booleanValue()) {
                    CLog.a(PhoneStateManager.class, "Not saying name because speakName is disabled");
                } else if (callData.isBlocked()) {
                    CLog.a(PhoneStateManager.class, "Not saying name because speakName is blocked");
                } else {
                    int ringerMode = PhoneManager.getRingerMode();
                    if (ringerMode == 0 || ringerMode == 1) {
                        CLog.a(PhoneStateManager.class, "Not saying name because in silent/vibrate mode");
                    } else {
                        new Task() { // from class: com.callapp.contacts.manager.phone.PhoneStateManager.14
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                final String fullName = new ContactLoader().addSyncLoader(new DeviceIdLoader()).addSyncLoader(new DeviceDataLoader()).addSyncLoader(new FastCacheDataLoader()).addFields(ContactField.deviceId, ContactField.fullName).load(number).getFullName();
                                if (StringUtils.b((CharSequence) fullName)) {
                                    PhoneStateManager.this.textToSpeechWrapper = new TextToSpeechWrapper();
                                    final TextToSpeechWrapper textToSpeechWrapper = PhoneStateManager.this.textToSpeechWrapper;
                                    textToSpeechWrapper.f14940a = new TextToSpeech(Singletons.get().getApplication(), new TextToSpeech.OnInitListener() { // from class: com.callapp.contacts.manager.TextToSpeechWrapper.1
                                        @Override // android.speech.tts.TextToSpeech.OnInitListener
                                        public void onInit(int i) {
                                            TextToSpeech textToSpeech = textToSpeechWrapper.f14940a;
                                            if (textToSpeech != null) {
                                                if (i != 0) {
                                                    CLog.a(TextToSpeechWrapper.class, "init failed");
                                                    textToSpeechWrapper.a();
                                                    return;
                                                }
                                                textToSpeech.setOnUtteranceProgressListener(new UtteranceProgressListener() { // from class: com.callapp.contacts.manager.TextToSpeechWrapper.1.1
                                                    {
                                                        AnonymousClass1.this = this;
                                                    }

                                                    @Override // android.speech.tts.UtteranceProgressListener
                                                    public void onDone(String str) {
                                                        textToSpeechWrapper.a();
                                                    }

                                                    @Override // android.speech.tts.UtteranceProgressListener
                                                    public void onError(String str) {
                                                        CLog.a(TextToSpeechWrapper.class, "error playing text: %s", fullName);
                                                        textToSpeechWrapper.a();
                                                    }

                                                    @Override // android.speech.tts.UtteranceProgressListener
                                                    public void onStart(String str) {
                                                    }
                                                });
                                                HashMap<String, String> hashMap = new HashMap<>();
                                                Bundle bundle = new Bundle();
                                                hashMap.put("streamType", "4");
                                                bundle.putString("streamType", "4");
                                                hashMap.put("utteranceId", "utterance_id");
                                                if (Build.VERSION.SDK_INT >= 21) {
                                                    StringBuilder sb = new StringBuilder();
                                                    sb.append(hashCode());
                                                    textToSpeech.speak(fullName, 0, bundle, sb.toString());
                                                    return;
                                                }
                                                textToSpeech.speak(fullName, 0, hashMap);
                                            }
                                        }
                                    });
                                }
                            }
                        }.execute();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startFullDetailsActivity(String str, Intent intent, boolean z) {
        ContactDetailsActivity.isStartedFromACall.set(true);
        ContactDetailsActivity.startFullDetailsActivity(CallAppApplication.get(), intent, ExtractedInfo.Builder.getBuilderAccordingToOrigin(PhoneManager.get().a(str), IMDataExtractionUtils.RecognizedPersonOrigin.CALL).build(), z, false, null, "Incoming/outgoing Call", !z && !this.isContactDetailsActivityVisible);
    }

    private void startTheServiceAsForeground(String str, boolean z) {
        Intent component = new Intent("com.callapp.contacts.ACTION_START_CALL_NOTIFICATION").setComponent(new ComponentName(CallAppApplication.get(), CallAppService.class));
        component.putExtra(Constants.EXTRA_PHONE_NUMBER, str);
        component.putExtra(Constants.EXTRA_IS_INCOMING, z);
        CallAppService.a(CallAppApplication.get(), component, true);
    }

    private void startVibrating() {
        this.isVibrating = true;
        Vibrator vibrator = (Vibrator) CallAppApplication.get().getSystemService("vibrator");
        long[] jArr = {0, 1000, 1000};
        if (Build.VERSION.SDK_INT >= 26) {
            vibrator.vibrate(VibrationEffect.createWaveform(jArr, 0), new AudioAttributes.Builder().setUsage(6).build());
        } else {
            vibrator.vibrate(jArr, 0);
        }
        this.shouldVibrateWhenRinging = false;
    }

    private void telephonyOnCallStateChanged(int i, String str) {
        synchronized (this.callStateChangedFromTelephonyManagerLock) {
            if (this.isFirstUpdateFromTelephonyManager) {
                this.isFirstUpdateFromTelephonyManager = false;
                CLog.a(PhoneStateManager.class, "PhoneStateManager.onCallStateChanged first update from TelephonyManager called with PHONE_NUMBER = [%s], STATE = [%s]", str, getStateName(i));
                return;
            }
            CLog.a(PhoneStateManager.class, "PhoneStateManager.onCallStateChanged called with PHONE_NUMBER = [%s], STATE = [%s]", str, getStateName(i));
            if (this.lastStateHandledFromTelephonyManager == i) {
                CLog.a(PhoneStateManager.class, "Already handled state from TelephonyManager: ".concat(String.valueOf(i)));
                return;
            }
            this.lastStateHandledFromTelephonyManager = i;
            onCallStateChanged(EVENT_SOURCE.TELEPHONY_MANAGER, i, str);
        }
    }

    private CallState translateState(int i) {
        if (i == 1) {
            return CallState.RINGING_OUTGOING;
        }
        if (i == 2) {
            return CallState.RINGING_INCOMING;
        }
        if (i == 3) {
            return CallState.ON_HOLD;
        }
        if (i == 4) {
            return CallState.TALKING;
        }
        if (i != 7) {
            if (i == 9) {
                return CallState.CONNECTING;
            }
            if (i != 10) {
                return CallState.NO_CALLS;
            }
        }
        return CallState.DISCONNECTED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unRegisterForContactDataChanges(ContactData contactData) {
        Singletons.get().getContactLoaderManager().unRegisterForContactDetailsStack(contactData, this);
    }

    private void unregisterAllContactData() {
        synchronized (this.contactsByCalls) {
            Iterator<Pair<CallData, ContactData>> it2 = this.contactsByCalls.iterator();
            while (it2.hasNext()) {
                unRegisterForContactDataChanges((ContactData) it2.next().second);
            }
            this.contactsByCalls.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:62:0x013c A[Catch: all -> 0x05e2, TryCatch #0 {, blocks: (B:4:0x0007, B:7:0x0027, B:14:0x003e, B:16:0x0048, B:18:0x0050, B:20:0x0057, B:27:0x006b, B:37:0x009b, B:39:0x009d, B:41:0x00a9, B:42:0x00b5, B:44:0x00bb, B:46:0x00cd, B:48:0x00d2, B:50:0x00e0, B:51:0x00fe, B:55:0x0105, B:60:0x0118, B:62:0x013c, B:63:0x014d, B:65:0x014f, B:67:0x0159, B:69:0x0160, B:71:0x0166, B:73:0x016d, B:75:0x0185, B:76:0x018f, B:77:0x0198, B:78:0x01a1, B:80:0x01ae, B:82:0x01b3, B:84:0x01c3, B:86:0x01db, B:88:0x01e3, B:90:0x01e5, B:92:0x01fe, B:98:0x020f, B:102:0x021c, B:103:0x0222, B:103:0x0222, B:104:0x0225, B:105:0x0249, B:110:0x0264, B:112:0x028f, B:113:0x02a7, B:115:0x02ae, B:118:0x02c3, B:120:0x02c5, B:122:0x02cc, B:123:0x02da, B:125:0x02dc, B:127:0x02e3, B:129:0x02f5, B:131:0x0300, B:132:0x0334, B:134:0x033c, B:136:0x0344, B:138:0x0385, B:139:0x039d, B:141:0x03a8, B:143:0x03b0, B:145:0x03b7, B:147:0x03df, B:148:0x03e9, B:150:0x03ee, B:152:0x03f0, B:166:0x041d, B:168:0x041f, B:169:0x043a, B:171:0x043c, B:172:0x044b, B:174:0x0456, B:176:0x04a7, B:178:0x04b7, B:180:0x04c3, B:181:0x04c8, B:183:0x04ca, B:188:0x04df, B:190:0x04ea, B:191:0x04fe, B:192:0x0503, B:192:0x0503, B:193:0x0506, B:195:0x0512, B:200:0x0527, B:202:0x052e, B:204:0x0540, B:206:0x054a, B:207:0x0569, B:209:0x056b, B:212:0x0592, B:215:0x0598, B:217:0x05a1, B:219:0x05bd, B:221:0x05e0), top: B:228:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x014f A[Catch: all -> 0x05e2, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0007, B:7:0x0027, B:14:0x003e, B:16:0x0048, B:18:0x0050, B:20:0x0057, B:27:0x006b, B:37:0x009b, B:39:0x009d, B:41:0x00a9, B:42:0x00b5, B:44:0x00bb, B:46:0x00cd, B:48:0x00d2, B:50:0x00e0, B:51:0x00fe, B:55:0x0105, B:60:0x0118, B:62:0x013c, B:63:0x014d, B:65:0x014f, B:67:0x0159, B:69:0x0160, B:71:0x0166, B:73:0x016d, B:75:0x0185, B:76:0x018f, B:77:0x0198, B:78:0x01a1, B:80:0x01ae, B:82:0x01b3, B:84:0x01c3, B:86:0x01db, B:88:0x01e3, B:90:0x01e5, B:92:0x01fe, B:98:0x020f, B:102:0x021c, B:103:0x0222, B:103:0x0222, B:104:0x0225, B:105:0x0249, B:110:0x0264, B:112:0x028f, B:113:0x02a7, B:115:0x02ae, B:118:0x02c3, B:120:0x02c5, B:122:0x02cc, B:123:0x02da, B:125:0x02dc, B:127:0x02e3, B:129:0x02f5, B:131:0x0300, B:132:0x0334, B:134:0x033c, B:136:0x0344, B:138:0x0385, B:139:0x039d, B:141:0x03a8, B:143:0x03b0, B:145:0x03b7, B:147:0x03df, B:148:0x03e9, B:150:0x03ee, B:152:0x03f0, B:166:0x041d, B:168:0x041f, B:169:0x043a, B:171:0x043c, B:172:0x044b, B:174:0x0456, B:176:0x04a7, B:178:0x04b7, B:180:0x04c3, B:181:0x04c8, B:183:0x04ca, B:188:0x04df, B:190:0x04ea, B:191:0x04fe, B:192:0x0503, B:192:0x0503, B:193:0x0506, B:195:0x0512, B:200:0x0527, B:202:0x052e, B:204:0x0540, B:206:0x054a, B:207:0x0569, B:209:0x056b, B:212:0x0592, B:215:0x0598, B:217:0x05a1, B:219:0x05bd, B:221:0x05e0), top: B:228:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateCallList(android.telecom.Call r7) {
        /*
            Method dump skipped, instructions count: 1511
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.phone.PhoneStateManager.updateCallList(android.telecom.Call):void");
    }

    private void updateNotificationAndWidget() {
        CallAppApplication.get().a((Runnable) _$$Lambda$PhoneStateManager$iAqhUIMxZ2MvI53j4KX9MXGg7tU.INSTANCE, 1000L);
    }

    private boolean waitForCallMode() {
        int currentAudioMode = PhoneManager.getCurrentAudioMode();
        CLog.a(PhoneStateManager.class, "waitForCallMode currentAudioMode=".concat(String.valueOf(currentAudioMode)));
        int i = 0;
        while (!isInCallAudioMode(currentAudioMode) && i < 13) {
            CLog.a(PhoneStateManager.class, "waitForCallMode currentAudioMode=" + currentAudioMode + " tries=" + i + " / 13");
            currentAudioMode = PhoneManager.getCurrentAudioMode();
            i++;
            try {
                Thread.sleep(300L);
            } catch (InterruptedException e) {
            }
        }
        return isInCallAudioMode(currentAudioMode);
    }

    public void addDetailsListener(CallDetailsListener callDetailsListener) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.callDetailsListeners.add(callDetailsListener);
            onCallDetailsChanged();
        }
    }

    public void addListener(CallStateListener callStateListener) {
        addListenerIfNotPreCall(callStateListener, false);
    }

    public boolean addListenerIfNotPreCall(CallStateListener callStateListener, boolean z) {
        this.listeners.add(callStateListener);
        CallData lastCall = getLastCall();
        if (lastCall != null && !z) {
            new NotifyTask(callStateListener, lastCall).execute();
        }
        return lastCall != null;
    }

    public void addToCallScreeningServiceHandleList(Call.Details details, Phone phone, boolean z) {
        this.callScreeningServiceHandleMap.put(details, Boolean.valueOf(z));
        this.callScreeningServiceHandleNonDefaultMap.put(phone, Boolean.valueOf(z));
    }

    public void cleanState() {
        this.lastHandledEvents.clear();
        this.lastStateHandledFromTelephonyManager = -1;
        this.lastStateHandledGlobally = -1;
        this.lastOutgoingRingingPhoneHandled = null;
        this.isLastCallIncoming = null;
        this.isOffhookBeforeOutgoing = false;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        CLog.a(PhoneStateManager.class, "PhoneStateManager.destroy called!");
        listenToCallState(false);
        this.listeners.clear();
        this.callDetailsListeners.clear();
        HandlerThread handlerThread = this.handlerThread;
        if (handlerThread != null) {
            handlerThread.quit();
        }
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        HandlerThread handlerThread2 = this.notificationHandlerThread;
        if (handlerThread2 != null) {
            handlerThread2.quit();
        }
        HandlerThread handlerThread3 = this.ringerHandlerThread;
        if (handlerThread3 != null) {
            handlerThread3.quit();
        }
        ((AudioManager) Singletons.a("audio")).abandonAudioFocus(this);
    }

    public CopyOnWriteArrayList<CallData> getActiveCallsInTestMode() {
        if (CallAppApplication.get().isUnitTestMode()) {
            return new CopyOnWriteArrayList<>(this.callList.values());
        }
        return null;
    }

    public List<CallData> getAllConferenceCalls() {
        Call call;
        List<Call> children;
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 23 && (call = this.conferenceManager) != null && (children = call.getChildren()) != null && !children.isEmpty()) {
            for (Call call2 : children) {
                if (callToCallData(call2) != null) {
                    arrayList.add(callToCallData(call2));
                }
            }
        }
        return arrayList;
    }

    public List<CallData> getAllConnectingOrConnectedCalls() {
        ArrayList arrayList;
        if (Build.VERSION.SDK_INT < 23) {
            return null;
        }
        synchronized (this.callListLock) {
            arrayList = new ArrayList();
            for (CallData callData : this.callList.values()) {
                if (callData.getState().isConnectingOrConnected()) {
                    arrayList.add(callData);
                }
            }
        }
        return arrayList;
    }

    public List<CallData> getAllHoldCalls() {
        ArrayList arrayList;
        if (Build.VERSION.SDK_INT < 23) {
            return null;
        }
        synchronized (this.callListLock) {
            arrayList = new ArrayList();
            for (CallData callData : this.callList.values()) {
                if (callData.getState().isOnHold()) {
                    arrayList.add(callData);
                }
            }
        }
        return arrayList;
    }

    public List<ContactData> getAllHoldContactData() {
        ArrayList arrayList;
        if (Build.VERSION.SDK_INT < 23) {
            return null;
        }
        synchronized (this.callListLock) {
            arrayList = new ArrayList();
            for (CallData callData : this.callList.values()) {
                if (callData.getState().isOnHold()) {
                    arrayList.add(getContactDataByCallData(callData));
                }
            }
        }
        return arrayList;
    }

    public CallData getCallForPhone(Phone phone) {
        CallData next;
        if (phone == null) {
            return null;
        }
        synchronized (this.callListLock) {
            Iterator<CallData> it2 = this.callList.values().iterator();
            do {
                if (!it2.hasNext()) {
                    return null;
                }
                next = it2.next();
            } while (!phone.equals(next.getNumber()));
            return next;
        }
    }

    public CallData getCallForPhoneByTelecomId(String str) {
        if (StringUtils.b((CharSequence) str)) {
            return this.callList.get(str);
        }
        return null;
    }

    public int getCallListSize() {
        return this.callList.size();
    }

    public int getCallNumberToday() {
        return Prefs.cG.get().intValue();
    }

    public Call getConferenceManager() {
        return this.conferenceManager;
    }

    public ContactData getContactDataByCallData(CallData callData) {
        ContactData contactData;
        synchronized (this.contactsByCalls) {
            Iterator<Pair<CallData, ContactData>> it2 = this.contactsByCalls.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    contactData = null;
                    break;
                }
                Pair<CallData, ContactData> next = it2.next();
                if (((CallData) next.first).equals(callData)) {
                    contactData = (ContactData) next.second;
                    break;
                }
            }
        }
        return contactData;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallData getFirstCallDataWithState(CallState callState) {
        if (Build.VERSION.SDK_INT < 23) {
            return null;
        }
        synchronized (this.callListLock) {
            for (CallData callData : this.callList.values()) {
                if (callData.getState() == callState && !callData.isConferenceManager()) {
                    return callData;
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallData getFirstCallDataWithState(List<CallState> list) {
        if (Build.VERSION.SDK_INT < 23) {
            return null;
        }
        for (CallState callState : list) {
            CallData firstCallDataWithState = getFirstCallDataWithState(callState);
            if (firstCallDataWithState != null) {
                return firstCallDataWithState;
            }
        }
        return null;
    }

    public boolean getIsIncomingCallOpenedOverlay() {
        return this.isIncomingCallOpenedOverlay;
    }

    public CallData getLastCall() {
        synchronized (this.callListLock) {
            if (this.callList.isEmpty()) {
                return null;
            }
            ArrayList arrayList = new ArrayList(this.callList.entrySet());
            return (CallData) ((Map.Entry) arrayList.get(arrayList.size() - 1)).getValue();
        }
    }

    public long getLongestCallDuration() {
        if (Build.VERSION.SDK_INT < 23) {
            return 0L;
        }
        synchronized (this.callListLock) {
            if (CollectionUtils.a(this.callList)) {
                return -1L;
            }
            Iterator<CallData> it2 = this.callList.values().iterator();
            if (!it2.hasNext()) {
                return 0L;
            }
            return it2.next().getTalkingStartTime();
        }
    }

    public boolean getStateBeforeMerge() {
        return this.isStateBeforeMerge;
    }

    public Call getTelecomCallFromCallData(CallData callData) {
        synchronized (this.callListLock) {
            if (callData != null) {
                if (callData.getCallId() != null) {
                    return this.callDataToTelecomCall.get(callData.getCallId());
                }
            }
            return null;
        }
    }

    public boolean handleBlockedCall(Phone phone, boolean z) {
        boolean z2;
        blockedCallsList.add(phone);
        int i = AnonymousClass25.f15171a[((BlockManager.BlockMethod) Prefs.bM.get()).ordinal()];
        if (i == 1) {
            muteRingerIfNeeded();
            return false;
        } else if (i != 2) {
            return false;
        } else {
            if (!z) {
                muteRingerIfNeeded();
                if (PhoneManager.get().isDefaultPhoneApp()) {
                    PhoneManager.get();
                    z2 = PhoneManager.f();
                } else {
                    z2 = PhoneManager.get().a();
                }
                if (!z2) {
                    return true;
                }
                showBlockedNotification();
                return true;
            } else if (Build.VERSION.SDK_INT < 24) {
                return true;
            } else {
                showBlockedNotification();
                return true;
            }
        }
    }

    public void handleRinger() {
        if (!Prefs.h.get().booleanValue() && !Prefs.fA.get().booleanValue()) {
            Handler handler = this.ringerHandler;
            if (handler != null) {
                handler.removeCallbacks(this.ringerRunnable);
            }
            if (PhoneManager.get().getConnectingOrActiveCall() == null) {
                if (this.isCurrentlyRinging) {
                    Prefs.fA.set(Boolean.TRUE);
                    return;
                }
                Handler handler2 = this.ringerHandler;
                if (handler2 != null) {
                    handler2.post(new Runnable() { // from class: com.callapp.contacts.manager.phone.PhoneStateManager.6
                        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00a1 -> B:28:0x007e). Please submit an issue!!! */
                        @Override // java.lang.Runnable
                        public void run() {
                            if (PhoneStateManager.this.isCurrentlyRinging) {
                                Prefs.fA.set(Boolean.TRUE);
                                return;
                            }
                            CallData incomingCall = PhoneManager.get().getIncomingCall();
                            CallData callData = incomingCall;
                            if (incomingCall == null) {
                                try {
                                    synchronized (PhoneStateManager.this.waitForIncomingCallLock) {
                                        PhoneStateManager.this.waitForIncomingCallLock.wait(FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT);
                                    }
                                } catch (InterruptedException e) {
                                }
                                CallData incomingCall2 = PhoneManager.get().getIncomingCall();
                                callData = incomingCall2;
                                if (incomingCall2 == null) {
                                    return;
                                }
                            }
                            if (!callData.isBlocked() && PhoneStateManager.this.getCallListSize() <= 1) {
                                for (int i = 0; !PhoneStateManager.this.isCurrentlyRinging && i < 20; i++) {
                                    try {
                                        Thread.sleep(100L);
                                    } catch (InterruptedException e2) {
                                    }
                                }
                                if (PhoneStateManager.this.isCurrentlyRinging) {
                                    Prefs.fA.set(Boolean.TRUE);
                                } else {
                                    PhoneStateManager.this.manuallyRingOrVibrate(callData);
                                }
                            }
                        }
                    });
                }
            }
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        this.telephonyManager = (TelephonyManager) Singletons.a(Constants.EXTRA_PHONE_NUMBER);
        HandlerThread handlerThread = new HandlerThread(PhoneStateManager.class.toString());
        this.handlerThread = handlerThread;
        handlerThread.start();
        AndroidUtils.a(this.handlerThread.getLooper());
        this.handler = new Handler(this.handlerThread.getLooper());
        HandlerThread handlerThread2 = new HandlerThread(PhoneStateManager.class.toString());
        this.notificationHandlerThread = handlerThread2;
        handlerThread2.start();
        AndroidUtils.a(this.notificationHandlerThread.getLooper());
        this.notificationHandler = new Handler(this.notificationHandlerThread.getLooper());
        listenToCallState(true);
        initRingerHandlerIfNeeded();
    }

    public void initRingerHandlerIfNeeded() {
        if (Build.VERSION.SDK_INT >= 23 && !Prefs.fA.get().booleanValue() && this.ringerHandlerThread == null) {
            HandlerThread handlerThread = new HandlerThread("RingerHandler");
            this.ringerHandlerThread = handlerThread;
            handlerThread.start();
            AndroidUtils.a(this.ringerHandlerThread.getLooper());
            this.ringerHandler = new Handler(this.ringerHandlerThread.getLooper());
            handleRequestAudioFocus();
        }
    }

    public void internalSilenceRinger() {
        TextToSpeechWrapper textToSpeechWrapper = this.textToSpeechWrapper;
        if (textToSpeechWrapper != null) {
            textToSpeechWrapper.a();
        }
        Handler handler = this.ringerHandler;
        if (handler != null) {
            handler.post(getInternalSilenceRingerRunnable());
        } else {
            getInternalSilenceRingerRunnable().run();
        }
    }

    public boolean isAllCallsInConference() {
        return Build.VERSION.SDK_INT >= 23 && this.conferenceManager != null && getCallListSize() - 1 == this.conferenceManager.getChildren().size();
    }

    public boolean isAnyCallActive() {
        if (Build.VERSION.SDK_INT >= 23 && PhoneManager.get().isDefaultPhoneApp()) {
            return PhoneManager.get().getIncomingOrConnectingOrConnectedCall() != null;
        }
        int callState = this.telephonyManager.getCallState();
        return callState == 2 || callState == 1;
    }

    public boolean isAnyCallTalking() {
        return Build.VERSION.SDK_INT >= 23 && PhoneManager.get().isDefaultPhoneApp() && PhoneManager.get().getTalkingCall() != null;
    }

    public boolean isCallDataInsideConference(CallData callData) {
        if (Build.VERSION.SDK_INT < 23 || this.conferenceManager == null || callData == null) {
            return false;
        }
        synchronized (this.callListLock) {
            Call call = this.callDataToTelecomCall.get(callData.getCallId());
            if (call != null) {
                List<Call> children = this.conferenceManager.getChildren();
                if (CollectionUtils.b(children)) {
                    return children.contains(call);
                }
            }
            return false;
        }
    }

    public boolean isIncoming() {
        return this.currentCallState == CallState.RINGING_INCOMING;
    }

    public boolean isIncomingCallRingingState() {
        return (Build.VERSION.SDK_INT < 23 || !PhoneManager.get().isDefaultPhoneApp()) ? this.telephonyManager.getCallState() == 1 : PhoneManager.get().getIncomingCall() != null;
    }

    public void listenToCallState(boolean z) {
        CLog.a(PhoneStateManager.class, "listenToCallState: ".concat(String.valueOf(z)));
        this.telephonyManager.listen(this, z ? 32 : 0);
    }

    public void muteRingerIfNeeded() {
        if (PhoneManager.get().isDefaultPhoneApp()) {
            this.handler.post(new Runnable() { // from class: com.callapp.contacts.manager.phone.PhoneStateManager.12

                /* renamed from: a  reason: collision with root package name */
                int f15137a = 0;

                @Override // java.lang.Runnable
                public void run() {
                    int i;
                    if (((AudioManager) Singletons.a("audio")).getMode() == 1 || (i = this.f15137a) >= 3) {
                        PhoneManager.get().d();
                        return;
                    }
                    this.f15137a = i + 1;
                    PhoneStateManager.this.handler.postDelayed(this, 100L);
                }
            });
        } else if (getCallListSize() == 0) {
            int streamVolume = PhoneManager.getStreamVolume(2);
            if (streamVolume > 0) {
                this.currStreamRingVolume = streamVolume;
                PhoneManager.setStreamVolume(2, 0);
            }
            this.currRingerMode = PhoneManager.getRingerMode();
            PhoneManager.setRingerMode(0);
        }
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int i) {
        if (i == -2) {
            this.isCurrentlyRinging = true;
            this.ringerHandler.postDelayed(this.ringerRunnable, FlashCallInitializationDetails.DEFAULT_INTERCEPTION_TIMEOUT);
            CLog.a(PhoneStateManager.class, "Phone is ringing");
        }
    }

    public void onAudioStateChanged(final CallAudioState callAudioState) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.handler.post(new Runnable() { // from class: com.callapp.contacts.manager.phone._$$Lambda$PhoneStateManager$AP0xvp4Ph_d88oImyX4_cVPM7vM
                @Override // java.lang.Runnable
                public final void run() {
                    PhoneStateManager.lambda$onAudioStateChanged$0(callAudioState);
                }
            });
        }
    }

    public void onCallAdded(Call call) {
        CLog.a(PhoneStateManager.class, "onCallAdded: " + call + "details " + call.getDetails().getVideoState());
        setDefaultPhoneAppIfNeeded();
        if (!PhoneManager.get().isDefaultPhoneApp()) {
            CLog.a(PhoneStateManager.class, "onCallAdded return because we are not default phone app");
            return;
        }
        AnonymousClass2 r0 = new AnonymousClass2();
        call.registerCallback(r0);
        r0.onStateChanged(call, call.getState());
    }

    @Override // android.telephony.PhoneStateListener
    public void onCallStateChanged(int i, String str) {
        telephonyOnCallStateChanged(i, str);
    }

    public void onCallStateChanged(EVENT_SOURCE event_source, int i, String str) {
        final CallStateChangedEvent callStateChangedEvent = new CallStateChangedEvent(event_source, i, str);
        if (!CallAppApplication.get().isUnitTestMode()) {
            this.handler.post(new Runnable() { // from class: com.callapp.contacts.manager.phone.PhoneStateManager.8
                @Override // java.lang.Runnable
                public void run() {
                    PhoneStateManager.this.onCallStateChanged(callStateChangedEvent);
                }
            });
        } else {
            onCallStateChanged(callStateChangedEvent);
        }
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(final ContactData contactData, Set<ContactField> set) {
        if (CollectionUtils.a(set, ContactField.photoUrl, ContactField.fullName) && this.notify) {
            this.notificationHandler.post(new Runnable() { // from class: com.callapp.contacts.manager.phone.PhoneStateManager.23
                @Override // java.lang.Runnable
                public void run() {
                    CallData activeCall = PhoneManager.get().isDefaultPhoneApp() ? Arrays.equals(ArrayUtils.a(PhoneStateManager.this.getCallsState()), Constants.CALL_BEFORE_MERGE) ? PhoneManager.get().getActiveCall() : PhoneStateManager.this.getLastCall() : PhoneStateManager.this.getLastCall();
                    if (activeCall != null && !activeCall.getState().isIdle() && contactData.getPhones().contains(activeCall.getNumber())) {
                        NotificationManager.get().a(activeCall, contactData, true, false);
                    }
                }
            });
        }
    }

    public void removeDetailsListener(CallDetailsListener callDetailsListener) {
        this.callDetailsListeners.remove(callDetailsListener);
    }

    public void removeListener(CallStateListener callStateListener) {
        this.listeners.remove(callStateListener);
    }

    public void separateCall(CallData callData) {
        Call telecomCallFromCallData;
        if (Build.VERSION.SDK_INT >= 23 && callData != null && (telecomCallFromCallData = getTelecomCallFromCallData(callData)) != null) {
            setCallAsFirstCallInCallList(telecomCallFromCallData);
            setCallActionSource(CallActionSource.ACTIVITY);
            TelecomAdapter.getInstance();
            if (telecomCallFromCallData != null) {
                telecomCallFromCallData.splitFromConference();
                return;
            }
            String str = TelecomAdapter.f14425a;
            new StringBuilder("error separateCall, call not in call list ").append(TelecomAdapter.a(telecomCallFromCallData));
            CLog.a(str);
        }
    }

    public void setCallActionSource(CallActionSource callActionSource) {
        this.callActionSource = callActionSource;
    }

    public void setConferencesActivityVisible(boolean z) {
        this.isConferencesActivityVisible = z;
    }

    public void setContactDetailsActivityVisible(boolean z) {
        this.isContactDetailsActivityVisible = z;
    }

    public void setDefaultPhoneAppIfNeeded() {
        if (getCallListSize() == 0) {
            PhoneManager.get().e();
        }
    }

    public void setStateBeforeMerge(boolean z) {
        this.isStateBeforeMerge = z;
    }

    public boolean shouldConferenceScreenAppear() {
        return this.shouldShowConference;
    }

    public void showCallAppIfNeeded(CallData callData, boolean z) {
        showCallAppIfNeeded(callData, false, z, false);
    }

    public void showCallAppIfNeeded(final CallData callData, boolean z, boolean z2, boolean z3) {
        if (this.notify) {
            boolean z4 = !callData.isIncoming();
            if (!z4 && callData.isBlocked()) {
                if (Prefs.bM.get() != BlockManager.BlockMethod.HANG_UP) {
                    NotificationManager.get().a(blockedCallsList);
                } else {
                    return;
                }
            }
            if (isValidNumberToShowCallScreen(callData)) {
                if (PhoneManager.get().isDefaultPhoneApp() || ((z4 && Prefs.bl.get().booleanValue()) || (!z4 && Prefs.bk.get().booleanValue()))) {
                    showCallScreen(callData, z, z2, z3);
                }
                if (getCallListSize() > 0) {
                    this.notificationHandler.post(new Runnable() { // from class: com.callapp.contacts.manager.phone.PhoneStateManager.13
                        @Override // java.lang.Runnable
                        public void run() {
                            NotificationManager notificationManager = NotificationManager.get();
                            CallData callData2 = callData;
                            notificationManager.a(callData2, PhoneStateManager.this.getContactDataByCallData(callData2), false, false);
                        }
                    });
                }
            }
        }
    }

    public void showCallScreen(final Intent intent, final boolean z, boolean z2) {
        final String stringExtra = intent.getStringExtra(Constants.EXTRA_PHONE_NUMBER);
        if (Prefs.aW.get().booleanValue()) {
            boolean z3 = intent.getExtras().getBoolean(Constants.EXTRA_IS_INCOMING);
            boolean z4 = true;
            if (PhoneManager.get().isDefaultPhoneApp()) {
                KeyguardActivityStateManager.get();
                boolean b2 = KeyguardActivityStateManager.b();
                if (!z3) {
                    CLog.a(PhoneStateManager.class, "showCallScreen " + AndroidUtils.a(intent));
                    if (RomDetector.isMIUI()) {
                        new Task() { // from class: com.callapp.contacts.manager.phone.PhoneStateManager.15
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                PhoneStateManager.this.openCallScreenIfNeeded(intent, stringExtra);
                            }
                        }.schedule(1000);
                    } else {
                        openCallScreenIfNeeded(intent, stringExtra);
                    }
                } else if (b2 || !this.screenStateBeforeRinging) {
                    this.isIncomingCallOpenedOverlay = false;
                    if (z2) {
                        new Task() { // from class: com.callapp.contacts.manager.phone.PhoneStateManager.16
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                OverlayManager.get().a();
                                PhoneStateManager.this.startFullDetailsActivity(stringExtra, intent, false);
                            }
                        }.schedule(1000);
                        return;
                    }
                    OverlayManager.get().a();
                    startFullDetailsActivity(stringExtra, intent, false);
                } else if (this.isContactDetailsActivityVisible || this.isConferencesActivityVisible || !Activities.e()) {
                    this.isIncomingCallOpenedOverlay = false;
                    if (z2) {
                        new Task() { // from class: com.callapp.contacts.manager.phone.PhoneStateManager.18
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                OverlayManager.get().a();
                                PhoneStateManager.this.startFullDetailsActivity(stringExtra, intent, false);
                            }
                        }.schedule(1000);
                        return;
                    }
                    OverlayManager.get().a();
                    startFullDetailsActivity(stringExtra, intent, false);
                } else {
                    this.isIncomingCallOpenedOverlay = true;
                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.manager.phone.PhoneStateManager.17
                        @Override // java.lang.Runnable
                        public void run() {
                            OverlayManager.get().a();
                            IncomingCallOverlayView incomingCallOverlayView = new IncomingCallOverlayView(CallAppApplication.get());
                            incomingCallOverlayView.onCreate();
                            incomingCallOverlayView.onNewIntent(intent);
                        }
                    });
                }
            } else {
                boolean z5 = intent.getExtras().getBoolean(ContactDetailsActivity.EXTRA_IS_CALL_WAITING);
                if ((!PhoneManager.get().isDefaultPhoneApp() && !Prefs.bm.get().booleanValue()) || z5 || z3) {
                    z4 = false;
                }
                if (z4) {
                    CLog.a(PhoneStateManager.class, "showCallScreen " + AndroidUtils.a(intent));
                    if (RomDetector.isMIUI()) {
                        new Task() { // from class: com.callapp.contacts.manager.phone.PhoneStateManager.19
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                PhoneStateManager.this.startFullDetailsActivity(stringExtra, intent, z);
                            }
                        }.schedule(1000);
                    } else {
                        startFullDetailsActivity(stringExtra, intent, z);
                    }
                } else if (!OverlayManager.get().a(PhoneManager.get().a(stringExtra))) {
                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.manager.phone.PhoneStateManager.20
                        @Override // java.lang.Runnable
                        public void run() {
                            if (Activities.e()) {
                                OverlayManager.get().a();
                                DuringCallOverlayView duringCallOverlayView = new DuringCallOverlayView(CallAppApplication.get(), new BaseOverlayView.OverlayViewListener() { // from class: com.callapp.contacts.manager.phone.PhoneStateManager.20.1
                                    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView.OverlayViewListener
                                    public final void a() {
                                    }

                                    @Override // com.callapp.contacts.activity.contact.details.overlay.BaseOverlayView.OverlayViewListener
                                    public final void b() {
                                        Prefs.P.set(Boolean.TRUE);
                                    }
                                });
                                duringCallOverlayView.onCreate();
                                duringCallOverlayView.onNewIntent(intent);
                            }
                        }
                    });
                }
            }
        }
    }

    public void updateCallAppInCallNotification() {
        this.notificationHandler.post(new Runnable() { // from class: com.callapp.contacts.manager.phone.PhoneStateManager.24
            @Override // java.lang.Runnable
            public void run() {
                NotificationManager.get().e();
            }
        });
    }
}
