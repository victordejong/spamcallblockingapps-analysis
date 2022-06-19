package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcrs.class */
final class zzcrs extends zzewf {
    private final zzexm zza;
    private final zzcui zzb;
    private final zzgqe<Integer> zzd;
    private final zzgqe<zzewc> zze;
    private final zzgqe<String> zzf;
    private final zzgqe<zzewl> zzg;
    private final zzgqe<zzewr> zzh;
    private final zzgqe<zzewv> zzi;
    private final zzgqe<zzexc> zzj;
    private final zzgqe<zzexj> zzk;
    private final zzgqe<Boolean> zzm;
    private final zzgqe<zzexw> zzn;
    private final zzgqe<String> zzo;
    private final zzgqe<zzdyh> zzp;
    private final zzgqe<zzdyh> zzq;
    private final zzgqe<zzdyh> zzr;
    private final zzgqe<zzdyh> zzs;
    private final zzgqe<Map<zzfhy, zzdyh>> zzt;
    private final zzgqe<Set<zzdlw<zzfif>>> zzu;
    private final zzgqe<Set<zzdlw<zzfif>>> zzv;
    private final zzgqe zzw;
    private final zzgqe<zzfie> zzx;
    private final zzcrs zzc = this;
    private final zzgqe<zzeya> zzl = new zzeyc(zzfgz.zza());

    public /* synthetic */ zzcrs(zzcui zzcuiVar, zzexm zzexmVar, zzcrr zzcrrVar) {
        zzcvk zzcvkVar;
        zzgqe zzgqeVar;
        zzgqe zzgqeVar2;
        zzcre zzcreVar;
        zzgqe zzgqeVar3;
        zzcvk zzcvkVar2;
        zzgqe zzgqeVar4;
        zzgqe zzgqeVar5;
        zzgqe zzgqeVar6;
        zzcve zzcveVar;
        zzgqe zzgqeVar7;
        zzcvg zzcvgVar;
        zzcvi zzcviVar;
        zzgqe zzgqeVar8;
        zzgqe zzgqeVar9;
        zzgqe zzgqeVar10;
        zzcvm zzcvmVar;
        zzgqe zzgqeVar11;
        zzgqe zzgqeVar12;
        zzgqe zzgqeVar13;
        this.zzb = zzcuiVar;
        this.zza = zzexmVar;
        zzexo zzexoVar = new zzexo(zzexmVar);
        this.zzd = zzexoVar;
        zzcvkVar = zzcvj.zza;
        zzgqeVar = zzcuiVar.zzh;
        zzgqeVar2 = zzcuiVar.zzn;
        this.zze = new zzewe(zzcvkVar, zzgqeVar, zzgqeVar2, zzfgz.zza(), zzexoVar);
        zzexn zzexnVar = new zzexn(zzexmVar);
        this.zzf = zzexnVar;
        zzcreVar = zzcrd.zza;
        zzgqeVar3 = zzcuiVar.zzh;
        this.zzg = new zzewn(zzcreVar, zzgqeVar3, zzexnVar, zzfgz.zza());
        zzcvkVar2 = zzcvj.zza;
        zzgqeVar4 = zzcuiVar.zzh;
        zzgqeVar5 = zzcuiVar.zzaa;
        zzgqeVar6 = zzcuiVar.zzn;
        this.zzh = new zzewt(zzcvkVar2, zzexoVar, zzgqeVar4, zzgqeVar5, zzgqeVar6, zzfgz.zza(), zzexnVar);
        zzcveVar = zzcvd.zza;
        zzfgz zza = zzfgz.zza();
        zzgqeVar7 = zzcuiVar.zzh;
        this.zzi = new zzewx(zzcveVar, zza, zzgqeVar7);
        zzcvgVar = zzcvf.zza;
        this.zzj = new zzexe(zzcvgVar, zzfgz.zza(), zzexnVar);
        zzcviVar = zzcvh.zza;
        zzgqeVar8 = zzcuiVar.zzn;
        zzgqeVar9 = zzcuiVar.zzh;
        this.zzk = new zzexl(zzcviVar, zzgqeVar8, zzgqeVar9);
        zzexp zzexpVar = new zzexp(zzexmVar);
        this.zzm = zzexpVar;
        zzgqeVar10 = zzcuiVar.zzaa;
        zzcvmVar = zzcvl.zza;
        zzfgz zza2 = zzfgz.zza();
        zzgqeVar11 = zzcuiVar.zzn;
        this.zzn = new zzexy(zzgqeVar10, zzexpVar, zzcvmVar, zza2, zzexnVar, zzgqeVar11);
        zzexq zzexqVar = new zzexq(zzexmVar);
        this.zzo = zzexqVar;
        zzgqe<zzdyh> zzc = zzgpq.zzc(zzdya.zza());
        this.zzp = zzc;
        zzgqe<zzdyh> zzc2 = zzgpq.zzc(zzdxy.zza());
        this.zzq = zzc2;
        zzgqe<zzdyh> zzc3 = zzgpq.zzc(zzdyc.zza());
        this.zzr = zzc3;
        zzgqe<zzdyh> zzc4 = zzgpq.zzc(zzdye.zza());
        this.zzs = zzc4;
        zzgpu zzc5 = zzgpv.zzc(4);
        zzc5.zzb(zzfhy.GMS_SIGNALS, zzc);
        zzc5.zzb(zzfhy.BUILD_URL, zzc2);
        zzc5.zzb(zzfhy.HTTP, zzc3);
        zzc5.zzb(zzfhy.PRE_PROCESS, zzc4);
        zzgpv zzc6 = zzc5.zzc();
        this.zzt = zzc6;
        zzgqeVar12 = zzcuiVar.zzh;
        zzgqe<Set<zzdlw<zzfif>>> zzc7 = zzgpq.zzc(new zzdyf(zzexqVar, zzgqeVar12, zzfgz.zza(), zzc6));
        this.zzu = zzc7;
        zzgqb zza3 = zzgqc.zza(0, 1);
        zza3.zza(zzc7);
        zzgqc zzc8 = zza3.zzc();
        this.zzv = zzc8;
        zzfih zzfihVar = new zzfih(zzc8);
        this.zzw = zzfihVar;
        zzfgz zza4 = zzfgz.zza();
        zzgqeVar13 = zzcuiVar.zzn;
        this.zzx = zzgpq.zzc(new zzfig(zza4, zzgqeVar13, zzfihVar));
    }

