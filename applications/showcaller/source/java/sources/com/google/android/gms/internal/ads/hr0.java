package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hr0.class */
final class hr0 implements of2 {

    /* renamed from: a */
    private final fs0 f24028a;

    /* renamed from: b */
    private Context f24029b;

    /* renamed from: c */
    private String f24030c;

    /* renamed from: d */
    private zzbdl f24031d;

    public /* synthetic */ hr0(fs0 fs0Var, wr0 wr0Var) {
        this.f24028a = fs0Var;
    }

    @Override // com.google.android.gms.internal.ads.of2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ of2 mo12683a(zzbdl zzbdlVar) {
        Objects.requireNonNull(zzbdlVar);
        this.f24031d = zzbdlVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.of2
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ of2 mo12682b(Context context) {
        Objects.requireNonNull(context);
        this.f24029b = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.of2
    /* renamed from: y */
    public final /* bridge */ /* synthetic */ of2 mo12681y(String str) {
        Objects.requireNonNull(str);
        this.f24030c = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.of2
    public final pf2 zza() {
        kj3.m13878c(this.f24029b, Context.class);
        kj3.m13878c(this.f24030c, String.class);
        kj3.m13878c(this.f24031d, zzbdl.class);
        return new ir0(this.f24028a, this.f24029b, this.f24030c, this.f24031d, null);
    }
}
