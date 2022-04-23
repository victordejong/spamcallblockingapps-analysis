package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.j;
import androidx.work.impl.workers.DiagnosticsWorker;
import androidx.work.k;
import androidx.work.m;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/diagnostics/DiagnosticsReceiver.class */
public class DiagnosticsReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6082a = k.a("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            k.a();
            try {
                j.b(context).a(new m.a(DiagnosticsWorker.class).c());
            } catch (IllegalStateException e) {
                k.a().a(f6082a, "WorkManager is not initialized", e);
            }
        }
    }
}
