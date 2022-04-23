package com.a.a.a.b;

import android.net.http.AndroidHttpClient;
import org.apache.http.Header;
import org.apache.http.client.methods.HttpRequestBase;
/* loaded from: classes-dex2jar.jar:com/a/a/a/b/i.class */
public final class i implements h {

    /* renamed from: a  reason: collision with root package name */
    private HttpRequestBase f357a;

    /* renamed from: b  reason: collision with root package name */
    private a f358b;

    public i(HttpRequestBase httpRequestBase, a aVar) {
        this.f357a = httpRequestBase;
        this.f358b = aVar;
    }

    @Override // com.a.a.a.b.h
    public final void a(String str, String str2) {
        this.f357a.addHeader(str, str2);
    }

    @Override // com.a.a.a.b.h
    public final Header[] a() {
        return this.f357a.getAllHeaders();
    }

    @Override // com.a.a.a.b.h
    public final j b() {
        AndroidHttpClient a2 = this.f358b.a();
        a2.getParams().setParameter("User-Agent", c.a());
        try {
            return new k(a2.execute(this.f357a));
        } finally {
            a2.close();
        }
    }
}
