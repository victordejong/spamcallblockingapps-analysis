package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdby.class */
public final class zzdby implements zzeoy<zzdbx> {

    /* renamed from: a */
    public final zzeph<zzdzc<String>> f26899a;

    /* renamed from: b */
    public final zzeph<Executor> f26900b;

    public zzdby(zzeph<zzdzc<String>> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26899a = zzephVar;
        this.f26900b = zzephVar2;
    }

    /* renamed from: a */
    public static zzdby m13661a(zzeph<zzdzc<String>> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzdby(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdbx(this.f26899a.get(), this.f26900b.get());
    }
}
