package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgj.class */
public final class zzgj extends zzza<zzgj> {
    public long[] zzaye = zzzj.zzcfr;
    public long[] zzayf = zzzj.zzcfr;
    public zzge[] zzayg = zzge.zzmp();
    public zzgk[] zzayh = zzgk.zzmt();

    public zzgj() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgj)) {
            return false;
        }
        zzgj zzgjVar = (zzgj) obj;
        if (zzze.equals(this.zzaye, zzgjVar.zzaye) && zzze.equals(this.zzayf, zzgjVar.zzayf) && zzze.equals(this.zzayg, zzgjVar.zzayg) && zzze.equals(this.zzayh, zzgjVar.zzayh)) {
            return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzgjVar.zzcfc == null || zzgjVar.zzcfc.isEmpty() : this.zzcfc.equals(zzgjVar.zzcfc);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = zzze.hashCode(this.zzaye);
        int hashCode3 = zzze.hashCode(this.zzayf);
        int hashCode4 = zzze.hashCode(this.zzayg);
        return ((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + zzze.hashCode(this.zzayh)) * 31) + ((this.zzcfc == null || this.zzcfc.isEmpty()) ? 0 : this.zzcfc.hashCode());
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int zzug = zzyxVar.zzug();
            if (zzug == 0) {
                return this;
            }
            if (zzug == 8) {
                int zzb = zzzj.zzb(zzyxVar, 8);
                int length = this.zzaye == null ? 0 : this.zzaye.length;
                long[] jArr = new long[zzb + length];
                int i = length;
                if (length != 0) {
                    System.arraycopy(this.zzaye, 0, jArr, 0, length);
                    i = length;
                }
                while (i < jArr.length - 1) {
                    jArr[i] = zzyxVar.zzuz();
                    zzyxVar.zzug();
                    i++;
                }
                jArr[i] = zzyxVar.zzuz();
                this.zzaye = jArr;
            } else if (zzug == 10) {
                int zzaq = zzyxVar.zzaq(zzyxVar.zzuy());
                int position = zzyxVar.getPosition();
                int i2 = 0;
                while (zzyxVar.zzyr() > 0) {
                    zzyxVar.zzuz();
                    i2++;
                }
                zzyxVar.zzby(position);
                int length2 = this.zzaye == null ? 0 : this.zzaye.length;
                long[] jArr2 = new long[i2 + length2];
                int i3 = length2;
                if (length2 != 0) {
                    System.arraycopy(this.zzaye, 0, jArr2, 0, length2);
                    i3 = length2;
                }
                while (i3 < jArr2.length) {
                    jArr2[i3] = zzyxVar.zzuz();
                    i3++;
                }
                this.zzaye = jArr2;
                zzyxVar.zzar(zzaq);
            } else if (zzug == 16) {
                int zzb2 = zzzj.zzb(zzyxVar, 16);
                int length3 = this.zzayf == null ? 0 : this.zzayf.length;
                long[] jArr3 = new long[zzb2 + length3];
                int i4 = length3;
                if (length3 != 0) {
                    System.arraycopy(this.zzayf, 0, jArr3, 0, length3);
                    i4 = length3;
                }
                while (i4 < jArr3.length - 1) {
                    jArr3[i4] = zzyxVar.zzuz();
                    zzyxVar.zzug();
                    i4++;
                }
                jArr3[i4] = zzyxVar.zzuz();
                this.zzayf = jArr3;
            } else if (zzug == 18) {
                int zzaq2 = zzyxVar.zzaq(zzyxVar.zzuy());
                int position2 = zzyxVar.getPosition();
                int i5 = 0;
                while (zzyxVar.zzyr() > 0) {
                    zzyxVar.zzuz();
                    i5++;
                }
                zzyxVar.zzby(position2);
                int length4 = this.zzayf == null ? 0 : this.zzayf.length;
                long[] jArr4 = new long[i5 + length4];
                int i6 = length4;
                if (length4 != 0) {
                    System.arraycopy(this.zzayf, 0, jArr4, 0, length4);
                    i6 = length4;
                }
                while (i6 < jArr4.length) {
                    jArr4[i6] = zzyxVar.zzuz();
                    i6++;
                }
                this.zzayf = jArr4;
                zzyxVar.zzar(zzaq2);
            } else if (zzug == 26) {
                int zzb3 = zzzj.zzb(zzyxVar, 26);
                int length5 = this.zzayg == null ? 0 : this.zzayg.length;
                zzge[] zzgeVarArr = new zzge[zzb3 + length5];
                int i7 = length5;
                if (length5 != 0) {
                    System.arraycopy(this.zzayg, 0, zzgeVarArr, 0, length5);
                    i7 = length5;
                }
                while (i7 < zzgeVarArr.length - 1) {
                    zzgeVarArr[i7] = new zzge();
                    zzyxVar.zza(zzgeVarArr[i7]);
                    zzyxVar.zzug();
                    i7++;
                }
                zzgeVarArr[i7] = new zzge();
                zzyxVar.zza(zzgeVarArr[i7]);
                this.zzayg = zzgeVarArr;
            } else if (zzug == 34) {
                int zzb4 = zzzj.zzb(zzyxVar, 34);
                int length6 = this.zzayh == null ? 0 : this.zzayh.length;
                zzgk[] zzgkVarArr = new zzgk[zzb4 + length6];
                int i8 = length6;
                if (length6 != 0) {
                    System.arraycopy(this.zzayh, 0, zzgkVarArr, 0, length6);
                    i8 = length6;
                }
                while (i8 < zzgkVarArr.length - 1) {
                    zzgkVarArr[i8] = new zzgk();
                    zzyxVar.zza(zzgkVarArr[i8]);
                    zzyxVar.zzug();
                    i8++;
                }
                zzgkVarArr[i8] = new zzgk();
                zzyxVar.zza(zzgkVarArr[i8]);
                this.zzayh = zzgkVarArr;
            } else if (!super.zza(zzyxVar, zzug)) {
                return this;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.zzaye != null && this.zzaye.length > 0) {
            for (int i = 0; i < this.zzaye.length; i++) {
                zzyyVar.zza(1, this.zzaye[i]);
            }
        }
        if (this.zzayf != null && this.zzayf.length > 0) {
            for (int i2 = 0; i2 < this.zzayf.length; i2++) {
                zzyyVar.zza(2, this.zzayf[i2]);
            }
        }
        if (this.zzayg != null && this.zzayg.length > 0) {
            for (int i3 = 0; i3 < this.zzayg.length; i3++) {
                zzge zzgeVar = this.zzayg[i3];
                if (zzgeVar != null) {
                    zzyyVar.zza(3, zzgeVar);
                }
            }
        }
        if (this.zzayh != null && this.zzayh.length > 0) {
            for (int i4 = 0; i4 < this.zzayh.length; i4++) {
                zzgk zzgkVar = this.zzayh[i4];
                if (zzgkVar != null) {
                    zzyyVar.zza(4, zzgkVar);
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
        if (this.zzaye != null) {
            i2 = zzf;
            if (this.zzaye.length > 0) {
                int i3 = 0;
                for (int i4 = 0; i4 < this.zzaye.length; i4++) {
                    i3 += zzyy.zzbi(this.zzaye[i4]);
                }
                i2 = zzf + i3 + (this.zzaye.length * 1);
            }
        }
        int i5 = i2;
        if (this.zzayf != null) {
            i5 = i2;
            if (this.zzayf.length > 0) {
                int i6 = 0;
                for (int i7 = 0; i7 < this.zzayf.length; i7++) {
                    i6 += zzyy.zzbi(this.zzayf[i7]);
                }
                i5 = i2 + i6 + (this.zzayf.length * 1);
            }
        }
        int i8 = i5;
        if (this.zzayg != null) {
            i8 = i5;
            if (this.zzayg.length > 0) {
                i8 = i5;
                for (int i9 = 0; i9 < this.zzayg.length; i9++) {
                    zzge zzgeVar = this.zzayg[i9];
                    i8 = i8;
                    if (zzgeVar != null) {
                        i8 += zzyy.zzb(3, zzgeVar);
                    }
                }
            }
        }
        int i10 = i8;
        if (this.zzayh != null) {
            i10 = i8;
            if (this.zzayh.length > 0) {
                while (true) {
                    i10 = i8;
                    if (i >= this.zzayh.length) {
                        break;
                    }
                    zzgk zzgkVar = this.zzayh[i];
                    i8 = i8;
                    if (zzgkVar != null) {
                        i8 += zzyy.zzb(4, zzgkVar);
                    }
                    i++;
                }
            }
        }
        return i10;
    }
}
