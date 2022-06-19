package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.io.IOException;
import java.util.HashMap;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgq.class */
public abstract class zzgq<T> extends zzgi {
    private final HashMap<T, zzgp<T>> zza = new HashMap<>();
    private Handler zzb;
    private zzay zzc;

    @Override // com.google.android.gms.internal.ads.zzgi
    public final void zzF() {
        for (zzgp<T> zzgpVar : this.zza.values()) {
            zzgpVar.zza.zzp(zzgpVar.zzb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgi
    public void zza(zzay zzayVar) {
        this.zzc = zzayVar;
        this.zzb = zzamq.zzh(null);
    }

    @Override // com.google.android.gms.internal.ads.zzgi
    public final void zzc() {
        for (zzgp<T> zzgpVar : this.zza.values()) {
            zzgpVar.zza.zzq(zzgpVar.zzb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgi
    public void zzd() {
        for (zzgp<T> zzgpVar : this.zza.values()) {
            zzgpVar.zza.zzr(zzgpVar.zzb);
            zzgpVar.zza.zzl(zzgpVar.zzc);
            zzgpVar.zza.zzn(zzgpVar.zzc);
        }
        this.zza.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzhh
    public void zzu() throws IOException {
        for (zzgp<T> zzgpVar : this.zza.values()) {
            zzgpVar.zza.zzu();
        }
    }

    public abstract void zzv(T t, zzhh zzhhVar, zzaiq zzaiqVar);

    public final void zzw(T t, zzhh zzhhVar) {
        zzakt.zza(!this.zza.containsKey(t));
        zzhg zzhgVar = new zzhg(this, t) { // from class: com.google.android.gms.internal.ads.zzgn
            private final zzgq zza;
            private final Object zzb;

            {
                this.zza = this;
                this.zzb = t;
            }

            @Override // com.google.android.gms.internal.ads.zzhg
            public final void zza(zzhh zzhhVar2, zzaiq zzaiqVar) {
                this.zza.zzv(this.zzb, zzhhVar2, zzaiqVar);
            }
        };
        zzgo zzgoVar = new zzgo(this, t);
        this.zza.put(t, new zzgp<>(zzhhVar, zzhgVar, zzgoVar));
        Handler handler = this.zzb;
        Objects.requireNonNull(handler);
        zzhhVar.zzk(handler, zzgoVar);
        Handler handler2 = this.zzb;
        Objects.requireNonNull(handler2);
        zzhhVar.zzm(handler2, zzgoVar);
        zzhhVar.zzo(zzhgVar, this.zzc);
        if (!zzj()) {
            zzhhVar.zzq(zzhgVar);
        }
    }

    public zzhf zzx(T t, zzhf zzhfVar) {
        throw null;
    }
}
