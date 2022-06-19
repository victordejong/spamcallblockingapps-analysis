package com.google.api.client.http;

import com.google.api.client.util.C8731w;
import java.io.InputStream;
/* renamed from: com.google.api.client.http.y */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/y.class */
public final class C8663y extends AbstractC8616b {

    /* renamed from: c */
    private long f38423c = -1;

    /* renamed from: d */
    private boolean f38424d;

    /* renamed from: e */
    private final InputStream f38425e;

    public C8663y(String str, InputStream inputStream) {
        super(str);
        this.f38425e = (InputStream) C8731w.m2836d(inputStream);
    }

    @Override // com.google.api.client.http.AbstractC8646j
    /* renamed from: b */
    public boolean mo3048b() {
        return this.f38424d;
    }

    @Override // com.google.api.client.http.AbstractC8616b
    /* renamed from: d */
    public InputStream mo3047d() {
        return this.f38425e;
    }

    /* renamed from: g */
    public C8663y m3045g(boolean z) {
        return (C8663y) super.m3227e(z);
    }

    @Override // com.google.api.client.http.AbstractC8646j
    public long getLength() {
        return this.f38423c;
    }

    /* renamed from: h */
    public C8663y m3044h(long j) {
        this.f38423c = j;
        return this;
    }

    /* renamed from: i */
    public C8663y m3043i(boolean z) {
        this.f38424d = z;
        return this;
    }

    /* renamed from: j */
    public C8663y mo3046f(String str) {
        return (C8663y) super.mo3046f(str);
    }
}
