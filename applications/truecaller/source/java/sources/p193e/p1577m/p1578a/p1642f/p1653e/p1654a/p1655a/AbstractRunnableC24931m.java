package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import com.google.android.gms.common.api.internal.zaar;
import com.google.android.gms.common.api.internal.zabd;
/* renamed from: e.m.a.f.e.a.a.m */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/m.class */
public abstract class AbstractRunnableC24931m implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zaar f69852a;

    public /* synthetic */ AbstractRunnableC24931m(zaar zaarVar) {
        this.f69852a = zaarVar;
    }

    /* renamed from: a */
    public abstract void mo4287a();

    @Override // java.lang.Runnable
    public final void run() {
        this.f69852a.f5788b.lock();
        try {
            if (Thread.interrupted()) {
                return;
            }
            mo4287a();
        } catch (RuntimeException e) {
            zabd zabdVar = this.f69852a.f5787a;
            zabdVar.f5837e.sendMessage(zabdVar.f5837e.obtainMessage(2, e));
        } finally {
            this.f69852a.f5788b.unlock();
        }
    }
}
