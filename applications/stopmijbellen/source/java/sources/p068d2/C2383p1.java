package p068d2;
/* renamed from: d2.p1 */
/* loaded from: classes-dex2jar.jar:d2/p1.class */
public class C2383p1 implements AbstractC2458y0 {

    /* renamed from: d2.p1$a */
    /* loaded from: classes-dex2jar.jar:d2/p1$a.class */
    public class RunnableC2384a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f8428a;

        /* renamed from: b */
        public final /* synthetic */ String f8429b;

        public RunnableC2384a(C2383p1 c2383p1, String str, String str2) {
            this.f8428a = str;
            this.f8429b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                AbstractC2367n abstractC2367n = C2408t.m3591d().f8102q.get(this.f8428a);
                if (abstractC2367n == null) {
                    return;
                }
                abstractC2367n.mo3569a(new C2362m(this.f8428a, this.f8429b, 0));
            } catch (RuntimeException e) {
            }
        }
    }

    public C2383p1() {
        C2408t.m3592c("CustomMessage.controller_send", this);
    }

    @Override // p068d2.AbstractC2458y0
    /* renamed from: a */
    public void mo3526a(C2410t0 c2410t0) {
        C2267f4 c2267f4 = c2410t0.f8537b;
        C2315i3.m3652s(new RunnableC2384a(this, c2267f4.m3697o("type"), c2267f4.m3697o("message")));
    }
}
