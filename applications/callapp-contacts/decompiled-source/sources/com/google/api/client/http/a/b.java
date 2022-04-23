package com.google.api.client.http.a;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/a/b.class */
public final class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private final Proxy f31768a;

    public b() {
        this(null);
    }

    public b(Proxy proxy) {
        this.f31768a = proxy;
    }

    @Override // com.google.api.client.http.a.a
    public final HttpURLConnection a(URL url) throws IOException {
        Proxy proxy = this.f31768a;
        return (HttpURLConnection) (proxy == null ? url.openConnection() : url.openConnection(proxy));
    }
}
