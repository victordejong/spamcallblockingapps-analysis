package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzebq.class */
public final class zzebq extends zzcba {
    private final Context zza;
    private final Executor zzb;
    private final zzcbu zzc;
    private final zzcrz zzd;
    private final ArrayDeque<zzebn> zze;
    private final zzcbv zzf;
    private final zzebv zzg;

    /* JADX WARN: Multi-variable type inference failed */
    public zzebq(Context context, Context context2, Executor executor, zzcbv zzcbvVar, zzcrz zzcrzVar, zzcbu zzcbuVar, ArrayDeque<zzebn> arrayDeque, zzebv zzebvVar) {
        zzbjl.zza(context);
        this.zza = context;
        this.zzb = context2;
        this.zzf = executor;
        this.zzc = zzcrzVar;
        this.zzd = zzcbvVar;
        this.zze = zzcbuVar;
        this.zzg = arrayDeque;
    }

    private static zzfsm<JSONObject> zzl(zzcbj zzcbjVar, zzfes zzfesVar, zzesq zzesqVar) {
        zzfrk zzfrkVar = new zzfrk(zzesqVar) { // from class: com.google.android.gms.internal.ads.zzebe
            private final zzesq zza;

            {
                this.zza = zzesqVar;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zza().zza(zzt.zzc().zzl((Bundle) obj));
            }
        };
        return zzfesVar.zze(zzfem.GMS_SIGNALS, zzfsd.zza(zzcbjVar.zza)).zzc(zzfrkVar).zzb(zzebf.zza).zzi();
    }

    private static zzfsm<zzcbm> zzm(zzfsm<JSONObject> zzfsmVar, zzfes zzfesVar, zzbug zzbugVar) {
        return zzfesVar.zze(zzfem.BUILD_URL, zzfsmVar).zzc(zzbugVar.zza("AFMA_getAdDictionary", zzbud.zza, zzebg.zza)).zzi();
    }

