package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzab;
import com.google.android.gms.measurement.internal.zzgj;
import com.google.android.gms.measurement.internal.zzp;
/* renamed from: e.m.a.f.l.a.e0 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/e0.class */
public final class RunnableC25042e0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzab f70048a;

    /* renamed from: b */
    public final /* synthetic */ zzp f70049b;

    /* renamed from: c */
    public final /* synthetic */ zzgj f70050c;

    public RunnableC25042e0(zzgj zzgjVar, zzab zzabVar, zzp zzpVar) {
        this.f70050c = zzgjVar;
        this.f70048a = zzabVar;
        this.f70049b = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f70050c.a.b();
        if (this.f70048a.c.o2() == null) {
            this.f70050c.a.j(this.f70048a, this.f70049b);
        } else {
            this.f70050c.a.n(this.f70048a, this.f70049b);
        }
    }
}
