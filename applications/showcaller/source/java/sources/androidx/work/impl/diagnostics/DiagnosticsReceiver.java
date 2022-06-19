package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.AbstractC1404j;
import androidx.work.AbstractC1418q;
import androidx.work.C1406k;
import androidx.work.impl.workers.DiagnosticsWorker;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/diagnostics/DiagnosticsReceiver.class */
public class DiagnosticsReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static final String f5391a = AbstractC1404j.m30159f("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        AbstractC1404j.m30161c().mo30158a(f5391a, "Requesting diagnostics", new Throwable[0]);
        try {
            AbstractC1418q.m30143d(context).m30145b(C1406k.m30153d(DiagnosticsWorker.class));
        } catch (IllegalStateException e) {
            AbstractC1404j.m30161c().mo30157b(f5391a, "WorkManager is not initialized", e);
        }
    }
}
