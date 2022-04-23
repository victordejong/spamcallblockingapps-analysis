package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/agz.class */
final class agz implements cjv {

    /* renamed from: a  reason: collision with root package name */
    private Context f23295a;

    /* renamed from: b  reason: collision with root package name */
    private String f23296b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ ago f23297c;

    private agz(ago agoVar) {
        this.f23297c = agoVar;
    }

    @Override // com.google.android.gms.internal.ads.cjv
    public final cjs a() {
        dso.a(this.f23295a, Context.class);
        dso.a(this.f23296b, String.class);
        return new ahc(this.f23297c, this.f23295a, this.f23296b);
    }

    @Override // com.google.android.gms.internal.ads.cjv
    public final /* synthetic */ cjv a(Context context) {
        this.f23295a = (Context) dso.a(context);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cjv
    public final /* synthetic */ cjv a(String str) {
        this.f23296b = (String) dso.a(str);
        return this;
    }
}
