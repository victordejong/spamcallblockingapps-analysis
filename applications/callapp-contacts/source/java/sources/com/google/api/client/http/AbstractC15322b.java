package com.google.api.client.http;

import com.google.api.client.p379a.C15245o;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.google.api.client.http.b */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/b.class */
public abstract class AbstractC15322b implements AbstractC15331j {

    /* renamed from: a */
    private String f55324a;

    /* renamed from: b */
    private boolean f55325b = true;

    public AbstractC15322b(String str) {
        mo9000a(str);
    }

    /* renamed from: a */
    public AbstractC15322b mo9000a(String str) {
        this.f55324a = str;
        return this;
    }

    /* renamed from: a */
    public AbstractC15322b mo8999a(boolean z) {
        this.f55325b = z;
        return this;
    }

    /* renamed from: a */
    public abstract InputStream mo9002a() throws IOException;

    /* renamed from: b */
    public final boolean m9115b() {
        return this.f55325b;
    }

    @Override // com.google.api.client.http.AbstractC15331j
    public String getType() {
        return this.f55324a;
    }

    @Override // com.google.api.client.http.AbstractC15331j, com.google.api.client.p379a.AbstractC15211ad
    public void writeTo(OutputStream outputStream) throws IOException {
        C15245o.m9212a(mo9002a(), outputStream, this.f55325b);
        outputStream.flush();
    }
}
