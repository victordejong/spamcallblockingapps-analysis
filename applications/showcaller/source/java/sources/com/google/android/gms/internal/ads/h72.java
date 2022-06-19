package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC6227e;
import com.zhy.http.okhttp.OkHttpUtils;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/h72.class */
public final class h72 implements cj3<c72<w62>> {

    /* renamed from: a */
    private final pj3<v62> f23820a;

    /* renamed from: b */
    private final pj3<AbstractC6227e> f23821b;

    public h72(pj3<v62> pj3Var, pj3<AbstractC6227e> pj3Var2) {
        this.f23820a = pj3Var;
        this.f23821b = pj3Var2;
    }

    @Override // com.google.android.gms.internal.ads.pj3
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo8141b() {
        return new c72(((x62) this.f23820a).mo8141b(), OkHttpUtils.DEFAULT_MILLISECONDS, this.f23821b.mo8141b());
    }
}
