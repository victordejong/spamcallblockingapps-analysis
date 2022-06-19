package com.google.api.client.http;

import com.google.api.client.p379a.C15212ae;
import com.google.api.client.p379a.C15245o;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.api.client.http.t */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/t.class */
public final class C15343t {

    /* renamed from: a */
    public final String f55388a;

    /* renamed from: b */
    AbstractC15313aa f55389b;

    /* renamed from: c */
    public final int f55390c;

    /* renamed from: d */
    public final String f55391d;

    /* renamed from: e */
    public final C15340q f55392e;

    /* renamed from: f */
    private InputStream f55393f;

    /* renamed from: g */
    private final String f55394g;

    /* renamed from: h */
    private final C15339p f55395h;

    /* renamed from: i */
    private final boolean f55396i;

    /* renamed from: j */
    private int f55397j;

    /* renamed from: k */
    private boolean f55398k;

    /* renamed from: l */
    private boolean f55399l;

    public C15343t(C15340q c15340q, AbstractC15313aa abstractC15313aa) throws IOException {
        StringBuilder sb;
        this.f55392e = c15340q;
        this.f55396i = c15340q.f55375p;
        this.f55397j = c15340q.f55365f;
        this.f55398k = c15340q.f55366g;
        this.f55389b = abstractC15313aa;
        this.f55394g = abstractC15313aa.getContentEncoding();
        int statusCode = abstractC15313aa.getStatusCode();
        int i = statusCode < 0 ? 0 : statusCode;
        this.f55390c = i;
        String reasonPhrase = abstractC15313aa.getReasonPhrase();
        this.f55391d = reasonPhrase;
        Logger logger = AbstractC15346w.LOGGER;
        boolean z = false;
        if (this.f55398k) {
            z = false;
            if (logger.isLoggable(Level.CONFIG)) {
                z = true;
            }
        }
        StringBuilder sb2 = null;
        if (z) {
            sb = new StringBuilder();
            sb.append("-------------- RESPONSE --------------");
            sb.append(C15212ae.f55053a);
            String statusLine = abstractC15313aa.getStatusLine();
            if (statusLine != null) {
                sb.append(statusLine);
            } else {
                sb.append(i);
                if (reasonPhrase != null) {
                    sb.append(' ');
                    sb.append(reasonPhrase);
                }
            }
            sb.append(C15212ae.f55053a);
        } else {
            sb = null;
        }
        c15340q.f55364e.m9099a(abstractC15313aa, z ? sb : sb2);
        String contentType = abstractC15313aa.getContentType();
        String str = contentType == null ? (String) C15335n.m9088a((List<Object>) c15340q.f55364e.contentType) : contentType;
        this.f55388a = str;
        this.f55395h = m9019a(str);
        if (z) {
            logger.config(sb.toString());
        }
    }

    /* renamed from: a */
    private static C15339p m9019a(String str) {
        if (str == null) {
            return null;
        }
        try {
            return new C15339p(str);
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    /* renamed from: m */
    private boolean m9007m() throws IOException {
        int i = this.f55390c;
        if (this.f55392e.f55368i.equals("HEAD") || i / 100 == 1 || i == 204 || i == 304) {
            m9011i();
            return false;
        }
        return true;
    }

    /* renamed from: a */
    public final <T> T m9020a(Class<T> cls) throws IOException {
        if (!m9007m()) {
            return null;
        }
        return (T) this.f55392e.f55373n.parseAndClose(m9012h(), m9008l(), cls);
    }

    /* renamed from: a */
    public final String m9022a() {
        return this.f55388a;
    }

    /* renamed from: a */
    public final void m9021a(OutputStream outputStream) throws IOException {
        C15245o.m9212a(m9012h(), outputStream, true);
    }

    /* renamed from: b */
    public final C15339p m9018b() {
        return this.f55395h;
    }

    /* renamed from: c */
    public final C15335n m9017c() {
        return this.f55392e.f55364e;
    }

    /* renamed from: d */
    public final boolean m9016d() {
        return C15345v.m9005a(this.f55390c);
    }

    /* renamed from: e */
    public final int m9015e() {
        return this.f55390c;
    }

    /* renamed from: f */
    public final String m9014f() {
        return this.f55391d;
    }

    /* renamed from: g */
    public final C15340q m9013g() {
        return this.f55392e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0062, code lost:
        if ("x-gzip".equals(r0) != false) goto L23;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.InputStream m9012h() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.http.C15343t.m9012h():java.io.InputStream");
    }

    /* renamed from: i */
    public final void m9011i() throws IOException {
        InputStream content;
        AbstractC15313aa abstractC15313aa = this.f55389b;
        if (abstractC15313aa == null || (content = abstractC15313aa.getContent()) == null) {
            return;
        }
        content.close();
    }

    /* renamed from: j */
    public final void m9010j() throws IOException {
        this.f55389b.disconnect();
        m9011i();
    }

    /* renamed from: k */
    public final String m9009k() throws IOException {
        InputStream m9012h = m9012h();
        if (m9012h == null) {
            return "";
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        C15245o.m9212a(m9012h, byteArrayOutputStream, true);
        return byteArrayOutputStream.toString(m9008l().name());
    }

    /* renamed from: l */
    public final Charset m9008l() {
        C15339p c15339p = this.f55395h;
        if (c15339p != null) {
            if (c15339p.m9065b() != null) {
                return this.f55395h.m9065b();
            }
            if ("application".equals(this.f55395h.f55352a) && "json".equals(this.f55395h.f55353b)) {
                return StandardCharsets.UTF_8;
            }
        }
        return StandardCharsets.ISO_8859_1;
    }
}
