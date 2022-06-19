package okhttp3.internal.http2;

import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okhttp3.AbstractC1957ac;
import okhttp3.AbstractC2092t;
import okhttp3.C1955ab;
import okhttp3.C2087r;
import okhttp3.C2098w;
import okhttp3.C2104z;
import okhttp3.EnumC2101x;
import okhttp3.internal.AbstractC1974a;
import okhttp3.internal.C1999c;
import okhttp3.internal.connection.C2016f;
import okhttp3.internal.p092b.AbstractC1988c;
import okhttp3.internal.p092b.C1991e;
import okhttp3.internal.p092b.C1994h;
import okhttp3.internal.p092b.C1995i;
import okhttp3.internal.p092b.C1997k;
import p000a.AbstractC0011h;
import p000a.AbstractC0025r;
import p000a.AbstractC0026s;
import p000a.C0005c;
import p000a.C0009f;
import p000a.C0015l;
/* renamed from: okhttp3.internal.http2.e */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/e.class */
public final class C2042e implements AbstractC1988c {

    /* renamed from: b */
    private static final C0009f f5154b = C0009f.m8114a("connection");

    /* renamed from: c */
    private static final C0009f f5155c = C0009f.m8114a("host");

    /* renamed from: d */
    private static final C0009f f5156d = C0009f.m8114a("keep-alive");

    /* renamed from: e */
    private static final C0009f f5157e = C0009f.m8114a("proxy-connection");

    /* renamed from: f */
    private static final C0009f f5158f = C0009f.m8114a("transfer-encoding");

    /* renamed from: g */
    private static final C0009f f5159g = C0009f.m8114a("te");

    /* renamed from: h */
    private static final C0009f f5160h = C0009f.m8114a("encoding");

    /* renamed from: i */
    private static final C0009f f5161i = C0009f.m8114a("upgrade");

    /* renamed from: j */
    private static final List<C0009f> f5162j = C1999c.m2335a(f5154b, f5155c, f5156d, f5157e, f5159g, f5158f, f5160h, f5161i, C2037b.f5123c, C2037b.f5124d, C2037b.f5125e, C2037b.f5126f);

    /* renamed from: k */
    private static final List<C0009f> f5163k = C1999c.m2335a(f5154b, f5155c, f5156d, f5157e, f5159g, f5158f, f5160h, f5161i);

    /* renamed from: a */
    final C2016f f5164a;

    /* renamed from: l */
    private final C2098w f5165l;

    /* renamed from: m */
    private final AbstractC2092t.AbstractC2093a f5166m;

    /* renamed from: n */
    private final C2044f f5167n;

    /* renamed from: o */
    private C2062h f5168o;

    /* renamed from: okhttp3.internal.http2.e$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/e$a.class */
    class C2043a extends AbstractC0011h {

        /* renamed from: a */
        boolean f5169a = false;

        /* renamed from: b */
        long f5170b = 0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2043a(AbstractC0026s abstractC0026s) {
            super(abstractC0026s);
            C2042e.this = r5;
        }

        /* renamed from: a */
        private void m2171a(IOException iOException) {
            if (this.f5169a) {
                return;
            }
            this.f5169a = true;
            C2042e.this.f5164a.m2270a(false, C2042e.this, this.f5170b, iOException);
        }

        @Override // p000a.AbstractC0011h, p000a.AbstractC0026s
        /* renamed from: a */
        public long mo2087a(C0005c c0005c, long j) {
            try {
                long mo2087a = m8108b().mo2087a(c0005c, j);
                if (mo2087a > 0) {
                    this.f5170b += mo2087a;
                }
                return mo2087a;
            } catch (IOException e) {
                m2171a(e);
                throw e;
            }
        }

