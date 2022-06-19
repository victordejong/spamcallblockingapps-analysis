package com.telguarder.features.phoneCallWidget;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.telecom.TelecomManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.telguarder.C2083R;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.main.MainActivity;
import com.telguarder.features.numberLookup.LookupBlockerCheckManager;
import com.telguarder.features.numberLookup.PhoneNumberLookupManager;
import com.telguarder.features.phoneCallWidget.PhonecallStateHandler;
import com.telguarder.features.phoneNumberBlocker.BlockReason;
import com.telguarder.features.phoneNumberBlocker.BlockedNumberManager;
import com.telguarder.features.postCallStatistics.LastPhoneCallActivity;
import com.telguarder.features.rateAndFeedback.ReportResult;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.common.AppUtil;
import com.telguarder.helpers.contact.ContactUtils;
import com.telguarder.helpers.log.Logger;
import com.telguarder.helpers.p022ui.UiHelper;
import java.lang.reflect.Method;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver.class */
public class PhoneStateBroadcastReceiver extends BroadcastReceiver {
    private static final String TAG = PhoneStateBroadcastReceiver.class.getSimpleName() + " ";

    public static void dumpIntent(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras != null) {
            Logger.error("Dumping Intent start. ACTION: " + intent.getAction());
            for (String str : extras.keySet()) {
                Logger.error("[" + str + SimpleComparison.EQUAL_TO_OPERATION + extras.get(str) + "]");
            }
            Logger.error("Dumping Intent end");
        }
    }

    private String getIncomingNumber(Intent intent) {
        if (intent.hasExtra("incoming_number")) {
            String stringExtra = intent.getStringExtra("incoming_number");
            String str = stringExtra;
            if (TextUtils.isEmpty(stringExtra)) {
                str = "";
            }
            return str;
        }
        return null;
    }

    private void handleOutGoingCallEvent(final Context context, final String str) {
        Logger.debug(PhoneStateBroadcastReceiver.class.toString() + " -> Outgoing call detected: " + str);
        AdvertManager.cleanAdNetworkFlowDebugInfo(false);
        PhonecallStateHandler.PhoneStateCallData phoneStateCallData = PhonecallStateHandler.getInstance().getPhoneStateCallData(str, true);
        if (phoneStateCallData == null) {
            return;
        }
        phoneStateCallData.lastCallLookupResult = null;
        phoneStateCallData.lastCallNumber = str;
        phoneStateCallData.lastBlockedCallNumber = null;
        phoneStateCallData.lastCallTimestamp = System.currentTimeMillis();
        phoneStateCallData.lastCallOffHookTimestamp = System.currentTimeMillis();
        phoneStateCallData.lastCallType = 2;
        phoneStateCallData.ring = false;
        phoneStateCallData.callReceived = false;
        new Thread(new Runnable() { // from class: com.telguarder.features.phoneCallWidget._$$Lambda$PhoneStateBroadcastReceiver$edOIq8wPDuxjfbhNRozJav6ynMo
            @Override // java.lang.Runnable
            public final void run() {
                PhoneStateBroadcastReceiver.lambda$handleOutGoingCallEvent$0(str, context);
            }
        }).start();
    }

    public static /* synthetic */ void lambda$handleOutGoingCallEvent$0(String str, Context context) {
        PhonecallStateHandler.getInstance().mLastNumberWasTestNumber = ContactUtils.isTestNumber(str);
        if (PhonecallStateHandler.getInstance().shouldDoOutgoingPhoneNumberLookup(context)) {
            PhoneCallWidget.show(context, UUID.randomUUID().toString(), str, PhoneNumberLookupManager.CallType.OUTGOING);
        }
    }

    public static /* synthetic */ void lambda$onTelephonyManagerCallstateidle$2(PhonecallStateHandler.PhoneStateCallData phoneStateCallData, Context context) {
        if (phoneStateCallData.lastCallNumber != null && ((!LastPhoneCallActivity.isInstantiated() || !LastPhoneCallActivity.getInstance().isActive()) && (PhonecallStateHandler.getInstance().shouldDoIncomingPhoneNumberLookup(context) || PhonecallStateHandler.getInstance().shouldDoOutgoingPhoneNumberLookup(context)))) {
            PhonecallStateHandler.getInstance().openPhoneCallLogIfEnabledBySetting(context, phoneStateCallData.lastCallNumber);
        }
        PhonecallStateHandler.getInstance().cleanPhoneStateCallData();
        PhonecallStateHandler.getInstance().outgoingLookupAllowed = null;
        PhonecallStateHandler.getInstance().incomingLookupAllowed = null;
    }

    private void sendBlockedNumberNotification(Context context, String str) {
        ReportResult.ReportEntry blockedNumberInfo;
        String str2;
        String str3;
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context.getApplicationContext(), "telGuarder_notify_001");
        Intent intent = new Intent(context.getApplicationContext(), MainActivity.class);
        intent.putExtra(MainActivity.EXTRA_OPEN_PAGE, UiHelper.PageType.BLOCKED_POSTCALL);
        intent.putExtra(MainActivity.EXTRA_OPEN_PAGE_PARAMETER, str);
        PendingIntent activity = PendingIntent.getActivity(context, (int) System.currentTimeMillis(), intent, 0);
        String stringResource = AppUtil.getStringResource(context, C2083R.string.block_number_notification_title);
        if (BlockedNumberManager.getInstance().getBlockedNumberInfo(str) != null) {
            str2 = stringResource + ", " + blockedNumberInfo.number;
            str3 = AppUtil.getStringResource(context, BlockReason.ofBackendKeyword(blockedNumberInfo.reason).displayableNameId()) + ", " + blockedNumberInfo.owner;
        } else {
            str2 = stringResource + ", " + str;
            str3 = AppUtil.getStringResource(context, C2083R.string.spam_contact_name);
        }
        NotificationCompat.BigTextStyle bigTextStyle = new NotificationCompat.BigTextStyle();
        builder.setContentIntent(activity);
        builder.setSmallIcon(C2083R.C2085drawable.ic_content_block);
        builder.setContentTitle(str2);
        builder.setContentText(str3);
        builder.setPriority(2);
        builder.setAutoCancel(true);
        builder.setStyle(bigTextStyle);
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel("telGuarder_notify_001", "telGuarder", 4);
            if (notificationManager != null) {
                notificationManager.createNotificationChannel(notificationChannel);
            }
        }
        if (notificationManager != null) {
            try {
                notificationManager.notify(0, builder.build());
            } catch (Exception e) {
            }
        }
    }

    public boolean endCall(Context context) {
        TelecomManager telecomManager;
        if (Build.VERSION.SDK_INT >= 28) {
            if (ContextCompat.checkSelfPermission(context, "android.permission.ANSWER_PHONE_CALLS") != 0 || (telecomManager = (TelecomManager) context.getSystemService("telecom")) == null) {
                return false;
            }
            telecomManager.endCall();
            return true;
        } else if (ContextCompat.checkSelfPermission(context, "android.permission.CALL_PHONE") != 0 || ContextCompat.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") != 0) {
            return false;
        } else {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager == null) {
                    return false;
                }
                Method declaredMethod = Class.forName(telephonyManager.getClass().getName()).getDeclaredMethod("getITelephony", new Class[0]);
                declaredMethod.setAccessible(true);
                Object invoke = declaredMethod.invoke(telephonyManager, new Object[0]);
                Class.forName(invoke.getClass().getName()).getDeclaredMethod("endCall", new Class[0]).invoke(invoke, new Object[0]);
                return true;
            } catch (Exception e) {
                String str = TAG;
                Logger.debug(str, "PhoneStateReceiver " + e.toString());
                return false;
            }
        }
    }

    /* renamed from: lambda$onTelephonyManagerCallstateringing$1$PhoneStateBroadcastReceiver */
    public /* synthetic */ void m418x70ef5686(String str, Context context, PhonecallStateHandler.PhoneStateCallData phoneStateCallData) {
        if (str != null && str.equals("")) {
            AnalyticsManager.getInstance().sendLookupIdentificationHiddenNumber();
        }
        if (BlockedNumberManager.getInstance().isNumberBlocked(str) && endCall(context)) {
            phoneStateCallData.lastBlockedCallNumber = str;
            AnalyticsManager.getInstance().sendLookupIdentificationBlockedNumber();
            sendBlockedNumberNotification(context, str);
            LookupBlockerCheckManager.getInstance().saveLastLookedupNumber(str, 1, true);
            return;
        }
        phoneStateCallData.ring = true;
        phoneStateCallData.lastBlockedCallNumber = null;
        PhonecallStateHandler.getInstance().mLastNumberWasTestNumber = ContactUtils.isTestNumber(str);
        if (!PhonecallStateHandler.getInstance().shouldDoIncomingPhoneNumberLookup(context)) {
            return;
        }
        if (LastPhoneCallActivity.isInstantiated() && LastPhoneCallActivity.getInstance().isActive()) {
            LastPhoneCallActivity.getInstance().stop();
        }
        PhoneCallWidget.show(context, UUID.randomUUID().toString(), str, PhoneNumberLookupManager.CallType.INCOMING);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.PHONE_STATE")) {
            String stringExtra = intent.hasExtra("state") ? intent.getStringExtra("state") : null;
            String incomingNumber = getIncomingNumber(intent);
            PhonecallStateHandler.PhoneStateCallData phoneStateCallData = PhonecallStateHandler.getInstance().getPhoneStateCallData(incomingNumber, true);
            if (TextUtils.isEmpty(stringExtra) || phoneStateCallData == null) {
                return;
            }
            if (stringExtra.equals(TelephonyManager.EXTRA_STATE_RINGING)) {
                onTelephonyManagerCallstateringing(context, incomingNumber);
            } else if (stringExtra.equals(TelephonyManager.EXTRA_STATE_OFFHOOK)) {
                if (phoneStateCallData.ring || Build.VERSION.SDK_INT <= 22) {
                    onTelephonyManagerCallstateoffhook(context, incomingNumber);
                } else {
                    handleOutGoingCallEvent(context, incomingNumber);
                }
            } else if (stringExtra.equals(TelephonyManager.EXTRA_STATE_IDLE) && (phoneStateCallData.lastBlockedCallNumber == null || !phoneStateCallData.lastBlockedCallNumber.equals(incomingNumber))) {
                onTelephonyManagerCallstateidle(context, incomingNumber);
            }
            phoneStateCallData.lastCallState = stringExtra;
        }
    }

    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    protected void onTelephonyManagerCallstateidle(final Context context, String str) {
        Logger.debug(TAG, "Idle " + str);
        final PhonecallStateHandler.PhoneStateCallData phoneStateCallData = PhonecallStateHandler.getInstance().getPhoneStateCallData(str, true);
        if (phoneStateCallData == null) {
            return;
        }
        phoneStateCallData.lastCallNumber = str;
        char c = 0;
        if (phoneStateCallData.lastCallOffHookTimestamp > 0) {
            c = System.currentTimeMillis() - phoneStateCallData.lastCallOffHookTimestamp;
        }
        phoneStateCallData.lastCallDuration = c;
        if (TelephonyManager.EXTRA_STATE_IDLE.equals(phoneStateCallData.lastCallState)) {
            return;
        }
        if (phoneStateCallData.ring && !phoneStateCallData.callReceived) {
            phoneStateCallData.lastCallType = 3;
        }
        phoneStateCallData.ring = false;
        phoneStateCallData.callReceived = false;
        PhoneCallWidget.hide(context);
        AnalyticsManager.getInstance().sendCallLength(TimeUnit.MILLISECONDS.toMinutes(phoneStateCallData.lastCallDuration));
        if (AdvertManager.getInstance().mHasPostCallAd) {
            AnalyticsManager.getInstance().sendKeepaliveAborted(TimeUnit.MILLISECONDS.toSeconds(phoneStateCallData.lastCallDuration));
        }
        new Thread(new Runnable() { // from class: com.telguarder.features.phoneCallWidget._$$Lambda$PhoneStateBroadcastReceiver$hPHkNiagnE4t2vgYFSURspgDru0
            @Override // java.lang.Runnable
            public final void run() {
                PhoneStateBroadcastReceiver.lambda$onTelephonyManagerCallstateidle$2(PhonecallStateHandler.PhoneStateCallData.this, context);
            }
        }).start();
    }

    protected void onTelephonyManagerCallstateoffhook(Context context, String str) {
        String str2 = TAG;
        Logger.debug(str2, "Off hook " + str);
        PhonecallStateHandler.PhoneStateCallData phoneStateCallData = PhonecallStateHandler.getInstance().getPhoneStateCallData(str, true);
        if (phoneStateCallData != null) {
            if (str.equals(phoneStateCallData.lastCallNumber) && phoneStateCallData.lastCallOffHookTimestamp > 0) {
                return;
            }
            phoneStateCallData.lastCallNumber = str;
            phoneStateCallData.lastCallOffHookTimestamp = System.currentTimeMillis();
            phoneStateCallData.callReceived = true;
            if (phoneStateCallData.lastCallType != 1) {
                if (phoneStateCallData.lastCallType != 6) {
                    return;
                }
                PhoneCallWidget.hide(context);
            } else if (!PhoneCallWidget.isInstantiated() || !PhoneCallWidget.getInstance().isWidgetVisible()) {
            } else {
                PhoneCallWidget.getInstance().setAutomaticCloseTimer(context, true);
            }
        }
    }

    protected void onTelephonyManagerCallstateringing(final Context context, final String str) {
        Logger.debug(PhoneStateBroadcastReceiver.class.toString() + " -> Incoming call detected: " + str);
        AdvertManager.cleanAdNetworkFlowDebugInfo(false);
        final PhonecallStateHandler.PhoneStateCallData phoneStateCallData = PhonecallStateHandler.getInstance().getPhoneStateCallData(str, true);
        if (phoneStateCallData == null) {
            return;
        }
        phoneStateCallData.lastCallLookupResult = null;
        phoneStateCallData.lastCallNumber = str;
        phoneStateCallData.lastCallTimestamp = System.currentTimeMillis();
        phoneStateCallData.lastCallOffHookTimestamp = 0L;
        phoneStateCallData.lastCallType = 1;
        phoneStateCallData.callReceived = false;
        new Thread(new Runnable() { // from class: com.telguarder.features.phoneCallWidget._$$Lambda$PhoneStateBroadcastReceiver$VzB865HJZNK1jecMMHYFDptd_vw
            @Override // java.lang.Runnable
            public final void run() {
                PhoneStateBroadcastReceiver.this.m418x70ef5686(str, context, phoneStateCallData);
            }
        }).start();
    }
}
