package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzc.class */
public final class zzc {
    public final zzf zza;
    public zzg zzb;
    public final zzab zzc = new zzab();
    private final zzz zzd = new zzz();

    public zzc() {
        zzf zzfVar = new zzf();
        this.zza = zzfVar;
        this.zzb = zzfVar.zzb.zzc();
        zzfVar.zzd.zza("internal.registerCallback", new Callable(this) { // from class: com.google.android.gms.internal.measurement.zza
            private final zzc zza;

            {
                this.zza = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzg();
            }
        });
        zzfVar.zzd.zza("internal.eventLogger", new Callable(this) { // from class: com.google.android.gms.internal.measurement.zzb
            private final zzc zza;

            {
                this.zza = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzk(this.zza.zzc);
            }
        });
    }

    public final void zza(String str, Callable<? extends zzai> callable) {
        this.zza.zzd.zza(str, callable);
    }

    public final boolean zzb(zzaa zzaaVar) throws zzd {
        try {
            this.zzc.zzb(zzaaVar);
            this.zza.zzc.zze("runtime.counter", new zzah(Double.valueOf(0.0d)));
            this.zzd.zzb(this.zzb.zzc(), this.zzc);
            if (zzc()) {
                return true;
            }
            return zzd();
        } catch (Throwable th) {
            throw new zzd(th);
        }
    }

    public final boolean zzc() {
        return !this.zzc.zzc().equals(this.zzc.zza());
    }

    public final boolean zzd() {
        return !this.zzc.zzf().isEmpty();
    }

    public final zzab zze() {
        return this.zzc;
    }

    public final void zzf(zzgo zzgoVar) throws zzd {
        zzai zzaiVar;
        try {
            this.zzb = this.zza.zzb.zzc();
            if (this.zza.zza(this.zzb, (zzgt[]) zzgoVar.zza().toArray(new zzgt[0])) instanceof zzag) {
                throw new IllegalStateException("Program loading failed");
            }
            for (zzgm zzgmVar : zzgoVar.zzb().zza()) {
                List<zzgt> zzb = zzgmVar.zzb();
                String zza = zzgmVar.zza();
                for (zzgt zzgtVar : zzb) {
                    zzap zza2 = this.zza.zza(this.zzb, zzgtVar);
                    if (!(zza2 instanceof zzam)) {
                        throw new IllegalArgumentException("Invalid rule definition");
                    }
                    zzg zzgVar = this.zzb;
                    if (!zzgVar.zzd(zza)) {
                        zzaiVar = null;
                    } else {
                        zzap zzh = zzgVar.zzh(zza);
                        if (!(zzh instanceof zzai)) {
                            String valueOf = String.valueOf(zza);
                            throw new IllegalStateException(valueOf.length() != 0 ? "Invalid function name: ".concat(valueOf) : new String("Invalid function name: "));
                        }
                        zzaiVar = (zzai) zzh;
                    }
                    if (zzaiVar == null) {
                        String valueOf2 = String.valueOf(zza);
                        throw new IllegalStateException(valueOf2.length() != 0 ? "Rule function is undefined: ".concat(valueOf2) : new String("Rule function is undefined: "));
                    }
                    zzaiVar.zza(this.zzb, Collections.singletonList(zza2));
                }
            }
        } catch (Throwable th) {
            throw new zzd(th);
        }
    }

    public final /* synthetic */ zzai zzg() throws Exception {
        return new zzu(this.zzd);
    }
}
