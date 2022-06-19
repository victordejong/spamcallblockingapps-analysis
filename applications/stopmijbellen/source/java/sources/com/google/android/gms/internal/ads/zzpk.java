package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.io.IOException;
import java.util.HashMap;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpk.class */
public abstract class zzpk<T> extends zzpc {
    private final HashMap<T, zzpj<T>> zza = new HashMap<>();
    private Handler zzb;
    private zzdx zzc;

    @Override // com.google.android.gms.internal.ads.zzpc
    public final void zzi() {
        for (zzpj<T> zzpjVar : this.zza.values()) {
            zzpjVar.zza.zzh(zzpjVar.zzb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpc
    public final void zzk() {
        for (zzpj<T> zzpjVar : this.zza.values()) {
            zzpjVar.zza.zzj(zzpjVar.zzb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzpc
    public void zzm(zzdx zzdxVar) {
        this.zzc = zzdxVar;
        this.zzb = zzfn.zzz(null);
    }

    @Override // com.google.android.gms.internal.ads.zzpc
    public void zzp() {
        for (zzpj<T> zzpjVar : this.zza.values()) {
            zzpjVar.zza.zzo(zzpjVar.zzb);
            zzpjVar.zza.zzr(zzpjVar.zzc);
            zzpjVar.zza.zzq(zzpjVar.zzc);
        }
        this.zza.clear();
    }

    public zzpz zzu(T t, zzpz zzpzVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public void zzv() throws IOException {
        for (zzpj<T> zzpjVar : this.zza.values()) {
            zzpjVar.zza.zzv();
        }
    }

    public abstract void zzw(T t, zzqb zzqbVar, zzcd zzcdVar);

    public final void zzx(final T t, zzqb zzqbVar) {
        zzdy.zzd(!this.zza.containsKey(t));
        zzqa zzqaVar = new zzqa() { // from class: com.google.android.gms.internal.ads.zzph
            @Override // com.google.android.gms.internal.ads.zzqa
            public final void zza(zzqb zzqbVar2, zzcd zzcdVar) {
                zzpk.this.zzw(t, zzqbVar2, zzcdVar);
            }
        };
        zzpi zzpiVar = new zzpi(this, t);
        this.zza.put(t, new zzpj<>(zzqbVar, zzqaVar, zzpiVar));
        Handler handler = this.zzb;
        Objects.requireNonNull(handler);
        zzqbVar.zzg(handler, zzpiVar);
        Handler handler2 = this.zzb;
        Objects.requireNonNull(handler2);
        zzqbVar.zzf(handler2, zzpiVar);
        zzqbVar.zzl(zzqaVar, this.zzc);
        if (!zzs()) {
            zzqbVar.zzh(zzqaVar);
        }
    }
}
