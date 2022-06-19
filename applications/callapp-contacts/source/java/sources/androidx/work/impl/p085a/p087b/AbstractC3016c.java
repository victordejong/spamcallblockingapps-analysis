package androidx.work.impl.p085a.p087b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.AbstractC3145k;
import androidx.work.impl.utils.p090b.AbstractC3119a;
/* renamed from: androidx.work.impl.a.b.c */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/c.class */
public abstract class AbstractC3016c<T> extends AbstractC3018d<T> {

    /* renamed from: d */
    private static final String f11180d = AbstractC3145k.m39275a("BrdcstRcvrCnstrntTrckr");

    /* renamed from: e */
    private final BroadcastReceiver f11181e = new BroadcastReceiver() { // from class: androidx.work.impl.a.b.c.1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent != null) {
                AbstractC3016c.this.mo39445a(intent);
            }
        }
    };

    public AbstractC3016c(Context context, AbstractC3119a abstractC3119a) {
        super(context, abstractC3119a);
    }

    /* renamed from: a */
    public abstract IntentFilter mo39446a();

    /* renamed from: a */
    public abstract void mo39445a(Intent intent);

    @Override // androidx.work.impl.p085a.p087b.AbstractC3018d
    /* renamed from: c */
    public final void mo39450c() {
        AbstractC3145k.m39277a();
        String.format("%s: registering receiver", getClass().getSimpleName());
        this.f11185b.registerReceiver(this.f11181e, mo39446a());
    }

    @Override // androidx.work.impl.p085a.p087b.AbstractC3018d
    /* renamed from: d */
    public final void mo39449d() {
        AbstractC3145k.m39277a();
        String.format("%s: unregistering receiver", getClass().getSimpleName());
        this.f11185b.unregisterReceiver(this.f11181e);
    }
}
