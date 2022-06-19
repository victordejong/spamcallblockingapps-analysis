package com.google.api.client.http;

import com.google.api.client.util.C8718m;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.google.api.client.http.b */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/b.class */
public abstract class AbstractC8616b implements AbstractC8646j {

    /* renamed from: a */
    private String f38301a;

    /* renamed from: b */
    private boolean f38302b = true;

    public AbstractC8616b(String str) {
        mo3046f(str);
    }

    @Override // com.google.api.client.http.AbstractC8646j
    /* renamed from: a */
    public String mo3161a() {
        return this.f38301a;
    }

    /* renamed from: c */
    public final boolean m3228c() {
        return this.f38302b;
    }

    /* renamed from: d */
    public abstract InputStream mo3047d();

    /* renamed from: e */
    public AbstractC8616b m3227e(boolean z) {
        this.f38302b = z;
        return this;
    }

    /* renamed from: f */
    public AbstractC8616b mo3046f(String str) {
        this.f38301a = str;
        return this;
    }

    @Override // com.google.api.client.util.AbstractC8735z
    public void writeTo(OutputStream outputStream) {
        C8718m.m2850c(mo3047d(), outputStream, this.f38302b);
        outputStream.flush();
    }
}
