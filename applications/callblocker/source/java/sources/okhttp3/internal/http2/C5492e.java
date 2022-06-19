package okhttp3.internal.http2;

import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okhttp3.AbstractC5406ad;
import okhttp3.AbstractC5544u;
import okhttp3.C5400aa;
import okhttp3.C5404ac;
import okhttp3.C5539s;
import okhttp3.C5550x;
import okhttp3.EnumC5553y;
import okhttp3.internal.AbstractC5424a;
import okhttp3.internal.C5449c;
import okhttp3.internal.connection.C5466f;
import okhttp3.internal.p193b.AbstractC5438c;
import okhttp3.internal.p193b.C5441e;
import okhttp3.internal.p193b.C5444h;
import okhttp3.internal.p193b.C5445i;
import okhttp3.internal.p193b.C5447k;
import p000a.AbstractC0010h;
import p000a.AbstractC0023r;
import p000a.AbstractC0024s;
import p000a.C0005c;
import p000a.C0008f;
import p000a.C0014l;
/* renamed from: okhttp3.internal.http2.e */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/e.class */
public final class C5492e implements AbstractC5438c {

    /* renamed from: b */
    private static final C0008f f22928b = C0008f.m22538a("connection");

    /* renamed from: c */
    private static final C0008f f22929c = C0008f.m22538a("host");

    /* renamed from: d */
    private static final C0008f f22930d = C0008f.m22538a("keep-alive");

    /* renamed from: e */
    private static final C0008f f22931e = C0008f.m22538a("proxy-connection");

    /* renamed from: f */
    private static final C0008f f22932f = C0008f.m22538a("transfer-encoding");

    /* renamed from: g */
    private static final C0008f f22933g = C0008f.m22538a("te");

    /* renamed from: h */
    private static final C0008f f22934h = C0008f.m22538a("encoding");

    /* renamed from: i */
    private static final C0008f f22935i = C0008f.m22538a("upgrade");

    /* renamed from: j */
    private static final List<C0008f> f22936j = C5449c.m655a(f22928b, f22929c, f22930d, f22931e, f22933g, f22932f, f22934h, f22935i, C5487b.f22897c, C5487b.f22898d, C5487b.f22899e, C5487b.f22900f);

    /* renamed from: k */
    private static final List<C0008f> f22937k = C5449c.m655a(f22928b, f22929c, f22930d, f22931e, f22933g, f22932f, f22934h, f22935i);

    /* renamed from: a */
    final C5466f f22938a;

    /* renamed from: l */
    private final C5550x f22939l;

    /* renamed from: m */
    private final AbstractC5544u.AbstractC5545a f22940m;

    /* renamed from: n */
    private final C5494f f22941n;

    /* renamed from: o */
    private C5512h f22942o;

    /* renamed from: okhttp3.internal.http2.e$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/e$a.class */
    class C5493a extends AbstractC0010h {

        /* renamed from: a */
        boolean f22943a = false;

        /* renamed from: b */
        long f22944b = 0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C5493a(AbstractC0024s abstractC0024s) {
            super(abstractC0024s);
            C5492e.this = r5;
        }

        /* renamed from: a */
        private void m488a(IOException iOException) {
            if (this.f22943a) {
                return;
            }
            this.f22943a = true;
            C5492e.this.f22938a.m589a(false, C5492e.this, this.f22944b, iOException);
        }

        @Override // p000a.AbstractC0010h, p000a.AbstractC0024s
        /* renamed from: a */
        public long mo90a(C0005c c0005c, long j) {
            try {
                long mo90a = m22532b().mo90a(c0005c, j);
                if (mo90a > 0) {
                    this.f22944b += mo90a;
                }
                return mo90a;
            } catch (IOException e) {
                m488a(e);
                throw e;
            }
        }

