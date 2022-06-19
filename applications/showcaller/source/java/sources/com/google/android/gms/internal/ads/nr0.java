package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nr0.class */
final class nr0 implements so1 {

    /* renamed from: a */
    private final fs0 f27271a;

    /* renamed from: b */
    private final qr0 f27272b;

    /* renamed from: c */
    private Long f27273c;

    /* renamed from: d */
    private String f27274d;

    public /* synthetic */ nr0(fs0 fs0Var, qr0 qr0Var, wr0 wr0Var) {
        this.f27271a = fs0Var;
        this.f27272b = qr0Var;
    }

    @Override // com.google.android.gms.internal.ads.so1
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ so1 mo10975a(long j) {
        this.f27273c = Long.valueOf(j);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.so1
    /* renamed from: r */
    public final /* bridge */ /* synthetic */ so1 mo10974r(String str) {
        Objects.requireNonNull(str);
        this.f27274d = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.so1
    public final to1 zza() {
        kj3.m13878c(this.f27273c, Long.class);
        kj3.m13878c(this.f27274d, String.class);
        return new or0(this.f27271a, this.f27272b, this.f27273c, this.f27274d, null);
    }
}
