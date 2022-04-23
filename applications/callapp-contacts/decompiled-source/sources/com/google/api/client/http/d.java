package com.google.api.client.http;

import com.google.common.base.m;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/d.class */
public final class d extends b {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f31800a;

    /* renamed from: b  reason: collision with root package name */
    private final int f31801b;

    /* renamed from: c  reason: collision with root package name */
    private final int f31802c;

    public d(String str, byte[] bArr) {
        this(str, bArr, 0, bArr.length);
    }

    public d(String str, byte[] bArr, int i, int i2) {
        super(str);
        this.f31800a = (byte[]) m.a(bArr);
        m.a(i >= 0 && i2 >= 0 && i + i2 <= bArr.length, "offset %s, length %s, array length %s", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(bArr.length));
        this.f31801b = i;
        this.f31802c = i2;
    }

    @Override // com.google.api.client.http.b
    public final /* bridge */ /* synthetic */ b a(String str) {
        return (d) super.a(str);
    }

    @Override // com.google.api.client.http.b
    public final /* bridge */ /* synthetic */ b a(boolean z) {
        return (d) super.a(z);
    }

    @Override // com.google.api.client.http.b
    public final InputStream a() {
        return new ByteArrayInputStream(this.f31800a, this.f31801b, this.f31802c);
    }

    @Override // com.google.api.client.http.j
    public final long getLength() {
        return this.f31802c;
    }

    @Override // com.google.api.client.http.j
    public final boolean retrySupported() {
        return true;
    }
}
