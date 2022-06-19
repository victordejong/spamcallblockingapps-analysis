package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/agz.class */
final class agz implements cjv {

    /* renamed from: a */
    private Context f41064a;

    /* renamed from: b */
    private String f41065b;

    /* renamed from: c */
    private final /* synthetic */ ago f41066c;

    /* JADX INFO: Access modifiers changed from: private */
    public agz(ago agoVar) {
        this.f41066c = agoVar;
    }

    @Override // com.google.android.gms.internal.ads.cjv
    /* renamed from: a */
    public final cjs mo17436a() {
        dso.m15766a(this.f41064a, Context.class);
        dso.m15766a(this.f41065b, String.class);
        return new ahc(this.f41066c, this.f41064a, this.f41065b);
    }

    @Override // com.google.android.gms.internal.ads.cjv
    /* renamed from: a */
    public final /* synthetic */ cjv mo17435a(Context context) {
        this.f41064a = (Context) dso.m15767a(context);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cjv
    /* renamed from: a */
    public final /* synthetic */ cjv mo17434a(String str) {
        this.f41065b = (String) dso.m15767a(str);
        return this;
    }
}
