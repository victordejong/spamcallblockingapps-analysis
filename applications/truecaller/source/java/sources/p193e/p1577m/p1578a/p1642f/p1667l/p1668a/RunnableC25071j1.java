package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzhw;
import com.google.android.gms.measurement.internal.zzjk;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: e.m.a.f.l.a.j1 */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/j1.class */
public final class RunnableC25071j1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f70149a;

    /* renamed from: b */
    public final /* synthetic */ String f70150b;

    /* renamed from: c */
    public final /* synthetic */ String f70151c;

    /* renamed from: d */
    public final /* synthetic */ zzhw f70152d;

    public RunnableC25071j1(zzhw zzhwVar, AtomicReference atomicReference, String str, String str2) {
        this.f70152d = zzhwVar;
        this.f70149a = atomicReference;
        this.f70150b = str;
        this.f70151c = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjk u = ((v0) this.f70152d).a.u();
        AtomicReference atomicReference = this.f70149a;
        String str = this.f70150b;
        String str2 = this.f70151c;
        u.d();
        u.e();
        u.p(new RunnableC25120v2(u, atomicReference, str, str2, u.m(false)));
    }
}
