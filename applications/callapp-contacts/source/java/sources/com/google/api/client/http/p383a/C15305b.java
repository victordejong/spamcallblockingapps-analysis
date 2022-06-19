package com.google.api.client.http.p383a;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
/* renamed from: com.google.api.client.http.a.b */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/a/b.class */
public final class C15305b implements AbstractC15304a {

    /* renamed from: a */
    private final Proxy f55289a;

    public C15305b() {
        this(null);
    }

    public C15305b(Proxy proxy) {
        this.f55289a = proxy;
    }

    @Override // com.google.api.client.http.p383a.AbstractC15304a
    /* renamed from: a */
    public final HttpURLConnection mo9143a(URL url) throws IOException {
        Proxy proxy = this.f55289a;
        return (HttpURLConnection) (proxy == null ? url.openConnection() : url.openConnection(proxy));
    }
}
