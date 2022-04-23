package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdsv.class */
public final class zzdsv implements zzeoy<zzdst> {

    /* renamed from: a */
    public final zzeph<Executor> f27810a;

    /* renamed from: b */
    public final zzeph<zzbbu> f27811b;

    public zzdsv(zzeph<Executor> zzephVar, zzeph<zzbbu> zzephVar2) {
        this.f27810a = zzephVar;
        this.f27811b = zzephVar2;
    }

    /* renamed from: a */
    public static zzdsv m13233a(zzeph<Executor> zzephVar, zzeph<zzbbu> zzephVar2) {
        return new zzdsv(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdst(this.f27810a.get(), this.f27811b.get());
    }
}
