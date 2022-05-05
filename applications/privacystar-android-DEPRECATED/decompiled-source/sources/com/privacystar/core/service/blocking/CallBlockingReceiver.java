package com.privacystar.core.service.blocking;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.firstorion.libcyd.PhoneRingingStoppedReason;
import com.privacystar.core.C1566R;
import com.privacystar.core.application.Constants;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.data.call.caller.PhoneEventType;
import com.privacystar.core.data.model.helper.ApprovedListRealm;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.data.offender.OffenderLookupUtil;
import com.privacystar.core.data.offender.PhoneRecord;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.analytics.p009fo.ExtendedCallEventBuilder;
import com.privacystar.core.service.blocking.api21.BlockingOverlayService;
import com.privacystar.core.service.calleryd.CallerYDHelper;
import com.privacystar.core.service.notification.NotificationService;
import com.privacystar.core.util.BlockingManager;
import com.privacystar.core.util.CallerIdUtil;
import com.privacystar.core.util.NotificationUtil;
import com.privacystar.core.util.ParsedPhoneNumber;
import com.privacystar.core.util.Text;
import io.realm.Realm;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/blocking/CallBlockingReceiver.class */
public class CallBlockingReceiver extends BroadcastReceiver {
    private static boolean callEventActive = false;
    private static boolean callEventTriggered = false;
    private static boolean numberOverride = false;
    private static String overrideNumber = "";
    private ParsedPhoneNumber incomingNumber;

    private void ended(Context context, Realm realm, Intent intent) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException, InterruptedException {
        try {
            CallerYDHelper.INSTANCE.onRingingStopped(PhoneRingingStoppedReason.CallIgnored, intent);
            NotificationService.onCallEnded(context);
            if (!PreferenceUtil.getLastCallOutgoing()) {
                ParsedPhoneNumber parsedPhoneNumber = new ParsedPhoneNumber(PreferenceUtil.getLastIncomingCall());
                Map<String, String> cachedShouldBlock = CallBlockingUtil.cachedShouldBlock(parsedPhoneNumber, context);
                boolean hitOffHook = CallBlockingUtil.getHitOffHook();
                boolean shouldBlock = getShouldBlock(cachedShouldBlock, parsedPhoneNumber, context, realm);
                if (!shouldBlock) {
                    if (!hitOffHook) {
                        Timber.m31i("Showing missed call notification", new Object[0]);
                        ExtendedCallEventBuilder.getInstance().setOppositeNumber(parsedPhoneNumber).setResolutionType(Event.CallResolutionType.MISSED).setResolutionTime(System.currentTimeMillis()).buildAndTrackIfReady();
                        NotificationUtil.showCallNotification(context, parsedPhoneNumber.getNumber(), PhoneEventType.CALL, NotificationUtil.NotificationType.MISSED);
                    } else {
                        ExtendedCallEventBuilder.getInstance().setOppositeNumber(parsedPhoneNumber).setResolutionType(Event.CallResolutionType.ANSWERED).setCallEndTime(System.currentTimeMillis()).buildAndTrackIfReady();
                    }
                }
                CallBlockingUtil.handleCall(cachedShouldBlock, 3, shouldBlock, parsedPhoneNumber, context, realm);
            }
        } finally {
            reset();
        }
    }

    private ParsedPhoneNumber getIncomingNumberFromIntent(Intent intent) {
        return numberOverride ? new ParsedPhoneNumber(overrideNumber) : new ParsedPhoneNumber(intent.getStringExtra("incoming_number"));
    }

    private boolean getShouldBlock(Map<String, String> map, ParsedPhoneNumber parsedPhoneNumber, Context context, Realm realm) {
        if (LicenseFeatureRealm.isFeatureAvailable(realm, Feature.CALL_BLOCKING) || LicenseFeatureRealm.isFeatureAvailable(realm, Feature.SCAM_BLOCKING)) {
            if (context.getResources().getBoolean(C1566R.bool.approved_list_enabled)) {
                Timber.m28v("Approved list enabled.", new Object[0]);
                Timber.m28v("Checking number:\n[p|%s][u|%s]", parsedPhoneNumber.getNumber(), parsedPhoneNumber.getUnparsedNumber());
                if (ApprovedListRealm.isCallerApproved(realm, parsedPhoneNumber.getNumber())) {
                    Timber.m37d("Call not blocked because caller is in Approved List.", new Object[0]);
                    return false;
                }
                Timber.m28v("Caller is not in approved list.", new Object[0]);
            }
            String str = map.get(BlockingManager.SHOULD_BLOCK_CONSTANT);
            if (!Text.isBlank(str)) {
                return Text.equalsIgnoreCase("true", str);
            }
            return false;
        }
        Timber.m37d("Call not blocked because neither General Call or Scam blocking features are available.", new Object[0]);
        return false;
    }