        @Override // p000a.AbstractC0011h, p000a.AbstractC0026s, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            super.close();
            m2171a(null);
        }
    }

    public C2042e(C2098w c2098w, AbstractC2092t.AbstractC2093a abstractC2093a, C2016f c2016f, C2044f c2044f) {
        this.f5165l = c2098w;
        this.f5166m = abstractC2093a;
        this.f5164a = c2016f;
        this.f5167n = c2044f;
    }

    /* renamed from: a */
    public static C1955ab.C1956a m2178a(List<C2037b> list) {
        C2087r.C2088a c2088a;
        C1997k c1997k;
        C2087r.C2088a c2088a2 = new C2087r.C2088a();
        int size = list.size();
        int i = 0;
        C1997k c1997k2 = null;
        while (i < size) {
            C2037b c2037b = list.get(i);
            if (c2037b == null) {
                c1997k = c1997k2;
                c2088a = c2088a2;
                if (c1997k2 != null) {
                    c1997k = c1997k2;
                    c2088a = c2088a2;
                    if (c1997k2.f4980b == 100) {
                        c2088a = new C2087r.C2088a();
                        c1997k = null;
                    }
                }
            } else {
                C0009f c0009f = c2037b.f5127g;
                String mo8050a = c2037b.f5128h.mo8050a();
                if (c0009f.equals(C2037b.f5122b)) {
                    c1997k = C1997k.m2358a("HTTP/1.1 " + mo8050a);
                    c2088a = c2088a2;
                } else {
                    c1997k = c1997k2;
                    c2088a = c2088a2;
                    if (!f5163k.contains(c0009f)) {
                        AbstractC1974a.f4904a.mo1845a(c2088a2, c0009f.mo8050a(), mo8050a);
                        c2088a = c2088a2;
                        c1997k = c1997k2;
                    }
                }
            }
            i++;
            c1997k2 = c1997k;
            c2088a2 = c2088a;
        }
        if (c1997k2 != null) {
            return new C1955ab.C1956a().m2470a(EnumC2101x.HTTP_2).m2479a(c1997k2.f4980b).m2477a(c1997k2.f4981c).m2471a(c2088a2.m1962a());
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    /* renamed from: b */
    public static List<C2037b> m2172b(C2104z c2104z) {
        C2087r m1820c = c2104z.m1820c();
        ArrayList arrayList = new ArrayList(m1820c.m1970a() + 4);
        arrayList.add(new C2037b(C2037b.f5123c, c2104z.m1821b()));
        arrayList.add(new C2037b(C2037b.f5124d, C1995i.m2369a(c2104z.m1823a())));
        String m1822a = c2104z.m1822a("Host");
        if (m1822a != null) {
            arrayList.add(new C2037b(C2037b.f5126f, m1822a));
        }
        arrayList.add(new C2037b(C2037b.f5125e, c2104z.m1823a().m1941c()));
        int m1970a = m1820c.m1970a();
        for (int i = 0; i < m1970a; i++) {
            C0009f m8114a = C0009f.m8114a(m1820c.m1969a(i).toLowerCase(Locale.US));
            if (!f5162j.contains(m8114a)) {
                arrayList.add(new C2037b(m8114a, m1820c.m1964b(i)));
            }
        }
        return arrayList;
    }

    @Override // okhttp3.internal.p092b.AbstractC1988c
    /* renamed from: a */
    public AbstractC0025r mo2175a(C2104z c2104z, long j) {
        return this.f5168o.m2096h();
    }

    @Override // okhttp3.internal.p092b.AbstractC1988c
    /* renamed from: a */
    public C1955ab.C1956a mo2174a(boolean z) {
        C1955ab.C1956a m2178a = m2178a(this.f5168o.m2101d());
        if (!z || AbstractC1974a.f4904a.mo1852a(m2178a) != 100) {
            return m2178a;
        }
        return null;
    }

    @Override // okhttp3.internal.p092b.AbstractC1988c
    /* renamed from: a */
    public AbstractC1957ac mo2177a(C1955ab c1955ab) {
        this.f5164a.f5062c.m1976f(this.f5164a.f5061b);
        return new C1994h(c1955ab.m2493a("Content-Type"), C1991e.m2388a(c1955ab), C0015l.m8098a(new C2043a(this.f5168o.m2097g())));
    }

    @Override // okhttp3.internal.p092b.AbstractC1988c
    /* renamed from: a */
    public void mo2179a() {
        this.f5167n.m2154b();
    }

    @Override // okhttp3.internal.p092b.AbstractC1988c
    /* renamed from: a */
    public void mo2176a(C2104z c2104z) {
        if (this.f5168o != null) {
            return;
        }
        this.f5168o = this.f5167n.m2161a(m2172b(c2104z), c2104z.m1819d() != null);
        this.f5168o.m2099e().mo8029a(this.f5166m.mo1899c(), TimeUnit.MILLISECONDS);
        this.f5168o.m2098f().mo8029a(this.f5166m.mo1898d(), TimeUnit.MILLISECONDS);
    }

    @Override // okhttp3.internal.p092b.AbstractC1988c
    /* renamed from: b */
    public void mo2173b() {
        this.f5168o.m2096h().close();
    }
}
