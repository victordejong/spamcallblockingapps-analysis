package p068d2;

import android.support.p012v4.media.C0082b;
import androidx.recyclerview.widget.C0608b;
/* renamed from: d2.s0 */
/* loaded from: classes-dex2jar.jar:d2/s0.class */
public class RunnableC2403s0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f8520a;

    /* renamed from: b */
    public final /* synthetic */ C2441x3 f8521b;

    /* renamed from: c */
    public final /* synthetic */ C2322j0 f8522c;

    /* renamed from: d */
    public final /* synthetic */ C2329k0 f8523d;

    public RunnableC2403s0(C2329k0 c2329k0, String str, C2441x3 c2441x3, C2322j0 c2322j0) {
        this.f8523d = c2329k0;
        this.f8520a = str;
        this.f8521b = c2441x3;
        this.f8522c = c2322j0;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            C2387q c2387q = this.f8523d.f8330c.get(this.f8520a);
            C2319j c2319j = this.f8523d.f8333f.get(this.f8520a);
            C2411t1 c2411t1 = c2387q == null ? null : c2387q.f8440e;
            C2411t1 c2411t12 = c2411t1;
            if (c2411t1 == null) {
                c2411t12 = c2411t1;
                if (c2319j != null) {
                    c2411t12 = c2319j.getOmidManager();
                }
            }
            int i = c2411t12 == null ? -1 : c2411t12.f8542e;
            if (c2411t12 == null || i != 2) {
                return;
            }
            c2411t12.m3585a(this.f8521b);
            c2411t12.m3584b(this.f8522c);
        } catch (IllegalArgumentException e) {
            C0082b.m8750l(0, 0, C0608b.m7626i("IllegalArgumentException when creating omid session"), true);
        }
    }
}
