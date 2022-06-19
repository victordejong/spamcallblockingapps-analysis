package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.zzt;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczd.class */
public class zzczd {
    private final zzdat zza;
    private final View zzb;
    private final zzfdo zzc;
    private final zzcop zzd;

    public zzczd(View view, zzcop zzcopVar, zzdat zzdatVar, zzfdo zzfdoVar) {
        this.zzb = view;
        this.zzd = zzcopVar;
        this.zza = zzdatVar;
        this.zzc = zzfdoVar;
    }

    public static final zzdlw<zzdgf> zzf(final Context context, final zzcjf zzcjfVar, final zzfdn zzfdnVar, final zzfef zzfefVar) {
        return new zzdlw<>(new zzdgf() { // from class: com.google.android.gms.internal.ads.zzczb
            @Override // com.google.android.gms.internal.ads.zzdgf
            public final void zzn() {
                zzt.zzs().zzn(context, zzcjfVar.zza, zzfdnVar.zzD.toString(), zzfefVar.zzf);
            }
        }, zzcjm.zzf);
    }

    public static final Set<zzdlw<zzdgf>> zzg(zzdan zzdanVar) {
        return Collections.singleton(new zzdlw(zzdanVar, zzcjm.zzf));
    }

    public static final zzdlw<zzdgf> zzh(zzdal zzdalVar) {
        return new zzdlw<>(zzdalVar, zzcjm.zze);
    }

    public final View zza() {
        return this.zzb;
    }

    public final zzcop zzb() {
        return this.zzd;
    }

    public final zzdat zzc() {
        return this.zza;
    }

    public zzdgd zzd(Set<zzdlw<zzdgf>> set) {
        return new zzdgd(set);
    }

    public final zzfdo zze() {
        return this.zzc;
    }
}
