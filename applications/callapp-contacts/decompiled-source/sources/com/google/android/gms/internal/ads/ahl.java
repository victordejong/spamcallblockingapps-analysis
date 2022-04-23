package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ahl.class */
final class ahl implements cnd {

    /* renamed from: a  reason: collision with root package name */
    private Context f23342a;

    /* renamed from: b  reason: collision with root package name */
    private String f23343b;

    /* renamed from: c  reason: collision with root package name */
    private zzvt f23344c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ ago f23345d;

    private ahl(ago agoVar) {
        this.f23345d = agoVar;
    }

    @Override // com.google.android.gms.internal.ads.cnd
    public final cmz a() {
        dso.a(this.f23342a, Context.class);
        dso.a(this.f23343b, String.class);
        dso.a(this.f23344c, zzvt.class);
        return new aho(this.f23345d, this.f23342a, this.f23343b, this.f23344c);
    }

    @Override // com.google.android.gms.internal.ads.cnd
    public final /* synthetic */ cnd a(Context context) {
        this.f23342a = (Context) dso.a(context);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cnd
    public final /* synthetic */ cnd a(zzvt zzvtVar) {
        this.f23344c = (zzvt) dso.a(zzvtVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cnd
    public final /* synthetic */ cnd a(String str) {
        this.f23343b = (String) dso.a(str);
        return this;
    }
}
