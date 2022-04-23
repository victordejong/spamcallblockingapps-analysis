package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzaa;
import com.google.android.gms.internal.ads.zzm;
import java.util.concurrent.BlockingQueue;
/* renamed from: c.d.b.d.g.a.we0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/we0.class */
public final class we0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzaa f15942a;

    /* renamed from: b */
    public final /* synthetic */ zzm f15943b;

    public we0(zzm zzmVar, zzaa zzaaVar) {
        this.f15943b = zzmVar;
        this.f15942a = zzaaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BlockingQueue blockingQueue;
        try {
            blockingQueue = this.f15943b.f28620b;
            blockingQueue.put(this.f15942a);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }
}
