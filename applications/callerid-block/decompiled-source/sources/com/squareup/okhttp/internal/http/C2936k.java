package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.AbstractC2962s;
import com.squareup.okhttp.C2943k;
import okio.BufferedSource;
/* renamed from: com.squareup.okhttp.internal.http.k */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/k.class */
public final class C2936k extends AbstractC2962s {

    /* renamed from: b */
    private final C2943k f12385b;

    /* renamed from: c */
    private final BufferedSource f12386c;

    public C2936k(C2943k kVar, BufferedSource bufferedSource) {
        this.f12385b = kVar;
        this.f12386c = bufferedSource;
    }

    @Override // com.squareup.okhttp.AbstractC2962s
    /* renamed from: p */
    public long mo713p() {
        return C2934j.m945c(this.f12385b);
    }

    @Override // com.squareup.okhttp.AbstractC2962s
    /* renamed from: x */
    public BufferedSource mo712x() {
        return this.f12386c;
    }
}
