package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmv.class */
public final class zzcmv implements zzeoy<zzcmu> {

    /* renamed from: a */
    public final zzeph<zzcmz> f26266a;

    /* renamed from: b */
    public final zzeph<Executor> f26267b;

    public zzcmv(zzeph<zzcmz> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26266a = zzephVar;
        this.f26267b = zzephVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcmu(this.f26266a.get(), this.f26267b.get());
    }
}
