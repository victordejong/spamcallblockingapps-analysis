package com.google.api.client.http;

import com.google.api.client.a.ae;
import com.google.api.client.a.o;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/t.class */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    public final String f31828a;

    /* renamed from: b  reason: collision with root package name */
    aa f31829b;

    /* renamed from: c  reason: collision with root package name */
    public final int f31830c;

    /* renamed from: d  reason: collision with root package name */
    public final String f31831d;
    public final q e;
    private InputStream f;
    private final String g;
    private final p h;
    private final boolean i;
    private int j;
    private boolean k;
    private boolean l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(q qVar, aa aaVar) throws IOException {
        StringBuilder sb;
        this.e = qVar;
        this.i = qVar.p;
        this.j = qVar.f;
        this.k = qVar.g;
        this.f31829b = aaVar;
        this.g = aaVar.getContentEncoding();
        int statusCode = aaVar.getStatusCode();
        int i = statusCode < 0 ? 0 : statusCode;
        this.f31830c = i;
        String reasonPhrase = aaVar.getReasonPhrase();
        this.f31831d = reasonPhrase;
        Logger logger = w.LOGGER;
        boolean z = false;
        if (this.k) {
            z = false;
            if (logger.isLoggable(Level.CONFIG)) {
                z = true;
            }
        }
        StringBuilder sb2 = null;
        if (z) {
            sb = new StringBuilder();
            sb.append("-------------- RESPONSE --------------");
            sb.append(ae.f31603a);
            String statusLine = aaVar.getStatusLine();
            if (statusLine != null) {
                sb.append(statusLine);
            } else {
                sb.append(i);
                if (reasonPhrase != null) {
                    sb.append(' ');
                    sb.append(reasonPhrase);
                }
            }
            sb.append(ae.f31603a);
        } else {
            sb = null;
        }
        qVar.e.a(aaVar, z ? sb : sb2);
        String contentType = aaVar.getContentType();
        String str = contentType == null ? (String) n.a((List<Object>) qVar.e.contentType) : contentType;
        this.f31828a = str;
        this.h = a(str);
        if (z) {
            logger.config(sb.toString());
        }
    }

    private static p a(String str) {
        if (str == null) {
            return null;
        }
        try {
            return new p(str);
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    private boolean m() throws IOException {
        int i = this.f31830c;
        if (!this.e.i.equals("HEAD") && i / 100 != 1 && i != 204 && i != 304) {
            return true;
        }
        i();
        return false;
    }

    public final <T> T a(Class<T> cls) throws IOException {
        if (!m()) {
            return null;
        }
        return (T) this.e.n.parseAndClose(h(), l(), cls);
    }

    public final String a() {
        return this.f31828a;
    }

    public final void a(OutputStream outputStream) throws IOException {
        o.a(h(), outputStream, true);
    }

    public final p b() {
        return this.h;
    }

    public final n c() {
        return this.e.e;
    }

    public final boolean d() {
        return v.a(this.f31830c);
    }

    public final int e() {
        return this.f31830c;
    }

    public final String f() {
        return this.f31831d;
    }

    public final q g() {
        return this.e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0062, code lost:
        if ("x-gzip".equals(r0) != false) goto L_0x0065;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.InputStream h() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.http.t.h():java.io.InputStream");
    }

    public final void i() throws IOException {
        InputStream content;
        aa aaVar = this.f31829b;
        if (aaVar != null && (content = aaVar.getContent()) != null) {
            content.close();
        }
    }

    public final void j() throws IOException {
        this.f31829b.disconnect();
        i();
    }

    public final String k() throws IOException {
        InputStream h = h();
        if (h == null) {
            return "";
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        o.a(h, byteArrayOutputStream, true);
        return byteArrayOutputStream.toString(l().name());
    }

    public final Charset l() {
        p pVar = this.h;
        if (pVar != null) {
            if (pVar.b() != null) {
                return this.h.b();
            }
            if ("application".equals(this.h.f31820a) && "json".equals(this.h.f31821b)) {
                return StandardCharsets.UTF_8;
            }
        }
        return StandardCharsets.ISO_8859_1;
    }
}
