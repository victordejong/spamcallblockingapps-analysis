package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgc.class */
public final class zzgc extends zzza<zzgc> {
    private static volatile zzgc[] zzawk;
    public String zzoj = null;
    public String value = null;

    public zzgc() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public static zzgc[] zzmn() {
        if (zzawk == null) {
            synchronized (zzze.zzcfl) {
                if (zzawk == null) {
                    zzawk = new zzgc[0];
                }
            }
        }
        return zzawk;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgc)) {
            return false;
        }
        zzgc zzgcVar = (zzgc) obj;
        if (this.zzoj == null) {
            if (zzgcVar.zzoj != null) {
                return false;
            }
        } else if (!this.zzoj.equals(zzgcVar.zzoj)) {
            return false;
        }
        if (this.value == null) {
            if (zzgcVar.value != null) {
                return false;
            }
        } else if (!this.value.equals(zzgcVar.value)) {
            return false;
        }
        return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzgcVar.zzcfc == null || zzgcVar.zzcfc.isEmpty() : this.zzcfc.equals(zzgcVar.zzcfc);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = this.zzoj == null ? 0 : this.zzoj.hashCode();
        int hashCode3 = this.value == null ? 0 : this.value.hashCode();
        int i = 0;
        if (this.zzcfc != null) {
            i = this.zzcfc.isEmpty() ? 0 : this.zzcfc.hashCode();
        }
        return ((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int zzug = zzyxVar.zzug();
            if (zzug == 0) {
                return this;
            }
            if (zzug == 10) {
                this.zzoj = zzyxVar.readString();
            } else if (zzug == 18) {
                this.value = zzyxVar.readString();
            } else if (!super.zza(zzyxVar, zzug)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.zzoj != null) {
            zzyyVar.zzb(1, this.zzoj);
        }
        if (this.value != null) {
            zzyyVar.zzb(2, this.value);
        }
        super.zza(zzyyVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final int zzf() {
        int zzf = super.zzf();
        int i = zzf;
        if (this.zzoj != null) {
            i = zzf + zzyy.zzc(1, this.zzoj);
        }
        int i2 = i;
        if (this.value != null) {
            i2 = i + zzyy.zzc(2, this.value);
        }
        return i2;
    }
}
