package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.workers.DiagnosticsWorker;
import p186o1.AbstractC3824h;
import p186o1.C3827j;
import p197p1.C4006j;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/diagnostics/DiagnosticsReceiver.class */
public class DiagnosticsReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static final String f2709a = AbstractC3824h.m1773e("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        AbstractC3824h.m1774c().mo1772a(f2709a, "Requesting diagnostics", new Throwable[0]);
        try {
            C4006j.m1535c(context).m1767b(new C3827j.C3828a(DiagnosticsWorker.class).m1765a());
        } catch (IllegalStateException e) {
            AbstractC3824h.m1774c().mo1771b(f2709a, "WorkManager is not initialized", e);
        }
    }
}
