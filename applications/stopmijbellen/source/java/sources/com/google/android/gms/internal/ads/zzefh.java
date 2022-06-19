package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.IOUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefh.class */
public final class zzefh extends zzcdh {
    private final Context zza;
    private final Executor zzb;
    private final zzceb zzc;
    private final zzcvo zzd;
    @GuardedBy("this")
    private final ArrayDeque<zzefe> zze;
    private final zzcec zzf;
    private final zzefm zzg;

    /* JADX WARN: Multi-variable type inference failed */
    public zzefh(Context context, Context context2, Executor executor, zzcec zzcecVar, zzcvo zzcvoVar, zzceb zzcebVar, ArrayDeque<zzefe> arrayDeque, zzefm zzefmVar) {
        zzblj.zzc(context);
        this.zza = context;
        this.zzb = context2;
        this.zzf = executor;
        this.zzc = zzcvoVar;
        this.zzd = zzcecVar;
        this.zze = zzcebVar;
        this.zzg = arrayDeque;
    }

    private final zzefe zzl(String str) {
        zzefe next;
        synchronized (this) {
            Iterator<zzefe> it2 = this.zze.iterator();
            do {
                if (!it2.hasNext()) {
                    return null;
                }
                next = it2.next();
            } while (!next.zzd.equals(str));
            it2.remove();
            return next;
        }
    }

    private final zzefe zzm(String str) {
        zzefe next;
        synchronized (this) {
            Iterator<zzefe> it2 = this.zze.iterator();
            do {
                if (!it2.hasNext()) {
                    return null;
                }
                next = it2.next();
            } while (!next.zzc.equals(str));
            it2.remove();
            return next;
        }
    }

    private static zzfxa<zzcdt> zzn(zzfxa<JSONObject> zzfxaVar, zzfie zzfieVar, zzbwh zzbwhVar) {
        return zzfieVar.zzb(zzfhy.BUILD_URL, zzfxaVar).zzf(zzbwhVar.zza("AFMA_getAdDictionary", zzbwe.zza, zzees.zza)).zza();
    }

