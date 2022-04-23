package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.anp;
import com.google.android.gms.internal.ads.aqx;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/clo.class */
final class clo<R extends aqx<AdT>, AdT extends anp> implements cru<AdT> {

    /* renamed from: a  reason: collision with root package name */
    private final cmh<R, crj<AdT>> f26037a;

    public clo(cmh<R, crj<AdT>> cmhVar) {
        this.f26037a = cmhVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.cru
    public final dbt<crj<AdT>> a(crx crxVar) {
        clr clrVar = (clr) crxVar;
        return this.f26037a.a(clrVar.f26042b, clrVar.f26041a);
    }

    @Override // com.google.android.gms.internal.ads.cru
    public final void a(crj<AdT> crjVar) {
        crjVar.f26301a = this.f26037a.a().c();
    }
}
