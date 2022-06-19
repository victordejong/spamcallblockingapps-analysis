package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cer.class */
public final class cer implements coe<zzclc, cet> {

    /* renamed from: a */
    private final /* synthetic */ cep f12840a;

    public cer(cep cepVar) {
        this.f12840a = cepVar;
    }

    @Override // com.google.android.gms.internal.ads.coe
    @NullableDecl
    /* renamed from: a */
    public final /* synthetic */ cet mo7184a(@NullableDecl zzclc zzclcVar) {
        cjb m11432b;
        cet cetVar;
        C3645yb.m6748c("", zzclcVar);
        C3556uu.m7052a("Failed to get a cache key, reverting to legacy flow.");
        cep cepVar = this.f12840a;
        m11432b = this.f12840a.m11432b();
        cepVar.f12838e = new cet(null, m11432b, null);
        cetVar = this.f12840a.f12838e;
        return cetVar;
    }
}
