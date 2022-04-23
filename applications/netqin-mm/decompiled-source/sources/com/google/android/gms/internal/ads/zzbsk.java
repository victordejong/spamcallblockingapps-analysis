package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsk.class */
public final class zzbsk implements zzeoy<zza> {

    /* renamed from: a */
    public final zzeph<Context> f25451a;

    /* renamed from: b */
    public final zzeph<zzawl> f25452b;

    public zzbsk(zzbsh zzbshVar, zzeph<Context> zzephVar, zzeph<zzawl> zzephVar2) {
        this.f25451a = zzephVar;
        this.f25452b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbsk m15099a(zzbsh zzbshVar, zzeph<Context> zzephVar, zzeph<zzawl> zzephVar2) {
        return new zzbsk(zzbshVar, zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zza zzaVar = new zza(this.f25451a.get(), this.f25452b.get(), null);
        zzepe.m12187a(zzaVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzaVar;
    }
}
