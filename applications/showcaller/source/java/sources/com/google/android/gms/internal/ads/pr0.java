package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pr0.class */
final class pr0 implements ap1 {

    /* renamed from: a */
    private final fs0 f28103a;

    /* renamed from: b */
    private Context f28104b;

    /* renamed from: c */
    private h30 f28105c;

    public /* synthetic */ pr0(fs0 fs0Var, wr0 wr0Var) {
        this.f28103a = fs0Var;
    }

    @Override // com.google.android.gms.internal.ads.ap1
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ ap1 mo12188a(Context context) {
        Objects.requireNonNull(context);
        this.f28104b = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.ap1
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ ap1 mo12187b(h30 h30Var) {
        Objects.requireNonNull(h30Var);
        this.f28105c = h30Var;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.ap1
    public final bp1 zza() {
        kj3.m13878c(this.f28104b, Context.class);
        kj3.m13878c(this.f28105c, h30.class);
        return new qr0(this.f28103a, this.f28104b, this.f28105c, null);
    }
}
