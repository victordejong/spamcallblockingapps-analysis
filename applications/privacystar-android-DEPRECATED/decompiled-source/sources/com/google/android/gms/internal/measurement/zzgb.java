package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgb.class */
public final class zzgb extends zzza<zzgb> {
    public Long zzawe = null;
    public String zzafx = null;
    private Integer zzawf = null;
    public zzgc[] zzawg = zzgc.zzmn();
    public zzga[] zzawh = zzga.zzmm();
    public zzfu[] zzawi = zzfu.zzmi();
    private String zzawj = null;

    public zzgb() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgb)) {
            return false;
        }
        zzgb zzgbVar = (zzgb) obj;
        if (this.zzawe == null) {
            if (zzgbVar.zzawe != null) {
                return false;
            }
        } else if (!this.zzawe.equals(zzgbVar.zzawe)) {
            return false;
        }
        if (this.zzafx == null) {
            if (zzgbVar.zzafx != null) {
                return false;
            }
        } else if (!this.zzafx.equals(zzgbVar.zzafx)) {
            return false;
        }
        if (this.zzawf == null) {
            if (zzgbVar.zzawf != null) {
                return false;
            }
        } else if (!this.zzawf.equals(zzgbVar.zzawf)) {
            return false;
        }
        if (!zzze.equals(this.zzawg, zzgbVar.zzawg) || !zzze.equals(this.zzawh, zzgbVar.zzawh) || !zzze.equals(this.zzawi, zzgbVar.zzawi)) {
            return false;
        }
        if (this.zzawj == null) {
            if (zzgbVar.zzawj != null) {
                return false;
            }
        } else if (!this.zzawj.equals(zzgbVar.zzawj)) {
            return false;
        }
        return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzgbVar.zzcfc == null || zzgbVar.zzcfc.isEmpty() : this.zzcfc.equals(zzgbVar.zzcfc);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = this.zzawe == null ? 0 : this.zzawe.hashCode();
        int hashCode3 = this.zzafx == null ? 0 : this.zzafx.hashCode();
        int hashCode4 = this.zzawf == null ? 0 : this.zzawf.hashCode();
        int hashCode5 = zzze.hashCode(this.zzawg);
        int hashCode6 = zzze.hashCode(this.zzawh);
        int hashCode7 = zzze.hashCode(this.zzawi);
        int hashCode8 = this.zzawj == null ? 0 : this.zzawj.hashCode();
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
                this.zzawe = Long.valueOf(zzyxVar.zzuz());
            } else if (zzug == 18) {
                this.zzafx = zzyxVar.readString();
            } else if (zzug == 24) {
                this.zzawf = Integer.valueOf(zzyxVar.zzuy());
            } else if (zzug == 34) {
                int zzb = zzzj.zzb(zzyxVar, 34);
                int length = this.zzawg == null ? 0 : this.zzawg.length;
                zzgc[] zzgcVarArr = new zzgc[zzb + length];
                int i = length;
                if (length != 0) {
                    System.arraycopy(this.zzawg, 0, zzgcVarArr, 0, length);
                    i = length;
                }
                while (i < zzgcVarArr.length - 1) {
                    zzgcVarArr[i] = new zzgc();
                    zzyxVar.zza(zzgcVarArr[i]);
                    zzyxVar.zzug();
                    i++;
                }
                zzgcVarArr[i] = new zzgc();
                zzyxVar.zza(zzgcVarArr[i]);
                this.zzawg = zzgcVarArr;
            } else if (zzug == 42) {
                int zzb2 = zzzj.zzb(zzyxVar, 42);
                int length2 = this.zzawh == null ? 0 : this.zzawh.length;
                zzga[] zzgaVarArr = new zzga[zzb2 + length2];
                int i2 = length2;
                if (length2 != 0) {
                    System.arraycopy(this.zzawh, 0, zzgaVarArr, 0, length2);
                    i2 = length2;
                }
                while (i2 < zzgaVarArr.length - 1) {
                    zzgaVarArr[i2] = new zzga();
                    zzyxVar.zza(zzgaVarArr[i2]);
                    zzyxVar.zzug();
                    i2++;
                }
                zzgaVarArr[i2] = new zzga();
                zzyxVar.zza(zzgaVarArr[i2]);
                this.zzawh = zzgaVarArr;
            } else if (zzug == 50) {
                int zzb3 = zzzj.zzb(zzyxVar, 50);
                int length3 = this.zzawi == null ? 0 : this.zzawi.length;
                zzfu[] zzfuVarArr = new zzfu[zzb3 + length3];
                int i3 = length3;
                if (length3 != 0) {
                    System.arraycopy(this.zzawi, 0, zzfuVarArr, 0, length3);
                    i3 = length3;
                }
                while (i3 < zzfuVarArr.length - 1) {
                    zzfuVarArr[i3] = new zzfu();
                    zzyxVar.zza(zzfuVarArr[i3]);
                    zzyxVar.zzug();
                    i3++;
                }
                zzfuVarArr[i3] = new zzfu();
                zzyxVar.zza(zzfuVarArr[i3]);
                this.zzawi = zzfuVarArr;
            } else if (zzug == 58) {
                this.zzawj = zzyxVar.readString();
            } else if (!super.zza(zzyxVar, zzug)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.zzawe != null) {
            zzyyVar.zzi(1, this.zzawe.longValue());
        }
        if (this.zzafx != null) {
            zzyyVar.zzb(2, this.zzafx);
        }
        if (this.zzawf != null) {
            zzyyVar.zzd(3, this.zzawf.intValue());
        }
        if (this.zzawg != null && this.zzawg.length > 0) {
            for (int i = 0; i < this.zzawg.length; i++) {
                zzgc zzgcVar = this.zzawg[i];
                if (zzgcVar != null) {
                    zzyyVar.zza(4, zzgcVar);
                }
            }
        }
        if (this.zzawh != null && this.zzawh.length > 0) {
            for (int i2 = 0; i2 < this.zzawh.length; i2++) {
                zzga zzgaVar = this.zzawh[i2];
                if (zzgaVar != null) {
                    zzyyVar.zza(5, zzgaVar);
                }
            }
        }
        if (this.zzawi != null && this.zzawi.length > 0) {
            for (int i3 = 0; i3 < this.zzawi.length; i3++) {
                zzfu zzfuVar = this.zzawi[i3];
                if (zzfuVar != null) {
                    zzyyVar.zza(6, zzfuVar);
                }
            }
        }
        if (this.zzawj != null) {
            zzyyVar.zzb(7, this.zzawj);
        }
        super.zza(zzyyVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final int zzf() {
        int zzf = super.zzf();
        int i = zzf;
        if (this.zzawe != null) {
            i = zzf + zzyy.zzd(1, this.zzawe.longValue());
        }
        int i2 = i;
        if (this.zzafx != null) {
            i2 = i + zzyy.zzc(2, this.zzafx);
        }
        int i3 = i2;
        if (this.zzawf != null) {
            i3 = i2 + zzyy.zzh(3, this.zzawf.intValue());
        }
        int i4 = 0;
        int i5 = i3;
        if (this.zzawg != null) {
            i5 = i3;
            if (this.zzawg.length > 0) {
                for (int i6 = 0; i6 < this.zzawg.length; i6++) {
                    zzgc zzgcVar = this.zzawg[i6];
                    i3 = i3;
                    if (zzgcVar != null) {
                        i3 += zzyy.zzb(4, zzgcVar);
                    }
                }
                i5 = i3;
            }
        }
        int i7 = i5;
        if (this.zzawh != null) {
            i7 = i5;
            if (this.zzawh.length > 0) {
                i7 = i5;
                for (int i8 = 0; i8 < this.zzawh.length; i8++) {
                    zzga zzgaVar = this.zzawh[i8];
                    i7 = i7;
                    if (zzgaVar != null) {
                        i7 += zzyy.zzb(5, zzgaVar);
                    }
                }
            }
        }
        int i9 = i7;
        if (this.zzawi != null) {
            i9 = i7;
            if (this.zzawi.length > 0) {
                while (true) {
                    i9 = i7;
                    if (i4 >= this.zzawi.length) {
                        break;
                    }
                    zzfu zzfuVar = this.zzawi[i4];
                    i7 = i7;
                    if (zzfuVar != null) {
                        i7 += zzyy.zzb(6, zzfuVar);
                    }
                    i4++;
                }
            }
        }
        int i10 = i9;
        if (this.zzawj != null) {
            i10 = i9 + zzyy.zzc(7, this.zzawj);
        }
        return i10;
    }
}
