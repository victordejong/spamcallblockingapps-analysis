package com.android.contacts.util;

import android.content.Context;
import android.content.Intent;
import android.support.v4.content.a;
import android.telecom.PhoneAccountHandle;
import android.telecom.TelecomManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.simcardmanage.b;
import com.android.internal.telephony.ITelephony;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/TelecomUtil.class */
public class TelecomUtil {
    private static final String TAG = "TelecomUtil";
    private static boolean sWarningLogged = false;

    public static void cancelMissedCallsNotification(Context context) {
        if ((!CompatUtils.isMarshmallowCompatible() && PhoneCapabilityTester.IsSystemApp()) || hasModifyPhoneStatePermission(context)) {
            try {
                getTelecomManager(context).cancelMissedCallsNotification();
                context.sendBroadcast(new Intent("com.asus.contacts.remove.missed_call_notifications"));
                Log.d(TAG, "[cancelMissedCallsNotification] send a broadcast");
            } catch (SecurityException e) {
                Log.w(TAG, "TelecomManager.cancelMissedCalls called without permission.");
            } catch (Exception e2) {
                Log.d(TAG, "Fail to removeMissedCallNotifications, Exception : " + e2.toString());
            }
        }
    }

    public static void endCallByTelecom(Context context) {
        try {
            Log.d(TAG, "endCall by TelecomManager");
            getTelecomManager(context).endCall();
        } catch (Exception e) {
            Log.e(TAG, "<BlockListCallHandler> Fail to end call due to: ", e);
        }
    }

    public static void endCallByTelephony(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        try {
            Log.d(TAG, "endCallByTelephony");
            Method declaredMethod = Class.forName(telephonyManager.getClass().getName()).getDeclaredMethod("getITelephony", new Class[0]);
            declaredMethod.setAccessible(true);
            ((ITelephony) declaredMethod.invoke(telephonyManager, new Object[0])).endCall();
        } catch (Exception e) {
            Log.e(TAG, "<BlockListCallHandler> Fail to end call due to: ", e);
        }
    }

    public static List<PhoneAccountHandle> getCallCapablePhoneAccounts(Context context) {
        return (!CompatUtils.isMarshmallowCompatible() || hasReadPhoneStatePermission(context)) ? TelecomManagerCompat.getCallCapablePhoneAccounts(getTelecomManager(context)) : new ArrayList<>();
    }

    public static PhoneAccountHandle getPreferredVoiceCallAccountHandle(Context context) {
        TelecomManager telecomManager = getTelecomManager(context);
        PhoneAccountHandle phoneAccountHandle = null;
        if (b.a(context)) {
            phoneAccountHandle = null;
            if (telecomManager.getUserSelectedOutgoingPhoneAccount() != null) {
                phoneAccountHandle = telecomManager.getUserSelectedOutgoingPhoneAccount();
            }
        }
        return phoneAccountHandle;
    }

    private static TelecomManager getTelecomManager(Context context) {
        return (TelecomManager) context.getSystemService("telecom");
    }

    public static boolean handleMmi(Context context, String str, PhoneAccountHandle phoneAccountHandle) {
        boolean handleMmi;
        if (!CompatUtils.isMarshmallowCompatible() || hasModifyPhoneStatePermission(context)) {
            try {
                handleMmi = TelecomManagerCompat.handleMmi(getTelecomManager(context), str, phoneAccountHandle);
            } catch (SecurityException e) {
                Log.w(TAG, "TelecomManager.handleMmi called without permission.");
            }
            return handleMmi;
        }
        handleMmi = false;
        return handleMmi;
    }

    public static boolean hasModifyPhoneStatePermission(Context context) {
        return isDefaultDialer(context) || hasPermission(context, "android.permission.MODIFY_PHONE_STATE");
    }

    private static boolean hasPermission(Context context, String str) {
        return a.a(context, str) == 0;
    }

    public static boolean hasReadPhoneStatePermission(Context context) {
        return isDefaultDialer(context) || hasPermission(context, "android.permission.READ_PHONE_STATE");
    }

    public static boolean hasReadWriteVoicemailPermissions(Context context) {
        return isDefaultDialer(context) || (hasPermission(context, "com.android.voicemail.permission.READ_VOICEMAIL") && hasPermission(context, "com.android.voicemail.permission.WRITE_VOICEMAIL"));
    }

    public static boolean isDefaultDialer(Context context) {
        boolean equals = TextUtils.equals(context.getPackageName(), TelecomManagerCompat.getDefaultDialerPackage(getTelecomManager(context)));
        if (equals) {
            sWarningLogged = false;
        } else if (!sWarningLogged) {
            Log.w(TAG, "Dialer is not currently set to be default dialer");
            sWarningLogged = true;
        }
        return equals;
    }

    public static boolean isInCall(Context context) {
        return (!CompatUtils.isMarshmallowCompatible() || hasReadPhoneStatePermission(context)) ? getTelecomManager(context).isInCall() : false;
    }

    public static boolean isSystemDialer(Context context) {
        boolean equals = TextUtils.equals(context.getPackageName(), TelecomManagerCompat.getSystemDialerPackage(getTelecomManager(context)));
        if (equals) {
            sWarningLogged = false;
        } else if (!sWarningLogged) {
            Log.w(TAG, "No system dialer is preloaded");
            sWarningLogged = true;
        }
        return equals;
    }

    public static void showInCallScreen(Context context, boolean z) {
        if (hasReadPhoneStatePermission(context)) {
            try {
                getTelecomManager(context).showInCallScreen(z);
            } catch (SecurityException e) {
                Log.w(TAG, "TelecomManager.showInCallScreen called without permission.");
            }
        }
    }
}
