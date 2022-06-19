package androidx.work.impl.p015m.p017f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.AbstractC1404j;
import androidx.work.impl.utils.p019o.AbstractC1399a;
/* renamed from: androidx.work.impl.m.f.c */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/m/f/c.class */
public abstract class AbstractC1312c<T> extends AbstractC1314d<T> {

    /* renamed from: g */
    private static final String f5522g = AbstractC1404j.m30159f("BrdcstRcvrCnstrntTrckr");

    /* renamed from: h */
    private final BroadcastReceiver f5523h = new C1313a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.m.f.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/m/f/c$a.class */
    public class C1313a extends BroadcastReceiver {
        C1313a() {
            AbstractC1312c.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                AbstractC1312c.this.mo30313h(context, intent);
            }
        }
    }

    public AbstractC1312c(Context context, AbstractC1399a abstractC1399a) {
        super(context, abstractC1399a);
    }

    @Override // androidx.work.impl.p015m.p017f.AbstractC1314d
    /* renamed from: e */
    public void mo30321e() {
        AbstractC1404j.m30161c().mo30158a(f5522g, String.format("%s: registering receiver", getClass().getSimpleName()), new Throwable[0]);
        this.f5527c.registerReceiver(this.f5523h, mo30314g());
    }

    @Override // androidx.work.impl.p015m.p017f.AbstractC1314d
    /* renamed from: f */
    public void mo30320f() {
        AbstractC1404j.m30161c().mo30158a(f5522g, String.format("%s: unregistering receiver", getClass().getSimpleName()), new Throwable[0]);
        this.f5527c.unregisterReceiver(this.f5523h);
    }

    /* renamed from: g */
    public abstract IntentFilter mo30314g();

    /* renamed from: h */
    public abstract void mo30313h(Context context, Intent intent);
}
