package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdp;
import com.google.android.gms.internal.ads.zzdtc;
/* renamed from: c.d.b.d.g.a.zy */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/zy.class */
public final class RunnableC4307zy implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzdp f16473a;

    public RunnableC4307zy(zzdp zzdpVar) {
        this.f16473a = zzdpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        Object obj2;
        zzdtc zzdtcVar;
        obj = this.f16473a.f27693k;
        synchronized (obj) {
            z = this.f16473a.f27694l;
            if (!z) {
                this.f16473a.f27694l = true;
                try {
                    this.f16473a.m13373c();
                } catch (Exception e) {
                    zzdtcVar = this.f16473a.f27688f;
                    zzdtcVar.m13221a(2023, -1L, e);
                }
                obj2 = this.f16473a.f27693k;
                synchronized (obj2) {
                    this.f16473a.f27694l = false;
                }
            }
        }
    }
}
