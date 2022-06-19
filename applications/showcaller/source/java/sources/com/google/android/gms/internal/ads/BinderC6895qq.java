package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AbstractC5598c;
/* renamed from: com.google.android.gms.internal.ads.qq */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qq.class */
public final class BinderC6895qq<AdT> extends AbstractBinderC6601is {

    /* renamed from: d */
    private final AbstractC5598c<AdT> f28600d;

    /* renamed from: e */
    private final AdT f28601e;

    public BinderC6895qq(AbstractC5598c<AdT> abstractC5598c, AdT adt) {
        this.f28600d = abstractC5598c;
        this.f28601e = adt;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6638js
    /* renamed from: b */
    public final void mo11828b() {
        AdT adt;
        AbstractC5598c<AdT> abstractC5598c = this.f28600d;
        if (abstractC5598c == null || (adt = this.f28601e) == null) {
            return;
        }
        abstractC5598c.mo18296b(adt);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6638js
    /* renamed from: l2 */
    public final void mo11827l2(zzbcz zzbczVar) {
        AbstractC5598c<AdT> abstractC5598c = this.f28600d;
        if (abstractC5598c != null) {
            abstractC5598c.mo18297a(zzbczVar.m8084l0());
        }
    }
}
