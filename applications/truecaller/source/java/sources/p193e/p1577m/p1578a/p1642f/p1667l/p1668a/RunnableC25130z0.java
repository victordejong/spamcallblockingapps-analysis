package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzhw;
/* renamed from: e.m.a.f.l.a.z0 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/z0.class */
public final class RunnableC25130z0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ boolean f70359a;

    /* renamed from: b */
    public final /* synthetic */ zzhw f70360b;

    public RunnableC25130z0(zzhw zzhwVar, boolean z) {
        this.f70360b = zzhwVar;
        this.f70359a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean c = ((v0) this.f70360b).a.c();
        boolean b = ((v0) this.f70360b).a.b();
        ((v0) this.f70360b).a.A = Boolean.valueOf(this.f70359a);
        if (b == this.f70359a) {
            ((v0) this.f70360b).a.zzay().n.m38589b("Default data collection state already set to", Boolean.valueOf(this.f70359a));
        }
        if (((v0) this.f70360b).a.c() == c || ((v0) this.f70360b).a.c() != ((v0) this.f70360b).a.b()) {
            ((v0) this.f70360b).a.zzay().k.m38588c("Default data collection is different than actual status", Boolean.valueOf(this.f70359a), Boolean.valueOf(c));
        }
        this.f70360b.A();
    }
}
