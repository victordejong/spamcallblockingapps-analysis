package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzgj;
import com.google.android.gms.measurement.internal.zzks;
import com.google.android.gms.measurement.internal.zzp;
/* renamed from: e.m.a.f.l.a.r0 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/r0.class */
public final class RunnableC25102r0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzks f70259a;

    /* renamed from: b */
    public final /* synthetic */ zzp f70260b;

    /* renamed from: c */
    public final /* synthetic */ zzgj f70261c;

    public RunnableC25102r0(zzgj zzgjVar, zzks zzksVar, zzp zzpVar) {
        this.f70261c = zzgjVar;
        this.f70259a = zzksVar;
        this.f70260b = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f70261c.a.b();
        if (this.f70259a.o2() == null) {
            this.f70261c.a.k(this.f70259a, this.f70260b);
        } else {
            this.f70261c.a.p(this.f70259a, this.f70260b);
        }
    }
}
