package androidx.work.impl.p006k.p008f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.AbstractC0555f;
/* renamed from: androidx.work.impl.k.f.e$a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/k/f/e$a.class */
class e$a extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ e f3072a;

    e$a(e eVar) {
        this.f3072a = eVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null && intent.getAction() != null && intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
            AbstractC0555f.m11741c().m11743a(e.j, "Network broadcast received", new Throwable[0]);
            e eVar = this.f3072a;
            eVar.m11684d(eVar.g());
        }
    }
}
