package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ur0.class */
final class ur0 implements ih2 {

    /* renamed from: a */
    private final fs0 f30945a;

    /* renamed from: b */
    private Context f30946b;

    /* renamed from: c */
    private String f30947c;

    /* renamed from: d */
    private zzbdl f30948d;

    public /* synthetic */ ur0(fs0 fs0Var, wr0 wr0Var) {
        this.f30945a = fs0Var;
    }

    @Override // com.google.android.gms.internal.ads.ih2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ ih2 mo10183a(zzbdl zzbdlVar) {
        Objects.requireNonNull(zzbdlVar);
        this.f30948d = zzbdlVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.ih2
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ ih2 mo10182b(Context context) {
        Objects.requireNonNull(context);
        this.f30946b = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.ih2
    /* renamed from: y */
    public final /* bridge */ /* synthetic */ ih2 mo10181y(String str) {
        Objects.requireNonNull(str);
        this.f30947c = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.ih2
    public final jh2 zza() {
        kj3.m13878c(this.f30946b, Context.class);
        kj3.m13878c(this.f30947c, String.class);
        kj3.m13878c(this.f30948d, zzbdl.class);
        return new vr0(this.f30945a, this.f30946b, this.f30947c, this.f30948d, null);
    }
}
