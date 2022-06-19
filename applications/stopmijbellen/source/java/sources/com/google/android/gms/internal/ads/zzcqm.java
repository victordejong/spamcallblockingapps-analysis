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
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqm.class */
public abstract class zzcqm implements zzcvo {
    @GuardedBy("AppComponent.class")
    private static zzcqm zza;

    @Deprecated
    public static zzcqm zza(zzcjf zzcjfVar, Context context, zzcuj zzcujVar) {
        zzcqm zzcqmVar;
        synchronized (zzcqm.class) {
            try {
                if (zza == null) {
                    zzcsu zzcsuVar = new zzcsu(null);
                    zzcqn zzcqnVar = new zzcqn();
                    zzcqnVar.zzd(zzcjfVar);
                    zzcqnVar.zzc(context);
                    zzcsuVar.zzb(new zzcqp(zzcqnVar, null));
                    zzcsuVar.zzc(new zzcuk(zzcujVar));
                    zza = zzcsuVar.zza();
                    zzblj.zzc(context);
                    zzt.zzo().zzq(context, zzcjfVar);
                    zzt.zzc().zzi(context);
                    zzt.zzp().zzr(context);
                    zzt.zzp().zzq(context);
                    zzt.zzp().zzl(context);
                    zzd.zza(context);
                    zzt.zzb().zzd(context);
                    zzt.zzv().zzb(context);
                    zzchi.zzd(context);
                    if (((Boolean) zzbgq.zzc().zzb(zzblj.zzeE)).booleanValue()) {
                        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzap)).booleanValue()) {
                            zzbay zzbayVar = new zzbay(new zzbbc(context));
                            zzegh zzeghVar = new zzegh(new zzegd(context), zza.zzB());
                            zzt.zzp();
                            new zzegz(context, zzcjfVar, zzbayVar, zzeghVar, UUID.randomUUID().toString(), zza.zzz()).zzb(zzt.zzo().zzh().zzL());
                        }
                    }
                }
                zzcqmVar = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzcqmVar;
    }

    @Deprecated
    public static zzcqm zzb(Context context, int i) {
        synchronized (zzcqm.class) {
            try {
                zzcqm zzcqmVar = zza;
                return zzcqmVar != null ? zzcqmVar : zza(new zzcjf(214106000, i, true, false), context, new zzcrm());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static zzcqm zzc(Context context, zzbxh zzbxhVar, int i) {
        zzcqm zzb = zzb(context, i);
        zzb.zzl().zzc(zzbxhVar);
        return zzb;
    }

    public abstract zzfjg zzA();

    public abstract zzfxb zzB();

    public abstract Executor zzC();

    public abstract ScheduledExecutorService zzD();

    public abstract zzcuu zzd();

    public abstract zzcxy zze();

    public abstract zzcyj zzf();

    public abstract zzczs zzg();

    public abstract zzdhg zzh();

    public abstract zzdns zzi();

    public abstract zzdoo zzj();

    public abstract zzdvr zzk();

    public abstract zzdww zzl();

    public abstract zzeah zzm();

    public abstract zzebt zzn();

    public abstract zzehp zzo();

    public abstract zzb zzp();

    public abstract zzf zzq();

    public abstract zzv zzr();

    @Override // com.google.android.gms.internal.ads.zzcvo
    public final zzewf zzs(zzcdq zzcdqVar, int i) {
        return zzt(new zzexm(zzcdqVar, i));
    }

    public abstract zzewf zzt(zzexm zzexmVar);

    public abstract zzeyl zzu();

    public abstract zzezz zzv();

    public abstract zzfbs zzw();

    public abstract zzfdg zzx();

    public abstract zzfew<zzduy> zzy();

    public abstract zzfio zzz();
}
