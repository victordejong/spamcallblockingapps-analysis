package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cmd.class */
final class cmd implements cxu<zzcpo, cmf> {

    /* renamed from: a */
    private final /* synthetic */ cmb f46074a;

    public cmd(cmb cmbVar) {
        this.f46074a = cmbVar;
    }

    @Override // com.google.android.gms.internal.ads.cxu
    /* renamed from: a */
    public final /* synthetic */ cmf mo14064a(zzcpo zzcpoVar) {
        C13088za.zzc("", zzcpoVar);
        zzd.zzed("Failed to get a cache key, reverting to legacy flow.");
        cmb cmbVar = this.f46074a;
        cmbVar.f46071e = new cmf(null, cmbVar.m17414a(), null);
        return this.f46074a.f46071e;
    }
}
