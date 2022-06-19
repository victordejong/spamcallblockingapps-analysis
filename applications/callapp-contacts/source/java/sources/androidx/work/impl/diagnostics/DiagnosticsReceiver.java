package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.AbstractC3145k;
import androidx.work.C3148m;
import androidx.work.impl.C3068j;
import androidx.work.impl.workers.DiagnosticsWorker;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/diagnostics/DiagnosticsReceiver.class */
public class DiagnosticsReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static final String f11298a = AbstractC3145k.m39275a("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        AbstractC3145k.m39277a();
        try {
            C3068j.m39359b(context).m39265a(new C3148m.C3149a(DiagnosticsWorker.class).m39254c());
        } catch (IllegalStateException e) {
            AbstractC3145k.m39277a().mo39273a(f11298a, "WorkManager is not initialized", e);
        }
    }
}
