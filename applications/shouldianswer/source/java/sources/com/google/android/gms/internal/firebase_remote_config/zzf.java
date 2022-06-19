package com.google.android.gms.internal.firebase_remote_config;

import com.google.firebase.perf.FirebasePerformance;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzf.class */
public class zzf<T> extends zzby {
    private final zzd zzo;
    private final String zzp;
    private final String zzq;
    private final zzs zzr;
    private zzw zzt;
    private String zzv;
    private Class<T> zzw;
    private zzw zzs = new zzw();
    private int zzu = -1;

    public zzf(zzd zzdVar, String str, String str2, zzs zzsVar, Class<T> cls) {
        zzg zzj;
        this.zzw = (Class) zzdt.checkNotNull(cls);
        this.zzo = (zzd) zzdt.checkNotNull(zzdVar);
        this.zzp = (String) zzdt.checkNotNull(str);
        this.zzq = (String) zzdt.checkNotNull(str2);
        this.zzr = zzsVar;
        this.zzs.zzu("Google-API-Java-Client");
        zzw zzwVar = this.zzs;
        zzj = zzg.zzj();
        zzwVar.zzb("X-Goog-Api-Client", zzj.zzf(zzdVar.getClass().getSimpleName()));
    }

    public IOException zza(zzac zzacVar) {
        return new zzaf(zzacVar);
    }

    /* renamed from: zzc */
    public zzf<T> zzb(String str, Object obj) {
        return (zzf) super.zzb(str, obj);
    }

    public zzd zzf() {
        return this.zzo;
    }

    public final zzw zzg() {
        return this.zzs;
    }

    public final zzw zzh() {
        return this.zzt;
    }

    public final T zzi() {
        zzab zza = zzf().zzd().zza(this.zzp, new zzt(zzal.zza(this.zzo.zzc(), this.zzq, (Object) this, true)), this.zzr);
        new zza().zzb(zza);
        zza.zza(zzf().zze());
        if (this.zzr == null && (this.zzp.equals(FirebasePerformance.HttpMethod.POST) || this.zzp.equals(FirebasePerformance.HttpMethod.PUT) || this.zzp.equals(FirebasePerformance.HttpMethod.PATCH))) {
            zza.zza(new zzo());
        }
        zza.zzx().putAll(this.zzs);
        zza.zza(new zzr());
        zza.zza(new zzh(this, zza.zzz(), zza));
        zzac zzac = zza.zzac();
        this.zzt = zzac.zzx();
        this.zzu = zzac.getStatusCode();
        this.zzv = zzac.getStatusMessage();
        return (T) zzac.zza(this.zzw);
    }
}
