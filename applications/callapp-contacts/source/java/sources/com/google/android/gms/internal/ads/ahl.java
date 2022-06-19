package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ahl.class */
final class ahl implements cnd {

    /* renamed from: a */
    private Context f41668a;

    /* renamed from: b */
    private String f41669b;

    /* renamed from: c */
    private zzvt f41670c;

    /* renamed from: d */
    private final /* synthetic */ ago f41671d;

    /* JADX INFO: Access modifiers changed from: private */
    public ahl(ago agoVar) {
        this.f41671d = agoVar;
    }

    @Override // com.google.android.gms.internal.ads.cnd
    /* renamed from: a */
    public final cmz mo17396a() {
        dso.m15766a(this.f41668a, Context.class);
        dso.m15766a(this.f41669b, String.class);
        dso.m15766a(this.f41670c, zzvt.class);
        return new aho(this.f41671d, this.f41668a, this.f41669b, this.f41670c);
    }

    @Override // com.google.android.gms.internal.ads.cnd
    /* renamed from: a */
    public final /* synthetic */ cnd mo17395a(Context context) {
        this.f41668a = (Context) dso.m15767a(context);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cnd
    /* renamed from: a */
    public final /* synthetic */ cnd mo17394a(zzvt zzvtVar) {
        this.f41670c = (zzvt) dso.m15767a(zzvtVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cnd
    /* renamed from: a */
    public final /* synthetic */ cnd mo17393a(String str) {
        this.f41669b = (String) dso.m15767a(str);
        return this;
    }
}