    private void offhook(Context context, Realm realm, Intent intent) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException, InterruptedException {
        CallBlockingUtil.setHitOffHook(true);
        BlockingOverlayService.disableBlockingMode();
        PreferenceUtil.putPhoneStateCallInProgress(true);
        if (CallState.looksLikeOutgoingCall()) {
            PreferenceUtil.putLastCallOutgoing(true);
            return;
        }
        ParsedPhoneNumber parsedPhoneNumber = new ParsedPhoneNumber(PreferenceUtil.getLastIncomingCall());
        Map<String, String> cachedShouldBlock = CallBlockingUtil.cachedShouldBlock(parsedPhoneNumber, context);
        boolean shouldBlock = getShouldBlock(cachedShouldBlock, parsedPhoneNumber, context, realm);
        CallerYDHelper.INSTANCE.onRingingStopped(PhoneRingingStoppedReason.CallAnswered, intent);
        CallBlockingUtil.handleCall(cachedShouldBlock, 2, shouldBlock, parsedPhoneNumber, context, realm);
    }

    private void onFailure(Context context) {
        if (!PreferenceUtil.getPhoneStateCallInProgress()) {
            PreferenceUtil.putPhoneStateHangUp(false);
        }
        if (PreferenceUtil.getCallSilenced()) {
            CallBlockingUtil.unsilenceRinger(context);
        }
    }

    private void reset() {
        setIncomingNumber(null);
        ExtendedCallEventBuilder.reset();
        CallBlockingUtil.setGoToVoicemail(false);
        CallBlockingUtil.setHitOffHook(false);
        PreferenceUtil.putPhoneStateCallInProgress(false);
        PreferenceUtil.putLastCallOutgoing(false);
        BlockingOverlayService.disableBlockingMode();
        setCallEventActive(false);
        setCallEventTriggered(false);
    }

    private void ringing(Context context, Intent intent, Realm realm) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException, InterruptedException {
        PhoneRecord findRecord;
        Map<String, String> cachedShouldBlock = CallBlockingUtil.cachedShouldBlock(getIncomingNumber(), context);
        PreferenceUtil.putLastCallOutgoing(false);
        AnalyticsManager.INSTANCE.fire(new Event.CallCenterStatusEvent(PreferenceUtil.getIsCallCenterEnabled()));
        AnalyticsManager.INSTANCE.fire(new Event.SubscriberStatusEvent(SubscriptionRealm.isSubscriptionActive(realm)));
        if (!isCallEventActive()) {
            ExtendedCallEventBuilder.getInstance().setIncomingTime(System.currentTimeMillis());
            setCallEventActive(true);
        }
        if (!"".equals(getIncomingNumber().getNumber()) && (findRecord = OffenderLookupUtil.findRecord(realm, getIncomingNumber().getNumber())) != null && findRecord.isHotlist) {
            AnalyticsManager.INSTANCE.fire(Event.HotlistCallEvent.INSTANCE);
        }
        if (Text.isBlank(getIncomingNumber().getNumber()) && !CallBlockingUtil.getHasSeenIncomingNumbers()) {
            Timber.m37d("Attempting to find number in logs", new Object[0]);
        } else if (!CallBlockingUtil.getHasSeenIncomingNumbers()) {
            PreferenceUtil.putHasSeenIncomingPhoneNumber(true);
            CallBlockingUtil.setHasSeenIncomingNumber(true);
        }
        PreferenceUtil.putLastIncomingCall(getIncomingNumber().getNumber());
        boolean shouldBlock = getShouldBlock(cachedShouldBlock, getIncomingNumber(), context, realm);
        String str = cachedShouldBlock.get(BlockingManager.ACTION_CONSTANT);
        ExtendedCallEventBuilder.getInstance().setResolutionTime(System.currentTimeMillis());
        AnalyticsManager.INSTANCE.fire(new Event.IncomingCallerTypeEvent(CallerFactory.getInstance().getCaller(getIncomingNumber().getNumber())));
        if (shouldBlock) {
            Timber.m31i("Should block.", new Object[0]);
            try {
                CallBlockingUtil.silenceRinger(context);
            } catch (Exception e) {
                Timber.m34e("Unable to modify Do Not Disturb state", e);
            }
            if (!callEventTriggered) {
                ExtendedCallEventBuilder.getInstance().setResolutionType(Event.CallResolutionType.BLOCKED).setBlockReason(cachedShouldBlock.get(BlockingManager.REASON_CONSTANT)).buildAndTrackIfReady();
                setCallEventTriggered(true);
            }
        } else {
            Timber.m37d("Shouldn't block.", new Object[0]);
            if (CallerYDHelper.INSTANCE.onIncomingCall(intent)) {
                Timber.m37d("CallerYD service elected to take over.", new Object[0]);
            } else {
                Timber.m37d("CallerYD service declined action or disabled, starting CallerId service.", new Object[0]);
                CallerIdUtil.launchCallerId(context, getIncomingNumber().getNumber());
            }
        }
        if (!Text.isBlank(str)) {
            CallBlockingUtil.setGoToVoicemail(Text.equalsIgnoreCase(Integer.toString(3), str));
        }
        CallBlockingUtil.handleCall(cachedShouldBlock, 1, shouldBlock, getIncomingNumber(), context, realm);
    }