    private static zzfxa<JSONObject> zzo(zzcdq zzcdqVar, zzfie zzfieVar, final zzewf zzewfVar) {
        zzfvx zzfvxVar = new zzfvx() { // from class: com.google.android.gms.internal.ads.zzeew
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzewf.this.zzb().zza(zzt.zzp().zze((Bundle) obj));
            }
        };
        return zzfieVar.zzb(zzfhy.GMS_SIGNALS, zzfwq.zzi(zzcdqVar.zza)).zzf(zzfvxVar).zze(zzeet.zza).zza();
    }

    private final void zzp(zzefe zzefeVar) {
        synchronized (this) {
            zzq();
            this.zze.addLast(zzefeVar);
        }
    }

    private final void zzq() {
        synchronized (this) {
            int intValue = zzbnc.zzc.zze().intValue();
            while (this.zze.size() >= intValue) {
                this.zze.removeFirst();
            }
        }
    }

    private final void zzr(zzfxa<InputStream> zzfxaVar, zzcdm zzcdmVar) {
        zzfwq.zzr(zzfwq.zzn(zzfxaVar, new zzfvx() { // from class: com.google.android.gms.internal.ads.zzeeu
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                final InputStream inputStream = (InputStream) obj;
                ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
                ParcelFileDescriptor parcelFileDescriptor = createPipe[0];
                final ParcelFileDescriptor parcelFileDescriptor2 = createPipe[1];
                zzcjm.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfex
                    @Override // java.lang.Runnable
                    public final void run() {
                        InputStream inputStream2 = inputStream;
                        try {
                            ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptor2);
                            try {
                                IOUtils.copyStream(inputStream2, autoCloseOutputStream);
                                autoCloseOutputStream.close();
                                if (inputStream2 == null) {
                                    return;
                                }
                                inputStream2.close();
                            } catch (Throwable th) {
                                try {
                                    autoCloseOutputStream.close();
                                } catch (Throwable th2) {
                                }
                                throw th;
                            }
                        } catch (IOException e) {
                        }
                    }
                });
                return zzfwq.zzi(parcelFileDescriptor);
            }
        }, zzcjm.zza), new zzefd(this, zzcdmVar), zzcjm.zzf);
    }

    public final zzfxa<InputStream> zzb(final zzcdq zzcdqVar, int i) {
        if (!zzbnc.zza.zze().booleanValue()) {
            return zzfwq.zzh(new Exception("Split request is disabled."));
        }
        zzffu zzffuVar = zzcdqVar.zzi;
        if (zzffuVar == null) {
            return zzfwq.zzh(new Exception("Pool configuration missing from request."));
        }
        if (zzffuVar.zzc == 0 || zzffuVar.zzd == 0) {
            return zzfwq.zzh(new Exception("Caching is disabled."));
        }
        zzbwh zzb = zzt.zzf().zzb(this.zza, zzcjf.zza());
        zzewf zzs = this.zzd.zzs(zzcdqVar, i);
        zzfie zzc = zzs.zzc();
        final zzfxa<JSONObject> zzo = zzo(zzcdqVar, zzc, zzs);
        final zzfxa<zzcdt> zzn = zzn(zzo, zzc, zzb);
        return zzc.zza(zzfhy.GET_URL_AND_CACHE_KEY, zzo, zzn).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzeey
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzefh.this.zzj(zzn, zzo, zzcdqVar);
            }
        }).zza();
    }

    public final zzfxa<InputStream> zzc(zzcdq zzcdqVar, int i) {
        zzefe zzefeVar;
        zzefe zzefeVar2;
        zzbwh zzb = zzt.zzf().zzb(this.zza, zzcjf.zza());
        zzewf zzs = this.zzd.zzs(zzcdqVar, i);
        zzbvx zza = zzb.zza("google.afma.response.normalize", zzefg.zza, zzbwe.zzb);
        zzefo zzefoVar = new zzefo(zzcdqVar.zzg);
        zzefl zzeflVar = new zzefl(this.zza, zzcdqVar.zzb.zza, this.zzf, i, null);
        zzfie zzc = zzs.zzc();
        if (!zzbnc.zza.zze().booleanValue()) {
            String str = zzcdqVar.zzj;
            zzefeVar = null;
            if (str != null) {
                zzefeVar = null;
                if (!str.isEmpty()) {
                    zze.zza("Request contained a PoolKey but split request is disabled.");
                    zzefeVar = null;
                }
            }
        } else {
            if (zzbnc.zzd.zze().booleanValue()) {
                zzefeVar2 = zzm(zzcdqVar.zzh);
            } else {
                zzefeVar2 = null;
                if (!TextUtils.isEmpty(zzcdqVar.zzj)) {
                    zzefeVar2 = zzl(zzcdqVar.zzj);
                }
            }
            zzefeVar = zzefeVar2;
            if (zzefeVar2 == null) {
                zze.zza("Request contained a PoolKey but no matching parameters were found.");
                zzefeVar = zzefeVar2;
            }
        }
        if (zzefeVar != null) {
            final zzfhj zza2 = zzc.zzb(zzfhy.HTTP, zzfwq.zzi(new zzefn(zzefeVar.zzb, zzefeVar.zza))).zze(zzefoVar).zze(zzeflVar).zza();
            final zzfxa<?> zzi = zzfwq.zzi(zzefeVar);
            return zzc.zza(zzfhy.PRE_PROCESS, zza2, zzi).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzefa
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzfxa zzfxaVar = zzfxa.this;
                    zzfxa zzfxaVar2 = zzi;
                    return new zzefg((zzefk) zzfxaVar.get(), ((zzefe) zzfxaVar2.get()).zzb, ((zzefe) zzfxaVar2.get()).zza);
                }
            }).zzf(zza).zza();
        }
        final zzfxa<JSONObject> zzo = zzo(zzcdqVar, zzc, zzs);
        final zzfxa<zzcdt> zzn = zzn(zzo, zzc, zzb);
        final zzfhj zza3 = zzc.zza(zzfhy.HTTP, zzn, zzo).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzeez
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzefn((JSONObject) zzfxa.this.get(), (zzcdt) zzn.get());
            }
        }).zze(zzefoVar).zze(zzeflVar).zza();
        return zzc.zza(zzfhy.PRE_PROCESS, zzo, zzn, zza3).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzefb
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzefg((zzefk) zzfxa.this.get(), (JSONObject) zzo.get(), (zzcdt) zzn.get());
            }
        }).zzf(zza).zza();
    }

    public final zzfxa<InputStream> zzd(zzcdq zzcdqVar, int i) {
        zzbwh zzb = zzt.zzf().zzb(this.zza, zzcjf.zza());
        if (!zzbnh.zza.zze().booleanValue()) {
            return zzfwq.zzh(new Exception("Signal collection disabled."));
        }
        zzewf zzs = this.zzd.zzs(zzcdqVar, i);
        final zzevq<JSONObject> zza = zzs.zza();
        return zzs.zzc().zzb(zzfhy.GET_SIGNALS, zzfwq.zzi(zzcdqVar.zza)).zzf(new zzfvx() { // from class: com.google.android.gms.internal.ads.zzeev
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzevq.this.zza(zzt.zzp().zze((Bundle) obj));
            }
        }).zzb(zzfhy.JS_SIGNALS).zzf(zzb.zza("google.afma.request.getSignals", zzbwe.zza, zzbwe.zzb)).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zze(zzcdq zzcdqVar, zzcdm zzcdmVar) {
        zzr(zzb(zzcdqVar, Binder.getCallingUid()), zzcdmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzf(zzcdq zzcdqVar, zzcdm zzcdmVar) {
        zzr(zzd(zzcdqVar, Binder.getCallingUid()), zzcdmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzg(zzcdq zzcdqVar, zzcdm zzcdmVar) {
        zzfxa<InputStream> zzc = zzc(zzcdqVar, Binder.getCallingUid());
        zzr(zzc, zzcdmVar);
        zzc.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeex
            @Override // java.lang.Runnable
            public final void run() {
                zzefh.this.zzk();
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzcdi
    public final void zzh(String str, zzcdm zzcdmVar) {
        zzr(zzi(str), zzcdmVar);
    }

    public final zzfxa<InputStream> zzi(String str) {
        if (!zzbnc.zza.zze().booleanValue()) {
            return zzfwq.zzh(new Exception("Split request is disabled."));
        }
        zzefc zzefcVar = new zzefc(this);
        if ((zzbnc.zzd.zze().booleanValue() ? zzm(str) : zzl(str)) != null) {
            return zzfwq.zzi(zzefcVar);
        }
        String valueOf = String.valueOf(str);
        return zzfwq.zzh(new Exception(valueOf.length() != 0 ? "URL to be removed not found for cache key: ".concat(valueOf) : new String("URL to be removed not found for cache key: ")));
    }

    public final /* synthetic */ InputStream zzj(zzfxa zzfxaVar, zzfxa zzfxaVar2, zzcdq zzcdqVar) throws Exception {
        String zzc = ((zzcdt) zzfxaVar.get()).zzc();
        zzp(new zzefe((zzcdt) zzfxaVar.get(), (JSONObject) zzfxaVar2.get(), zzcdqVar.zzh, zzc));
        return new ByteArrayInputStream(zzc.getBytes(zzfpt.zzc));
    }

    public final /* synthetic */ void zzk() {
        zzcjp.zza(this.zzc.zza(), "persistFlags");
    }
}
