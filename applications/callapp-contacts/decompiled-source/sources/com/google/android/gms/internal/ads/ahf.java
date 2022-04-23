package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ahf.class */
final class ahf implements clg {

    /* renamed from: a  reason: collision with root package name */
    private Context f23318a;

    /* renamed from: b  reason: collision with root package name */
    private String f23319b;

    /* renamed from: c  reason: collision with root package name */
    private zzvt f23320c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ ago f23321d;

    private ahf(ago agoVar) {
        this.f23321d = agoVar;
    }

    @Override // com.google.android.gms.internal.ads.clg
    public final /* synthetic */ clg a(Context context) {
        this.f23318a = (Context) dso.a(context);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.clg
    public final /* synthetic */ clg a(zzvt zzvtVar) {
        this.f23320c = (zzvt) dso.a(zzvtVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.clg
    public final /* synthetic */ clg a(String str) {
        this.f23319b = (String) dso.a(str);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.clg
    public final clh a() {
        dso.a(this.f23318a, Context.class);
        dso.a(this.f23319b, String.class);
        dso.a(this.f23320c, zzvt.class);
        return new ahi(this.f23321d, this.f23318a, this.f23319b, this.f23320c);
    }
}
