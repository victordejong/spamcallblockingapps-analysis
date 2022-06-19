package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzge.class */
final class zzge implements zzht {
    private final zziv zza;
    private final zzgd zzb;
    private zzil zzc;
    private zzht zzd;
    private boolean zze = true;
    private boolean zzf;

    public zzge(zzgd zzgdVar, zzdz zzdzVar) {
        this.zzb = zzgdVar;
        this.zza = new zziv(zzdzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzht
    public final long zza() {
        throw null;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    public final long zzb(boolean z) {
        char c;
        zzil zzilVar = this.zzc;
        if (zzilVar == null || zzilVar.zzL() || (!this.zzc.zzM() && (z || this.zzc.zzF()))) {
            this.zze = true;
            if (this.zzf) {
                this.zza.zzd();
            }
        } else {
            zzht zzhtVar = this.zzd;
            Objects.requireNonNull(zzhtVar);
            long zza = zzhtVar.zza();
            if (this.zze) {
                if (zza < this.zza.zza()) {
                    this.zza.zze();
                } else {
                    this.zze = false;
                    if (this.zzf) {
                        this.zza.zzd();
                    }
                }
            }
            this.zza.zzb(zza);
            zzbn zzc = zzhtVar.zzc();
            if (!zzc.equals(this.zza.zzc())) {
                this.zza.zzg(zzc);
                this.zzb.zza(zzc);
            }
        }
        if (this.zze) {
            c = this.zza.zza();
        } else {
            zzht zzhtVar2 = this.zzd;
            Objects.requireNonNull(zzhtVar2);
            c = zzhtVar2.zza();
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.zzht
    public final zzbn zzc() {
        zzht zzhtVar = this.zzd;
        return zzhtVar != null ? zzhtVar.zzc() : this.zza.zzc();
    }

    public final void zzd(zzil zzilVar) {
        if (zzilVar == this.zzc) {
            this.zzd = null;
            this.zzc = null;
            this.zze = true;
        }
    }

    public final void zze(zzil zzilVar) throws zzgg {
        zzht zzhtVar;
        zzht zzi = zzilVar.zzi();
        if (zzi == null || zzi == (zzhtVar = this.zzd)) {
            return;
        }
        if (zzhtVar != null) {
            throw zzgg.zzd(new IllegalStateException("Multiple renderer media clocks enabled."), 1000);
        }
        this.zzd = zzi;
        this.zzc = zzilVar;
        zzi.zzg(this.zza.zzc());
    }

    public final void zzf(long j) {
        this.zza.zzb(j);
    }

    @Override // com.google.android.gms.internal.ads.zzht
    public final void zzg(zzbn zzbnVar) {
        zzht zzhtVar = this.zzd;
        zzbn zzbnVar2 = zzbnVar;
        if (zzhtVar != null) {
            zzhtVar.zzg(zzbnVar);
            zzbnVar2 = this.zzd.zzc();
        }
        this.zza.zzg(zzbnVar2);
    }

    public final void zzh() {
        this.zzf = true;
        this.zza.zzd();
    }

    public final void zzi() {
        this.zzf = false;
        this.zza.zze();
    }
}
