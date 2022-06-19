package com.truecaller.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.truecaller.callerid.callstate.CallStateService;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1075n3.p1076a.C18479b;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.p231g.AbstractC6233m;
/* loaded from: classes13-dex2jar.jar:com/truecaller/service/BootReceiver.class */
public class BootReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.intent.action.BOOT_COMPLETED".equals(intent.getAction())) {
            C18479b.m14875a("Device boot");
            AlarmReceiver.m34773a(context, true);
            CallStateService.m35776b(context);
            AbstractC21187w1 abstractC21187w1 = (AbstractC21187w1) context.getApplicationContext();
            AbstractC19854f<AbstractC6233m> mo12453a7 = abstractC21187w1.mo10154s().mo12453a7();
            if (!abstractC21187w1.mo10154s().mo11647c().mo13825h("android.permission.READ_SMS")) {
                return;
            }
            mo12453a7.mo11854a().mo31707T(true);
        }
    }
}
