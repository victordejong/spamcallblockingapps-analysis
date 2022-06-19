package androidx.work.impl.p052a.p054b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.AbstractC1293l;
import androidx.work.impl.utils.p058b.AbstractC1271a;
/* renamed from: androidx.work.impl.a.b.c */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/c.class */
public abstract class AbstractC1156c<T> extends AbstractC1158d<T> {

    /* renamed from: d */
    private static final String f3951d = AbstractC1293l.m17541a("BrdcstRcvrCnstrntTrckr");

    /* renamed from: e */
    private final BroadcastReceiver f3952e = new BroadcastReceiver() { // from class: androidx.work.impl.a.b.c.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                AbstractC1156c.this.mo17839a(context, intent);
            }
        }
    };

    public AbstractC1156c(Context context, AbstractC1271a abstractC1271a) {
        super(context, abstractC1271a);
    }

    /* renamed from: a */
    public abstract void mo17839a(Context context, Intent intent);

    /* renamed from: b */
    public abstract IntentFilter mo17838b();

    @Override // androidx.work.impl.p052a.p054b.AbstractC1158d
    /* renamed from: d */
    public void mo17844d() {
        AbstractC1293l.m17543a().mo17539b(f3951d, String.format("%s: registering receiver", getClass().getSimpleName()), new Throwable[0]);
        this.f3956b.registerReceiver(this.f3952e, mo17838b());
    }

    @Override // androidx.work.impl.p052a.p054b.AbstractC1158d
    /* renamed from: e */
    public void mo17843e() {
        AbstractC1293l.m17543a().mo17539b(f3951d, String.format("%s: unregistering receiver", getClass().getSimpleName()), new Throwable[0]);
        this.f3956b.unregisterReceiver(this.f3952e);
    }
}
