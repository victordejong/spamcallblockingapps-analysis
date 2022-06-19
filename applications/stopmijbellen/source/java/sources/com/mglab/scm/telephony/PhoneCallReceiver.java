package com.mglab.scm.telephony;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import p095f8.C2779g;
import p095f8.C2780h;
import p182n8.C3795d;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/telephony/PhoneCallReceiver.class */
public class PhoneCallReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static Integer f7331a = null;

    /* renamed from: b */
    public static Integer f7332b = null;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        C2779g.m3093v(context);
        if (intent.getExtras() == null) {
            C2779g.m3119N(context);
            return;
        }
        C2780h.m3041k0(context, "lastcalltime", System.currentTimeMillis());
        String stringExtra = intent.getStringExtra("state");
        String action = intent.getAction();
        int i = Build.VERSION.SDK_INT;
        if (i >= 23 && i < 28 && !action.equals("android.intent.action.SUBSCRIPTION_PHONE_STATE")) {
            intent.getAction();
            return;
        }
        if (i >= 28 && action.equals("android.intent.action.SUBSCRIPTION_PHONE_STATE")) {
            if (stringExtra.equals(TelephonyManager.EXTRA_STATE_RINGING)) {
                f7331a = Integer.valueOf(intent.getIntExtra("slot", 0));
                f7332b = Integer.valueOf(intent.getIntExtra("subscription", 0));
                return;
            }
            f7331a = null;
            f7332b = null;
        }
        Bundle extras = intent.getExtras();
        extras.putString("EXTRA_STATE", stringExtra);
        Integer num = f7331a;
        if (num != null) {
            extras.putInt("slot", num.intValue());
        }
        Integer num2 = f7332b;
        if (num2 != null) {
            extras.putInt("subscription", num2.intValue());
        }
        intent.toString();
        extras.toString();
        context.toString();
        if (i >= 28 && !stringExtra.equals(TelephonyManager.EXTRA_STATE_RINGING)) {
            C3795d.f12277a = true;
        }
        if (i < 28 || extras.get("incoming_number") != null || !stringExtra.equals(TelephonyManager.EXTRA_STATE_RINGING)) {
            C2779g.m3118O(context, extras);
        } else if (C3795d.f12277a) {
            C3795d.f12277a = false;
        } else {
            C3795d.f12277a = true;
            C2779g.m3118O(context, extras);
        }
    }
}
