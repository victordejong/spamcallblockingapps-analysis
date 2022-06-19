package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ahf.class */
final class ahf implements clg {

    /* renamed from: a */
    private Context f41458a;

    /* renamed from: b */
    private String f41459b;

    /* renamed from: c */
    private zzvt f41460c;

    /* renamed from: d */
    private final /* synthetic */ ago f41461d;

    /* JADX INFO: Access modifiers changed from: private */
    public ahf(ago agoVar) {
        this.f41461d = agoVar;
    }

    @Override // com.google.android.gms.internal.ads.clg
    /* renamed from: a */
    public final /* synthetic */ clg mo17422a(Context context) {
        this.f41458a = (Context) dso.m15767a(context);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.clg
    /* renamed from: a */
    public final /* synthetic */ clg mo17421a(zzvt zzvtVar) {
        this.f41460c = (zzvt) dso.m15767a(zzvtVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.clg
    /* renamed from: a */
    public final /* synthetic */ clg mo17420a(String str) {
        this.f41459b = (String) dso.m15767a(str);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.clg
    /* renamed from: a */
    public final clh mo17423a() {
        dso.m15766a(this.f41458a, Context.class);
        dso.m15766a(this.f41459b, String.class);
        dso.m15766a(this.f41460c, zzvt.class);
        return new ahi(this.f41461d, this.f41458a, this.f41459b, this.f41460c);
    }
}
