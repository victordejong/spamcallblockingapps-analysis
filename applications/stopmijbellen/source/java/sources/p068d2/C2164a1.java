package p068d2;

import android.support.p012v4.media.C0082b;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
/* renamed from: d2.a1 */
/* loaded from: classes-dex2jar.jar:d2/a1.class */
public class C2164a1 implements AbstractC2458y0 {

    /* renamed from: a */
    public final /* synthetic */ C2194d1 f7915a;

    public C2164a1(C2194d1 c2194d1) {
        this.f7915a = c2194d1;
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        C2194d1 c2194d1 = this.f7915a;
        if (c2194d1.f8004a == null) {
            c2194d1.f8004a = Executors.newSingleThreadScheduledExecutor();
        }
        if (c2194d1.f8005b == null) {
            try {
                c2194d1.f8005b = c2194d1.f8004a.scheduleAtFixedRate(new RunnableC2188c1(c2194d1), 0L, 1000L, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                StringBuilder m8752j = C0082b.m8752j("Error when scheduling network checks: ");
                m8752j.append(e.toString());
                C0082b.m8750l(0, 0, m8752j.toString(), true);
            }
            c2194d1.m3773a();
        }
    }
}
