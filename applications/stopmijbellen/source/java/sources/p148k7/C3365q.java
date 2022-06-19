package p148k7;

import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import p124i4.C3102d;
import p159l7.AbstractC3513c;
import p291y.C4951d;
/* renamed from: k7.q */
/* loaded from: classes2-dex2jar.jar:k7/q.class */
public class C3365q extends AbstractC3361n {

    /* renamed from: d */
    public C3343h f11386d;

    /* renamed from: e */
    public File f11387e;

    /* renamed from: f */
    public AbstractC3513c f11388f;

    /* renamed from: g */
    public boolean f11389g;

    /* renamed from: i */
    public FileChannel f11391i;

    /* renamed from: h */
    public C3358l f11390h = new C3358l();

    /* renamed from: j */
    public Runnable f11392j = new RunnableC3366a();

    /* renamed from: k7.q$a */
    /* loaded from: classes2-dex2jar.jar:k7/q$a.class */
    public class RunnableC3366a implements Runnable {
        public RunnableC3366a() {
            C3365q.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3365q c3365q;
            try {
                C3365q c3365q2 = C3365q.this;
                if (c3365q2.f11391i == null) {
                    c3365q2.f11391i = new FileInputStream(C3365q.this.f11387e).getChannel();
                }
                if (!C3365q.this.f11390h.m2343j()) {
                    C3365q c3365q3 = C3365q.this;
                    C3102d.m2623p(c3365q3, c3365q3.f11390h);
                    if (!C3365q.this.f11390h.m2343j()) {
                        return;
                    }
                }
                do {
                    ByteBuffer m2342k = C3358l.m2342k(8192);
                    if (-1 == C3365q.this.f11391i.read(m2342k)) {
                        C3365q.this.mo1262n(null);
                        return;
                    }
                    m2342k.flip();
                    C3365q.this.f11390h.m2352a(m2342k);
                    C3365q c3365q4 = C3365q.this;
                    C3102d.m2623p(c3365q4, c3365q4.f11390h);
                    c3365q = C3365q.this;
                    if (c3365q.f11390h.f11382c != 0) {
                        return;
                    }
                } while (!c3365q.f11389g);
            } catch (Exception e) {
                C3365q.this.mo1262n(e);
            }
        }
    }

    public C3365q(C3343h c3343h, File file) {
        this.f11386d = c3343h;
        this.f11387e = file;
        boolean z = !c3343h.m2362d();
        this.f11389g = z;
        if (!z) {
            this.f11386d.m2359g(this.f11392j);
        }
    }

    @Override // p148k7.AbstractC3360m, p148k7.AbstractC3362o
    /* renamed from: a */
    public C3343h mo940a() {
        return this.f11386d;
    }

    @Override // p148k7.AbstractC3361n, p148k7.AbstractC3360m
    /* renamed from: b */
    public void mo939b(AbstractC3513c abstractC3513c) {
        this.f11388f = abstractC3513c;
    }

    @Override // p148k7.AbstractC3360m
    public void close() {
        try {
            this.f11391i.close();
        } catch (Exception e) {
        }
    }

    @Override // p148k7.AbstractC3360m
    /* renamed from: e */
    public boolean mo938e() {
        return this.f11389g;
    }

    @Override // p148k7.AbstractC3361n, p148k7.AbstractC3360m
    /* renamed from: i */
    public AbstractC3513c mo935i() {
        return this.f11388f;
    }

    @Override // p148k7.AbstractC3361n
    /* renamed from: n */
    public void mo1262n(Exception exc) {
        C4951d.m198e(this.f11391i);
        super.mo1262n(exc);
    }
}
