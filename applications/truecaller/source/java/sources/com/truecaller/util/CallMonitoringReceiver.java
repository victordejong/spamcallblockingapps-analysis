package com.truecaller.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.truecaller.presence.AvailabilityTrigger;
import p193e.p194a.AbstractC21187w1;
/* loaded from: classes15-dex2jar.jar:com/truecaller/util/CallMonitoringReceiver.class */
public class CallMonitoringReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static volatile String f15941a = TelephonyManager.EXTRA_STATE_IDLE;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!"android.intent.action.PHONE_STATE".equals(intent.getAction())) {
            return;
        }
        String stringExtra = intent.getStringExtra("state");
        if (TextUtils.isEmpty(stringExtra) || f15941a.equals(stringExtra)) {
            return;
        }
        String str = f15941a;
        f15941a = stringExtra;
        if (str.equals(TelephonyManager.EXTRA_STATE_RINGING) && stringExtra.equals(TelephonyManager.EXTRA_STATE_OFFHOOK)) {
            return;
        }
        ((AbstractC21187w1) context.getApplicationContext()).mo10154s().mo12445b1().mo11854a().mo16128d(AvailabilityTrigger.USER_ACTION, stringExtra.equals(TelephonyManager.EXTRA_STATE_OFFHOOK) || str.equals(TelephonyManager.EXTRA_STATE_OFFHOOK));
    }
}
