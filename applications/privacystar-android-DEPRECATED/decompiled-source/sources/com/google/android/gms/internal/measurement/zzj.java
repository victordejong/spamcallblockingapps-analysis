package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzj.class */
public final class zzj extends zzza<zzj> {
    public zzp[] zzoo = zzp.zzk();
    public zzp[] zzop = zzp.zzk();
    public zzi[] zzoq = zzi.zzg();

    public zzj() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzj)) {
            return false;
        }
        zzj zzjVar = (zzj) obj;
        if (zzze.equals(this.zzoo, zzjVar.zzoo) && zzze.equals(this.zzop, zzjVar.zzop) && zzze.equals(this.zzoq, zzjVar.zzoq)) {
            return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzjVar.zzcfc == null || zzjVar.zzcfc.isEmpty() : this.zzcfc.equals(zzjVar.zzcfc);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = zzze.hashCode(this.zzoo);
        int hashCode3 = zzze.hashCode(this.zzop);
        return ((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + zzze.hashCode(this.zzoq)) * 31) + ((this.zzcfc == null || this.zzcfc.isEmpty()) ? 0 : this.zzcfc.hashCode());
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
                int length = this.zzoo == null ? 0 : this.zzoo.length;
                zzp[] zzpVarArr = new zzp[zzb + length];
                int i = length;
                if (length != 0) {
                    System.arraycopy(this.zzoo, 0, zzpVarArr, 0, length);
                    i = length;
                }
                while (i < zzpVarArr.length - 1) {
                    zzpVarArr[i] = new zzp();
                    zzyxVar.zza(zzpVarArr[i]);
                    zzyxVar.zzug();
                    i++;
                }
                zzpVarArr[i] = new zzp();
                zzyxVar.zza(zzpVarArr[i]);
                this.zzoo = zzpVarArr;
            } else if (zzug == 18) {
                int zzb2 = zzzj.zzb(zzyxVar, 18);
                int length2 = this.zzop == null ? 0 : this.zzop.length;
                zzp[] zzpVarArr2 = new zzp[zzb2 + length2];
                int i2 = length2;
                if (length2 != 0) {
                    System.arraycopy(this.zzop, 0, zzpVarArr2, 0, length2);
                    i2 = length2;
                }
                while (i2 < zzpVarArr2.length - 1) {
                    zzpVarArr2[i2] = new zzp();
                    zzyxVar.zza(zzpVarArr2[i2]);
                    zzyxVar.zzug();
                    i2++;
                }
                zzpVarArr2[i2] = new zzp();
                zzyxVar.zza(zzpVarArr2[i2]);
                this.zzop = zzpVarArr2;
            } else if (zzug == 26) {
                int zzb3 = zzzj.zzb(zzyxVar, 26);
                int length3 = this.zzoq == null ? 0 : this.zzoq.length;
                zzi[] zziVarArr = new zzi[zzb3 + length3];
                int i3 = length3;
                if (length3 != 0) {
                    System.arraycopy(this.zzoq, 0, zziVarArr, 0, length3);
                    i3 = length3;
                }
                while (i3 < zziVarArr.length - 1) {
                    zziVarArr[i3] = new zzi();
                    zzyxVar.zza(zziVarArr[i3]);
                    zzyxVar.zzug();
                    i3++;
                }
                zziVarArr[i3] = new zzi();
                zzyxVar.zza(zziVarArr[i3]);
                this.zzoq = zziVarArr;
            } else if (!super.zza(zzyxVar, zzug)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.zzoo != null && this.zzoo.length > 0) {
            for (int i = 0; i < this.zzoo.length; i++) {
                zzp zzpVar = this.zzoo[i];
                if (zzpVar != null) {
                    zzyyVar.zza(1, zzpVar);
                }
            }
        }
        if (this.zzop != null && this.zzop.length > 0) {
            for (int i2 = 0; i2 < this.zzop.length; i2++) {
                zzp zzpVar2 = this.zzop[i2];
                if (zzpVar2 != null) {
                    zzyyVar.zza(2, zzpVar2);
                }
            }
        }
        if (this.zzoq != null && this.zzoq.length > 0) {
            for (int i3 = 0; i3 < this.zzoq.length; i3++) {
                zzi zziVar = this.zzoq[i3];
                if (zziVar != null) {
                    zzyyVar.zza(3, zziVar);
                }
            }
        }
        super.zza(zzyyVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final int zzf() {
        int zzf = super.zzf();
        int i = 0;
        int i2 = zzf;
        if (this.zzoo != null) {
            i2 = zzf;
            if (this.zzoo.length > 0) {
                for (int i3 = 0; i3 < this.zzoo.length; i3++) {
                    zzp zzpVar = this.zzoo[i3];
                    zzf = zzf;
                    if (zzpVar != null) {
                        zzf += zzyy.zzb(1, zzpVar);
                    }
                }
                i2 = zzf;
            }
        }
        int i4 = i2;
        if (this.zzop != null) {
            i4 = i2;
            if (this.zzop.length > 0) {
                i4 = i2;
                for (int i5 = 0; i5 < this.zzop.length; i5++) {
                    zzp zzpVar2 = this.zzop[i5];
                    i4 = i4;
                    if (zzpVar2 != null) {
                        i4 += zzyy.zzb(2, zzpVar2);
                    }
                }
            }
        }
        int i6 = i4;
        if (this.zzoq != null) {
            i6 = i4;
            if (this.zzoq.length > 0) {
                while (true) {
                    i6 = i4;
                    if (i >= this.zzoq.length) {
                        break;
                    }
                    zzi zziVar = this.zzoq[i];
                    i4 = i4;
                    if (zziVar != null) {
                        i4 += zzyy.zzb(3, zziVar);
                    }
                    i++;
                }
            }
        }
        return i6;
    }
}
