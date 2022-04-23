package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjr.class */
public final class zzbjr implements zzeoy<zzatq> {

    /* renamed from: a */
    public final zzeph<Context> f25057a;

    public zzbjr(zzeph<Context> zzephVar) {
        this.f25057a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Context context = this.f25057a.get();
        zzato zzatoVar = new zzato(context, new zzatv(context).mo16352a());
        zzepe.m12187a(zzatoVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzatoVar;
    }
}
