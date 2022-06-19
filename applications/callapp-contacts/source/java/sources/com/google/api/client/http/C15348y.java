package com.google.api.client.http;

import com.google.common.base.C15391m;
import java.io.InputStream;
/* renamed from: com.google.api.client.http.y */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/y.class */
public final class C15348y extends AbstractC15322b {

    /* renamed from: a */
    private long f55400a = -1;

    /* renamed from: b */
    private boolean f55401b;

    /* renamed from: c */
    private final InputStream f55402c;

    public C15348y(String str, InputStream inputStream) {
        super(str);
        this.f55402c = (InputStream) C15391m.m8946a(inputStream);
    }

    @Override // com.google.api.client.http.AbstractC15322b
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC15322b mo9000a(String str) {
        return (C15348y) super.mo9000a(str);
    }

    /* renamed from: a */
    public final C15348y m9001a(long j) {
        this.f55400a = j;
        return this;
    }

    @Override // com.google.api.client.http.AbstractC15322b
    /* renamed from: a */
    public final InputStream mo9002a() {
        return this.f55402c;
    }

    /* renamed from: b */
    public final C15348y mo8999a(boolean z) {
        return (C15348y) super.mo8999a(z);
    }

    /* renamed from: c */
    public final C15348y m8997c() {
        this.f55401b = true;
        return this;
    }

    @Override // com.google.api.client.http.AbstractC15331j
    public final long getLength() {
        return this.f55400a;
    }

    @Override // com.google.api.client.http.AbstractC15331j
    public final boolean retrySupported() {
        return this.f55401b;
    }
}
