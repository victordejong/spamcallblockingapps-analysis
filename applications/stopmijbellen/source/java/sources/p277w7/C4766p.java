package p277w7;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import p033c8.AbstractC0853a;
import p073d8.C2486a;
import p083e8.AbstractC2608b;
import p148k7.AbstractC3360m;
import p148k7.C3343h;
import p170m7.AbstractC3666j;
import p170m7.AbstractFutureC3655c;
import p170m7.C3661g;
import p181n7.C3759h;
import p181n7.C3782w;
import p192o7.AbstractC3938a;
import p192o7.C3939b;
import p233s6.C4312g;
import p233s6.C4316k;
import p277w7.AbstractC4744c;
import p277w7.AbstractC4768q;
import p277w7.C4749e;
import p303z2.C5067x;
import p308z7.AbstractC5111a;
import p308z7.AbstractC5112b;
import p308z7.AbstractC5113c;
/* renamed from: w7.p */
/* loaded from: classes2-dex2jar.jar:w7/p.class */
public class C4766p implements AbstractC5111a, AbstractC5112b, AbstractC5113c<AbstractC5111a> {

    /* renamed from: a */
    public C4749e f14666a;

    /* renamed from: b */
    public AbstractC4756g f14667b;

    /* renamed from: e */
    public String f14670e;

    /* renamed from: f */
    public C3782w f14671f;

    /* renamed from: h */
    public AbstractC3938a f14673h;

    /* renamed from: c */
    public Handler f14668c = C4749e.f14630i;

    /* renamed from: d */
    public String f14669d = "GET";

    /* renamed from: g */
    public int f14672g = 30000;

    /* renamed from: i */
    public boolean f14674i = true;

    /* renamed from: w7.p$a */
    /* loaded from: classes2-dex2jar.jar:w7/p$a.class */
    public class C4767a<T> extends AbstractC3666j<T, AbstractC4768q.C4769a> implements AbstractC0853a<T> {

        /* renamed from: j */
        public C3759h f14675j;

        /* renamed from: k */
        public Runnable f14676k;

        /* renamed from: l */
        public AbstractC3360m f14677l;

        public C4767a(Runnable runnable) {
            C4766p.this = r5;
            this.f14676k = runnable;
            r5.f14666a.m499a(this, (Context) ((AbstractC4744c.AbstractC4746b) r5.f14667b).get());
        }