    private final void zzn(zzfsm<InputStream> zzfsmVar, zzcbf zzcbfVar) {
        zzfsd.zzp(zzfsd.zzi(zzfsmVar, new zzfrk(this) { // from class: com.google.android.gms.internal.ads.zzebk
            private final zzebq zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return zzfsd.zza(zzfbl.zza((InputStream) obj));
            }
        }, zzchg.zza), new zzebm(this, zzcbfVar), zzchg.zzf);
    }

    private final void zzo() {
        synchronized (this) {
            int intValue = zzbld.zzc.zze().intValue();
            while (this.zze.size() >= intValue) {
                this.zze.removeFirst();
            }
        }
    }

    private final void zzp(zzebn zzebnVar) {
        synchronized (this) {
            zzo();
            this.zze.addLast(zzebnVar);
        }
    }

    private final zzebn zzq(String str) {
        zzebn next;
        synchronized (this) {
            Iterator<zzebn> it = this.zze.iterator();
            do {
                if (!it.hasNext()) {
                    return null;
                }
                next = it.next();
            } while (!next.zzc.equals(str));
            it.remove();
            return next;
        }
    }

    private final zzebn zzr(String str) {
        zzebn next;
        synchronized (this) {
            Iterator<zzebn> it = this.zze.iterator();
            do {
                if (!it.hasNext()) {
                    return null;
                }
                next = it.next();
            } while (!next.zzd.equals(str));
            it.remove();
            return next;
        }
    }

    public final zzfsm<InputStream> zzb(zzcbj zzcbjVar, int i) {
        zzebn zzebnVar;
        zzebn zzebnVar2;
        zzbug zza = zzt.zzp().zza(this.zza, zzcgz.zza());
        zzesq zzA = this.zzd.zzA(zzcbjVar, i);
        zzbtw zza2 = zza.zza("google.afma.response.normalize", zzebp.zzd, zzbud.zzb);
        zzebx zzebxVar = new zzebx(zzcbjVar.zzg);
        zzebu zzebuVar = new zzebu(this.zza, zzcbjVar.zzb.zza, this.zzf, i, null);
        zzfes zzc = zzA.zzc();
        if (!zzbld.zza.zze().booleanValue()) {
            String str = zzcbjVar.zzj;
            zzebnVar = null;
            if (str != null) {
                zzebnVar = null;
                if (!str.isEmpty()) {
                    zze.zza("Request contained a PoolKey but split request is disabled.");
                    zzebnVar = null;
                }
            }
        } else {
            if (zzbld.zzd.zze().booleanValue()) {
                zzebnVar2 = zzq(zzcbjVar.zzh);
            } else {
                zzebnVar2 = null;
                if (!TextUtils.isEmpty(zzcbjVar.zzj)) {
                    zzebnVar2 = zzr(zzcbjVar.zzj);
                }
            }
            zzebnVar = zzebnVar2;
            if (zzebnVar2 == null) {
                zze.zza("Request contained a PoolKey but no matching parameters were found.");
                zzebnVar = zzebnVar2;
            }
        }
        if (zzebnVar != null) {
            zzfdy zzi = zzc.zze(zzfem.HTTP, zzfsd.zza(new zzebw(zzebnVar.zzb, zzebnVar.zza))).zzb(zzebxVar).zzb(zzebuVar).zzi();
            zzfsm<?> zza3 = zzfsd.zza(zzebnVar);
            return zzc.zzf(zzfem.PRE_PROCESS, zzi, zza3).zza(new Callable(zzi, zza3) { // from class: com.google.android.gms.internal.ads.zzebd
                private final zzfsm zza;
                private final zzfsm zzb;

                {
                    this.zza = zzi;
                    this.zzb = zza3;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzfsm zzfsmVar = this.zza;
                    zzfsm zzfsmVar2 = this.zzb;
                    return new zzebp((zzebt) zzfsmVar.get(), ((zzebn) zzfsmVar2.get()).zzb, ((zzebn) zzfsmVar2.get()).zza);
                }
            }).zzc(zza2).zzi();
        }
        zzfsm<JSONObject> zzl = zzl(zzcbjVar, zzc, zzA);
        zzfsm<zzcbm> zzm = zzm(zzl, zzc, zza);
        zzfdy zzi2 = zzc.zzf(zzfem.HTTP, zzm, zzl).zza(new Callable(zzl, zzm) { // from class: com.google.android.gms.internal.ads.zzebb
            private final zzfsm zza;
            private final zzfsm zzb;

            {
                this.zza = zzl;
                this.zzb = zzm;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzebw((JSONObject) this.zza.get(), (zzcbm) this.zzb.get());
            }
        }).zzb(zzebxVar).zzb(zzebuVar).zzi();
        return zzc.zzf(zzfem.PRE_PROCESS, zzl, zzm, zzi2).zza(new Callable(zzi2, zzl, zzm) { // from class: com.google.android.gms.internal.ads.zzebc
            private final zzfsm zza;
            private final zzfsm zzb;
            private final zzfsm zzc;

            {
                this.zza = zzi2;
                this.zzb = zzl;
                this.zzc = zzm;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzebp((zzebt) this.zza.get(), (JSONObject) this.zzb.get(), (zzcbm) this.zzc.get());
            }
        }).zzc(zza2).zzi();
    }

    public final zzfsm<InputStream> zzc(zzcbj zzcbjVar, int i) {
        if (!zzbld.zza.zze().booleanValue()) {
            return zzfsd.zzc(new Exception("Split request is disabled."));
        }
        zzfcj zzfcjVar = zzcbjVar.zzi;
        if (zzfcjVar == null) {
            return zzfsd.zzc(new Exception("Pool configuration missing from request."));
        }
        if (zzfcjVar.zzc == 0 || zzfcjVar.zzd == 0) {
            return zzfsd.zzc(new Exception("Caching is disabled."));
        }
        zzbug zza = zzt.zzp().zza(this.zza, zzcgz.zza());
        zzesq zzA = this.zzd.zzA(zzcbjVar, i);
        zzfes zzc = zzA.zzc();
        zzfsm<JSONObject> zzl = zzl(zzcbjVar, zzc, zzA);
        zzfsm<zzcbm> zzm = zzm(zzl, zzc, zza);
        return zzc.zzf(zzfem.GET_URL_AND_CACHE_KEY, zzl, zzm).zza(new Callable(this, zzm, zzl, zzcbjVar) { // from class: com.google.android.gms.internal.ads.zzebi
            private final zzebq zza;
            private final zzfsm zzb;
            private final zzfsm zzc;
            private final zzcbj zzd;

            {
                this.zza = this;
                this.zzb = zzm;
                this.zzc = zzl;
                this.zzd = zzcbjVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzj(this.zzb, this.zzc, this.zzd);
            }
        }).zzi();
    }

    public final zzfsm<InputStream> zzd(String str) {
        if (!zzbld.zza.zze().booleanValue()) {
            return zzfsd.zzc(new Exception("Split request is disabled."));
        }
        zzebl zzeblVar = new zzebl(this);
        if ((zzbld.zzd.zze().booleanValue() ? zzq(str) : zzr(str)) != null) {
            return zzfsd.zza(zzeblVar);
        }
        String valueOf = String.valueOf(str);
        return zzfsd.zzc(new Exception(valueOf.length() != 0 ? "URL to be removed not found for cache key: ".concat(valueOf) : new String("URL to be removed not found for cache key: ")));
    }

    @Override // com.google.android.gms.internal.ads.zzcbb
    public final void zze(zzcbj zzcbjVar, zzcbf zzcbfVar) {
        zzfsm<InputStream> zzb = zzb(zzcbjVar, Binder.getCallingUid());
        zzn(zzb, zzcbfVar);
        zzb.zze(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzebh
            private final zzebq zza;

            {
                this.zza = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzk();
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzcbb
    public final void zzf(zzcbj zzcbjVar, zzcbf zzcbfVar) {
        zzn(zzi(zzcbjVar, Binder.getCallingUid()), zzcbfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcbb
    public final void zzg(zzcbj zzcbjVar, zzcbf zzcbfVar) {
        zzn(zzc(zzcbjVar, Binder.getCallingUid()), zzcbfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcbb
    public final void zzh(String str, zzcbf zzcbfVar) {
        zzn(zzd(str), zzcbfVar);
    }

    public final zzfsm<InputStream> zzi(zzcbj zzcbjVar, int i) {
        zzbug zza = zzt.zzp().zza(this.zza, zzcgz.zza());
        if (!zzbli.zza.zze().booleanValue()) {
            return zzfsd.zzc(new Exception("Signal collection disabled."));
        }
        zzesq zzA = this.zzd.zzA(zzcbjVar, i);
        zzesb<JSONObject> zzb = zzA.zzb();
        return zzA.zzc().zze(zzfem.GET_SIGNALS, zzfsd.zza(zzcbjVar.zza)).zzc(new zzfrk(zzb) { // from class: com.google.android.gms.internal.ads.zzebj
            private final zzesb zza;

            {
                this.zza = zzb;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zza(zzt.zzc().zzl((Bundle) obj));
            }
        }).zzj(zzfem.JS_SIGNALS).zzc(zza.zza("google.afma.request.getSignals", zzbud.zza, zzbud.zzb)).zzi();
    }

    public final /* synthetic */ InputStream zzj(zzfsm zzfsmVar, zzfsm zzfsmVar2, zzcbj zzcbjVar) throws Exception {
        String zzi = ((zzcbm) zzfsmVar.get()).zzi();
        zzp(new zzebn((zzcbm) zzfsmVar.get(), (JSONObject) zzfsmVar2.get(), zzcbjVar.zzh, zzi));
        return new ByteArrayInputStream(zzi.getBytes(zzfll.zzc));
    }

    public final /* synthetic */ void zzk() {
        zzchj.zza(this.zzc.zza(), "persistFlags");
    }
}
