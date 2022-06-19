package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcpl.class */
public final class zzcpl extends zzesq {
    private final zzetx zza;
    private final zzcqu zzb;
    private final zzgln<Integer> zzd;
    private final zzgln<zzesn> zze;
    private final zzgln<String> zzf;
    private final zzgln<zzesw> zzg;
    private final zzgln<zzetc> zzh;
    private final zzgln<zzetg> zzi;
    private final zzgln<zzetn> zzj;
    private final zzgln<zzetu> zzk;
    private final zzgln<Boolean> zzm;
    private final zzgln<zzeui> zzn;
    private final zzgln<String> zzo;
    private final zzgln<zzduq> zzp;
    private final zzgln<zzduq> zzq;
    private final zzgln<zzduq> zzr;
    private final zzgln<zzduq> zzs;
    private final zzgln<Map<zzfem, zzduq>> zzt;
    private final zzgln<Set<zzdih<zzfet>>> zzu;
    private final zzgln<Set<zzdih<zzfet>>> zzv;
    private final zzgln zzw;
    private final zzgln<zzfes> zzx;
    private final zzcpl zzc = this;
    private final zzgln<zzeum> zzl = new zzeuo(zzfdo.zza());

    public /* synthetic */ zzcpl(zzcqu zzcquVar, zzetx zzetxVar, zzcql zzcqlVar) {
        zzcrv zzcrvVar;
        zzgln zzglnVar;
        zzgln zzglnVar2;
        zzcpa zzcpaVar;
        zzgln zzglnVar3;
        zzcrv zzcrvVar2;
        zzgln zzglnVar4;
        zzgln zzglnVar5;
        zzgln zzglnVar6;
        zzcrp zzcrpVar;
        zzgln zzglnVar7;
        zzcrr zzcrrVar;
        zzcrt zzcrtVar;
        zzgln zzglnVar8;
        zzgln zzglnVar9;
        zzgln zzglnVar10;
        zzcrx zzcrxVar;
        zzgln zzglnVar11;
        zzgln zzglnVar12;
        zzgln zzglnVar13;
        this.zzb = zzcquVar;
        this.zza = zzetxVar;
        zzetz zzetzVar = new zzetz(zzetxVar);
        this.zzd = zzetzVar;
        zzcrvVar = zzcru.zza;
        zzglnVar = zzcquVar.zzh;
        zzglnVar2 = zzcquVar.zzn;
        this.zze = new zzesp(zzcrvVar, zzglnVar, zzglnVar2, zzfdo.zza(), zzetzVar);
        zzety zzetyVar = new zzety(zzetxVar);
        this.zzf = zzetyVar;
        zzcpaVar = zzcoz.zza;
        zzglnVar3 = zzcquVar.zzh;
        this.zzg = new zzesy(zzcpaVar, zzglnVar3, zzetyVar, zzfdo.zza());
        zzcrvVar2 = zzcru.zza;
        zzglnVar4 = zzcquVar.zzh;
        zzglnVar5 = zzcquVar.zzY;
        zzglnVar6 = zzcquVar.zzn;
        this.zzh = new zzete(zzcrvVar2, zzetzVar, zzglnVar4, zzglnVar5, zzglnVar6, zzfdo.zza(), zzetyVar);
        zzcrpVar = zzcro.zza;
        zzfdo zza = zzfdo.zza();
        zzglnVar7 = zzcquVar.zzh;
        this.zzi = new zzeti(zzcrpVar, zza, zzglnVar7);
        zzcrrVar = zzcrq.zza;
        this.zzj = new zzetp(zzcrrVar, zzfdo.zza(), zzetyVar);
        zzcrtVar = zzcrs.zza;
        zzglnVar8 = zzcquVar.zzn;
        zzglnVar9 = zzcquVar.zzh;
        this.zzk = new zzetw(zzcrtVar, zzglnVar8, zzglnVar9);
        zzeua zzeuaVar = new zzeua(zzetxVar);
        this.zzm = zzeuaVar;
        zzglnVar10 = zzcquVar.zzY;
        zzcrxVar = zzcrw.zza;
        zzfdo zza2 = zzfdo.zza();
        zzglnVar11 = zzcquVar.zzn;
        this.zzn = new zzeuk(zzglnVar10, zzeuaVar, zzcrxVar, zza2, zzetyVar, zzglnVar11);
        zzeub zzeubVar = new zzeub(zzetxVar);
        this.zzo = zzeubVar;
        zzgln<zzduq> zza3 = zzgkz.zza(zzduj.zza());
        this.zzp = zza3;
        zzgln<zzduq> zza4 = zzgkz.zza(zzduh.zza());
        this.zzq = zza4;
        zzgln<zzduq> zza5 = zzgkz.zza(zzdul.zza());
        this.zzr = zza5;
        zzgln<zzduq> zza6 = zzgkz.zza(zzdun.zza());
        this.zzs = zza6;
        zzgld zzc = zzgle.zzc(4);
        zzc.zzb(zzfem.GMS_SIGNALS, zza3);
        zzc.zzb(zzfem.BUILD_URL, zza4);
        zzc.zzb(zzfem.HTTP, zza5);
        zzc.zzb(zzfem.PRE_PROCESS, zza6);
        zzgle zzc2 = zzc.zzc();
        this.zzt = zzc2;
        zzglnVar12 = zzcquVar.zzh;
        zzgln<Set<zzdih<zzfet>>> zza7 = zzgkz.zza(new zzduo(zzeubVar, zzglnVar12, zzfdo.zza(), zzc2));
        this.zzu = zza7;
        zzglk zza8 = zzgll.zza(0, 1);
        zza8.zzb(zza7);
        zzgll zzc3 = zza8.zzc();
        this.zzv = zzc3;
        zzfev zzfevVar = new zzfev(zzc3);
        this.zzw = zzfevVar;
        zzfdo zza9 = zzfdo.zza();
        zzglnVar13 = zzcquVar.zzn;
        this.zzx = zzgkz.zza(new zzfeu(zza9, zzglnVar13, zzfevVar));
    }

