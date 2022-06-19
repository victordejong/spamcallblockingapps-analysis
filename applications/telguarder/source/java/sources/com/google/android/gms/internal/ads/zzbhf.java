package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhf.class */
final class zzbhf extends zzdga {
    private zzeqo<String> zzezj;
    private zzeqo<zzcjz> zzezl;
    private zzeqo<Map<zzdrk, zzcjz>> zzezn;
    private zzeqo<Set<zzbya<zzdrp>>> zzezp;
    private zzeqo<Set<zzbya<zzdrp>>> zzfad;
    private zzeqo zzfae;
    private zzeqo<zzdrj> zzfaf;
    private final /* synthetic */ zzbgz zzffq;
    private final zzdhj zzfju;
    private zzeqo<Integer> zzfjv;
    private zzeqo<zzdfw> zzfjw;
    private zzeqo<String> zzfjx;
    private zzeqo<zzdgg> zzfjy;
    private zzeqo<zzdgk> zzfjz;
    private zzeqo<zzdgq> zzfka;
    private zzeqo<zzdgz> zzfkb;
    private zzeqo<zzdhe> zzfkc;
    private zzeqo<zzdhq> zzfkd;
    private zzeqo<zzcjz> zzfke;
    private zzeqo<zzcjz> zzfkf;
    private zzeqo<zzcjz> zzfkg;

    /* JADX INFO: Access modifiers changed from: private */
    public zzbhf(zzbgz zzbgzVar, zzdhj zzdhjVar) {
        zzbjc zzbjcVar;
        zzeqo zzeqoVar;
        zzeqo zzeqoVar2;
        zzbgr zzbgrVar;
        zzeqo zzeqoVar3;
        zzbjc zzbjcVar2;
        zzeqo zzeqoVar4;
        zzeqo zzeqoVar5;
        zzeqo zzeqoVar6;
        zzbiw zzbiwVar;
        zzeqo zzeqoVar7;
        zzbiy zzbiyVar;
        zzbja zzbjaVar;
        zzeqo zzeqoVar8;
        zzeqo zzeqoVar9;
        zzeqo zzeqoVar10;
        zzeqo zzeqoVar11;
        this.zzffq = zzbgzVar;
        this.zzfju = zzdhjVar;
        this.zzfjv = new zzdhl(zzdhjVar);
        zzbjcVar = zzbjb.zzfqx;
        zzeqoVar = zzbgzVar.zzewr;
        zzeqoVar2 = zzbgzVar.zzewx;
        this.zzfjw = new zzdgb(zzbjcVar, zzeqoVar, zzeqoVar2, zzdqj.zzaww(), this.zzfjv);
        this.zzfjx = new zzdhi(zzdhjVar);
        zzbgrVar = zzbgq.zzewi;
        zzeqoVar3 = zzbgzVar.zzewr;
        this.zzfjy = new zzdgi(zzbgrVar, zzeqoVar3, this.zzfjx, zzdqj.zzaww());
        zzbjcVar2 = zzbjb.zzfqx;
        zzeqo<Integer> zzeqoVar12 = this.zzfjv;
        zzeqoVar4 = zzbgzVar.zzewr;
        zzeqoVar5 = zzbgzVar.zzeyb;
        zzeqoVar6 = zzbgzVar.zzewx;
        this.zzfjz = new zzdgo(zzbjcVar2, zzeqoVar12, zzeqoVar4, zzeqoVar5, zzeqoVar6, zzdqj.zzaww());
        zzbiwVar = zzbiv.zzfqu;
        zzdqj zzaww = zzdqj.zzaww();
        zzeqoVar7 = zzbgzVar.zzewr;
        this.zzfka = new zzdgs(zzbiwVar, zzaww, zzeqoVar7);
        zzbiyVar = zzbix.zzfqv;
        this.zzfkb = new zzdhb(zzbiyVar, zzdqj.zzaww(), this.zzfjx);
        zzbjaVar = zzbiz.zzfqw;
        zzeqoVar8 = zzbgzVar.zzewx;
        zzeqoVar9 = zzbgzVar.zzewr;
        this.zzfkc = new zzdhg(zzbjaVar, zzeqoVar8, zzeqoVar9);
        this.zzfkd = new zzdhs(zzdqj.zzaww());
        this.zzezj = new zzdhk(zzdhjVar);
        this.zzezl = zzeqc.zzau(zzcjs.zzaqj());
        this.zzfke = zzeqc.zzau(zzcjq.zzaqh());
        this.zzfkf = zzeqc.zzau(zzcju.zzaql());
        this.zzfkg = zzeqc.zzau(zzcjw.zzaqn());
        this.zzezn = ((zzeqf) ((zzeqf) ((zzeqf) ((zzeqf) zzeqd.zzih(4).zza(zzdrk.GMS_SIGNALS, this.zzezl)).zza(zzdrk.BUILD_URL, this.zzfke)).zza(zzdrk.HTTP, this.zzfkf)).zza(zzdrk.PRE_PROCESS, this.zzfkg)).zzbmn();
        zzeqo<String> zzeqoVar13 = this.zzezj;
        zzeqoVar10 = zzbgzVar.zzewr;
        this.zzezp = zzeqc.zzau(new zzcjy(zzeqoVar13, zzeqoVar10, zzdqj.zzaww(), this.zzezn));
        zzeqk zzbmo = zzeqk.zzas(0, 1).zzax(this.zzezp).zzbmo();
        this.zzfad = zzbmo;
        this.zzfae = zzdrr.zzat(zzbmo);
        zzdqj zzaww2 = zzdqj.zzaww();
        zzeqoVar11 = zzbgzVar.zzewx;
        this.zzfaf = zzeqc.zzau(zzdrs.zzae(zzaww2, zzeqoVar11, this.zzfae));
    }

