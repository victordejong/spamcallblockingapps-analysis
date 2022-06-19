package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
/* renamed from: com.google.android.gms.internal.ads.fx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fx.class */
public final class C3154fx implements cqt<AbstractC3149fs, ParcelFileDescriptor> {

    /* renamed from: a */
    private final /* synthetic */ C3143fm f16680a;

    public C3154fx(C3151fu c3151fu, C3143fm c3143fm) {
        this.f16680a = c3143fm;
    }

    @Override // com.google.android.gms.internal.ads.cqt
    /* renamed from: a */
    public final /* synthetic */ crt<ParcelFileDescriptor> mo7012a(AbstractC3149fs abstractC3149fs) {
        C3658yo c3658yo = new C3658yo();
        abstractC3149fs.mo7821a(this.f16680a, new BinderC3153fw(this, c3658yo));
        return c3658yo;
    }
}
