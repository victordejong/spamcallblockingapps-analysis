package com.google.android.gms.internal.measurement;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzc.class */
public final class zzc {
    public final zzf zza;
    public zzg zzb;
    public final zzab zzc = new zzab();
    private final zzz zzd = new zzz();

    public zzc() {
        zzf zzfVar = new zzf();
        this.zza = zzfVar;
        this.zzb = zzfVar.zzb.zza();
        zzfVar.zzd.zza("internal.registerCallback", new Callable() { // from class: com.google.android.gms.internal.measurement.zza
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzc.this.zzb();
            }
        });
        zzfVar.zzd.zza("internal.eventLogger", new Callable() { // from class: com.google.android.gms.internal.measurement.zzb
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzk(zzc.this.zzc);
            }
        });
    }

    public final zzab zza() {
        return this.zzc;
    }

    public final /* synthetic */ zzai zzb() throws Exception {
        return new zzv(this.zzd);
    }

    public final void zzc(zzgo zzgoVar) throws zzd {
        zzai zzaiVar;
        try {
            this.zzb = this.zza.zzb.zza();
            if (this.zza.zza(this.zzb, (zzgt[]) zzgoVar.zzc().toArray(new zzgt[0])) instanceof zzag) {
                throw new IllegalStateException("Program loading failed");
            }
            for (zzgm zzgmVar : zzgoVar.zza().zzd()) {
                List<zzgt> zzc = zzgmVar.zzc();
                String zzb = zzgmVar.zzb();
                for (zzgt zzgtVar : zzc) {
                    zzap zza = this.zza.zza(this.zzb, zzgtVar);
                    if (!(zza instanceof zzam)) {
                        throw new IllegalArgumentException("Invalid rule definition");
                    }
                    zzg zzgVar = this.zzb;
                    if (!zzgVar.zzh(zzb)) {
                        zzaiVar = null;
                    } else {
                        zzap zzd = zzgVar.zzd(zzb);
                        if (!(zzd instanceof zzai)) {
                            String valueOf = String.valueOf(zzb);
                            throw new IllegalStateException(valueOf.length() != 0 ? "Invalid function name: ".concat(valueOf) : new String("Invalid function name: "));
                        }
                        zzaiVar = (zzai) zzd;
                    }
                    if (zzaiVar == null) {
                        String valueOf2 = String.valueOf(zzb);
                        throw new IllegalStateException(valueOf2.length() != 0 ? "Rule function is undefined: ".concat(valueOf2) : new String("Rule function is undefined: "));
                    }
                    zzaiVar.zza(this.zzb, Collections.singletonList(zza));
                }
            }
        } catch (Throwable th) {
            throw new zzd(th);
        }
    }

    public final void zzd(String str, Callable callable) {
        this.zza.zzd.zza(str, callable);
    }

    public final boolean zze(zzaa zzaaVar) throws zzd {
        try {
            this.zzc.zzd(zzaaVar);
            this.zza.zzc.zzg("runtime.counter", new zzah(Double.valueOf((double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE)));
            this.zzd.zzb(this.zzb.zza(), this.zzc);
            if (zzg()) {
                return true;
            }
            return zzf();
        } catch (Throwable th) {
            throw new zzd(th);
        }
    }

    public final boolean zzf() {
        return !this.zzc.zzc().isEmpty();
    }

    public final boolean zzg() {
        zzab zzabVar = this.zzc;
        return !zzabVar.zzb().equals(zzabVar.zza());
    }
}
