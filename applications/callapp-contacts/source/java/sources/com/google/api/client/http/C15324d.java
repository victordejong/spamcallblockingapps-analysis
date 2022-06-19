package com.google.api.client.http;

import com.google.common.base.C15391m;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
/* renamed from: com.google.api.client.http.d */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/d.class */
public final class C15324d extends AbstractC15322b {

    /* renamed from: a */
    private final byte[] f55326a;

    /* renamed from: b */
    private final int f55327b;

    /* renamed from: c */
    private final int f55328c;

    public C15324d(String str, byte[] bArr) {
        this(str, bArr, 0, bArr.length);
    }

    public C15324d(String str, byte[] bArr, int i, int i2) {
        super(str);
        this.f55326a = (byte[]) C15391m.m8946a(bArr);
        C15391m.m8936a(i >= 0 && i2 >= 0 && i + i2 <= bArr.length, "offset %s, length %s, array length %s", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(bArr.length));
        this.f55327b = i;
        this.f55328c = i2;
    }

    @Override // com.google.api.client.http.AbstractC15322b
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC15322b mo9000a(String str) {
        return (C15324d) super.mo9000a(str);
    }

    @Override // com.google.api.client.http.AbstractC15322b
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC15322b mo8999a(boolean z) {
        return (C15324d) super.mo8999a(z);
    }

    @Override // com.google.api.client.http.AbstractC15322b
    /* renamed from: a */
    public final InputStream mo9002a() {
        return new ByteArrayInputStream(this.f55326a, this.f55327b, this.f55328c);
    }

    @Override // com.google.api.client.http.AbstractC15331j
    public final long getLength() {
        return this.f55328c;
    }

    @Override // com.google.api.client.http.AbstractC15331j
    public final boolean retrySupported() {
        return true;
    }
}
