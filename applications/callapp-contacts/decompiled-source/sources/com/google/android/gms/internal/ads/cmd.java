package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cmd.class */
final class cmd implements cxu<zzcpo, cmf> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ cmb f26066a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cmd(cmb cmbVar) {
        this.f26066a = cmbVar;
    }

    @Override // com.google.android.gms.internal.ads.cxu
    public final /* synthetic */ cmf a(zzcpo zzcpoVar) {
        za.zzc("", zzcpoVar);
        zzd.zzed("Failed to get a cache key, reverting to legacy flow.");
        cmb cmbVar = this.f26066a;
        cmbVar.e = new cmf(null, cmbVar.a(), null);
        return this.f26066a.e;
    }
}
