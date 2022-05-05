package com.firstorion.libcyd;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.telephony.TelephonyManager;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/PhoneStateReceiver.class */
public final class PhoneStateReceiver extends BroadcastReceiver {
    private static final String CALLERYD_PHONE_STATE = "CALLERYD_PHONE_STATE";
    private static final String CALLERYD_PHONE_STATE_STORE_KEY = "CALLERYD_PHONE_STATE_STORE_KEY";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.firstorion.libcyd.PhoneStateReceiver$1 */
    /* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/PhoneStateReceiver$1.class */
    public static /* synthetic */ class C11671 {
        static final /* synthetic */ int[] $SwitchMap$com$firstorion$libcyd$PhoneStateReceiver$CallState = new int[CallState.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$com$firstorion$libcyd$PhoneStateReceiver$CallState[CallState.Idle.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$firstorion$libcyd$PhoneStateReceiver$CallState[CallState.Ringing.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$firstorion$libcyd$PhoneStateReceiver$CallState[CallState.OffHook.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/PhoneStateReceiver$CallState.class */
    public enum CallState {
        Idle,
        Ringing,
        OffHook;

        /* JADX INFO: Access modifiers changed from: private */
        public static CallState fromString(String str) {
            return TelephonyManager.EXTRA_STATE_IDLE.equals(str) ? Idle : TelephonyManager.EXTRA_STATE_RINGING.equals(str) ? Ringing : TelephonyManager.EXTRA_STATE_OFFHOOK.equals(str) ? OffHook : Idle;
        }

        @Override // java.lang.Enum
        public String toString() {
            switch (C11671.$SwitchMap$com$firstorion$libcyd$PhoneStateReceiver$CallState[ordinal()]) {
                case 1:
                    return TelephonyManager.EXTRA_STATE_IDLE;
                case 2:
                    return TelephonyManager.EXTRA_STATE_RINGING;
                case 3:
                    return TelephonyManager.EXTRA_STATE_OFFHOOK;
                default:
                    return null;
            }
        }
    }

    private void ensureHidden(Context context, Intent intent) {
        if (CYDApplicationParams.getInstance(context).useInternalPhoneStateReceiever) {
            CYDApplication.getInstance().onRingingStopped(context, PhoneRingingStoppedReason.Unknown, intent);
        }
    }

    public static CallState getCallState(Context context) {
        return CallState.fromString(context.getApplicationContext().getSharedPreferences(CALLERYD_PHONE_STATE_STORE_KEY, 0).getString(CALLERYD_PHONE_STATE, null));
    }

    private void onCallAnswered(Context context, Intent intent) {
        if (CYDApplicationParams.getInstance(context).useInternalPhoneStateReceiever) {
            CYDApplication.getInstance().onRingingStopped(context, PhoneRingingStoppedReason.CallAnswered, intent);
        }
    }

    private void onCallEnded(Context context, Intent intent) {
        if (CYDApplicationParams.getInstance(context).useInternalPhoneStateReceiever) {
            CYDApplication.getInstance().onCallEnded(context, intent);
        }
    }

    private void onCallIgnored(Context context, Intent intent) {
        if (CYDApplicationParams.getInstance(context).useInternalPhoneStateReceiever) {
            CYDApplication.getInstance().onRingingStopped(context, PhoneRingingStoppedReason.CallIgnored, intent);
        }
    }

    private void onStartNewCall(Context context, Intent intent) {
        if (CYDApplicationParams.getInstance(context).useInternalPhoneStateReceiever) {
            CYDApplication.getInstance().onIncomingCall(context, intent);
        }
    }

    private void onStartNewMulticall(Context context, Intent intent) {
        if (CYDApplicationParams.getInstance(context).useInternalPhoneStateReceiever) {
            CYDApplication.getInstance().onIncomingMulticall(context, intent);
        }
    }

    private void setCallState(Context context, CallState callState) {
        SharedPreferences.Editor edit = context.getSharedPreferences(CALLERYD_PHONE_STATE_STORE_KEY, 0).edit();
        if (callState == CallState.Idle) {
            edit.remove(CALLERYD_PHONE_STATE);
        } else {
            edit.putString(CALLERYD_PHONE_STATE, callState.toString());
        }
        edit.apply();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.hasExtra("incoming_number")) {
            String stringExtra = intent.getStringExtra("state");
            CallState callState = getCallState(context);
            CallState fromString = CallState.fromString(stringExtra);
            setCallState(context, fromString);
            if (callState == CallState.Idle && fromString == CallState.Ringing) {
                onStartNewCall(context, intent);
            } else if (callState == CallState.Ringing && fromString == CallState.OffHook) {
                onCallAnswered(context, intent);
            } else if (callState == CallState.Ringing && fromString == CallState.Idle) {
                onCallIgnored(context, intent);
            } else if (callState == CallState.OffHook && fromString == CallState.Ringing) {
                onStartNewMulticall(context, intent);
            } else if (callState == CallState.OffHook && fromString == CallState.Idle) {
                onCallEnded(context, intent);
            } else {
                ensureHidden(context, intent);
            }
        }
    }
}
