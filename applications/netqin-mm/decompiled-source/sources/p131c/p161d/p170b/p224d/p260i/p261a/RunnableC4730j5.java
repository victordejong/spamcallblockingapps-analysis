package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzac;
import com.google.android.gms.measurement.internal.zzhb;
/* renamed from: c.d.b.d.i.a.j5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/j5.class */
public final class RunnableC4730j5 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzac f17192a;

    /* renamed from: b */
    public final /* synthetic */ int f17193b;

    /* renamed from: c */
    public final /* synthetic */ long f17194c;

    /* renamed from: d */
    public final /* synthetic */ boolean f17195d;

    /* renamed from: e */
    public final /* synthetic */ zzhb f17196e;

    public RunnableC4730j5(zzhb zzhbVar, zzac zzacVar, int i, long j, boolean z) {
        this.f17196e = zzhbVar;
        this.f17192a = zzacVar;
        this.f17193b = i;
        this.f17194c = j;
        this.f17195d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f17196e.m8990a(this.f17192a);
        this.f17196e.m8988a(this.f17192a, this.f17193b, this.f17194c, false, this.f17195d);
    }
}
