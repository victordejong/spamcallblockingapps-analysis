package com.google.android.gms.internal.ads;

import androidx.b.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bem.class */
public final class bem implements ash {

    /* renamed from: a  reason: collision with root package name */
    private final bcr f24277a;

    /* renamed from: b  reason: collision with root package name */
    private final bcv f24278b;

    public bem(bcr bcrVar, bcv bcvVar) {
        this.f24277a = bcrVar;
        this.f24278b = bcvVar;
    }

    @Override // com.google.android.gms.internal.ads.ash
    public final void b() {
        if (this.f24277a.x() != null) {
            adt w = this.f24277a.w();
            adt v = this.f24277a.v();
            if (w != null) {
                v = w;
            } else if (v == null) {
                v = null;
            }
            if (this.f24278b.d() && v != null) {
                v.a("onSdkImpression", new a());
            }
        }
    }
}
