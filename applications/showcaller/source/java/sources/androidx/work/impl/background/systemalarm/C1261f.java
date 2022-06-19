package androidx.work.impl.background.systemalarm;

import android.content.Context;
import androidx.work.AbstractC1404j;
import androidx.work.impl.AbstractC1268e;
import androidx.work.impl.p018n.C1344p;
/* renamed from: androidx.work.impl.background.systemalarm.f */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/f.class */
public class C1261f implements AbstractC1268e {

    /* renamed from: d */
    private static final String f5361d = AbstractC1404j.m30159f("SystemAlarmScheduler");

    /* renamed from: e */
    private final Context f5362e;

    public C1261f(Context context) {
        this.f5362e = context.getApplicationContext();
    }

    /* renamed from: b */
    private void m30462b(C1344p c1344p) {
        AbstractC1404j.m30161c().mo30158a(f5361d, String.format("Scheduling work with workSpecId %s", c1344p.f5578c), new Throwable[0]);
        this.f5362e.startService(C1253b.m30490f(this.f5362e, c1344p.f5578c));
    }

    @Override // androidx.work.impl.AbstractC1268e
    /* renamed from: a */
    public void mo30358a(C1344p... c1344pArr) {
        for (C1344p c1344p : c1344pArr) {
            m30462b(c1344p);
        }
    }

    @Override // androidx.work.impl.AbstractC1268e
    /* renamed from: c */
    public boolean mo30357c() {
        return true;
    }

    @Override // androidx.work.impl.AbstractC1268e
    /* renamed from: e */
    public void mo30355e(String str) {
        this.f5362e.startService(C1253b.m30489g(this.f5362e, str));
    }
}