    private final zzetr zzd() {
        zzbiw zzbiwVar = new zzbiw();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        List<String> zzd = this.zza.zzd();
        zzgli.zzb(zzd);
        return new zzetr(zzbiwVar, zzfsnVar, zzd, null);
    }

    private final zzest zze() {
        zzcfw zzcfwVar = new zzcfw();
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        String zzb = this.zza.zzb();
        zzgli.zzb(zzb);
        return new zzest(zzcfwVar, zzfsnVar, zzb, this.zza.zzc(), this.zza.zzf(), null);
    }

    @Override // com.google.android.gms.internal.ads.zzesq
    public final zzesb<JSONObject> zza() {
        zzgln zzglnVar;
        zzgln zzglnVar2;
        zzcom zzcomVar;
        zzgln zzglnVar3;
        zzcom zzcomVar2;
        zzgln zzglnVar4;
        zzgln zzglnVar5;
        zzgln zzglnVar6;
        zzcom zzcomVar3;
        zzcom zzcomVar4;
        zzcom zzcomVar5;
        zzgln zzglnVar7;
        zzgln zzglnVar8;
        zzgln zzglnVar9;
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        zzcft zzcftVar = new zzcft();
        zzgli.zzb(zzfsnVar);
        String zza = this.zza.zza();
        zzgli.zzb(zza);
        zzetn zzetnVar = new zzetn(zzcftVar, zzfsnVar, zza, null);
        zzglnVar = this.zzb.zzn;
        zzeqi zzeqiVar = new zzeqi(zzetnVar, 0L, (ScheduledExecutorService) zzglnVar.zzb());
        zzbzu zzbzuVar = new zzbzu();
        zzglnVar2 = this.zzb.zzn;
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) zzglnVar2.zzb();
        zzcomVar = this.zzb.zza;
        Context zza2 = zzcomVar.zza();
        zzgli.zzb(zza2);
        zzetu zzetuVar = new zzetu(zzbzuVar, scheduledExecutorService, zza2, null);
        zzglnVar3 = this.zzb.zzn;
        zzeqi zzeqiVar2 = new zzeqi(zzetuVar, ((Long) zzbet.zzc().zzc(zzbjl.zzcy)).longValue(), (ScheduledExecutorService) zzglnVar3.zzb());
        zzcfw zzcfwVar = new zzcfw();
        zzcomVar2 = this.zzb.zza;
        Context zza3 = zzcomVar2.zza();
        zzgli.zzb(zza3);
        zzglnVar4 = this.zzb.zzn;
        zzgli.zzb(zzfsnVar);
        zzesn zzesnVar = new zzesn(zzcfwVar, zza3, (ScheduledExecutorService) zzglnVar4.zzb(), zzfsnVar, this.zza.zzf(), null);
        zzglnVar5 = this.zzb.zzn;
        zzeqi zzeqiVar3 = new zzeqi(zzesnVar, 0L, (ScheduledExecutorService) zzglnVar5.zzb());
        zzgli.zzb(zzfsnVar);
        zzeum zzeumVar = new zzeum(zzfsnVar);
        zzglnVar6 = this.zzb.zzn;
        zzeqi zzeqiVar4 = new zzeqi(zzeumVar, 0L, (ScheduledExecutorService) zzglnVar6.zzb());
        zzery<? extends zzerx<JSONObject>> zza4 = zzeue.zza();
        zzcomVar3 = this.zzb.zza;
        Context zza5 = zzcomVar3.zza();
        zzgli.zzb(zza5);
        String zza6 = this.zza.zza();
        zzgli.zzb(zza6);
        zzgli.zzb(zzfsnVar);
        zzesw zzeswVar = new zzesw(null, zza5, zza6, zzfsnVar);
        zzayq zzayqVar = new zzayq();
        zzgli.zzb(zzfsnVar);
        zzcomVar4 = this.zzb.zza;
        Context zza7 = zzcomVar4.zza();
        zzgli.zzb(zza7);
        zzetg zzetgVar = new zzetg(zzayqVar, zzfsnVar, zza7, null);
        zzetr zzd = zzd();
        zzest zze = zze();
        zzcfw zzcfwVar2 = new zzcfw();
        int zzf = this.zza.zzf();
        zzcomVar5 = this.zzb.zza;
        Context zza8 = zzcomVar5.zza();
        zzgli.zzb(zza8);
        zzglnVar7 = this.zzb.zzY;
        zzcge zzcgeVar = (zzcge) zzglnVar7.zzb();
        zzglnVar8 = this.zzb.zzn;
        ScheduledExecutorService scheduledExecutorService2 = (ScheduledExecutorService) zzglnVar8.zzb();
        zzgli.zzb(zzfsnVar);
        String zza9 = this.zza.zza();
        zzgli.zzb(zza9);
        zzglnVar9 = this.zzb.zzaw;
        return new zzesb<>(zzfsnVar, zzfot.zzi(zzeqiVar, zzeqiVar2, zzeqiVar3, zzeqiVar4, zza4, zzeswVar, zzetgVar, zzd, zze, new zzetc(zzcfwVar2, zzf, zza8, zzcgeVar, scheduledExecutorService2, zzfsnVar, zza9, null), (zzery) zzglnVar9.zzb()));
    }

    @Override // com.google.android.gms.internal.ads.zzesq
    public final zzesb<JSONObject> zzb() {
        zzgln zzglnVar;
        zzgln zzglnVar2;
        zzcft zzcftVar = new zzcft();
        zzcfu zzcfuVar = new zzcfu();
        zzglnVar = this.zzb.zzaw;
        Object zzb = zzglnVar.zzb();
        zzest zze = zze();
        zzetr zzd = zzd();
        zzgku zzc = zzgkz.zzc(this.zze);
        zzgku zzc2 = zzgkz.zzc(this.zzg);
        zzgku zzc3 = zzgkz.zzc(this.zzh);
        zzgku zzc4 = zzgkz.zzc(this.zzi);
        zzgku zzc5 = zzgkz.zzc(this.zzj);
        zzgku zzc6 = zzgkz.zzc(this.zzk);
        zzgku zzc7 = zzgkz.zzc(this.zzl);
        zzgku zzc8 = zzgkz.zzc(this.zzn);
        zzfsn zzfsnVar = zzchg.zza;
        zzgli.zzb(zzfsnVar);
        zzglnVar2 = this.zzb.zzn;
        return zzeuf.zza(zzcftVar, zzcfuVar, zzb, zze, zzd, zzc, zzc2, zzc3, zzc4, zzc5, zzc6, zzc7, zzc8, zzfsnVar, (ScheduledExecutorService) zzglnVar2.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzesq
    public final zzfes zzc() {
        return this.zzx.zzb();
    }
}
