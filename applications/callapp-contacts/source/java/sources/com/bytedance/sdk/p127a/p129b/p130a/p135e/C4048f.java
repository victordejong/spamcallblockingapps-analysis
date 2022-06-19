package com.bytedance.sdk.p127a.p129b.p130a.p135e;

import com.bytedance.sdk.p127a.p128a.AbstractC3975h;
import com.bytedance.sdk.p127a.p128a.AbstractC3989r;
import com.bytedance.sdk.p127a.p128a.AbstractC3990s;
import com.bytedance.sdk.p127a.p128a.C3969c;
import com.bytedance.sdk.p127a.p128a.C3973f;
import com.bytedance.sdk.p127a.p128a.C3979l;
import com.bytedance.sdk.p127a.p129b.AbstractC4100ab;
import com.bytedance.sdk.p127a.p129b.AbstractC4137t;
import com.bytedance.sdk.p127a.p129b.C4098aa;
import com.bytedance.sdk.p127a.p129b.C4132r;
import com.bytedance.sdk.p127a.p129b.C4140v;
import com.bytedance.sdk.p127a.p129b.C4146y;
import com.bytedance.sdk.p127a.p129b.EnumC4143w;
import com.bytedance.sdk.p127a.p129b.p130a.AbstractC3995a;
import com.bytedance.sdk.p127a.p129b.p130a.C4015c;
import com.bytedance.sdk.p127a.p129b.p130a.p132b.C4013g;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.AbstractC4021c;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.C4024e;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.C4027h;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.C4028i;
import com.bytedance.sdk.p127a.p129b.p130a.p133c.C4030k;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* renamed from: com.bytedance.sdk.a.b.a.e.f */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/f.class */
public final class C4048f implements AbstractC4021c {

    /* renamed from: b */
    private static final C3973f f14690b;

    /* renamed from: c */
    private static final C3973f f14691c;

    /* renamed from: d */
    private static final C3973f f14692d;

    /* renamed from: e */
    private static final C3973f f14693e;

    /* renamed from: f */
    private static final C3973f f14694f;

    /* renamed from: g */
    private static final C3973f f14695g;

    /* renamed from: h */
    private static final C3973f f14696h;

    /* renamed from: i */
    private static final C3973f f14697i;

    /* renamed from: j */
    private static final List<C3973f> f14698j;

    /* renamed from: k */
    private static final List<C3973f> f14699k;

    /* renamed from: a */
    final C4013g f14700a;

    /* renamed from: l */
    private final C4140v f14701l;

    /* renamed from: m */
    private final AbstractC4137t.AbstractC4138a f14702m;

    /* renamed from: n */
    private final C4050g f14703n;

    /* renamed from: o */
    private C4068i f14704o;

    /* renamed from: com.bytedance.sdk.a.b.a.e.f$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/f$a.class */
    class C4049a extends AbstractC3975h {

        /* renamed from: a */
        boolean f14705a = false;

        /* renamed from: b */
        long f14706b = 0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C4049a(AbstractC3990s abstractC3990s) {
            super(abstractC3990s);
            C4048f.this = r5;
        }

        /* renamed from: a */
        private void m36799a(IOException iOException) {
            if (this.f14705a) {
                return;
            }
            this.f14705a = true;
            C4048f.this.f14700a.m36928a(false, (AbstractC4021c) C4048f.this, this.f14706b, iOException);
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3975h, com.bytedance.sdk.p127a.p128a.AbstractC3990s
        /* renamed from: a */
        public long mo36719a(C3969c c3969c, long j) throws IOException {
            try {
                long mo36719a = m37095b().mo36719a(c3969c, j);
                if (mo36719a > 0) {
                    this.f14706b += mo36719a;
                }
                return mo36719a;
            } catch (IOException e) {
                m36799a(e);
                throw e;
            }
        }

        @Override // com.bytedance.sdk.p127a.p128a.AbstractC3975h, com.bytedance.sdk.p127a.p128a.AbstractC3990s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            m36799a(null);
        }
    }

    static {
        C3973f m37101a = C3973f.m37101a("connection");
        f14690b = m37101a;
        C3973f m37101a2 = C3973f.m37101a("host");
        f14691c = m37101a2;
        C3973f m37101a3 = C3973f.m37101a("keep-alive");
        f14692d = m37101a3;
        C3973f m37101a4 = C3973f.m37101a("proxy-connection");
        f14693e = m37101a4;
        C3973f m37101a5 = C3973f.m37101a("transfer-encoding");
        f14694f = m37101a5;
        C3973f m37101a6 = C3973f.m37101a("te");
        f14695g = m37101a6;
        C3973f m37101a7 = C3973f.m37101a("encoding");
        f14696h = m37101a7;
        C3973f m37101a8 = C3973f.m37101a("upgrade");
        f14697i = m37101a8;
        f14698j = C4015c.m36897a(m37101a, m37101a2, m37101a3, m37101a4, m37101a6, m37101a5, m37101a7, m37101a8, C4043c.f14659c, C4043c.f14660d, C4043c.f14661e, C4043c.f14662f);
        f14699k = C4015c.m36897a(m37101a, m37101a2, m37101a3, m37101a4, m37101a6, m37101a5, m37101a7, m37101a8);
    }

