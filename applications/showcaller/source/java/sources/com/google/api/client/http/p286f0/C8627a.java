package com.google.api.client.http.p286f0;

import com.google.api.client.http.AbstractC8615a0;
import com.google.api.client.http.AbstractC8664z;
import com.google.api.client.util.C8731w;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
/* renamed from: com.google.api.client.http.f0.a */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/f0/a.class */
final class C8627a extends AbstractC8664z {

    /* renamed from: e */
    private final HttpClient f38320e;

    /* renamed from: f */
    private final HttpRequestBase f38321f;

    public C8627a(HttpClient httpClient, HttpRequestBase httpRequestBase) {
        this.f38320e = httpClient;
        this.f38321f = httpRequestBase;
    }

    @Override // com.google.api.client.http.AbstractC8664z
    /* renamed from: a */
    public void mo3041a(String str, String str2) {
        this.f38321f.addHeader(str, str2);
    }

    @Override // com.google.api.client.http.AbstractC8664z
    /* renamed from: b */
    public AbstractC8615a0 mo3040b() {
        if (m3036f() != null) {
            HttpRequestBase httpRequestBase = this.f38321f;
            C8731w.m2832h(httpRequestBase instanceof HttpEntityEnclosingRequest, "Apache HTTP client does not support %s requests with content.", httpRequestBase.getRequestLine().getMethod());
            C8630d c8630d = new C8630d(m3038d(), m3036f());
            c8630d.setContentEncoding(m3039c());
            c8630d.setContentType(m3037e());
            if (m3038d() == -1) {
                c8630d.setChunked(true);
            }
            this.f38321f.setEntity(c8630d);
        }
        HttpRequestBase httpRequestBase2 = this.f38321f;
        return new C8628b(httpRequestBase2, this.f38320e.execute(httpRequestBase2));
    }

    @Override // com.google.api.client.http.AbstractC8664z
    /* renamed from: k */
    public void mo3031k(int i, int i2) {
        HttpParams params = this.f38321f.getParams();
        ConnManagerParams.setTimeout(params, i);
        HttpConnectionParams.setConnectionTimeout(params, i);
        HttpConnectionParams.setSoTimeout(params, i2);
    }
}
