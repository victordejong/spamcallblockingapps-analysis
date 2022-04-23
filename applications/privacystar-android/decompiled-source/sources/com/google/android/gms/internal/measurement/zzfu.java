package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfu.class */
public final class zzfu extends zzza<zzfu> {
    private static volatile zzfu[] zzaux;
    public Integer zzauy = null;
    public zzfy[] zzauz = zzfy.zzml();
    public zzfv[] zzava = zzfv.zzmj();
    private Boolean zzavb = null;
    private Boolean zzavc = null;

    public zzfu() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public static zzfu[] zzmi() {
        if (zzaux == null) {
            synchronized (zzze.zzcfl) {
                if (zzaux == null) {
                    zzaux = new zzfu[0];
                }
            }
        }
        return zzaux;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfu)) {
            return false;
        }
        zzfu zzfuVar = (zzfu) obj;
        if (this.zzauy == null) {
            if (zzfuVar.zzauy != null) {
                return false;
            }
        } else if (!this.zzauy.equals(zzfuVar.zzauy)) {
            return false;
        }
        if (!zzze.equals(this.zzauz, zzfuVar.zzauz) || !zzze.equals(this.zzava, zzfuVar.zzava)) {
            return false;
        }
        if (this.zzavb == null) {
            if (zzfuVar.zzavb != null) {
                return false;
            }
        } else if (!this.zzavb.equals(zzfuVar.zzavb)) {
            return false;
        }
        if (this.zzavc == null) {
            if (zzfuVar.zzavc != null) {
                return false;
            }
        } else if (!this.zzavc.equals(zzfuVar.zzavc)) {
            return false;
        }
        return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzfuVar.zzcfc == null || zzfuVar.zzcfc.isEmpty() : this.zzcfc.equals(zzfuVar.zzcfc);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = this.zzauy == null ? 0 : this.zzauy.hashCode();
        int hashCode3 = zzze.hashCode(this.zzauz);
        int hashCode4 = zzze.hashCode(this.zzava);
        int hashCode5 = this.zzavb == null ? 0 : this.zzavb.hashCode();
        int hashCode6 = this.zzavc == null ? 0 : this.zzavc.hashCode();
        int i = 0;
        if (this.zzcfc != null) {
            i = this.zzcfc.isEmpty() ? 0 : this.zzcfc.hashCode();
        }
        return ((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int zzug = zzyxVar.zzug();
            if (zzug == 0) {
                return this;
            }
            if (zzug == 8) {
                this.zzauy = Integer.valueOf(zzyxVar.zzuy());
            } else if (zzug == 18) {
                int zzb = zzzj.zzb(zzyxVar, 18);
                int length = this.zzauz == null ? 0 : this.zzauz.length;
                zzfy[] zzfyVarArr = new zzfy[zzb + length];
                int i = length;
                if (length != 0) {
                    System.arraycopy(this.zzauz, 0, zzfyVarArr, 0, length);
                    i = length;
                }
                while (i < zzfyVarArr.length - 1) {
                    zzfyVarArr[i] = new zzfy();
                    zzyxVar.zza(zzfyVarArr[i]);
                    zzyxVar.zzug();
                    i++;
                }
                zzfyVarArr[i] = new zzfy();
                zzyxVar.zza(zzfyVarArr[i]);
                this.zzauz = zzfyVarArr;
            } else if (zzug == 26) {
                int zzb2 = zzzj.zzb(zzyxVar, 26);
                int length2 = this.zzava == null ? 0 : this.zzava.length;
                zzfv[] zzfvVarArr = new zzfv[zzb2 + length2];
                int i2 = length2;
                if (length2 != 0) {
                    System.arraycopy(this.zzava, 0, zzfvVarArr, 0, length2);
                    i2 = length2;
                }
                while (i2 < zzfvVarArr.length - 1) {
                    zzfvVarArr[i2] = new zzfv();
                    zzyxVar.zza(zzfvVarArr[i2]);
                    zzyxVar.zzug();
                    i2++;
                }
                zzfvVarArr[i2] = new zzfv();
                zzyxVar.zza(zzfvVarArr[i2]);
                this.zzava = zzfvVarArr;
            } else if (zzug == 32) {
                this.zzavb = Boolean.valueOf(zzyxVar.zzum());
            } else if (zzug == 40) {
                this.zzavc = Boolean.valueOf(zzyxVar.zzum());
            } else if (!super.zza(zzyxVar, zzug)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.zzauy != null) {
            zzyyVar.zzd(1, this.zzauy.intValue());
        }
        if (this.zzauz != null && this.zzauz.length > 0) {
            for (int i = 0; i < this.zzauz.length; i++) {
                zzfy zzfyVar = this.zzauz[i];
                if (zzfyVar != null) {
                    zzyyVar.zza(2, zzfyVar);
                }
            }
        }
        if (this.zzava != null && this.zzava.length > 0) {
            for (int i2 = 0; i2 < this.zzava.length; i2++) {
                zzfv zzfvVar = this.zzava[i2];
                if (zzfvVar != null) {
                    zzyyVar.zza(3, zzfvVar);
                }
            }
        }
        if (this.zzavb != null) {
            zzyyVar.zzb(4, this.zzavb.booleanValue());
        }
        if (this.zzavc != null) {
            zzyyVar.zzb(5, this.zzavc.booleanValue());
        }
        super.zza(zzyyVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final int zzf() {
        int zzf = super.zzf();
        int i = zzf;
        if (this.zzauy != null) {
            i = zzf + zzyy.zzh(1, this.zzauy.intValue());
        }
        int i2 = 0;
        int i3 = i;
        if (this.zzauz != null) {
            i3 = i;
            if (this.zzauz.length > 0) {
                i3 = i;
                for (int i4 = 0; i4 < this.zzauz.length; i4++) {
                    zzfy zzfyVar = this.zzauz[i4];
                    i3 = i3;
                    if (zzfyVar != null) {
                        i3 += zzyy.zzb(2, zzfyVar);
                    }
                }
            }
        }
        int i5 = i3;
        if (this.zzava != null) {
            i5 = i3;
            if (this.zzava.length > 0) {
                while (true) {
                    i5 = i3;
                    if (i2 >= this.zzava.length) {
                        break;
                    }
                    zzfv zzfvVar = this.zzava[i2];
                    i3 = i3;
                    if (zzfvVar != null) {
                        i3 += zzyy.zzb(3, zzfvVar);
                    }
                    i2++;
                }
            }
        }
        int i6 = i5;
        if (this.zzavb != null) {
            this.zzavb.booleanValue();
            i6 = i5 + zzyy.zzbb(4) + 1;
        }
        int i7 = i6;
        if (this.zzavc != null) {
            this.zzavc.booleanValue();
            i7 = i6 + zzyy.zzbb(5) + 1;
        }
        return i7;
    }
}
