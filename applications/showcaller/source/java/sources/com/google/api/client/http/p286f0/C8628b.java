package com.google.api.client.http.p286f0;

import com.google.api.client.http.AbstractC8615a0;
import java.io.InputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpRequestBase;
/* renamed from: com.google.api.client.http.f0.b */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/f0/b.class */
final class C8628b extends AbstractC8615a0 {

    /* renamed from: a */
    private final HttpRequestBase f38322a;

    /* renamed from: b */
    private final HttpResponse f38323b;

    /* renamed from: c */
    private final Header[] f38324c;

    public C8628b(HttpRequestBase httpRequestBase, HttpResponse httpResponse) {
        this.f38322a = httpRequestBase;
        this.f38323b = httpResponse;
        this.f38324c = httpResponse.getAllHeaders();
    }

    @Override // com.google.api.client.http.AbstractC8615a0
    /* renamed from: a */
    public void mo3192a() {
        this.f38322a.abort();
    }

    @Override // com.google.api.client.http.AbstractC8615a0
    /* renamed from: b */
    public InputStream mo3191b() {
        HttpEntity entity = this.f38323b.getEntity();
        return entity == null ? null : entity.getContent();
    }

    @Override // com.google.api.client.http.AbstractC8615a0
    /* renamed from: c */
    public String mo3190c() {
        Header contentEncoding;
        HttpEntity entity = this.f38323b.getEntity();
        if (entity == null || (contentEncoding = entity.getContentEncoding()) == null) {
            return null;
        }
        return contentEncoding.getValue();
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    @Override // com.google.api.client.http.AbstractC8615a0
    /* renamed from: d */
    public long mo3189d() {
        HttpEntity entity = this.f38323b.getEntity();
        return entity == null ? (char) 65535 : entity.getContentLength();
    }

    @Override // com.google.api.client.http.AbstractC8615a0
    /* renamed from: e */
    public String mo3188e() {
        Header contentType;
        HttpEntity entity = this.f38323b.getEntity();
        if (entity == null || (contentType = entity.getContentType()) == null) {
            return null;
        }
        return contentType.getValue();
    }

    @Override // com.google.api.client.http.AbstractC8615a0
    /* renamed from: f */
    public int mo3187f() {
        return this.f38324c.length;
    }

    @Override // com.google.api.client.http.AbstractC8615a0
    /* renamed from: g */
    public String mo3186g(int i) {
        return this.f38324c[i].getName();
    }

    @Override // com.google.api.client.http.AbstractC8615a0
    /* renamed from: h */
    public String mo3185h(int i) {
        return this.f38324c[i].getValue();
    }

    @Override // com.google.api.client.http.AbstractC8615a0
    /* renamed from: i */
    public String mo3184i() {
        StatusLine statusLine = this.f38323b.getStatusLine();
        return statusLine == null ? null : statusLine.getReasonPhrase();
    }

    @Override // com.google.api.client.http.AbstractC8615a0
    /* renamed from: j */
    public int mo3183j() {
        StatusLine statusLine = this.f38323b.getStatusLine();
        return statusLine == null ? 0 : statusLine.getStatusCode();
    }

    @Override // com.google.api.client.http.AbstractC8615a0
    /* renamed from: k */
    public String mo3182k() {
        StatusLine statusLine = this.f38323b.getStatusLine();
        return statusLine == null ? null : statusLine.toString();
    }
}