    public static void setCallEventActive(boolean z) {
        synchronized (CallBlockingReceiver.class) {
            try {
                callEventActive = z;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void setCallEventTriggered(boolean z) {
        callEventTriggered = z;
    }

    private void unknown(Context context, Realm realm, Intent intent) {
        Timber.m28v("Phone state transition of unknown type.", new Object[0]);
        CallerYDHelper.INSTANCE.onRingingStopped(PhoneRingingStoppedReason.Unknown, intent);
    }

    public ParsedPhoneNumber getIncomingNumber() {
        return this.incomingNumber;
    }

    public boolean isCallEventActive() {
        return callEventActive;
    }

    public boolean isCallEventTriggered() {
        return callEventTriggered;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Timber.m37d("State: " + intent.getStringExtra("state"), new Object[0]);
        Timber.m37d("Incoming Number: " + intent.getStringExtra("incoming_number"), new Object[0]);
        try {
            Realm defaultInstance = Realm.getDefaultInstance();
            if (intent.getAction().equals("android.intent.action.PHONE_STATE")) {
                if (Build.VERSION.SDK_INT < 28 || CallBlockingUtil.isCorrectRingingIntent(intent)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Got correct intent. Can continue. Number is ");
                    sb.append(intent.getStringExtra("incoming_number"));
                    sb.append(" and state is ");
                    sb.append(intent.getStringExtra("state"));
                    Timber.m37d(sb.toString(), new Object[0]);
                    try {
                        CallBlockingUtil.setGoToVoicemail(false);
                        if (CallState.moveToState(intent.getStringExtra("state"))) {
                            int currentState = CallState.getCurrentState();
                            setIncomingNumber(getIncomingNumberFromIntent(intent));
                            ExtendedCallEventBuilder.getInstance().setOppositeNumber(getIncomingNumber());
                            PreferenceUtil.putUnseenPhoneEvent(true);
                            Timber.m37d("CallBlockingReceiver**Call State=%s", Integer.valueOf(currentState));
                            if (currentState == 1) {
                                ringing(context, intent, defaultInstance);
                            } else if (currentState == 2) {
                                offhook(context, defaultInstance, intent);
                            } else if (currentState == 3) {
                                ended(context, defaultInstance, intent);
                            } else if (currentState == 0) {
                                unknown(context, defaultInstance, intent);
                            } else {
                                Timber.m37d("Ignoring this phone state: %s", Integer.valueOf(currentState));
                            }
                        } else {
                            Timber.m25w("Ignoring state change: %s moving from %s", Integer.valueOf(CallState.getStateFromString(intent.getStringExtra("state"))), Integer.valueOf(CallState.getCurrentState()));
                            if (defaultInstance != null) {
                                defaultInstance.close();
                                return;
                            }
                            return;
                        }
                    } catch (Exception e) {
                        Timber.m32e(e, "CallBlockingReceiver**Error processing number", new Object[0]);
                        onFailure(context);
                    }
                } else {
                    Timber.m37d("Returning.  Waiting for next intent", new Object[0]);
                    if (defaultInstance != null) {
                        defaultInstance.close();
                        return;
                    }
                    return;
                }
            } else if (intent.getAction().equals(Constants.BLOCKING_CACHE_UPDATE)) {
                CallBlockingUtil.setDataChanged(context);
            } else if (intent.getAction().equals("android.intent.action.NEW_OUTGOING_CALL")) {
                Timber.m31i("CallBlockingReceiver**Outgoing call action=%s", intent.getAction());
                PreferenceUtil.putLastCallOutgoing(true);
            }
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (Exception e2) {
            Timber.m32e(e2, "Failure during blocking flow:", new Object[0]);
            onFailure(context);
        }
    }

    public void setIncomingNumber(ParsedPhoneNumber parsedPhoneNumber) {
        this.incomingNumber = parsedPhoneNumber;
    }
}
