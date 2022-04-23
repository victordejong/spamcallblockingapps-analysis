package com.asus.blocklist;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.android.contacts.asuscallerid.c;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.a.a;
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockListPhoneIntentReceiver.class */
public class BlockListPhoneIntentReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2425a = e.f2514a;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        e.c = 0;
        if (PhoneCapabilityTester.IsAsusDevice()) {
            Log.d(f2425a, "onReceive: Device = Asus");
            if (a.d()) {
                e.c = 2;
                c.f = "touchpal";
                if (CompatUtils.isMarshmallowCompatible()) {
                    e.f2515b = 2;
                    Log.d(f2425a, "onReceive: Support SDK");
                } else {
                    Log.d(f2425a, "onReceive: Support SDK but not M");
                    return;
                }
            } else {
                if (a.h(context)) {
                    c.f = "asus_callguard";
                }
                Log.d(f2425a, "onReceive: Support Asus Engine");
                e.f2515b = 1;
                if (a.d(context)) {
                    Log.d(f2425a, "onReceive: Support Asus Engine On");
                    e.c = 1;
                } else if (com.asus.a.c.l(context) || !com.asus.a.c.p(context)) {
                    Log.d(f2425a, "onReceive: Support Asus Engine Off");
                } else {
                    Log.d(f2425a, "onReceive: Support Asus Engine Off");
                    e.c = -1;
                }
            }
        } else {
            Log.d(f2425a, "onReceive: Device = Non-Asus");
            if (a.h(context)) {
                if (a.d(context)) {
                    e.c = 1;
                } else if (!com.asus.a.c.l(context)) {
                    e.c = -1;
                }
            }
            e.f2515b = 2;
        }
        Log.d(f2425a, "onReceive: mEngineStatus = " + e.c);
        Log.d(f2425a, "onReceive: mBlockMode = " + e.f2515b);
        if (context == null || intent == null) {
            Log.d(f2425a, "onReceive: context == null || intent == null");
        } else if (intent.getExtras() == null) {
            Log.d(f2425a, "onReceive: intent.getExtras() == null");
        } else {
            String action = intent.getAction();
            Log.d(f2425a, "onReceive: action = " + action);
            if (action.equalsIgnoreCase("android.intent.action.PHONE_STATE")) {
                String stringExtra = intent.getStringExtra("incoming_number");
                Log.d(f2425a, "onReceive: Extra incoming_number = " + a.c(stringExtra));
                String string = intent.getExtras().getString("state");
                if (string.equals(TelephonyManager.EXTRA_STATE_IDLE)) {
                    Log.d(f2425a, "onReceive: CALL_STATE_IDLE");
                    e.a(context, 0, stringExtra);
                } else if (string.equals(TelephonyManager.EXTRA_STATE_OFFHOOK)) {
                    Log.d(f2425a, "onReceive: CALL_STATE_OFFHOOK");
                    e.a(context, 2, stringExtra);
                } else if (string.equals(TelephonyManager.EXTRA_STATE_RINGING)) {
                    Log.d(f2425a, "onReceive: CALL_STATE_RINGING");
                    e.a(context, 1, stringExtra);
                } else {
                    Log.e(f2425a, "onReceive: PHONE STATE not supported = 0");
                }
            } else {
                Log.e(f2425a, "onReceive: action not supported");
            }
        }
    }
}
