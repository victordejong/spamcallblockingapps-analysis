package p068d2;

import java.util.concurrent.ScheduledFuture;
/* renamed from: d2.b1 */
/* loaded from: classes-dex2jar.jar:d2/b1.class */
public class C2178b1 implements AbstractC2458y0 {

    /* renamed from: a */
    public final /* synthetic */ C2194d1 f7947a;

    public C2178b1(C2194d1 c2194d1) {
        this.f7947a = c2194d1;
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        C2194d1 c2194d1 = this.f7947a;
        ScheduledFuture<?> scheduledFuture = c2194d1.f8005b;
        if (scheduledFuture != null) {
            if (!scheduledFuture.isCancelled()) {
                c2194d1.f8005b.cancel(false);
            }
            c2194d1.f8005b = null;
        }
    }
}
