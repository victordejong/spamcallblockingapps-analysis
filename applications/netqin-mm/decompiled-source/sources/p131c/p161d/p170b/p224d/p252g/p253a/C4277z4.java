package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzwm;
/* renamed from: c.d.b.d.g.a.z4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/z4.class */
public final class C4277z4 {

    /* renamed from: a */
    public final Object f16252a;

    /* renamed from: b */
    public volatile int f16253b;

    /* renamed from: c */
    public volatile long f16254c;

    public C4277z4() {
        this.f16252a = new Object();
        this.f16253b = C3380b5.f12335a;
        this.f16254c = 0L;
    }

    public /* synthetic */ C4277z4(C3343a5 a5Var) {
        this();
    }

    /* renamed from: a */
    public final void m26104a() {
        long b = zzp.m17962j().mo17091b();
        synchronized (this.f16252a) {
            if (this.f16253b == C3380b5.f12336b) {
                if (this.f16254c + ((Long) zzwm.m11166e().m16921a(zzabb.f23761W2)).longValue() <= b) {
                    this.f16253b = C3380b5.f12335a;
                }
            }
        }
        long b2 = zzp.m17962j().mo17091b();
        synchronized (this.f16252a) {
            if (this.f16253b == 2) {
                this.f16253b = 3;
                if (this.f16253b == C3380b5.f12336b) {
                    this.f16254c = b2;
                }
            }
        }
    }
}
