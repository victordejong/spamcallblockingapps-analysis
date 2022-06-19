package com.google.api.client.http;

import com.google.api.client.util.C8688a0;
import com.google.api.client.util.C8709h;
import com.google.api.client.util.C8718m;
import com.zhy.http.okhttp.OkHttpUtils;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.api.client.http.t */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/t.class */
public final class C8658t {

    /* renamed from: a */
    private InputStream f38409a;

    /* renamed from: b */
    private final String f38410b;

    /* renamed from: c */
    private final String f38411c;

    /* renamed from: d */
    private final C8654p f38412d;

    /* renamed from: e */
    AbstractC8615a0 f38413e;

    /* renamed from: f */
    private final int f38414f;

    /* renamed from: g */
    private final String f38415g;

    /* renamed from: h */
    private final C8655q f38416h;

    /* renamed from: i */
    private final boolean f38417i;

    /* renamed from: j */
    private int f38418j;

    /* renamed from: k */
    private boolean f38419k;

    /* renamed from: l */
    private boolean f38420l;

    public C8658t(C8655q c8655q, AbstractC8615a0 abstractC8615a0) {
        StringBuilder sb;
        this.f38416h = c8655q;
        this.f38417i = c8655q.m3093m();
        this.f38418j = c8655q.m3102d();
        this.f38419k = c8655q.m3086t();
        this.f38413e = abstractC8615a0;
        this.f38410b = abstractC8615a0.mo3190c();
        int mo3183j = abstractC8615a0.mo3183j();
        int i = mo3183j < 0 ? 0 : mo3183j;
        this.f38414f = i;
        String mo3184i = abstractC8615a0.mo3184i();
        this.f38415g = mo3184i;
        Logger logger = AbstractC8661w.f38421a;
        boolean z = false;
        if (this.f38419k) {
            z = false;
            if (logger.isLoggable(Level.CONFIG)) {
                z = true;
            }
        }
        StringBuilder sb2 = null;
        if (z) {
            sb = new StringBuilder();
            sb.append("-------------- RESPONSE --------------");
            String str = C8688a0.f38484a;
            sb.append(str);
            String mo3182k = abstractC8615a0.mo3182k();
            if (mo3182k != null) {
                sb.append(mo3182k);
            } else {
                sb.append(i);
                if (mo3184i != null) {
                    sb.append(' ');
                    sb.append(mo3184i);
                }
            }
            sb.append(str);
        } else {
            sb = null;
        }
        c8655q.m3095k().m3145d(abstractC8615a0, z ? sb : sb2);
        String mo3188e = abstractC8615a0.mo3188e();
        String contentType = mo3188e == null ? c8655q.m3095k().getContentType() : mo3188e;
        this.f38411c = contentType;
        this.f38412d = m3058o(contentType);
        if (z) {
            logger.config(sb.toString());
        }
    }

    /* renamed from: j */
    private boolean m3063j() {
        int m3065h = m3065h();
        if (m3066g().m3096j().equals(OkHttpUtils.METHOD.HEAD) || m3065h / 100 == 1 || m3065h == 204 || m3065h == 304) {
            m3062k();
            return false;
        }
        return true;
    }

    /* renamed from: o */
    private static C8654p m3058o(String str) {
        if (str == null) {
            return null;
        }
        try {
            return new C8654p(str);
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    /* renamed from: a */
    public void m3072a() {
        m3062k();
        this.f38413e.mo3192a();
    }

    /* renamed from: b */
    public void m3071b(OutputStream outputStream) {
        C8718m.m2851b(m3070c(), outputStream);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0062, code lost:
        if ("x-gzip".equals(r0) != false) goto L23;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.InputStream m3070c() {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.http.C8658t.m3070c():java.io.InputStream");
    }

    /* renamed from: d */
    public Charset m3069d() {
        C8654p c8654p = this.f38412d;
        return (c8654p == null || c8654p.m3121e() == null) ? C8709h.f38509b : this.f38412d.m3121e();
    }

    /* renamed from: e */
    public String m3068e() {
        return this.f38411c;
    }

    /* renamed from: f */
    public C8650n m3067f() {
        return this.f38416h.m3095k();
    }

    /* renamed from: g */
    public C8655q m3066g() {
        return this.f38416h;
    }

    /* renamed from: h */
    public int m3065h() {
        return this.f38414f;
    }

    /* renamed from: i */
    public String m3064i() {
        return this.f38415g;
    }

    /* renamed from: k */
    public void m3062k() {
        InputStream m3070c = m3070c();
        if (m3070c != null) {
            m3070c.close();
        }
    }

    /* renamed from: l */
    public boolean m3061l() {
        return C8660v.m3055b(this.f38414f);
    }

    /* renamed from: m */
    public <T> T m3060m(Class<T> cls) {
        if (!m3063j()) {
            return null;
        }
        return (T) this.f38416h.m3097i().mo2845a(m3070c(), m3069d(), cls);
    }

    /* renamed from: n */
    public String m3059n() {
        InputStream m3070c = m3070c();
        if (m3070c == null) {
            return "";
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        C8718m.m2851b(m3070c, byteArrayOutputStream);
        return byteArrayOutputStream.toString(m3069d().name());
    }
}
