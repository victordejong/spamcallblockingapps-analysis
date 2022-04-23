package com.google.api.client.http;

import com.google.api.client.a.o;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/b.class */
public abstract class b implements j {

    /* renamed from: a  reason: collision with root package name */
    private String f31798a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f31799b = true;

    public b(String str) {
        a(str);
    }

    public b a(String str) {
        this.f31798a = str;
        return this;
    }

    public b a(boolean z) {
        this.f31799b = z;
        return this;
    }

    public abstract InputStream a() throws IOException;

    public final boolean b() {
        return this.f31799b;
    }

    @Override // com.google.api.client.http.j
    public String getType() {
        return this.f31798a;
    }

    @Override // com.google.api.client.http.j, com.google.api.client.a.ad
    public void writeTo(OutputStream outputStream) throws IOException {
        o.a(a(), outputStream, this.f31799b);
        outputStream.flush();
    }
}