    private final zzdhd zzagy() {
        return new zzdhd((zzaay) zzeqh.zza(new zzaay(), "Cannot return null from a non-@Nullable @Provides method"), zzdqj.zzawx(), (List) zzeqh.zza(this.zzfju.zzaty(), "Cannot return null from a non-@Nullable @Provides method"));
    }

    private final zzdgc zzagz() {
        return new zzdgc(zzbjc.zzaiw(), zzdqj.zzawx(), (String) zzeqh.zza(this.zzfju.zzatw(), "Cannot return null from a non-@Nullable @Provides method"), this.zzfju.zzatx(), this.zzfju.zzaua());
    }

    @Override // com.google.android.gms.internal.ads.zzdga
    public final zzdfl<JSONObject> zzaha() {
        zzeqo zzeqoVar;
        zzeqo zzeqoVar2;
        zzbgb zzbgbVar;
        zzeqo zzeqoVar3;
        zzbgb zzbgbVar2;
        zzeqo zzeqoVar4;
        zzeqo zzeqoVar5;
        zzeqo zzeqoVar6;
        zzbgb zzbgbVar3;
        zzbgb zzbgbVar4;
        zzbgb zzbgbVar5;
        zzeqo zzeqoVar7;
        zzeqo zzeqoVar8;
        zzeqo zzeqoVar9;
        zzdzv zzawx = zzdqj.zzawx();
        zzdgz zzdgzVar = new zzdgz(zzbiy.zzais(), zzdqj.zzawx(), zzdhi.zzb(this.zzfju));
        zzeqoVar = this.zzffq.zzewx;
        zzdfi zzdfiVar = (zzdfi) zzeqh.zza(new zzddy(zzdgzVar, 0L, (ScheduledExecutorService) zzeqoVar.get()), "Cannot return null from a non-@Nullable @Provides method");
        zzarv zzaiu = zzbja.zzaiu();
        zzeqoVar2 = this.zzffq.zzewx;
        zzbgbVar = this.zzffq.zzewm;
        zzdhe zzdheVar = new zzdhe(zzaiu, (ScheduledExecutorService) zzeqoVar2.get(), zzbge.zza(zzbgbVar));
        zzeqoVar3 = this.zzffq.zzewx;
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) zzeqoVar3.get();
        zzaba<Long> zzabaVar = zzabp.zzctx;
        zzayk zzaiw = zzbjc.zzaiw();
        zzbgbVar2 = this.zzffq.zzewm;
        Context zza = zzbge.zza(zzbgbVar2);
        zzeqoVar4 = this.zzffq.zzewx;
        zzdfw zzdfwVar = new zzdfw(zzaiw, zza, (ScheduledExecutorService) zzeqoVar4.get(), zzdqj.zzawx(), this.zzfju.zzaua());
        zzeqoVar5 = this.zzffq.zzewx;
        zzdhq zzdhqVar = new zzdhq(zzdqj.zzawx());
        zzeqoVar6 = this.zzffq.zzewx;
        zzbgbVar3 = this.zzffq.zzewm;
        zzdgg zzdggVar = new zzdgg(null, zzbge.zza(zzbgbVar3), zzdhi.zzb(this.zzfju), zzdqj.zzawx());
        zztk zzaiq = zzbiw.zzaiq();
        zzdzv zzawx2 = zzdqj.zzawx();
        zzbgbVar4 = this.zzffq.zzewm;
        zzayk zzaiw2 = zzbjc.zzaiw();
        int zzaua = this.zzfju.zzaua();
        zzbgbVar5 = this.zzffq.zzewm;
        Context zza2 = zzbge.zza(zzbgbVar5);
        zzeqoVar7 = this.zzffq.zzeyb;
        zzeqoVar8 = this.zzffq.zzewx;
        zzeqoVar9 = this.zzffq.zzeyc;
        return zzdfm.zza(zzawx, zzdxg.zza(zzdfiVar, (zzdfi) zzeqh.zza(new zzddy(zzdheVar, ((Long) zzwr.zzqr().zzd(zzabaVar)).longValue(), scheduledExecutorService), "Cannot return null from a non-@Nullable @Provides method"), (zzdfi) zzeqh.zza(new zzddy(zzdfwVar, 0L, (ScheduledExecutorService) zzeqoVar5.get()), "Cannot return null from a non-@Nullable @Provides method"), (zzdfi) zzeqh.zza(new zzddy(zzdhqVar, 0L, (ScheduledExecutorService) zzeqoVar6.get()), "Cannot return null from a non-@Nullable @Provides method"), (zzdfi) zzeqh.zza(zzdhn.zzaub(), "Cannot return null from a non-@Nullable @Provides method"), zzdggVar, new zzdgq(zzaiq, zzawx2, zzbge.zza(zzbgbVar4)), zzagy(), zzagz(), new zzdgk(zzaiw2, zzaua, zza2, (zzayo) zzeqoVar7.get(), (ScheduledExecutorService) zzeqoVar8.get(), zzdqj.zzawx()), (zzdfi) zzeqoVar9.get()));
    }

    @Override // com.google.android.gms.internal.ads.zzdga
    public final zzdfl<JSONObject> zzahb() {
        zzeqo zzeqoVar;
        zzeqo zzeqoVar2;
        zzayj zzais = zzbiy.zzais();
        zzeqoVar = this.zzffq.zzeyc;
        Object obj = zzeqoVar.get();
        zzdgc zzagz = zzagz();
        zzdhd zzagy = zzagy();
        zzepv zzav = zzeqc.zzav(this.zzfjw);
        zzepv zzav2 = zzeqc.zzav(this.zzfjy);
        zzepv zzav3 = zzeqc.zzav(this.zzfjz);
        zzepv zzav4 = zzeqc.zzav(this.zzfka);
        zzepv zzav5 = zzeqc.zzav(this.zzfkb);
        zzepv zzav6 = zzeqc.zzav(this.zzfkc);
        zzepv zzav7 = zzeqc.zzav(this.zzfkd);
        zzdzv zzawx = zzdqj.zzawx();
        zzeqoVar2 = this.zzffq.zzewx;
        return zzdho.zza(zzais, obj, zzagz, zzagy, zzav, zzav2, zzav3, zzav4, zzav5, zzav6, zzav7, zzawx, (ScheduledExecutorService) zzeqoVar2.get());
    }

    @Override // com.google.android.gms.internal.ads.zzdga
    public final zzdrj zzahc() {
        return this.zzfaf.get();
    }
}
