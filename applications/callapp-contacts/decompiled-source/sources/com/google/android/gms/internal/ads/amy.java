package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/amy.class */
public final class amy implements dsi<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cpo> f23604a;

    public amy(dsv<cpo> dsvVar) {
        this.f23604a = dsvVar;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        boolean z;
        if (this.f23604a.a().a() != null) {
            z = ((Boolean) ekb.e().a(aq.aL)).booleanValue();
        } else {
            z = ((Boolean) ekb.e().a(aq.di)).booleanValue();
        }
        return Boolean.valueOf(z);
    }
}
