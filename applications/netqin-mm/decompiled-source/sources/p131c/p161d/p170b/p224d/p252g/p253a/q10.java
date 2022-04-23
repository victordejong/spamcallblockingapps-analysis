package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdwk;
import com.google.android.gms.internal.ads.zzdxu;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.concurrent.Future;
/* renamed from: c.d.b.d.g.a.q10 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/q10.class */
public final class q10 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzdzc f14578a;

    /* renamed from: b */
    public final /* synthetic */ int f14579b;

    /* renamed from: c */
    public final /* synthetic */ zzdxu f14580c;

    public q10(zzdxu zzdxuVar, zzdzc zzdzcVar, int i) {
        this.f14580c = zzdxuVar;
        this.f14578a = zzdzcVar;
        this.f14579b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.f14578a.isCancelled()) {
                this.f14580c.f27942l = null;
                this.f14580c.cancel(false);
            } else {
                this.f14580c.m13040a(this.f14579b, (Future) this.f14578a);
            }
        } finally {
            this.f14580c.m13039a((zzdwk) null);
        }
    }
}