    private final zzewi zzd() {
        zzcic zzcicVar = new zzcic();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        String zzd = this.zza.zzd();
        zzgpz.zzb(zzd);
        return new zzewi(zzcicVar, zzfxbVar, zzd, this.zza.zzb(), this.zza.zza(), null);
    }

    private final zzexg zze() {
        zzbku zzbkuVar = new zzbku();
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        List<String> zzf = this.zza.zzf();
        zzgpz.zzb(zzf);
        return new zzexg(zzbkuVar, zzfxbVar, zzf, null);
    }

    @Override // com.google.android.gms.internal.ads.zzewf
    public final zzevq<JSONObject> zza() {
        zzgqe zzgqeVar;
        zzgqe zzgqeVar2;
        zzchz zzchzVar = new zzchz();
        zzcia zzciaVar = new zzcia();
        zzgqeVar = this.zzb.zzay;
        Object zzb = zzgqeVar.zzb();
        zzewi zzd = zzd();
        zzexg zze = zze();
        zzgpl zza = zzgpq.zza(this.zze);
        zzgpl zza2 = zzgpq.zza(this.zzg);
        zzgpl zza3 = zzgpq.zza(this.zzh);
        zzgpl zza4 = zzgpq.zza(this.zzi);
        zzgpl zza5 = zzgpq.zza(this.zzj);
        zzgpl zza6 = zzgpq.zza(this.zzk);
        zzgpl zza7 = zzgpq.zza(this.zzl);
        zzgpl zza8 = zzgpq.zza(this.zzn);
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        zzgqeVar2 = this.zzb.zzn;
        return zzext.zza(zzchzVar, zzciaVar, zzb, zzd, zze, zza, zza2, zza3, zza4, zza5, zza6, zza7, zza8, zzfxbVar, (ScheduledExecutorService) zzgqeVar2.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzewf
    public final zzevq<JSONObject> zzb() {
        zzgqe zzgqeVar;
        zzgqe zzgqeVar2;
        zzcqp zzcqpVar;
        zzgqe zzgqeVar3;
        zzcqp zzcqpVar2;
        zzgqe zzgqeVar4;
        zzgqe zzgqeVar5;
        zzgqe zzgqeVar6;
        zzcqp zzcqpVar3;
        zzcqp zzcqpVar4;
        zzcqp zzcqpVar5;
        zzgqe zzgqeVar7;
        zzgqe zzgqeVar8;
        zzgqe zzgqeVar9;
        zzfxb zzfxbVar = zzcjm.zza;
        zzgpz.zzb(zzfxbVar);
        zzchz zzchzVar = new zzchz();
        zzgpz.zzb(zzfxbVar);
        String zzc = this.zza.zzc();
        zzgpz.zzb(zzc);
        zzexc zzexcVar = new zzexc(zzchzVar, zzfxbVar, zzc, null);
        zzgqeVar = this.zzb.zzn;
        zzetx zzetxVar = new zzetx(zzexcVar, 0L, (ScheduledExecutorService) zzgqeVar.zzb());
        zzcbw zzcbwVar = new zzcbw();
        zzgqeVar2 = this.zzb.zzn;
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) zzgqeVar2.zzb();
        zzcqpVar = this.zzb.zza;
        Context zza = zzcqpVar.zza();
        zzgpz.zzb(zza);
        zzexj zzexjVar = new zzexj(zzcbwVar, scheduledExecutorService, zza, null);
        zzgqeVar3 = this.zzb.zzn;
        zzetx zzetxVar2 = new zzetx(zzexjVar, ((Long) zzbgq.zzc().zzb(zzblj.zzcF)).longValue(), (ScheduledExecutorService) zzgqeVar3.zzb());
        zzcic zzcicVar = new zzcic();
        zzcqpVar2 = this.zzb.zza;
        Context zza2 = zzcqpVar2.zza();
        zzgpz.zzb(zza2);
        zzgqeVar4 = this.zzb.zzn;
        zzgpz.zzb(zzfxbVar);
        zzewc zzewcVar = new zzewc(zzcicVar, zza2, (ScheduledExecutorService) zzgqeVar4.zzb(), zzfxbVar, this.zza.zza(), null);
        zzgqeVar5 = this.zzb.zzn;
        zzetx zzetxVar3 = new zzetx(zzewcVar, 0L, (ScheduledExecutorService) zzgqeVar5.zzb());
        zzgpz.zzb(zzfxbVar);
        zzeya zzeyaVar = new zzeya(zzfxbVar);
        zzgqeVar6 = this.zzb.zzn;
        zzetx zzetxVar4 = new zzetx(zzeyaVar, 0L, (ScheduledExecutorService) zzgqeVar6.zzb());
        zzexs zzexsVar = zzexs.zza;
        zzcqpVar3 = this.zzb.zza;
        Context zza3 = zzcqpVar3.zza();
        zzgpz.zzb(zza3);
        String zzc2 = this.zza.zzc();
        zzgpz.zzb(zzc2);
        zzgpz.zzb(zzfxbVar);
        zzewl zzewlVar = new zzewl(null, zza3, zzc2, zzfxbVar);
        zzban zzbanVar = new zzban();
        zzgpz.zzb(zzfxbVar);
        zzcqpVar4 = this.zzb.zza;
        Context zza4 = zzcqpVar4.zza();
        zzgpz.zzb(zza4);
        zzewv zzewvVar = new zzewv(zzbanVar, zzfxbVar, zza4, null);
        zzexg zze = zze();
        zzewi zzd = zzd();
        zzcic zzcicVar2 = new zzcic();
        int zza5 = this.zza.zza();
        zzcqpVar5 = this.zzb.zza;
        Context zza6 = zzcqpVar5.zza();
        zzgpz.zzb(zza6);
        zzgqeVar7 = this.zzb.zzaa;
        zzcik zzcikVar = (zzcik) zzgqeVar7.zzb();
        zzgqeVar8 = this.zzb.zzn;
        ScheduledExecutorService scheduledExecutorService2 = (ScheduledExecutorService) zzgqeVar8.zzb();
        zzgpz.zzb(zzfxbVar);
        String zzc3 = this.zza.zzc();
        zzgpz.zzb(zzc3);
        zzgqeVar9 = this.zzb.zzay;
        return new zzevq<>(zzfxbVar, zzftc.zzm(zzetxVar, zzetxVar2, zzetxVar3, zzetxVar4, zzexsVar, zzewlVar, zzewvVar, zze, zzd, new zzewr(zzcicVar2, zza5, zza6, zzcikVar, scheduledExecutorService2, zzfxbVar, zzc3, null), (zzevn) zzgqeVar9.zzb()));
    }

    @Override // com.google.android.gms.internal.ads.zzewf
    public final zzfie zzc() {
        return this.zzx.zzb();
    }
}
