package com.google.api.client.http;

import com.google.common.base.m;
import java.io.InputStream;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/http/y.class */
public final class y extends b {

    /* renamed from: a  reason: collision with root package name */
    private long f31832a = -1;

    /* renamed from: b  reason: collision with root package name */
    private boolean f31833b;

    /* renamed from: c  reason: collision with root package name */
    private final InputStream f31834c;

    public y(String str, InputStream inputStream) {
        super(str);
        this.f31834c = (InputStream) m.a(inputStream);
    }

    @Override // com.google.api.client.http.b
    public final /* bridge */ /* synthetic */ b a(String str) {
        return (y) super.a(str);
    }

    public final y a(long j) {
        this.f31832a = j;
        return this;
    }

    @Override // com.google.api.client.http.b
    public final InputStream a() {
        return this.f31834c;
    }

    /* renamed from: b */
    public final y a(boolean z) {
        return (y) super.a(z);
    }

    public final y c() {
        this.f31833b = true;
        return this;
    }

    @Override // com.google.api.client.http.j
    public final long getLength() {
        return this.f31832a;
    }

    @Override // com.google.api.client.http.j
    public final boolean retrySupported() {
        return this.f31833b;
    }
}
