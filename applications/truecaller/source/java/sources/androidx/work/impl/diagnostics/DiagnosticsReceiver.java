package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.workers.DiagnosticsWorker;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.p1835c0.C26702l;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/diagnostics/DiagnosticsReceiver.class */
public class DiagnosticsReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static final String f1581a = AbstractC26839p.m1295e("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        AbstractC26839p.m1296c().mo1294a(f1581a, "Requesting diagnostics", new Throwable[0]);
        try {
            C26702l.m1431n(context).m1282f(new C26842r.C26843a(DiagnosticsWorker.class).m1272b());
        } catch (IllegalStateException e) {
            AbstractC26839p.m1296c().mo1293b(f1581a, "WorkManager is not initialized", e);
        }
    }
}
