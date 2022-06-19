package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.common.util.Clock;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdke.class */
public final class zzdke {
    private final Set<zzdlw<zzbes>> zza;
    private final Set<zzdlw<zzdmd>> zzb;
    private final Set<zzdlw<zzder>> zzc;
    private final Set<zzdlw<zzdfl>> zzd;
    private final Set<zzdlw<zzdgq>> zze;
    private final Set<zzdlw<zzdgf>> zzf;
    private final Set<zzdlw<zzdgj>> zzg;
    private final Set<zzdlw<zzdeu>> zzh;
    private final Set<zzdlw<zzdfh>> zzi;
    private final Set<zzdlw<zzfmb>> zzj;
    private final Set<zzdlw<zzaop>> zzk;
    private final Set<zzdlw<zzdhc>> zzl;
    private final Set<zzdlw<zzo>> zzm;
    private final Set<zzdlw<zzdhm>> zzn;
    private final zzfaz zzo;
    private zzdet zzp;
    private zzelg zzq;

    public /* synthetic */ zzdke(zzdkc zzdkcVar, zzdkd zzdkdVar) {
        Set<zzdlw<zzbes>> set;
        Set<zzdlw<zzdmd>> set2;
        Set<zzdlw<zzdfl>> set3;
        Set<zzdlw<zzdgq>> set4;
        Set<zzdlw<zzder>> set5;
        Set<zzdlw<zzdgf>> set6;
        Set<zzdlw<zzdgj>> set7;
        Set<zzdlw<zzdeu>> set8;
        Set<zzdlw<zzdfh>> set9;
        Set<zzdlw<zzfmb>> set10;
        Set<zzdlw<zzaop>> set11;
        Set<zzdlw<zzdhc>> set12;
        zzfaz zzfazVar;
        Set<zzdlw<zzo>> set13;
        Set<zzdlw<zzdhm>> set14;
        set = zzdkcVar.zzc;
        this.zza = set;
        set2 = zzdkcVar.zzd;
        this.zzb = set2;
        set3 = zzdkcVar.zzf;
        this.zzd = set3;
        set4 = zzdkcVar.zzg;
        this.zze = set4;
        set5 = zzdkcVar.zze;
        this.zzc = set5;
        set6 = zzdkcVar.zzh;
        this.zzf = set6;
        set7 = zzdkcVar.zza;
        this.zzg = set7;
        set8 = zzdkcVar.zzi;
        this.zzh = set8;
        set9 = zzdkcVar.zzl;
        this.zzi = set9;
        set10 = zzdkcVar.zzj;
        this.zzj = set10;
        set11 = zzdkcVar.zzk;
        this.zzk = set11;
        set12 = zzdkcVar.zzm;
        this.zzl = set12;
        zzfazVar = zzdkcVar.zzo;
        this.zzo = zzfazVar;
        set13 = zzdkcVar.zzn;
        this.zzm = set13;
        set14 = zzdkcVar.zzb;
        this.zzn = set14;
    }

    public final zzdet zza(Set<zzdlw<zzdeu>> set) {
        if (this.zzp == null) {
            this.zzp = new zzdet(set);
        }
        return this.zzp;
    }

    public final zzelg zzb(Clock clock, zzelh zzelhVar, zzehy zzehyVar, zzfjs zzfjsVar) {
        if (this.zzq == null) {
            this.zzq = new zzelg(clock, zzelhVar, zzehyVar, zzfjsVar);
        }
        return this.zzq;
    }

    public final zzfaz zzc() {
        return this.zzo;
    }

    public final Set<zzdlw<zzo>> zzd() {
        return this.zzm;
    }

    public final Set<zzdlw<zzbes>> zze() {
        return this.zza;
    }

    public final Set<zzdlw<zzdeu>> zzf() {
        return this.zzh;
    }

    public final Set<zzdlw<zzdfh>> zzg() {
        return this.zzi;
    }

    public final Set<zzdlw<zzdfl>> zzh() {
        return this.zzd;
    }

    public final Set<zzdlw<zzder>> zzi() {
        return this.zzc;
    }

    public final Set<zzdlw<zzdgf>> zzj() {
        return this.zzf;
    }

    public final Set<zzdlw<zzdgj>> zzk() {
        return this.zzg;
    }

    public final Set<zzdlw<zzfmb>> zzl() {
        return this.zzj;
    }

    public final Set<zzdlw<zzdgq>> zzm() {
        return this.zze;
    }

    public final Set<zzdlw<zzdhc>> zzn() {
        return this.zzl;
    }

    public final Set<zzdlw<zzdhm>> zzo() {
        return this.zzn;
    }

    public final Set<zzdlw<zzaop>> zzp() {
        return this.zzk;
    }

    public final Set<zzdlw<zzdmd>> zzq() {
        return this.zzb;
    }
}
