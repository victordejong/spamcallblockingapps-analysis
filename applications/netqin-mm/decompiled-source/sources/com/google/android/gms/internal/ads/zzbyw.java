package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyw.class */
public final class zzbyw implements zzeoy<zzbug> {

    /* renamed from: a */
    public final zzbys f25624a;

    /* renamed from: b */
    public final zzeph<Set<zzcab<zzbui>>> f25625b;

    public zzbyw(zzbys zzbysVar, zzeph<Set<zzcab<zzbui>>> zzephVar) {
        this.f25624a = zzbysVar;
        this.f25625b = zzephVar;
    }

    /* renamed from: a */
    public static zzbyw m14895a(zzbys zzbysVar, zzeph<Set<zzcab<zzbui>>> zzephVar) {
        return new zzbyw(zzbysVar, zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzbug a = this.f25624a.m14935a(this.f25625b.get());
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }
}
