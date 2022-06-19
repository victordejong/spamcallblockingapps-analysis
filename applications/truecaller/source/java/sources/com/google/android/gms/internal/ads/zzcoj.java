package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.ads.nonagon.signalgeneration.zzb;
import com.google.android.gms.ads.nonagon.signalgeneration.zzf;
import com.google.android.gms.ads.nonagon.signalgeneration.zzv;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcoj.class */
public abstract class zzcoj implements zzcrz {
    private static zzcoj zza;

    public static zzcoj zza(Context context, zzbvg zzbvgVar, int i) {
        zzcoj zzb = zzb(context, i);
        zzb.zzi().zza(zzbvgVar);
        return zzb;
    }

    @Deprecated
    public static zzcoj zzb(Context context, int i) {
        synchronized (zzcoj.class) {
            try {
                zzcoj zzcojVar = zza;
                return zzcojVar != null ? zzcojVar : zzc(new zzcgz(213806000, i, true, false), context, new zzcpi());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Deprecated
    public static zzcoj zzc(zzcgz zzcgzVar, Context context, zzcqv zzcqvVar) {
        zzcoj zzcojVar;
        synchronized (zzcoj.class) {
            try {
                if (zza == null) {
                    zzcpz zzcpzVar = new zzcpz(null);
                    zzcok zzcokVar = new zzcok();
                    zzcokVar.zzd(zzcgzVar);
                    zzcokVar.zze(context);
                    zzcpzVar.zza(new zzcom(zzcokVar, null));
                    zzcpzVar.zzb(new zzcqw(zzcqvVar));
                    zza = zzcpzVar.zzc();
                    zzbjl.zza(context);
                    zzt.zzg().zzi(context, zzcgzVar);
                    zzt.zzi().zzd(context);
                    zzt.zzc().zzg(context);
                    zzt.zzc().zzh(context);
                    zzt.zzc().zzr(context);
                    zzd.zza(context);
                    zzt.zzf().zza(context);
                    zzt.zzx().zza(context);
                    zzcfb.zzd(context);
                    if (((Boolean) zzbet.zzc().zzc(zzbjl.zzex)).booleanValue()) {
                        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzap)).booleanValue()) {
                            zzazb zzazbVar = new zzazb(new zzazf(context));
                            zzecq zzecqVar = new zzecq(new zzecm(context), zza.zzg());
                            zzt.zzc();
                            new zzedi(context, zzcgzVar, zzazbVar, zzecqVar, UUID.randomUUID().toString(), zza.zzd()).zza(zzt.zzg().zzp().zzC());
                        }
                    }
                }
                zzcojVar = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzcojVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcrz
    public final zzesq zzA(zzcbj zzcbjVar, int i) {
        return zzB(new zzetx(zzcbjVar, i));
    }

    public abstract zzesq zzB(zzetx zzetxVar);

    public abstract zzdwq zzC();

    public abstract zzffc zzd();

    public abstract Executor zze();

    public abstract ScheduledExecutorService zzf();

    public abstract zzfsn zzg();

    public abstract zzddr zzh();

    public abstract zzdtf zzi();

    public abstract zzcrf zzj();

    public abstract zzcwd zzk();

    public abstract zzewl zzl();

    public abstract zzcuj zzm();

    public abstract zzcuu zzn();

    public abstract zzeux zzo();

    public abstract zzdke zzp();

    public abstract zzeye zzq();

    public abstract zzdla zzr();

    public abstract zzdsa zzs();

    public abstract zzezs zzt();

    public abstract zzf zzu();

    public abstract zzv zzv();

    public abstract zzb zzw();

    public abstract zzedy zzx();

    public abstract zzfbj<zzdrh> zzy();

    public abstract zzdyc zzz();
}
