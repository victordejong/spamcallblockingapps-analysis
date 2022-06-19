package org.mistergroup.shouldianswer.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.utils.C3086e;
import org.mistergroup.shouldianswer.utils.C3104j;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/receivers/OutgoingCallReceiver.class */
public final class OutgoingCallReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        C1694h.m3117b(context, "context");
        C1694h.m3117b(intent, "intent");
        try {
            String resultData = getResultData();
            String str = resultData;
            if (resultData == null) {
                str = intent.getStringExtra("android.intent.extra.PHONE_NUMBER");
            }
            C3104j.m157a(C3104j.f9124a, "BROADCAST: OutgoingCallReceiver", (String) null, 2, (Object) null);
            if (str == null) {
                C3104j.m157a(C3104j.f9124a, "OutgoingCallReceiver return due null number", (String) null, 2, (Object) null);
            } else if (!C3086e.f9028a.m178d(C3086e.EnumC3087a.BROADCAST_OUTGOING, str)) {
            } else {
                C3104j.m157a(C3104j.f9124a, "OutgoingCallReceiver BLOCK CALL", (String) null, 2, (Object) null);
                setResultData(null);
            }
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }
}
