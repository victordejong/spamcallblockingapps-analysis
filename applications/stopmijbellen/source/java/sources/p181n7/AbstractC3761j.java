package p181n7;

import android.text.TextUtils;
import com.koushikdutta.async.http.ConnectionClosedException;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Locale;
import p148k7.AbstractC3356j;
import p148k7.AbstractC3362o;
import p148k7.C3343h;
import p148k7.C3367r;
import p159l7.AbstractC3510a;
import p181n7.AbstractC3749g;
/* renamed from: n7.j */
/* loaded from: classes2-dex2jar.jar:n7/j.class */
public abstract class AbstractC3761j extends C3367r implements AbstractC3749g.AbstractC3758i {

    /* renamed from: i */
    public C3759h f12198i;

    /* renamed from: j */
    public AbstractC3356j f12199j;

    /* renamed from: k */
    public C3782w f12200k;

    /* renamed from: m */
    public int f12202m;

    /* renamed from: n */
    public String f12203n;

    /* renamed from: o */
    public String f12204o;

    /* renamed from: p */
    public AbstractC3362o f12205p;

    /* renamed from: h */
    public AbstractC3510a f12197h = new C3762a();

    /* renamed from: l */
    public boolean f12201l = false;

    /* renamed from: n7.j$a */
    /* loaded from: classes2-dex2jar.jar:n7/j$a.class */
    public class C3762a implements AbstractC3510a {
        public C3762a() {
            AbstractC3761j.this = r4;
        }

        @Override // p159l7.AbstractC3510a
        /* renamed from: a */
        public void mo1098a(Exception exc) {
            AbstractC3761j abstractC3761j = AbstractC3761j.this;
            if (abstractC3761j.f12200k == null) {
                abstractC3761j.mo1262n(new ConnectionClosedException("connection closed before headers received.", exc));
            } else if (exc == null || abstractC3761j.f12201l) {
                abstractC3761j.mo1262n(exc);
            } else {
                abstractC3761j.mo1262n(new ConnectionClosedException("connection closed before response completed.", exc));
            }
        }
    }

    public AbstractC3761j(C3759h c3759h) {
        this.f12198i = c3759h;
    }

    @Override // p148k7.C3367r, p148k7.AbstractC3360m, p148k7.AbstractC3362o
    /* renamed from: a */
    public C3343h mo940a() {
        return this.f12199j.mo940a();
    }

    @Override // p148k7.C3367r, p148k7.AbstractC3360m
    public void close() {
        super.close();
        this.f12199j.mo939b(new C3763k(this));
    }

    @Override // p148k7.C3367r, p148k7.AbstractC3361n, p148k7.AbstractC3360m
    /* renamed from: f */
    public String mo937f() {
        String m1829a = this.f12200k.f12257a.m1829a("Content-Type".toLowerCase(Locale.US));
        C3737a0 c3737a0 = new C3737a0();
        if (m1829a != null) {
            for (String str : m1829a.split(";")) {
                String[] split = str.split("=", 2);
                String trim = split[0].trim();
                if (!TextUtils.isEmpty(trim)) {
                    String str2 = split.length > 1 ? split[1] : null;
                    String str3 = str2;
                    if (str2 != null) {
                        str3 = str2;
                        if (str2.endsWith("\"")) {
                            str3 = str2;
                            if (str2.startsWith("\"")) {
                                str3 = str2.substring(1, str2.length() - 1);
                            }
                        }
                    }
                    List<String> list = c3737a0.get(trim);
                    List<String> list2 = list;
                    if (list == null) {
                        list2 = c3737a0.mo1799b();
                        c3737a0.put(trim, list2);
                    }
                    list2.add(str3);
                }
            }
        }
        String m1829a2 = c3737a0.m1829a("charset");
        if (m1829a2 == null || !Charset.isSupported(m1829a2)) {
            return null;
        }
        return m1829a2;
    }

    @Override // p148k7.AbstractC3361n
    /* renamed from: n */
    public void mo1262n(Exception exc) {
        super.mo1262n(exc);
        this.f12199j.mo939b(new C3763k(this));
        this.f12199j.mo1478m(null);
        this.f12199j.mo1480g(null);
        this.f12199j.mo936h(null);
        this.f12201l = true;
    }

    /* renamed from: p */
    public abstract void mo1817p(Exception exc);

    public String toString() {
        C3782w c3782w = this.f12200k;
        if (c3782w == null) {
            return super.toString();
        }
        return c3782w.m1801e(this.f12203n + " " + this.f12202m + " " + this.f12204o);
    }
}
