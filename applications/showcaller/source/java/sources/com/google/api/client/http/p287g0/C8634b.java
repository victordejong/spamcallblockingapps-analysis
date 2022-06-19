package com.google.api.client.http.p287g0;

import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
/* renamed from: com.google.api.client.http.g0.b */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/g0/b.class */
public class C8634b implements AbstractC8633a {

    /* renamed from: a */
    private final Proxy f38330a;

    public C8634b() {
        this(null);
    }

    public C8634b(Proxy proxy) {
        this.f38330a = proxy;
    }

    @Override // com.google.api.client.http.p287g0.AbstractC8633a
    /* renamed from: a */
    public HttpURLConnection mo3198a(URL url) {
        Proxy proxy = this.f38330a;
        return (HttpURLConnection) (proxy == null ? url.openConnection() : url.openConnection(proxy));
    }
}
