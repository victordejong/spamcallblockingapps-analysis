package p193e.p1512i.p1516b.p1529r1;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.concurrent.Executor;
import p193e.p1512i.p1516b.AbstractRunnableC22929c3;
import p193e.p1512i.p1516b.p1522i2.C22967g;
import p193e.p1512i.p1516b.p1536w1.ExecutorC23149c;
/* renamed from: e.i.b.r1.q */
/* loaded from: classes-dex2jar.jar:e/i/b/r1/q.class */
public class C23056q {

    /* renamed from: a */
    public final C22967g f63856a;

    /* renamed from: b */
    public final Executor f63857b;

    /* renamed from: c */
    public final ExecutorC23149c f63858c;

    /* renamed from: e.i.b.r1.q$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/r1/q$a.class */
    public static class C23057a extends AbstractRunnableC22929c3 {

        /* renamed from: c */
        public final URL f63859c;

        /* renamed from: d */
        public final C22967g f63860d;

        public C23057a(URL url, C22967g c22967g, C23055p c23055p) {
            this.f63859c = url;
            this.f63860d = c22967g;
        }

        @Override // p193e.p1512i.p1516b.AbstractRunnableC22929c3
        /* renamed from: a */
        public void mo7379a() throws IOException {
            InputStream m7610b = C22967g.m7610b(this.f63860d.m7609c(this.f63859c, null, "GET"));
            if (m7610b != null) {
                m7610b.close();
            }
        }
    }

    public C23056q(C22967g c22967g, Executor executor, ExecutorC23149c executorC23149c) {
        this.f63856a = c22967g;
        this.f63857b = executor;
        this.f63858c = executorC23149c;
    }
}
