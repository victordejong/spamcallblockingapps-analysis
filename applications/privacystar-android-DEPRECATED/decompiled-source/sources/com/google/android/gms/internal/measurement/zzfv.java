package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfv.class */
public final class zzfv extends zzza<zzfv> {
    private static volatile zzfv[] zzavd;
    public Integer zzave = null;
    public String zzavf = null;
    public zzfw[] zzavg = zzfw.zzmk();
    private Boolean zzavh = null;
    public zzfx zzavi = null;
    public Boolean zzavb = null;
    public Boolean zzavc = null;

    public zzfv() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public static zzfv[] zzmj() {
        if (zzavd == null) {
            synchronized (zzze.zzcfl) {
                if (zzavd == null) {
                    zzavd = new zzfv[0];
                }
            }
        }
        return zzavd;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfv)) {
            return false;
        }
        zzfv zzfvVar = (zzfv) obj;
        if (this.zzave == null) {
            if (zzfvVar.zzave != null) {
                return false;
            }
        } else if (!this.zzave.equals(zzfvVar.zzave)) {
            return false;
        }
        if (this.zzavf == null) {
            if (zzfvVar.zzavf != null) {
                return false;
            }
        } else if (!this.zzavf.equals(zzfvVar.zzavf)) {
            return false;
        }
        if (!zzze.equals(this.zzavg, zzfvVar.zzavg)) {
            return false;
        }
        if (this.zzavh == null) {
            if (zzfvVar.zzavh != null) {
                return false;
            }
        } else if (!this.zzavh.equals(zzfvVar.zzavh)) {
            return false;
        }
        if (this.zzavi == null) {
            if (zzfvVar.zzavi != null) {
                return false;
            }
        } else if (!this.zzavi.equals(zzfvVar.zzavi)) {
            return false;
        }
        if (this.zzavb == null) {
            if (zzfvVar.zzavb != null) {
                return false;
            }
        } else if (!this.zzavb.equals(zzfvVar.zzavb)) {
            return false;
        }
        if (this.zzavc == null) {
            if (zzfvVar.zzavc != null) {
                return false;
            }
        } else if (!this.zzavc.equals(zzfvVar.zzavc)) {
            return false;
        }
        return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzfvVar.zzcfc == null || zzfvVar.zzcfc.isEmpty() : this.zzcfc.equals(zzfvVar.zzcfc);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = this.zzave == null ? 0 : this.zzave.hashCode();
        int hashCode3 = this.zzavf == null ? 0 : this.zzavf.hashCode();
        int hashCode4 = zzze.hashCode(this.zzavg);
        int hashCode5 = this.zzavh == null ? 0 : this.zzavh.hashCode();
        zzfx zzfxVar = this.zzavi;
        int hashCode6 = zzfxVar == null ? 0 : zzfxVar.hashCode();
        int hashCode7 = this.zzavb == null ? 0 : this.zzavb.hashCode();
        int hashCode8 = this.zzavc == null ? 0 : this.zzavc.hashCode();
        int i = 0;
        if (this.zzcfc != null) {
            i = this.zzcfc.isEmpty() ? 0 : this.zzcfc.hashCode();
        }
        return ((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + i;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int zzug = zzyxVar.zzug();
            if (zzug == 0) {
                return this;
            }
            if (zzug == 8) {
                this.zzave = Integer.valueOf(zzyxVar.zzuy());
            } else if (zzug == 18) {
                this.zzavf = zzyxVar.readString();
            } else if (zzug == 26) {
                int zzb = zzzj.zzb(zzyxVar, 26);
                int length = this.zzavg == null ? 0 : this.zzavg.length;
                zzfw[] zzfwVarArr = new zzfw[zzb + length];
                int i = length;
                if (length != 0) {
                    System.arraycopy(this.zzavg, 0, zzfwVarArr, 0, length);
                    i = length;
                }
                while (i < zzfwVarArr.length - 1) {
                    zzfwVarArr[i] = new zzfw();
                    zzyxVar.zza(zzfwVarArr[i]);
                    zzyxVar.zzug();
                    i++;
                }
                zzfwVarArr[i] = new zzfw();
                zzyxVar.zza(zzfwVarArr[i]);
                this.zzavg = zzfwVarArr;
            } else if (zzug == 32) {
                this.zzavh = Boolean.valueOf(zzyxVar.zzum());
            } else if (zzug == 42) {
                if (this.zzavi == null) {
                    this.zzavi = new zzfx();
                }
                zzyxVar.zza(this.zzavi);
            } else if (zzug == 48) {
                this.zzavb = Boolean.valueOf(zzyxVar.zzum());
            } else if (zzug == 56) {
                this.zzavc = Boolean.valueOf(zzyxVar.zzum());
            } else if (!super.zza(zzyxVar, zzug)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.zzave != null) {
            zzyyVar.zzd(1, this.zzave.intValue());
        }
        if (this.zzavf != null) {
            zzyyVar.zzb(2, this.zzavf);
        }
        if (this.zzavg != null && this.zzavg.length > 0) {
            for (int i = 0; i < this.zzavg.length; i++) {
                zzfw zzfwVar = this.zzavg[i];
                if (zzfwVar != null) {
                    zzyyVar.zza(3, zzfwVar);
                }
            }
        }
        if (this.zzavh != null) {
            zzyyVar.zzb(4, this.zzavh.booleanValue());
        }
        if (this.zzavi != null) {
            zzyyVar.zza(5, this.zzavi);
        }
        if (this.zzavb != null) {
            zzyyVar.zzb(6, this.zzavb.booleanValue());
        }
        if (this.zzavc != null) {
            zzyyVar.zzb(7, this.zzavc.booleanValue());
        }
        super.zza(zzyyVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final int zzf() {
        int zzf = super.zzf();
        int i = zzf;
        if (this.zzave != null) {
            i = zzf + zzyy.zzh(1, this.zzave.intValue());
        }
        int i2 = i;
        if (this.zzavf != null) {
            i2 = i + zzyy.zzc(2, this.zzavf);
        }
        int i3 = i2;
        if (this.zzavg != null) {
            i3 = i2;
            if (this.zzavg.length > 0) {
                int i4 = 0;
                while (true) {
                    i3 = i2;
                    if (i4 >= this.zzavg.length) {
                        break;
                    }
                    zzfw zzfwVar = this.zzavg[i4];
                    i2 = i2;
                    if (zzfwVar != null) {
                        i2 += zzyy.zzb(3, zzfwVar);
                    }
                    i4++;
                }
            }
        }
        int i5 = i3;
        if (this.zzavh != null) {
            this.zzavh.booleanValue();
            i5 = i3 + zzyy.zzbb(4) + 1;
        }
        int i6 = i5;
        if (this.zzavi != null) {
            i6 = i5 + zzyy.zzb(5, this.zzavi);
        }
        int i7 = i6;
        if (this.zzavb != null) {
            this.zzavb.booleanValue();
            i7 = i6 + zzyy.zzbb(6) + 1;
        }
        int i8 = i7;
        if (this.zzavc != null) {
            this.zzavc.booleanValue();
            i8 = i7 + zzyy.zzbb(7) + 1;
        }
        return i8;
    }
}
