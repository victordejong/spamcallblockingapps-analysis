package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzah;
import com.google.android.gms.measurement.internal.zzhw;
/* renamed from: e.m.a.f.l.a.t1 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/t1.class */
public final class RunnableC25112t1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzah f70290a;

    /* renamed from: b */
    public final /* synthetic */ int f70291b;

    /* renamed from: c */
    public final /* synthetic */ long f70292c;

    /* renamed from: d */
    public final /* synthetic */ boolean f70293d;

    /* renamed from: e */
    public final /* synthetic */ zzhw f70294e;

    public RunnableC25112t1(zzhw zzhwVar, zzah zzahVar, int i, long j, boolean z) {
        this.f70294e = zzhwVar;
        this.f70290a = zzahVar;
        this.f70291b = i;
        this.f70292c = j;
        this.f70293d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f70294e.u(this.f70290a);
        zzhw.C(this.f70294e, this.f70290a, this.f70291b, this.f70292c, false, this.f70293d);
    }
}
