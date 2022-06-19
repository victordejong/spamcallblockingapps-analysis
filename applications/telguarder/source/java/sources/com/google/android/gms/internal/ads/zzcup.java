package com.google.android.gms.internal.ads;

import android.view.ViewGroup;
import com.google.android.gms.internal.ads.zzbqx;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcup.class */
public final class zzcup implements zzeqb<zzcuq> {
    private final zzeqo<zzbts> zzfyg;
    private final zzeqo<zzbgc> zzgca;
    private final zzeqo<zzbqx.zza> zzgcb;
    private final zzeqo<zzbwg> zzgcc;
    private final zzeqo<zzcaq> zzgcd;
    private final zzeqo<zzcxa> zzgva;
    private final zzeqo<ViewGroup> zzgvb;

    public zzcup(zzeqo<zzbgc> zzeqoVar, zzeqo<zzbqx.zza> zzeqoVar2, zzeqo<zzcxa> zzeqoVar3, zzeqo<zzbwg> zzeqoVar4, zzeqo<zzcaq> zzeqoVar5, zzeqo<zzbts> zzeqoVar6, zzeqo<ViewGroup> zzeqoVar7) {
        this.zzgca = zzeqoVar;
        this.zzgcb = zzeqoVar2;
        this.zzgva = zzeqoVar3;
        this.zzgcc = zzeqoVar4;
        this.zzgcd = zzeqoVar5;
        this.zzfyg = zzeqoVar6;
        this.zzgvb = zzeqoVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcuq(this.zzgca.get(), this.zzgcb.get(), this.zzgva.get(), this.zzgcc.get(), this.zzgcd.get(), this.zzfyg.get(), this.zzgvb.get());
    }
}
