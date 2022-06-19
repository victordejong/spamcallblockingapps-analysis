package com.google.api.client.http;

import com.google.api.client.util.C8731w;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
/* renamed from: com.google.api.client.http.d */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/d.class */
public final class C8622d extends AbstractC8616b {

    /* renamed from: c */
    private final byte[] f38314c;

    /* renamed from: d */
    private final int f38315d;

    /* renamed from: e */
    private final int f38316e;

    public C8622d(String str, byte[] bArr, int i, int i2) {
        super(str);
        this.f38314c = (byte[]) C8731w.m2836d(bArr);
        C8731w.m2837c(i >= 0 && i2 >= 0 && i + i2 <= bArr.length, "offset %s, length %s, array length %s", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(bArr.length));
        this.f38315d = i;
        this.f38316e = i2;
    }

    @Override // com.google.api.client.http.AbstractC8646j
    /* renamed from: b */
    public boolean mo3048b() {
        return true;
    }

    @Override // com.google.api.client.http.AbstractC8616b
    /* renamed from: d */
    public InputStream mo3047d() {
        return new ByteArrayInputStream(this.f38314c, this.f38315d, this.f38316e);
    }

    /* renamed from: g */
    public C8622d mo3046f(String str) {
        return (C8622d) super.mo3046f(str);
    }

    @Override // com.google.api.client.http.AbstractC8646j
    public long getLength() {
        return this.f38316e;
    }
}
