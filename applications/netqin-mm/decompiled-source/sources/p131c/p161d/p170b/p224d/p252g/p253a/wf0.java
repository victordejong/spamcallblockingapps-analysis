package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzrh;
import java.util.List;
/* renamed from: c.d.b.d.g.a.wf0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/wf0.class */
public final class wf0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ vf0 f15945a;

    public wf0(vf0 vf0Var) {
        this.f15945a = vf0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        boolean z2;
        List<zzrh> list;
        obj = this.f15945a.f15852c;
        synchronized (obj) {
            try {
                z = this.f15945a.f15853d;
                if (z) {
                    z2 = this.f15945a.f15854e;
                    if (z2) {
                        this.f15945a.f15853d = false;
                        zzbbq.m15858a("App went background");
                        list = this.f15945a.f15855f;
                        for (zzrh zzrhVar : list) {
                            try {
                                zzrhVar.mo11506a(false);
                            } catch (Exception e) {
                                zzbbq.m15855b("", e);
                            }
                        }
                    }
                }
                zzbbq.m15858a("App is still foreground");
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
