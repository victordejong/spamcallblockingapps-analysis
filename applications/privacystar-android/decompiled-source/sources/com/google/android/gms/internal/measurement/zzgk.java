package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgk.class */
public final class zzgk extends zzza<zzgk> {
    private static volatile zzgk[] zzayi;
    public Integer zzawq = null;
    public long[] zzayj = zzzj.zzcfr;

    public zzgk() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public static zzgk[] zzmt() {
        if (zzayi == null) {
            synchronized (zzze.zzcfl) {
                if (zzayi == null) {
                    zzayi = new zzgk[0];
                }
            }
        }
        return zzayi;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgk)) {
            return false;
        }
        zzgk zzgkVar = (zzgk) obj;
        if (this.zzawq == null) {
            if (zzgkVar.zzawq != null) {
                return false;
            }
        } else if (!this.zzawq.equals(zzgkVar.zzawq)) {
            return false;
        }
        if (!zzze.equals(this.zzayj, zzgkVar.zzayj)) {
            return false;
        }
        return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzgkVar.zzcfc == null || zzgkVar.zzcfc.isEmpty() : this.zzcfc.equals(zzgkVar.zzcfc);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = this.zzawq == null ? 0 : this.zzawq.hashCode();
        int hashCode3 = zzze.hashCode(this.zzayj);
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
                int zzb = zzzj.zzb(zzyxVar, 16);
                int length = this.zzayj == null ? 0 : this.zzayj.length;
                long[] jArr = new long[zzb + length];
                int i = length;
                if (length != 0) {
                    System.arraycopy(this.zzayj, 0, jArr, 0, length);
                    i = length;
                }
                while (i < jArr.length - 1) {
                    jArr[i] = zzyxVar.zzuz();
                    zzyxVar.zzug();
                    i++;
                }
                jArr[i] = zzyxVar.zzuz();
                this.zzayj = jArr;
            } else if (zzug == 18) {
                int zzaq = zzyxVar.zzaq(zzyxVar.zzuy());
                int position = zzyxVar.getPosition();
                int i2 = 0;
                while (zzyxVar.zzyr() > 0) {
                    zzyxVar.zzuz();
                    i2++;
                }
                zzyxVar.zzby(position);
                int length2 = this.zzayj == null ? 0 : this.zzayj.length;
                long[] jArr2 = new long[i2 + length2];
                int i3 = length2;
                if (length2 != 0) {
                    System.arraycopy(this.zzayj, 0, jArr2, 0, length2);
                    i3 = length2;
                }
                while (i3 < jArr2.length) {
                    jArr2[i3] = zzyxVar.zzuz();
                    i3++;
                }
                this.zzayj = jArr2;
                zzyxVar.zzar(zzaq);
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
        if (this.zzayj != null && this.zzayj.length > 0) {
            for (int i = 0; i < this.zzayj.length; i++) {
                zzyyVar.zzi(2, this.zzayj[i]);
            }
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
        if (this.zzayj != null) {
            i2 = i;
            if (this.zzayj.length > 0) {
                int i3 = 0;
                for (int i4 = 0; i4 < this.zzayj.length; i4++) {
                    i3 += zzyy.zzbi(this.zzayj[i4]);
                }
                i2 = i + i3 + (this.zzayj.length * 1);
            }
        }
        return i2;
    }
}
