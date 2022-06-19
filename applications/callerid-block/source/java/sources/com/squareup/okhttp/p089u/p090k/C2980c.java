package com.squareup.okhttp.p089u.p090k;

import com.squareup.okhttp.C2942j;
import com.squareup.okhttp.C2952o;
import com.squareup.okhttp.internal.http.C2928g;
import java.net.URL;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.squareup.okhttp.u.k.c */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/u/k/c.class */
public final class C2980c extends AbstractC2978a {

    /* renamed from: b */
    private final C2979b f12536b;

    public C2980c(C2979b c2979b) {
        super(c2979b);
        this.f12536b = c2979b;
    }

    public C2980c(URL url, C2952o c2952o) {
        this(new C2979b(url, c2952o));
    }

    @Override // com.squareup.okhttp.p089u.p090k.AbstractC2978a
    /* renamed from: a */
    protected C2942j mo633a() {
        C2928g c2928g = this.f12536b.f12532f;
        if (c2928g != null) {
            return c2928g.m959u() ? this.f12536b.f12532f.m962r().m748o() : this.f12536b.f12535i;
        }
        throw new IllegalStateException("Connection has not yet been established");
    }

    @Override // java.net.URLConnection
    public long getContentLengthLong() {
        return this.f12536b.getContentLengthLong();
    }

    @Override // java.net.URLConnection
    public long getHeaderFieldLong(String str, long j) {
        return this.f12536b.getHeaderFieldLong(str, j);
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public HostnameVerifier getHostnameVerifier() {
        return this.f12536b.f12527a.m806m();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public SSLSocketFactory getSSLSocketFactory() {
        return this.f12536b.f12527a.m799u();
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(long j) {
        this.f12536b.setFixedLengthStreamingMode(j);
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public void setHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.f12536b.f12527a.m824J(hostnameVerifier);
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public void setSSLSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.f12536b.f12527a.m818R(sSLSocketFactory);
    }
}
