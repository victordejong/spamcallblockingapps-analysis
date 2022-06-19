package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzah;
import com.google.android.gms.measurement.internal.zzhw;
/* renamed from: e.m.a.f.l.a.s1 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/s1.class */
public final class RunnableC25108s1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzah f70276a;

    /* renamed from: b */
    public final /* synthetic */ int f70277b;

    /* renamed from: c */
    public final /* synthetic */ long f70278c;

    /* renamed from: d */
    public final /* synthetic */ boolean f70279d;

    /* renamed from: e */
    public final /* synthetic */ zzhw f70280e;

    public RunnableC25108s1(zzhw zzhwVar, zzah zzahVar, int i, long j, boolean z) {
        this.f70280e = zzhwVar;
        this.f70276a = zzahVar;
        this.f70277b = i;
        this.f70278c = j;
        this.f70279d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f70280e.u(this.f70276a);
        zzhw.C(this.f70280e, this.f70276a, this.f70277b, this.f70278c, false, this.f70279d);
    }
}
