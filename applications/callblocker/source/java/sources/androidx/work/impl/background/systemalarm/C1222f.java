package androidx.work.impl.background.systemalarm;

import android.content.Context;
import androidx.work.AbstractC1293l;
import androidx.work.impl.AbstractC1228d;
import androidx.work.impl.p055b.C1191p;
/* renamed from: androidx.work.impl.background.systemalarm.f */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/f.class */
public class C1222f implements AbstractC1228d {

    /* renamed from: a */
    private static final String f4113a = AbstractC1293l.m17541a("SystemAlarmScheduler");

    /* renamed from: b */
    private final Context f4114b;

    public C1222f(Context context) {
        this.f4114b = context.getApplicationContext();
    }

    /* renamed from: a */
    private void m17728a(C1191p c1191p) {
        AbstractC1293l.m17543a().mo17539b(f4113a, String.format("Scheduling work with workSpecId %s", c1191p.f4013a), new Throwable[0]);
        this.f4114b.startService(C1214b.m17758a(this.f4114b, c1191p.f4013a));
    }

    @Override // androidx.work.impl.AbstractC1228d
    /* renamed from: a */
    public void mo17704a(String str) {
        this.f4114b.startService(C1214b.m17749c(this.f4114b, str));
    }

    @Override // androidx.work.impl.AbstractC1228d
    /* renamed from: a */
    public void mo17703a(C1191p... c1191pArr) {
        for (C1191p c1191p : c1191pArr) {
            m17728a(c1191p);
        }
    }
}
