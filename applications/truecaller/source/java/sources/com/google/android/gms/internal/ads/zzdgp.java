package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.common.util.Clock;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdgp.class */
public final class zzdgp {
    private final Set<zzdih<zzbcv>> zza;
    private final Set<zzdih<zzdio>> zzb;
    private final Set<zzdih<zzdbc>> zzc;
    private final Set<zzdih<zzdbw>> zzd;
    private final Set<zzdih<zzddb>> zze;
    private final Set<zzdih<zzdcq>> zzf;
    private final Set<zzdih<zzdcu>> zzg;
    private final Set<zzdih<zzdbf>> zzh;
    private final Set<zzdih<zzdbs>> zzi;
    private final Set<zzdih<zzfid>> zzj;
    private final Set<zzdih<zzamv>> zzk;
    private final Set<zzdih<zzddn>> zzl;
    private final Set<zzdih<zzo>> zzm;
    private final Set<zzdih<zzddx>> zzn;
    private final zzexl zzo;
    private zzdbe zzp;
    private zzehp zzq;

    public /* synthetic */ zzdgp(zzdgn zzdgnVar, zzdgo zzdgoVar) {
        Set<zzdih<zzbcv>> set;
        Set<zzdih<zzdio>> set2;
        Set<zzdih<zzdbw>> set3;
        Set<zzdih<zzddb>> set4;
        Set<zzdih<zzdbc>> set5;
        Set<zzdih<zzdcq>> set6;
        Set<zzdih<zzdcu>> set7;
        Set<zzdih<zzdbf>> set8;
        Set<zzdih<zzdbs>> set9;
        Set<zzdih<zzfid>> set10;
        Set<zzdih<zzamv>> set11;
        Set<zzdih<zzddn>> set12;
        zzexl zzexlVar;
        Set<zzdih<zzo>> set13;
        Set<zzdih<zzddx>> set14;
        set = zzdgnVar.zzc;
        this.zza = set;
        set2 = zzdgnVar.zzd;
        this.zzb = set2;
        set3 = zzdgnVar.zzf;
        this.zzd = set3;
        set4 = zzdgnVar.zzg;
        this.zze = set4;
        set5 = zzdgnVar.zze;
        this.zzc = set5;
        set6 = zzdgnVar.zzh;
        this.zzf = set6;
        set7 = zzdgnVar.zza;
        this.zzg = set7;
        set8 = zzdgnVar.zzi;
        this.zzh = set8;
        set9 = zzdgnVar.zzl;
        this.zzi = set9;
        set10 = zzdgnVar.zzj;
        this.zzj = set10;
        set11 = zzdgnVar.zzk;
        this.zzk = set11;
        set12 = zzdgnVar.zzm;
        this.zzl = set12;
        zzexlVar = zzdgnVar.zzo;
        this.zzo = zzexlVar;
        set13 = zzdgnVar.zzn;
        this.zzm = set13;
        set14 = zzdgnVar.zzb;
        this.zzn = set14;
    }

    public final Set<zzdih<zzdbc>> zza() {
        return this.zzc;
    }

    public final Set<zzdih<zzdcq>> zzb() {
        return this.zzf;
    }

    public final Set<zzdih<zzdbf>> zzc() {
        return this.zzh;
    }

    public final Set<zzdih<zzdbs>> zzd() {
        return this.zzi;
    }

    public final Set<zzdih<zzfid>> zze() {
        return this.zzj;
    }

    public final Set<zzdih<zzamv>> zzf() {
        return this.zzk;
    }

    public final Set<zzdih<zzbcv>> zzg() {
        return this.zza;
    }

    public final Set<zzdih<zzdio>> zzh() {
        return this.zzb;
    }

    public final Set<zzdih<zzdbw>> zzi() {
        return this.zzd;
    }

    public final Set<zzdih<zzddb>> zzj() {
        return this.zze;
    }

    public final Set<zzdih<zzddn>> zzk() {
        return this.zzl;
    }

    public final Set<zzdih<zzddx>> zzl() {
        return this.zzn;
    }

    public final Set<zzdih<zzdcu>> zzm() {
        return this.zzg;
    }

    public final Set<zzdih<zzo>> zzn() {
        return this.zzm;
    }

    public final zzexl zzo() {
        return this.zzo;
    }

    public final zzdbe zzp(Set<zzdih<zzdbf>> set) {
        if (this.zzp == null) {
            this.zzp = new zzdbe(set);
        }
        return this.zzp;
    }

    public final zzehp zzq(Clock clock, zzehq zzehqVar, zzeeh zzeehVar) {
        if (this.zzq == null) {
            this.zzq = new zzehp(clock, zzehqVar, zzeehVar);
        }
        return this.zzq;
    }
}
