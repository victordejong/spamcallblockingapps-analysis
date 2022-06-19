package com.truecaller.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.truecaller.TrueApp;
import com.truecaller.callerid.CallerIdPerformanceTracker;
import p193e.p194a.p1075n3.p1076a.C18479b;
import p193e.p194a.p1129p5.AbstractC19244l0;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p849h4.AbstractC14920n;
import p193e.p194a.p937j4.p939b.p940a.C15565c;
import p193e.p194a.p937j4.p939b.p940a.C15570g;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
/* loaded from: classes13-dex2jar.jar:com/truecaller/service/Receiver.class */
public class Receiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action != null) {
            TrueApp m36032b0 = TrueApp.m36032b0();
            boolean z = true;
            switch (action.hashCode()) {
                case -1326089125:
                    if (action.equals("android.intent.action.PHONE_STATE")) {
                        z = false;
                        break;
                    }
                    break;
                case -1304749796:
                    if (action.equals("com.truecaller.intent.action.PHONE_NOTIFICATION_CANCELLED")) {
                        z = true;
                        break;
                    }
                    break;
                case -19011148:
                    if (action.equals("android.intent.action.LOCALE_CHANGED")) {
                        z = true;
                        break;
                    }
                    break;
                case 1901012141:
                    if (action.equals("android.intent.action.NEW_OUTGOING_CALL")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    C18479b.m14875a("Receiver.handlePhoneStateChanged");
                    CallerIdPerformanceTracker mo12697I1 = m36032b0.mo10154s().mo12697I1();
                    AbstractC19244l0 mo22909b = mo12697I1.mo22909b(CallerIdPerformanceTracker.TraceType.RCVR_PHONESTATEHANDLER_STATE_CHG);
                    m36032b0.m36031c0().mo11161b().mo22938a(context, intent);
                    mo12697I1.mo22910a(mo22909b);
                    return;
                case true:
                    int intExtra = intent.getIntExtra("notificationType", 3);
                    if (intExtra == 3) {
                        new C15570g(context).m18660c();
                        return;
                    } else {
                        new C15570g(context).m18657f(intExtra);
                        return;
                    }
                case true:
                    C15571h.m18652D(context);
                    AbstractC14920n mo12458a1 = m36032b0.mo10154s().mo12458a1();
                    mo12458a1.mo19415k(true);
                    mo12458a1.mo19417i();
                    C12864a2.m22541q(new C15565c.RunnableC15566a(m36032b0), null, 1);
                    return;
                case true:
                    C18479b.m14875a("Receiver.handleNewOutgoingCall");
                    CallerIdPerformanceTracker mo12697I12 = m36032b0.mo10154s().mo12697I1();
                    AbstractC19244l0 mo22909b2 = mo12697I12.mo22909b(CallerIdPerformanceTracker.TraceType.RCVR_PHONESTATEHANDLER_OUTGOING);
                    m36032b0.m36031c0().mo11161b().mo22937b(context, intent);
                    mo12697I12.mo22910a(mo22909b2);
                    return;
                default:
                    return;
            }
        }
    }
}
