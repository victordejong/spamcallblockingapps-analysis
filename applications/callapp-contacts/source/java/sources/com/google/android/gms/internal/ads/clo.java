package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.anp;
import com.google.android.gms.internal.ads.aqx;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/clo.class */
public final class clo<R extends aqx<AdT>, AdT extends anp> implements cru<AdT> {

    /* renamed from: a */
    private final cmh<R, crj<AdT>> f46041a;

    public clo(cmh<R, crj<AdT>> cmhVar) {
        this.f46041a = cmhVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.cru
    /* renamed from: a */
    public final dbt<crj<AdT>> mo17285a(crx crxVar) {
        clr clrVar = (clr) crxVar;
        return this.f46041a.mo17411a(clrVar.f46046b, clrVar.f46045a);
    }

    @Override // com.google.android.gms.internal.ads.cru
    /* renamed from: a */
    public final void mo17286a(crj<AdT> crjVar) {
        crjVar.f46429a = this.f46041a.mo17412a().mo17838c();
    }
}