    public C4048f(C4140v c4140v, AbstractC4137t.AbstractC4138a abstractC4138a, C4013g c4013g, C4050g c4050g) {
        this.f14701l = c4140v;
        this.f14702m = abstractC4138a;
        this.f14700a = c4013g;
        this.f14703n = c4050g;
    }

    /* renamed from: a */
    public static C4098aa.C4099a m36803a(List<C4043c> list) throws IOException {
        C4030k c4030k;
        C4132r.C4133a c4133a;
        C4030k c4030k2;
        C4132r.C4133a c4133a2 = new C4132r.C4133a();
        int size = list.size();
        int i = 0;
        C4030k c4030k3 = null;
        while (true) {
            c4030k = c4030k3;
            if (i >= size) {
                break;
            }
            C4043c c4043c = list.get(i);
            if (c4043c == null) {
                c4133a = c4133a2;
                c4030k2 = c4030k;
                if (c4030k != null) {
                    c4133a = c4133a2;
                    c4030k2 = c4030k;
                    if (c4030k.f14622b == 100) {
                        c4133a = new C4132r.C4133a();
                        c4030k2 = null;
                    }
                }
            } else {
                C3973f c3973f = c4043c.f14663g;
                String mo37038a = c4043c.f14664h.mo37038a();
                if (c3973f.equals(C4043c.f14658b)) {
                    c4030k2 = C4030k.m36852a("HTTP/1.1 ".concat(String.valueOf(mo37038a)));
                    c4133a = c4133a2;
                } else {
                    c4133a = c4133a2;
                    c4030k2 = c4030k;
                    if (!f14699k.contains(c3973f)) {
                        AbstractC3995a.f14478a.mo36361a(c4133a2, c3973f.mo37038a(), mo37038a);
                        c4030k2 = c4030k;
                        c4133a = c4133a2;
                    }
                }
            }
            i++;
            c4133a2 = c4133a;
            c4030k3 = c4030k2;
        }
        if (c4030k != null) {
            return new C4098aa.C4099a().m36592a(EnumC4143w.HTTP_2).m36598a(c4030k.f14622b).m36590a(c4030k.f14623c).m36593a(c4133a2.m36463a());
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    /* renamed from: b */
    public static List<C4043c> m36800b(C4146y c4146y) {
        C4132r m36338c = c4146y.m36338c();
        ArrayList arrayList = new ArrayList(m36338c.m36471a() + 4);
        arrayList.add(new C4043c(C4043c.f14659c, c4146y.m36339b()));
        arrayList.add(new C4043c(C4043c.f14660d, C4028i.m36863a(c4146y.m36341a())));
        String m36340a = c4146y.m36340a("Host");
        if (m36340a != null) {
            arrayList.add(new C4043c(C4043c.f14662f, m36340a));
        }
        arrayList.add(new C4043c(C4043c.f14661e, c4146y.m36341a().m36444b()));
        int m36471a = m36338c.m36471a();
        for (int i = 0; i < m36471a; i++) {
            C3973f m37101a = C3973f.m37101a(m36338c.m36470a(i).toLowerCase(Locale.US));
            if (!f14698j.contains(m37101a)) {
                arrayList.add(new C4043c(m37101a, m36338c.m36466b(i)));
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p133c.AbstractC4021c
    /* renamed from: a */
    public final AbstractC3989r mo36804a(C4146y c4146y, long j) {
        return this.f14704o.m36728h();
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p133c.AbstractC4021c
    /* renamed from: a */
    public final C4098aa.C4099a mo36802a(boolean z) throws IOException {
        C4098aa.C4099a m36803a = m36803a(this.f14704o.m36733d());
        if (!z || AbstractC3995a.f14478a.mo36368a(m36803a) != 100) {
            return m36803a;
        }
        return null;
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p133c.AbstractC4021c
    /* renamed from: a */
    public final AbstractC4100ab mo36806a(C4098aa c4098aa) throws IOException {
        this.f14700a.f14561c.m36477f(this.f14700a.f14560b);
        return new C4027h(c4098aa.m36613a("Content-Type"), C4024e.m36882a(c4098aa), C3979l.m37085a(new C4049a(this.f14704o.m36729g())));
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p133c.AbstractC4021c
    /* renamed from: a */
    public final void mo36807a() throws IOException {
        this.f14703n.m36784b();
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p133c.AbstractC4021c
    /* renamed from: a */
    public final void mo36805a(C4146y c4146y) throws IOException {
        if (this.f14704o != null) {
            return;
        }
        C4068i m36787a = this.f14703n.m36787a(m36800b(c4146y), c4146y.m36337d() != null);
        this.f14704o = m36787a;
        m36787a.m36731e().mo37017a(this.f14702m.mo36402c(), TimeUnit.MILLISECONDS);
        this.f14704o.m36730f().mo37017a(this.f14702m.mo36401d(), TimeUnit.MILLISECONDS);
    }

    @Override // com.bytedance.sdk.p127a.p129b.p130a.p133c.AbstractC4021c
    /* renamed from: b */
    public final void mo36801b() throws IOException {
        this.f14704o.m36728h().close();
    }
}
