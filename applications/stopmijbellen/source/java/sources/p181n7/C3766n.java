package p181n7;

import android.net.Uri;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLException;
import p124i4.C3102d;
import p148k7.AbstractC3356j;
import p148k7.C3331c;
import p148k7.C3339d;
import p148k7.C3369s;
import p159l7.AbstractC3510a;
import p159l7.AbstractC3512b;
import p181n7.AbstractC3749g;
/* renamed from: n7.n */
/* loaded from: classes2-dex2jar.jar:n7/n.class */
public class C3766n extends C3775s {

    /* renamed from: h */
    public SSLContext f12209h;

    /* renamed from: i */
    public HostnameVerifier f12210i;

    /* renamed from: j */
    public List<AbstractC3764l> f12211j = new ArrayList();

    /* renamed from: n7.n$a */
    /* loaded from: classes2-dex2jar.jar:n7/n$a.class */
    public class C3767a implements AbstractC3512b {

        /* renamed from: a */
        public final /* synthetic */ AbstractC3512b f12212a;

        /* renamed from: b */
        public final /* synthetic */ boolean f12213b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC3749g.C3750a f12214c;

        /* renamed from: d */
        public final /* synthetic */ Uri f12215d;

        /* renamed from: e */
        public final /* synthetic */ int f12216e;

        /* renamed from: n7.n$a$a */
        /* loaded from: classes2-dex2jar.jar:n7/n$a$a.class */
        public class C3768a implements AbstractC3510a {

            /* renamed from: a */
            public final /* synthetic */ AbstractC3356j f12218a;

            /* renamed from: n7.n$a$a$a */
            /* loaded from: classes2-dex2jar.jar:n7/n$a$a$a.class */
            public class C3769a implements C3369s.AbstractC3370a {

                /* renamed from: a */
                public String f12220a;

                public C3769a() {
                    C3768a.this = r4;
                }

                @Override // p148k7.C3369s.AbstractC3370a
                /* renamed from: a */
                public void mo1795a(String str) {
                    C3767a.this.f12214c.f12182b.m1819e(str);
                    if (this.f12220a != null) {
                        if (!TextUtils.isEmpty(str.trim())) {
                            return;
                        }
                        C3768a.this.f12218a.mo939b(null);
                        C3768a.this.f12218a.mo936h(null);
                        C3768a c3768a = C3768a.this;
                        C3767a c3767a = C3767a.this;
                        C3766n.this.m1813p(c3768a.f12218a, c3767a.f12214c, c3767a.f12215d, c3767a.f12216e, c3767a.f12212a);
                        return;
                    }
                    String trim = str.trim();
                    this.f12220a = trim;
                    if (trim.matches("HTTP/1.\\d 2\\d\\d .*")) {
                        return;
                    }
                    C3768a.this.f12218a.mo939b(null);
                    C3768a.this.f12218a.mo936h(null);
                    AbstractC3512b abstractC3512b = C3767a.this.f12212a;
                    StringBuilder m8752j = C0082b.m8752j("non 2xx status line: ");
                    m8752j.append(this.f12220a);
                    abstractC3512b.mo152a(new IOException(m8752j.toString()), C3768a.this.f12218a);
                }
            }

            /* renamed from: n7.n$a$a$b */
            /* loaded from: classes2-dex2jar.jar:n7/n$a$a$b.class */
            public class C3770b implements AbstractC3510a {
                public C3770b() {
                    C3768a.this = r4;
                }

                @Override // p159l7.AbstractC3510a
                /* renamed from: a */
                public void mo1098a(Exception exc) {
                    IOException iOException = exc;
                    if (!C3768a.this.f12218a.isOpen()) {
                        iOException = exc;
                        if (exc == null) {
                            iOException = new IOException("socket closed before proxy connect response");
                        }
                    }
                    C3768a c3768a = C3768a.this;
                    C3767a.this.f12212a.mo152a(iOException, c3768a.f12218a);
                }
            }

            public C3768a(AbstractC3356j abstractC3356j) {
                C3767a.this = r4;
                this.f12218a = abstractC3356j;
            }

            @Override // p159l7.AbstractC3510a
            /* renamed from: a */
            public void mo1098a(Exception exc) {
                if (exc != null) {
                    C3767a.this.f12212a.mo152a(exc, this.f12218a);
                    return;
                }
                C3369s c3369s = new C3369s();
                c3369s.f11400b = new C3769a();
                this.f12218a.mo939b(c3369s);
                this.f12218a.mo936h(new C3770b());
            }
        }

        public C3767a(AbstractC3512b abstractC3512b, boolean z, AbstractC3749g.C3750a c3750a, Uri uri, int i) {
            C3766n.this = r4;
            this.f12212a = abstractC3512b;
            this.f12213b = z;
            this.f12214c = c3750a;
            this.f12215d = uri;
            this.f12216e = i;
        }

        @Override // p159l7.AbstractC3512b
        /* renamed from: a */
        public void mo152a(Exception exc, AbstractC3356j abstractC3356j) {
            if (exc != null) {
                this.f12212a.mo152a(exc, abstractC3356j);
            } else if (!this.f12213b) {
                C3766n.this.m1813p(abstractC3356j, this.f12214c, this.f12215d, this.f12216e, this.f12212a);
            } else {
                String format = String.format(Locale.ENGLISH, "CONNECT %s:%s HTTP/1.1\r\nHost: %s\r\n\r\n", this.f12215d.getHost(), Integer.valueOf(this.f12216e), this.f12215d.getHost());
                C3759h c3759h = this.f12214c.f12182b;
                c3759h.m1819e("Proxying: " + format);
                C3102d.m2643I(abstractC3356j, format.getBytes(), new C3768a(abstractC3356j));
            }
        }
    }

    public C3766n(C3732a c3732a) {
        super(c3732a, "https", 443);
    }

    @Override // p181n7.C3775s
    /* renamed from: o */
    public AbstractC3512b mo1806o(AbstractC3749g.C3750a c3750a, Uri uri, int i, boolean z, AbstractC3512b abstractC3512b) {
        return new C3767a(abstractC3512b, z, c3750a, uri, i);
    }

    /* renamed from: p */
    public void m1813p(AbstractC3356j abstractC3356j, AbstractC3749g.C3750a c3750a, Uri uri, int i, AbstractC3512b abstractC3512b) {
        String host = uri.getHost();
        String host2 = uri.getHost();
        SSLContext sSLContext = this.f12209h;
        if (sSLContext == null) {
            sSLContext = C3331c.f11297t;
        }
        SSLEngine sSLEngine = null;
        Iterator<AbstractC3764l> it2 = this.f12211j.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            SSLEngine mo1815b = it2.next().mo1815b(sSLContext, host2, i);
            sSLEngine = mo1815b;
            if (mo1815b != null) {
                sSLEngine = mo1815b;
                break;
            }
        }
        for (AbstractC3764l abstractC3764l : this.f12211j) {
            abstractC3764l.mo1816a(sSLEngine, c3750a, host2, i);
        }
        HostnameVerifier hostnameVerifier = this.f12210i;
        C3765m c3765m = new C3765m(this, abstractC3512b);
        C3331c c3331c = new C3331c(abstractC3356j, host, i, sSLEngine, null, hostnameVerifier, true);
        c3331c.f11306i = c3765m;
        abstractC3356j.mo1480g(new C3339d(c3765m));
        try {
            c3331c.f11301d.beginHandshake();
            c3331c.m2368c(c3331c.f11301d.getHandshakeStatus());
        } catch (SSLException e) {
            c3331c.m2366o(e);
        }
    }
}
