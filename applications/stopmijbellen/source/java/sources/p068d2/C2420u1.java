package p068d2;

import java.math.BigDecimal;
/* renamed from: d2.u1 */
/* loaded from: classes-dex2jar.jar:d2/u1.class */
public class C2420u1 implements AbstractC2367n {

    /* renamed from: a */
    public final /* synthetic */ C2411t1 f8578a;

    /* renamed from: d2.u1$a */
    /* loaded from: classes-dex2jar.jar:d2/u1$a.class */
    public class RunnableC2421a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f8579a;

        /* renamed from: b */
        public final /* synthetic */ String f8580b;

        /* renamed from: c */
        public final /* synthetic */ float f8581c;

        public RunnableC2421a(String str, String str2, float f) {
            C2420u1.this = r4;
            this.f8579a = str;
            this.f8580b = str2;
            this.f8581c = f;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f8579a.equals(C2420u1.this.f8578a.f8552o)) {
                C2420u1.this.f8578a.m3583c(this.f8580b, this.f8581c);
                return;
            }
            C2319j c2319j = C2408t.m3591d().m3722l().f8333f.get(this.f8579a);
            C2411t1 omidManager = c2319j != null ? c2319j.getOmidManager() : null;
            if (omidManager == null) {
                return;
            }
            omidManager.m3583c(this.f8580b, this.f8581c);
        }
    }

    public C2420u1(C2411t1 c2411t1) {
        this.f8578a = c2411t1;
    }

    @Override // p068d2.AbstractC2367n
    /* renamed from: a */
    public void mo3569a(C2362m c2362m) {
        C2267f4 m3742k = C2227e4.m3742k(c2362m.f8375b);
        String m3697o = m3742k.m3697o("event_type");
        float floatValue = BigDecimal.valueOf(C2227e4.m3737p(m3742k, "duration")).floatValue();
        boolean m3741l = C2227e4.m3741l(m3742k, "replay");
        boolean equals = m3742k.m3697o("skip_type").equals("dec");
        String m3697o2 = m3742k.m3697o("asi");
        if (m3697o.equals("skip") && equals) {
            this.f8578a.f8548k = true;
        } else if (m3741l && (m3697o.equals("start") || m3697o.equals("first_quartile") || m3697o.equals("midpoint") || m3697o.equals("third_quartile") || m3697o.equals("complete"))) {
        } else {
            C2315i3.m3652s(new RunnableC2421a(m3697o2, m3697o, floatValue));
        }
    }
}
