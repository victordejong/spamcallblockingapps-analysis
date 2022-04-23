package androidx.work.impl.p006k.p008f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* renamed from: androidx.work.impl.k.f.c$a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/k/f/c$a.class */
class c$a extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ c f3063a;

    c$a(c cVar) {
        this.f3063a = cVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            this.f3063a.h(context, intent);
        }
    }
}
