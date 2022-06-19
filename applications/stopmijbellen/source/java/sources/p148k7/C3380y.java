package p148k7;

import java.io.InputStream;
import java.nio.ByteBuffer;
import p159l7.AbstractC3510a;
import p159l7.AbstractC3517f;
import p255u7.C4534a;
import p291y.C4951d;
/* renamed from: k7.y */
/* loaded from: classes2-dex2jar.jar:k7/y.class */
public final class C3380y implements AbstractC3517f {

    /* renamed from: a */
    public int f11420a = 0;

    /* renamed from: b */
    public C3358l f11421b = new C3358l();

    /* renamed from: c */
    public C4534a f11422c;

    /* renamed from: d */
    public final /* synthetic */ AbstractC3362o f11423d;

    /* renamed from: e */
    public final /* synthetic */ InputStream f11424e;

    /* renamed from: f */
    public final /* synthetic */ long f11425f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC3510a f11426g;

    public C3380y(AbstractC3362o abstractC3362o, InputStream inputStream, long j, AbstractC3510a abstractC3510a) {
        this.f11423d = abstractC3362o;
        this.f11424e = inputStream;
        this.f11425f = j;
        this.f11426g = abstractC3510a;
        C4534a c4534a = new C4534a();
        c4534a.m862b((int) Math.min(1048576L, j));
        this.f11422c = c4534a;
    }

    /* renamed from: a */
    public final void m2327a() {
        this.f11423d.mo1480g(null);
        this.f11423d.mo1478m(null);
        this.f11421b.m2339n();
        C4951d.m198e(this.f11424e);
    }

    @Override // p159l7.AbstractC3517f
    /* renamed from: f */
    public void mo148f() {
        do {
            try {
                if (!this.f11421b.m2344i()) {
                    ByteBuffer m863a = this.f11422c.m863a();
                    int read = this.f11424e.read(m863a.array(), 0, (int) Math.min(this.f11425f - this.f11420a, m863a.capacity()));
                    if (read != -1 && this.f11420a != this.f11425f) {
                        this.f11422c.m861c(read);
                        this.f11420a += read;
                        m863a.position(0);
                        m863a.limit(read);
                        this.f11421b.m2352a(m863a);
                    }
                    m2327a();
                    this.f11426g.mo1098a(null);
                    return;
                }
                this.f11423d.mo1479k(this.f11421b);
            } catch (Exception e) {
                m2327a();
                this.f11426g.mo1098a(e);
                return;
            }
        } while (!this.f11421b.m2344i());
    }
}
