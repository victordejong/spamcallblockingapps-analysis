package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzge.class */
public final class zzge extends zzza<zzge> {
    private static volatile zzge[] zzawp;
    public Integer zzawq = null;
    public Long zzawr = null;

    public zzge() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public static zzge[] zzmp() {
        if (zzawp == null) {
            synchronized (zzze.zzcfl) {
                if (zzawp == null) {
                    zzawp = new zzge[0];
                }
            }
        }
        return zzawp;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzge)) {
            return false;
        }
        zzge zzgeVar = (zzge) obj;
        if (this.zzawq == null) {
            if (zzgeVar.zzawq != null) {
                return false;
            }
        } else if (!this.zzawq.equals(zzgeVar.zzawq)) {
            return false;
        }
        if (this.zzawr == null) {
            if (zzgeVar.zzawr != null) {
                return false;
            }
        } else if (!this.zzawr.equals(zzgeVar.zzawr)) {
            return false;
        }
        return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzgeVar.zzcfc == null || zzgeVar.zzcfc.isEmpty() : this.zzcfc.equals(zzgeVar.zzcfc);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = this.zzawq == null ? 0 : this.zzawq.hashCode();
        int hashCode3 = this.zzawr == null ? 0 : this.zzawr.hashCode();
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
            if (zzug == 8) {
                this.zzawq = Integer.valueOf(zzyxVar.zzuy());
            } else if (zzug == 16) {
                this.zzawr = Long.valueOf(zzyxVar.zzuz());
            } else if (!super.zza(zzyxVar, zzug)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.zzawq != null) {
            zzyyVar.zzd(1, this.zzawq.intValue());
        }
        if (this.zzawr != null) {
            zzyyVar.zzi(2, this.zzawr.longValue());
        }
        super.zza(zzyyVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final int zzf() {
        int zzf = super.zzf();
        int i = zzf;
        if (this.zzawq != null) {
            i = zzf + zzyy.zzh(1, this.zzawq.intValue());
        }
        int i2 = i;
        if (this.zzawr != null) {
            i2 = i + zzyy.zzd(2, this.zzawr.longValue());
        }
        return i2;
    }
}
