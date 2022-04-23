package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdwd;
import com.google.android.gms.internal.ads.zzdwh;
import com.google.android.gms.internal.ads.zzdxq;
/* renamed from: c.d.b.d.g.a.m20 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/m20.class */
public final class m20 extends zzdxq.C7251h<Void> implements Runnable {

    /* renamed from: h */
    public final Runnable f14014h;

    public m20(Runnable runnable) {
        zzdwd.m13096a(runnable);
        this.f14014h = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f14014h.run();
        } catch (Throwable th) {
            mo12971a(th);
            zzdwh.m13081c(th);
            throw null;
        }
    }
}
