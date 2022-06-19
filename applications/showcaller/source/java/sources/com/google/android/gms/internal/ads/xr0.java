package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xr0.class */
final class xr0 implements xi2 {

    /* renamed from: a */
    private final fs0 f32266a;

    /* renamed from: b */
    private Context f32267b;

    /* renamed from: c */
    private String f32268c;

    public /* synthetic */ xr0(fs0 fs0Var, wr0 wr0Var) {
        this.f32266a = fs0Var;
    }

    @Override // com.google.android.gms.internal.ads.xi2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ xi2 mo9074a(Context context) {
        Objects.requireNonNull(context);
        this.f32267b = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.xi2
    /* renamed from: r */
    public final /* bridge */ /* synthetic */ xi2 mo9073r(String str) {
        this.f32268c = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.xi2
    public final yi2 zza() {
        kj3.m13878c(this.f32267b, Context.class);
        return new yr0(this.f32266a, this.f32267b, this.f32268c, null);
    }
}
