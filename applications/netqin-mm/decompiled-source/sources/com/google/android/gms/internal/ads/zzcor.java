package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.C4072tm;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcor.class */
public final class zzcor implements zzeoy<zzcab<zzbws>> {

    /* renamed from: a */
    public final zzeph<C4072tm> f26351a;

    /* renamed from: b */
    public final zzeph<Executor> f26352b;

    public zzcor(zzeph<C4072tm> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26351a = zzephVar;
        this.f26352b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcor m13970a(zzeph<C4072tm> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzcor(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f26351a.get(), this.f26352b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
