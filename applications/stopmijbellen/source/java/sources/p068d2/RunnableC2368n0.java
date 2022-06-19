package p068d2;

import android.support.p012v4.media.AbstractC0081a;
import android.support.p012v4.media.C0082b;
import java.util.Objects;
/* renamed from: d2.n0 */
/* loaded from: classes-dex2jar.jar:d2/n0.class */
public class RunnableC2368n0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C2410t0 f8385a;

    /* renamed from: b */
    public final /* synthetic */ C2387q f8386b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC0081a f8387c;

    public RunnableC2368n0(C2329k0 c2329k0, C2410t0 c2410t0, C2387q c2387q, AbstractC0081a abstractC0081a) {
        this.f8385a = c2410t0;
        this.f8386b = c2387q;
        this.f8387c = abstractC0081a;
    }

    @Override // java.lang.Runnable
    public void run() {
        C2267f4 c2267f4 = this.f8385a.f8537b;
        C2387q c2387q = this.f8386b;
        if (c2387q.f8440e == null) {
            C2267f4 m3700l = c2267f4.m3700l("iab");
            if (m3700l.m3707e() > 0) {
                c2387q.f8440e = new C2411t1(m3700l, c2387q.f8442g);
            }
        }
        this.f8386b.f8443h = c2267f4.m3697o("ad_id");
        C2387q c2387q2 = this.f8386b;
        c2267f4.m3697o("creative_id");
        Objects.requireNonNull(c2387q2);
        this.f8386b.f8449n = c2267f4.m3697o("view_network_pass_filter");
        C2411t1 c2411t1 = this.f8386b.f8440e;
        if (c2411t1 != null && c2411t1.f8542e != 2) {
            try {
                c2411t1.m3585a(null);
            } catch (IllegalArgumentException e) {
                C0082b.m8750l(0, 0, "IllegalArgumentException when creating omid session", true);
            }
        }
        this.f8387c.mo1952F(this.f8386b);
    }
}
