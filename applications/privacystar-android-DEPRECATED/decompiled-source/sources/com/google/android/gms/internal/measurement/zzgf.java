package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgf.class */
public final class zzgf extends zzza<zzgf> {
    private static volatile zzgf[] zzaws;
    public zzgg[] zzawt = zzgg.zzmr();
    public String name = null;
    public Long zzawu = null;
    public Long zzawv = null;
    public Integer count = null;

    public zzgf() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public static zzgf[] zzmq() {
        if (zzaws == null) {
            synchronized (zzze.zzcfl) {
                if (zzaws == null) {
                    zzaws = new zzgf[0];
                }
            }
        }
        return zzaws;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgf)) {
            return false;
        }
        zzgf zzgfVar = (zzgf) obj;
        if (!zzze.equals(this.zzawt, zzgfVar.zzawt)) {
            return false;
        }
        if (this.name == null) {
            if (zzgfVar.name != null) {
                return false;
            }
        } else if (!this.name.equals(zzgfVar.name)) {
            return false;
        }
        if (this.zzawu == null) {
            if (zzgfVar.zzawu != null) {
                return false;
            }
        } else if (!this.zzawu.equals(zzgfVar.zzawu)) {
            return false;
        }
        if (this.zzawv == null) {
            if (zzgfVar.zzawv != null) {
                return false;
            }
        } else if (!this.zzawv.equals(zzgfVar.zzawv)) {
            return false;
        }
        if (this.count == null) {
            if (zzgfVar.count != null) {
                return false;
            }
        } else if (!this.count.equals(zzgfVar.count)) {
            return false;
        }
        return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzgfVar.zzcfc == null || zzgfVar.zzcfc.isEmpty() : this.zzcfc.equals(zzgfVar.zzcfc);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = zzze.hashCode(this.zzawt);
        int hashCode3 = this.name == null ? 0 : this.name.hashCode();
        int hashCode4 = this.zzawu == null ? 0 : this.zzawu.hashCode();
        int hashCode5 = this.zzawv == null ? 0 : this.zzawv.hashCode();
        int hashCode6 = this.count == null ? 0 : this.count.hashCode();
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
            if (zzug == 10) {
                int zzb = zzzj.zzb(zzyxVar, 10);
                int length = this.zzawt == null ? 0 : this.zzawt.length;
                zzgg[] zzggVarArr = new zzgg[zzb + length];
                int i = length;
                if (length != 0) {
                    System.arraycopy(this.zzawt, 0, zzggVarArr, 0, length);
                    i = length;
                }
                while (i < zzggVarArr.length - 1) {
                    zzggVarArr[i] = new zzgg();
                    zzyxVar.zza(zzggVarArr[i]);
                    zzyxVar.zzug();
                    i++;
                }
                zzggVarArr[i] = new zzgg();
                zzyxVar.zza(zzggVarArr[i]);
                this.zzawt = zzggVarArr;
            } else if (zzug == 18) {
                this.name = zzyxVar.readString();
            } else if (zzug == 24) {
                this.zzawu = Long.valueOf(zzyxVar.zzuz());
            } else if (zzug == 32) {
                this.zzawv = Long.valueOf(zzyxVar.zzuz());
            } else if (zzug == 40) {
                this.count = Integer.valueOf(zzyxVar.zzuy());
            } else if (!super.zza(zzyxVar, zzug)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.zzawt != null && this.zzawt.length > 0) {
            for (int i = 0; i < this.zzawt.length; i++) {
                zzgg zzggVar = this.zzawt[i];
                if (zzggVar != null) {
                    zzyyVar.zza(1, zzggVar);
                }
            }
        }
        if (this.name != null) {
            zzyyVar.zzb(2, this.name);
        }
        if (this.zzawu != null) {
            zzyyVar.zzi(3, this.zzawu.longValue());
        }
        if (this.zzawv != null) {
            zzyyVar.zzi(4, this.zzawv.longValue());
        }
        if (this.count != null) {
            zzyyVar.zzd(5, this.count.intValue());
        }
        super.zza(zzyyVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final int zzf() {
        int zzf = super.zzf();
        int i = zzf;
        if (this.zzawt != null) {
            i = zzf;
            if (this.zzawt.length > 0) {
                int i2 = 0;
                while (true) {
                    i = zzf;
                    if (i2 >= this.zzawt.length) {
                        break;
                    }
                    zzgg zzggVar = this.zzawt[i2];
                    zzf = zzf;
                    if (zzggVar != null) {
                        zzf += zzyy.zzb(1, zzggVar);
                    }
                    i2++;
                }
            }
        }
        int i3 = i;
        if (this.name != null) {
            i3 = i + zzyy.zzc(2, this.name);
        }
        int i4 = i3;
        if (this.zzawu != null) {
            i4 = i3 + zzyy.zzd(3, this.zzawu.longValue());
        }
        int i5 = i4;
        if (this.zzawv != null) {
            i5 = i4 + zzyy.zzd(4, this.zzawv.longValue());
        }
        int i6 = i5;
        if (this.count != null) {
            i6 = i5 + zzyy.zzh(5, this.count.intValue());
        }
        return i6;
    }
}