        @Override // p170m7.C3658f
        /* renamed from: b */
        public void mo488b() {
            AbstractC3360m abstractC3360m = this.f14677l;
            if (abstractC3360m != null) {
                abstractC3360m.close();
            }
            Runnable runnable = this.f14676k;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public C4766p(AbstractC4756g abstractC4756g, C4749e c4749e) {
        String mo497a = abstractC4756g.mo497a();
        if (mo497a != null) {
            Log.w("Ion", "Building request with dead context: " + mo497a);
        }
        this.f14666a = c4749e;
        this.f14667b = abstractC4756g;
    }

    /* renamed from: g */
    public static void m495g(C4766p c4766p, C4767a c4767a, Exception exc, Object obj) {
        Objects.requireNonNull(c4766p);
        RunnableC4758i runnableC4758i = new RunnableC4758i(c4766p, c4767a, exc, obj);
        Handler handler = c4766p.f14668c;
        if (handler == null) {
            c4766p.f14666a.f14636a.f12125d.m2359g(runnableC4758i);
        } else {
            C3343h.m2358h(handler, runnableC4758i);
        }
    }

    @Override // p308z7.AbstractC5111a
    /* renamed from: a */
    public Object mo15a(byte[] bArr) {
        if (bArr != null) {
            C3939b c3939b = new C3939b(new ByteArrayInputStream(bArr), bArr.length);
            this.f14669d = "POST";
            this.f14673h = c3939b;
        }
        return this;
    }

    @Override // p308z7.AbstractC5111a
    /* renamed from: b */
    public Object mo14b(C4316k c4316k) {
        C4312g c4312g;
        C4749e.C4751b c4751b = this.f14666a.f14641f;
        synchronized (c4751b) {
            C4749e c4749e = C4749e.this;
            if (c4749e.f14637b == null) {
                c4749e.f14637b = new C4312g();
            }
            c4312g = C4749e.this.f14637b;
        }
        C5067x c5067x = new C5067x(c4312g, c4316k);
        this.f14669d = "POST";
        this.f14673h = c5067x;
        return this;
    }

    @Override // p308z7.AbstractC5111a
    /* renamed from: c */
    public AbstractC5111a mo13c(String str, String str2) {
        if (str2 != null) {
            m494h().m1805a(str, str2);
        }
        return this;
    }

    @Override // p308z7.AbstractC5112b
    /* renamed from: d */
    public AbstractC0853a<C4316k> mo10d() {
        C4764n c4764n;
        C3759h c3759h;
        C2486a c2486a = new C2486a();
        if (!TextUtils.isEmpty("application/json") && m494h().f12257a.m1829a("Accept".toLowerCase(Locale.US)) == "*/*") {
            m489m("Accept", "application/json");
        }
        Uri m490l = m490l();
        if (m490l != null) {
            C3759h m491k = m491k(m490l);
            Type m3514b = c2486a.m3514b();
            Iterator<AbstractC4768q> it2 = this.f14666a.f14638c.iterator();
            do {
                c3759h = m491k;
                if (it2.hasNext()) {
                    c4764n = it2.next().mo487a(this.f14666a, m491k, m3514b);
                }
            } while (c4764n == null);
            return c4764n;
        }
        c3759h = null;
        C4764n c4764n2 = new C4764n(this, null, c2486a);
        if (m490l == null) {
            c4764n2.m1914p(new Exception("Invalid URI"), null, null);
            c4764n = c4764n2;
        } else {
            c4764n2.f14675j = c3759h;
            Uri m490l2 = m490l();
            if (m490l2 == null) {
                c4764n2.m1914p(new Exception("Invalid URI"), null, null);
                c4764n = c4764n2;
            } else {
                C3759h m491k2 = m491k(m490l2);
                c4764n2.f14675j = m491k2;
                C3661g c3661g = new C3661g();
                new RunnableC4759j(this, m491k2, c3661g).run();
                c3661g.m1919k(new C4762l(this, c4764n2));
                c4764n = c4764n2;
            }
        }
        return c4764n;
    }

    @Override // p308z7.AbstractC5111a
    /* renamed from: e */
    public AbstractC5111a mo12e(int i) {
        this.f14672g = i;
        return this;
    }

    @Override // p308z7.AbstractC5111a
    /* renamed from: f */
    public /* bridge */ /* synthetic */ AbstractC5111a mo11f(String str, String str2) {
        m489m(str, str2);
        return this;
    }

    /* renamed from: h */
    public final C3782w m494h() {
        if (this.f14671f == null) {
            C3782w c3782w = new C3782w();
            this.f14671f = c3782w;
            String str = this.f14670e;
            C3759h.m1818f(c3782w, str == null ? null : Uri.parse(str));
        }
        return this.f14671f;
    }

    /* renamed from: i */
    public <T> void m493i(C3759h c3759h, C4767a<T> c4767a) {
        Iterator<AbstractC4768q> it2 = this.f14666a.f14638c.iterator();
        while (it2.hasNext()) {
            AbstractC4768q next = it2.next();
            AbstractFutureC3655c<AbstractC3360m> mo485c = next.mo485c(this.f14666a, c3759h, c4767a);
            if (mo485c != null) {
                c3759h.m1820d("Using loader: " + next);
                c4767a.mo1926d(mo485c);
                return;
            }
        }
        c4767a.m1914p(new Exception("Unknown uri scheme"), null, null);
    }

    /* renamed from: j */
    public Object m492j(String str) {
        this.f14669d = "GET";
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            str2 = str;
            if (str.startsWith("/")) {
                str2 = new File(str).toURI().toString();
            }
        }
        this.f14670e = str2;
        return this;
    }

    /* renamed from: k */
    public final C3759h m491k(Uri uri) {
        AbstractC2608b abstractC2608b = this.f14666a.f14641f.f14644a;
        String str = this.f14669d;
        C3782w c3782w = this.f14671f;
        C4749e.C4751b.C4752a c4752a = (C4749e.C4751b.C4752a) abstractC2608b;
        Objects.requireNonNull(c4752a);
        C3759h c3759h = new C3759h(uri, str, c3782w);
        Objects.requireNonNull(C4749e.this);
        if (!TextUtils.isEmpty(null)) {
            C3782w c3782w2 = c3759h.f12187d;
            Objects.requireNonNull(C4749e.this);
            c3782w2.m1802d("User-Agent", null);
        }
        c3759h.f12188e = this.f14674i;
        c3759h.f12189f = this.f14673h;
        Objects.requireNonNull(this.f14666a);
        Objects.requireNonNull(this.f14666a);
        c3759h.f12193j = null;
        c3759h.f12194k = 0;
        c3759h.f12191h = null;
        c3759h.f12192i = 0;
        c3759h.f12190g = this.f14672g;
        c3759h.m1822b("preparing request");
        return c3759h;
    }

    /* renamed from: l */
    public final Uri m490l() {
        Uri uri;
        try {
            uri = Uri.parse(this.f14670e);
        } catch (Exception e) {
            uri = null;
        }
        if (uri == null || uri.getScheme() == null) {
            return null;
        }
        return uri;
    }

    /* renamed from: m */
    public C4766p m489m(String str, String str2) {
        if (str2 == null) {
            m494h().f12257a.remove(str.toLowerCase(Locale.US));
        } else {
            m494h().m1802d(str, str2);
        }
        return this;
    }
}
