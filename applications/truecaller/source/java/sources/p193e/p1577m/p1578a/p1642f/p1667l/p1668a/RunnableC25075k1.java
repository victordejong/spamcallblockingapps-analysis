package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzhw;
import com.google.android.gms.measurement.internal.zzjk;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: e.m.a.f.l.a.k1 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/k1.class */
public final class RunnableC25075k1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f70158a;

    /* renamed from: b */
    public final /* synthetic */ String f70159b;

    /* renamed from: c */
    public final /* synthetic */ String f70160c;

    /* renamed from: d */
    public final /* synthetic */ boolean f70161d;

    /* renamed from: e */
    public final /* synthetic */ zzhw f70162e;

    public RunnableC25075k1(zzhw zzhwVar, AtomicReference atomicReference, String str, String str2, boolean z) {
        this.f70162e = zzhwVar;
        this.f70158a = atomicReference;
        this.f70159b = str;
        this.f70160c = str2;
        this.f70161d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjk u = ((v0) this.f70162e).a.u();
        AtomicReference atomicReference = this.f70158a;
        String str = this.f70159b;
        String str2 = this.f70160c;
        boolean z = this.f70161d;
        u.d();
        u.e();
        u.p(new RunnableC25126x2(u, atomicReference, str, str2, u.m(false), z));
    }
}
