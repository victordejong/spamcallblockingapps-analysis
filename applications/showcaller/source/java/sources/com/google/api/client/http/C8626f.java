package com.google.api.client.http;

import java.io.OutputStream;
/* renamed from: com.google.api.client.http.f */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/f.class */
public class C8626f implements AbstractC8646j {
    @Override // com.google.api.client.http.AbstractC8646j
    /* renamed from: a */
    public String mo3161a() {
        return null;
    }

    @Override // com.google.api.client.http.AbstractC8646j
    /* renamed from: b */
    public boolean mo3048b() {
        return true;
    }

    @Override // com.google.api.client.http.AbstractC8646j
    public long getLength() {
        return 0L;
    }

    @Override // com.google.api.client.util.AbstractC8735z
    public void writeTo(OutputStream outputStream) {
        outputStream.flush();
    }
}
