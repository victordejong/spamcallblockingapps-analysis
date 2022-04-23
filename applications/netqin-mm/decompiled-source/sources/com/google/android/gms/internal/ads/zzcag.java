package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcag.class */
public final class zzcag implements zzeoy<zzcae> {

    /* renamed from: a */
    public final zzeph<Context> f25650a;

    /* renamed from: b */
    public final zzeph<Set<zzcab<zzqu>>> f25651b;

    /* renamed from: c */
    public final zzeph<zzdnv> f25652c;

    public zzcag(zzeph<Context> zzephVar, zzeph<Set<zzcab<zzqu>>> zzephVar2, zzeph<zzdnv> zzephVar3) {
        this.f25650a = zzephVar;
        this.f25651b = zzephVar2;
        this.f25652c = zzephVar3;
    }

    /* renamed from: a */
    public static zzcag m14863a(zzeph<Context> zzephVar, zzeph<Set<zzcab<zzqu>>> zzephVar2, zzeph<zzdnv> zzephVar3) {
        return new zzcag(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcae(this.f25650a.get(), this.f25651b.get(), this.f25652c.get());
    }
}