        @Override // p000a.AbstractC0010h, p000a.AbstractC0024s, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            super.close();
            m488a(null);
        }
    }

    public C5492e(C5550x c5550x, AbstractC5544u.AbstractC5545a abstractC5545a, C5466f c5466f, C5494f c5494f) {
        this.f22939l = c5550x;
        this.f22940m = abstractC5545a;
        this.f22938a = c5466f;
        this.f22941n = c5494f;
    }

    /* renamed from: a */
    public static C5404ac.C5405a m496a(List<C5487b> list) {
        C5539s.C5540a c5540a = new C5539s.C5540a();
        int size = list.size();
        C5447k c5447k = null;
        for (int i = 0; i < size; i++) {
            C5487b c5487b = list.get(i);
            if (c5487b != null) {
                C0008f c0008f = c5487b.f22901g;
                String mo22474a = c5487b.f22902h.mo22474a();
                if (c0008f.equals(C5487b.f22896b)) {
                    c5447k = C5447k.m678a("HTTP/1.1 " + mo22474a);
                } else if (!f22937k.contains(c0008f)) {
                    AbstractC5424a.f22678a.mo165a(c5540a, c0008f.mo22474a(), mo22474a);
                }
            } else if (c5447k != null && c5447k.f22754b == 100) {
                c5540a = new C5539s.C5540a();
                c5447k = null;
            }
        }
        if (c5447k == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        return new C5404ac.C5405a().m786a(EnumC5553y.HTTP_2).m796a(c5447k.f22754b).m794a(c5447k.f22755c).m787a(c5540a.m276a());
    }

    /* renamed from: b */
    public static List<C5487b> m490b(C5400aa c5400aa) {
        C5539s m824c = c5400aa.m824c();
        ArrayList arrayList = new ArrayList(m824c.m284a() + 4);
        arrayList.add(new C5487b(C5487b.f22897c, c5400aa.m825b()));
        arrayList.add(new C5487b(C5487b.f22898d, C5445i.m689a(c5400aa.m827a())));
        String m826a = c5400aa.m826a("Host");
        if (m826a != null) {
            arrayList.add(new C5487b(C5487b.f22900f, m826a));
        }
        arrayList.add(new C5487b(C5487b.f22899e, c5400aa.m827a().m257b()));
        int m284a = m824c.m284a();
        for (int i = 0; i < m284a; i++) {
            C0008f m22538a = C0008f.m22538a(m824c.m283a(i).toLowerCase(Locale.US));
            if (!f22936j.contains(m22538a)) {
                arrayList.add(new C5487b(m22538a, m824c.m278b(i)));
            }
        }
        return arrayList;
    }

    @Override // okhttp3.internal.p193b.AbstractC5438c
    /* renamed from: a */
    public AbstractC0023r mo494a(C5400aa c5400aa, long j) {
        return this.f22942o.m413h();
    }

    @Override // okhttp3.internal.p193b.AbstractC5438c
    /* renamed from: a */
    public C5404ac.C5405a mo492a(boolean z) {
        C5404ac.C5405a m496a = m496a(this.f22942o.m418d());
        C5404ac.C5405a c5405a = m496a;
        if (z) {
            c5405a = m496a;
            if (AbstractC5424a.f22678a.mo172a(m496a) == 100) {
                c5405a = null;
            }
        }
        return c5405a;
    }

    @Override // okhttp3.internal.p193b.AbstractC5438c
    /* renamed from: a */
    public AbstractC5406ad mo493a(C5404ac c5404ac) {
        this.f22938a.f22836c.m294f(this.f22938a.f22835b);
        return new C5444h(c5404ac.m809a("Content-Type"), C5441e.m706a(c5404ac), C0014l.m22522a(new C5493a(this.f22942o.m414g())));
    }

    @Override // okhttp3.internal.p193b.AbstractC5438c
    /* renamed from: a */
    public void mo497a() {
        this.f22941n.m471b();
    }

    @Override // okhttp3.internal.p193b.AbstractC5438c
    /* renamed from: a */
    public void mo495a(C5400aa c5400aa) {
        if (this.f22942o != null) {
            return;
        }
        this.f22942o = this.f22941n.m478a(m490b(c5400aa), c5400aa.m823d() != null);
        this.f22942o.m416e().mo22453a(this.f22940m.mo212c(), TimeUnit.MILLISECONDS);
        this.f22942o.m415f().mo22453a(this.f22940m.mo211d(), TimeUnit.MILLISECONDS);
    }

    @Override // okhttp3.internal.p193b.AbstractC5438c
    /* renamed from: b */
    public void mo491b() {
        this.f22942o.m413h().close();
    }

    @Override // okhttp3.internal.p193b.AbstractC5438c
    /* renamed from: c */
    public void mo489c() {
        if (this.f22942o != null) {
            this.f22942o.m421b(EnumC5486a.CANCEL);
        }
    }
}
