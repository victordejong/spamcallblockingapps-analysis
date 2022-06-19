package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsw.class */
final class zzcsw implements zzdaf {
    private final zzdag zza;
    private final zzcui zzb;
    private final zzcso zzc;
    private final zzcsw zzd = this;
    private final zzgqe<zzfdz> zze;
    private final zzgqe<zzfdn> zzf;
    private final zzgqe<Set<zzdlw<zzdfm>>> zzg;
    private final zzgqe<zzdfq> zzh;
    private final zzgqe<Set<zzdlw<zzdgf>>> zzi;
    private final zzgqe<zzdgd> zzj;
    private final zzgqe<String> zzk;
    private final zzgqe<zzfdq> zzl;
    private final zzgqe<zzdek> zzm;
    private final zzgqe<zzdjb> zzn;
    private final zzgqe<Set<zzdlw<zzdgj>>> zzo;
    private final zzgqe<zzdgh> zzp;
    private final zzgqe<zzdau> zzq;
    private final zzgqe<zzbpz> zzr;
    private final zzgqe<Runnable> zzs;
    private final zzgqe<zzdae> zzt;

    public /* synthetic */ zzcsw(zzcui zzcuiVar, zzcso zzcsoVar, zzdbk zzdbkVar, zzdag zzdagVar, zzcsv zzcsvVar) {
        zzgqe zzgqeVar;
        zzgqe zzgqeVar2;
        zzgqe zzgqeVar3;
        zzgqe zzgqeVar4;
        zzgqe zzgqeVar5;
        zzgqe zzgqeVar6;
        zzgqe zzgqeVar7;
        zzgqe zzgqeVar8;
        zzgqe zzgqeVar9;
        zzgqe zzgqeVar10;
        zzgqe zzgqeVar11;
        zzgqe zzgqeVar12;
        zzgqe zzgqeVar13;
        zzgqe zzgqeVar14;
        this.zzb = zzcuiVar;
        this.zzc = zzcsoVar;
        this.zza = zzdagVar;
        zzdbo zzdboVar = new zzdbo(zzdbkVar);
        this.zze = zzdboVar;
        zzdbl zzdblVar = new zzdbl(zzdbkVar);
        this.zzf = zzdblVar;
        zzgqb zza = zzgqc.zza(0, 2);
        zzgqeVar = zzcsoVar.zzcr;
        zza.zza(zzgqeVar);
        zzgqeVar2 = zzcsoVar.zzcs;
        zza.zza(zzgqeVar2);
        zzgqc zzc = zza.zzc();
        this.zzg = zzc;
        zzgqe<zzdfq> zzc2 = zzgpq.zzc(new zzdfr(zzc));
        this.zzh = zzc2;
        zzgqb zza2 = zzgqc.zza(4, 3);
        zzgqeVar3 = zzcsoVar.zzcH;
        zza2.zzb(zzgqeVar3);
        zzgqeVar4 = zzcsoVar.zzcI;
        zza2.zzb(zzgqeVar4);
        zzgqeVar5 = zzcsoVar.zzcJ;
        zza2.zzb(zzgqeVar5);
        zzgqeVar6 = zzcsoVar.zzcU;
        zza2.zza(zzgqeVar6);
        zzgqeVar7 = zzcsoVar.zzcV;
        zza2.zza(zzgqeVar7);
        zzgqeVar8 = zzcsoVar.zzcW;
        zza2.zza(zzgqeVar8);
        zzgqeVar9 = zzcsoVar.zzcK;
        zza2.zzb(zzgqeVar9);
        zzgqc zzc3 = zza2.zzc();
        this.zzi = zzc3;
        zzgqe<zzdgd> zzc4 = zzgpq.zzc(new zzdge(zzc3));
        this.zzj = zzc4;
        zzdbm zzdbmVar = new zzdbm(zzdbkVar);
        this.zzk = zzdbmVar;
        zzdbn zzdbnVar = new zzdbn(zzdbkVar);
        this.zzl = zzdbnVar;
        zzgqeVar10 = zzcsoVar.zzbA;
        zzdel zzdelVar = new zzdel(zzdblVar, zzdbmVar, zzgqeVar10, zzdbnVar);
        this.zzm = zzdelVar;
        zzgqe<zzdjb> zzc5 = zzgpq.zzc(zzdjd.zza());
        this.zzn = zzc5;
        zzgqb zza3 = zzgqc.zza(1, 1);
        zzgqeVar11 = zzcsoVar.zzcY;
        zza3.zza(zzgqeVar11);
        zzgqeVar12 = zzcsoVar.zzcZ;
        zza3.zzb(zzgqeVar12);
        zzgqc zzc6 = zza3.zzc();
        this.zzo = zzc6;
        zzdgi zzdgiVar = new zzdgi(zzc6);
        this.zzp = zzdgiVar;
        zzgqeVar13 = zzcsoVar.zzcX;
        zzdcq zzdcqVar = new zzdcq(zzdboVar, zzdblVar, zzc2, zzc4, zzgqeVar13, zzdelVar, zzc5, zzdgiVar);
        this.zzq = zzdcqVar;
        zzdai zzdaiVar = new zzdai(zzdagVar);
        this.zzr = zzdaiVar;
        zzdah zzdahVar = new zzdah(zzdagVar);
        this.zzs = zzdahVar;
        zzgqeVar14 = zzcuiVar.zzp;
        this.zzt = zzgpq.zzc(new zzdaj(zzdcqVar, zzdaiVar, zzdahVar, zzgqeVar14));
    }

    @Override // com.google.android.gms.internal.ads.zzdaf
    public final zzcyw zza() {
        zzdae zzb = this.zzt.zzb();
        zzgpz.zzb(zzb);
        return zzb;
    }
}
