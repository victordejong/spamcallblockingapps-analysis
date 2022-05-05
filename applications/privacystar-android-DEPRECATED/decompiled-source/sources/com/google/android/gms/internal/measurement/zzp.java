package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzp.class */
public final class zzp extends zzza<zzp> {
    private static volatile zzp[] zzqi;
    public int type = 1;
    public String string = "";
    public zzp[] zzqj = zzk();
    public zzp[] zzqk = zzk();
    public zzp[] zzql = zzk();
    public String zzqm = "";
    public String zzqn = "";
    public long zzqo = 0;
    public boolean zzqp = false;
    public zzp[] zzqq = zzk();
    public int[] zzqr = zzzj.zzcax;
    public boolean zzqs = false;

    public zzp() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: zzb */
    public final zzp zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int zzug = zzyxVar.zzug();
            switch (zzug) {
                case 0:
                    return this;
                case 8:
                    int position = zzyxVar.getPosition();
                    try {
                        int zzuy = zzyxVar.zzuy();
                        if (zzuy <= 0 || zzuy > 8) {
                            StringBuilder sb = new StringBuilder(36);
                            sb.append(zzuy);
                            sb.append(" is not a valid enum Type");
                            throw new IllegalArgumentException(sb.toString());
                            break;
                        } else {
                            this.type = zzuy;
                            break;
                        }
                    } catch (IllegalArgumentException e) {
                        zzyxVar.zzby(position);
                        zza(zzyxVar, zzug);
                        break;
                    }
                    break;
                case 18:
                    this.string = zzyxVar.readString();
                    break;
                case 26:
                    int zzb = zzzj.zzb(zzyxVar, 26);
                    int length = this.zzqj == null ? 0 : this.zzqj.length;
                    zzp[] zzpVarArr = new zzp[zzb + length];
                    int i = length;
                    if (length != 0) {
                        System.arraycopy(this.zzqj, 0, zzpVarArr, 0, length);
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
                    this.zzqj = zzpVarArr;
                    break;
                case 34:
                    int zzb2 = zzzj.zzb(zzyxVar, 34);
                    int length2 = this.zzqk == null ? 0 : this.zzqk.length;
                    zzp[] zzpVarArr2 = new zzp[zzb2 + length2];
                    int i2 = length2;
                    if (length2 != 0) {
                        System.arraycopy(this.zzqk, 0, zzpVarArr2, 0, length2);
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
                    this.zzqk = zzpVarArr2;
                    break;
                case 42:
                    int zzb3 = zzzj.zzb(zzyxVar, 42);
                    int length3 = this.zzql == null ? 0 : this.zzql.length;
                    zzp[] zzpVarArr3 = new zzp[zzb3 + length3];
                    int i3 = length3;
                    if (length3 != 0) {
                        System.arraycopy(this.zzql, 0, zzpVarArr3, 0, length3);
                        i3 = length3;
                    }
                    while (i3 < zzpVarArr3.length - 1) {
                        zzpVarArr3[i3] = new zzp();
                        zzyxVar.zza(zzpVarArr3[i3]);
                        zzyxVar.zzug();
                        i3++;
                    }
                    zzpVarArr3[i3] = new zzp();
                    zzyxVar.zza(zzpVarArr3[i3]);
                    this.zzql = zzpVarArr3;
                    break;
                case 50:
                    this.zzqm = zzyxVar.readString();
                    break;
                case 58:
                    this.zzqn = zzyxVar.readString();
                    break;
                case 64:
                    this.zzqo = zzyxVar.zzuz();
                    break;
                case 72:
                    this.zzqs = zzyxVar.zzum();
                    break;
                case 80:
                    int zzb4 = zzzj.zzb(zzyxVar, 80);
                    int[] iArr = new int[zzb4];
                    int i4 = 0;
                    for (int i5 = 0; i5 < zzb4; i5++) {
                        if (i5 != 0) {
                            zzyxVar.zzug();
                        }
                        int position2 = zzyxVar.getPosition();
                        try {
                            iArr[i4] = zzc(zzyxVar.zzuy());
                            i4++;
                        } catch (IllegalArgumentException e2) {
                            zzyxVar.zzby(position2);
                            zza(zzyxVar, zzug);
                        }
                    }
                    if (i4 == 0) {
                        break;
                    } else {
                        int length4 = this.zzqr == null ? 0 : this.zzqr.length;
                        if (length4 != 0 || i4 != iArr.length) {
                            int[] iArr2 = new int[length4 + i4];
                            if (length4 != 0) {
                                System.arraycopy(this.zzqr, 0, iArr2, 0, length4);
                            }
                            System.arraycopy(iArr, 0, iArr2, length4, i4);
                            this.zzqr = iArr2;
                            break;
                        } else {
                            this.zzqr = iArr;
                            break;
                        }
                    }
                case 82:
                    int zzaq = zzyxVar.zzaq(zzyxVar.zzuy());
                    int position3 = zzyxVar.getPosition();
                    int i6 = 0;
                    while (zzyxVar.zzyr() > 0) {
                        try {
                            zzc(zzyxVar.zzuy());
                            i6++;
                        } catch (IllegalArgumentException e3) {
                        }
                    }
                    if (i6 != 0) {
                        zzyxVar.zzby(position3);
                        int length5 = this.zzqr == null ? 0 : this.zzqr.length;
                        int[] iArr3 = new int[i6 + length5];
                        int i7 = length5;
                        if (length5 != 0) {
                            System.arraycopy(this.zzqr, 0, iArr3, 0, length5);
                            i7 = length5;
                        }
                        while (zzyxVar.zzyr() > 0) {
                            int position4 = zzyxVar.getPosition();
                            try {
                                iArr3[i7] = zzc(zzyxVar.zzuy());
                                i7++;
                            } catch (IllegalArgumentException e4) {
                                zzyxVar.zzby(position4);
                                zza(zzyxVar, 80);
                            }
                        }
                        this.zzqr = iArr3;
                    }
                    zzyxVar.zzar(zzaq);
                    break;
                case 90:
                    int zzb5 = zzzj.zzb(zzyxVar, 90);
                    int length6 = this.zzqq == null ? 0 : this.zzqq.length;
                    zzp[] zzpVarArr4 = new zzp[zzb5 + length6];
                    int i8 = length6;
                    if (length6 != 0) {
                        System.arraycopy(this.zzqq, 0, zzpVarArr4, 0, length6);
                        i8 = length6;
                    }
                    while (i8 < zzpVarArr4.length - 1) {
                        zzpVarArr4[i8] = new zzp();
                        zzyxVar.zza(zzpVarArr4[i8]);
                        zzyxVar.zzug();
                        i8++;
                    }
                    zzpVarArr4[i8] = new zzp();
                    zzyxVar.zza(zzpVarArr4[i8]);
                    this.zzqq = zzpVarArr4;
                    break;
                case 96:
                    this.zzqp = zzyxVar.zzum();
                    break;
                default:
                    if (super.zza(zzyxVar, zzug)) {
                        break;
                    } else {
                        return this;
                    }
            }
        }
    }

    private static int zzc(int i) {
        if (i > 0 && i <= 17) {
            return i;
        }
        StringBuilder sb = new StringBuilder(40);
        sb.append(i);
        sb.append(" is not a valid enum Escaping");
        throw new IllegalArgumentException(sb.toString());
    }

    public static zzp[] zzk() {
        if (zzqi == null) {
            synchronized (zzze.zzcfl) {
                if (zzqi == null) {
                    zzqi = new zzp[0];
                }
            }
        }
        return zzqi;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzp)) {
            return false;
        }
        zzp zzpVar = (zzp) obj;
        if (this.type != zzpVar.type) {
            return false;
        }
        if (this.string == null) {
            if (zzpVar.string != null) {
                return false;
            }
        } else if (!this.string.equals(zzpVar.string)) {
            return false;
        }
        if (!zzze.equals(this.zzqj, zzpVar.zzqj) || !zzze.equals(this.zzqk, zzpVar.zzqk) || !zzze.equals(this.zzql, zzpVar.zzql)) {
            return false;
        }
        if (this.zzqm == null) {
            if (zzpVar.zzqm != null) {
                return false;
            }
        } else if (!this.zzqm.equals(zzpVar.zzqm)) {
            return false;
        }
        if (this.zzqn == null) {
            if (zzpVar.zzqn != null) {
                return false;
            }
        } else if (!this.zzqn.equals(zzpVar.zzqn)) {
            return false;
        }
        if (this.zzqo == zzpVar.zzqo && this.zzqp == zzpVar.zzqp && zzze.equals(this.zzqq, zzpVar.zzqq) && zzze.equals(this.zzqr, zzpVar.zzqr) && this.zzqs == zzpVar.zzqs) {
            return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzpVar.zzcfc == null || zzpVar.zzcfc.isEmpty() : this.zzcfc.equals(zzpVar.zzcfc);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int i = this.type;
        int hashCode2 = this.string == null ? 0 : this.string.hashCode();
        int hashCode3 = zzze.hashCode(this.zzqj);
        int hashCode4 = zzze.hashCode(this.zzqk);
        int hashCode5 = zzze.hashCode(this.zzql);
        int hashCode6 = this.zzqm == null ? 0 : this.zzqm.hashCode();
        int hashCode7 = this.zzqn == null ? 0 : this.zzqn.hashCode();
        int i2 = (int) (this.zzqo ^ (this.zzqo >>> 32));
        int i3 = 1237;
        int i4 = this.zzqp ? 1231 : 1237;
        int hashCode8 = zzze.hashCode(this.zzqq);
        int hashCode9 = zzze.hashCode(this.zzqr);
        if (this.zzqs) {
            i3 = 1231;
        }
        int i5 = 0;
        if (this.zzcfc != null) {
            i5 = this.zzcfc.isEmpty() ? 0 : this.zzcfc.hashCode();
        }
        return ((((((((((((((((((((((((((hashCode + 527) * 31) + i) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i2) * 31) + i4) * 31) + hashCode8) * 31) + hashCode9) * 31) + i3) * 31) + i5;
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        zzyyVar.zzd(1, this.type);
        if (this.string != null && !this.string.equals("")) {
            zzyyVar.zzb(2, this.string);
        }
        if (this.zzqj != null && this.zzqj.length > 0) {
            for (int i = 0; i < this.zzqj.length; i++) {
                zzp zzpVar = this.zzqj[i];
                if (zzpVar != null) {
                    zzyyVar.zza(3, zzpVar);
                }
            }
        }
        if (this.zzqk != null && this.zzqk.length > 0) {
            for (int i2 = 0; i2 < this.zzqk.length; i2++) {
                zzp zzpVar2 = this.zzqk[i2];
                if (zzpVar2 != null) {
                    zzyyVar.zza(4, zzpVar2);
                }
            }
        }
        if (this.zzql != null && this.zzql.length > 0) {
            for (int i3 = 0; i3 < this.zzql.length; i3++) {
                zzp zzpVar3 = this.zzql[i3];
                if (zzpVar3 != null) {
                    zzyyVar.zza(5, zzpVar3);
                }
            }
        }
        if (this.zzqm != null && !this.zzqm.equals("")) {
            zzyyVar.zzb(6, this.zzqm);
        }
        if (this.zzqn != null && !this.zzqn.equals("")) {
            zzyyVar.zzb(7, this.zzqn);
        }
        if (this.zzqo != 0) {
            zzyyVar.zzi(8, this.zzqo);
        }
        if (this.zzqs) {
            zzyyVar.zzb(9, this.zzqs);
        }
        if (this.zzqr != null && this.zzqr.length > 0) {
            for (int i4 = 0; i4 < this.zzqr.length; i4++) {
                zzyyVar.zzd(10, this.zzqr[i4]);
            }
        }
        if (this.zzqq != null && this.zzqq.length > 0) {
            for (int i5 = 0; i5 < this.zzqq.length; i5++) {
                zzp zzpVar4 = this.zzqq[i5];
                if (zzpVar4 != null) {
                    zzyyVar.zza(11, zzpVar4);
                }
            }
        }
        if (this.zzqp) {
            zzyyVar.zzb(12, this.zzqp);
        }
        super.zza(zzyyVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    protected final int zzf() {
        int zzf = super.zzf() + zzyy.zzh(1, this.type);
        int i = zzf;
        if (this.string != null) {
            i = zzf;
            if (!this.string.equals("")) {
                i = zzf + zzyy.zzc(2, this.string);
            }
        }
        int i2 = 0;
        int i3 = i;
        if (this.zzqj != null) {
            i3 = i;
            if (this.zzqj.length > 0) {
                for (int i4 = 0; i4 < this.zzqj.length; i4++) {
                    zzp zzpVar = this.zzqj[i4];
                    i = i;
                    if (zzpVar != null) {
                        i += zzyy.zzb(3, zzpVar);
                    }
                }
                i3 = i;
            }
        }
        int i5 = i3;
        if (this.zzqk != null) {
            i5 = i3;
            if (this.zzqk.length > 0) {
                i5 = i3;
                for (int i6 = 0; i6 < this.zzqk.length; i6++) {
                    zzp zzpVar2 = this.zzqk[i6];
                    i5 = i5;
                    if (zzpVar2 != null) {
                        i5 += zzyy.zzb(4, zzpVar2);
                    }
                }
            }
        }
        int i7 = i5;
        if (this.zzql != null) {
            i7 = i5;
            if (this.zzql.length > 0) {
                for (int i8 = 0; i8 < this.zzql.length; i8++) {
                    zzp zzpVar3 = this.zzql[i8];
                    i5 = i5;
                    if (zzpVar3 != null) {
                        i5 += zzyy.zzb(5, zzpVar3);
                    }
                }
                i7 = i5;
            }
        }
        int i9 = i7;
        if (this.zzqm != null) {
            i9 = i7;
            if (!this.zzqm.equals("")) {
                i9 = i7 + zzyy.zzc(6, this.zzqm);
            }
        }
        int i10 = i9;
        if (this.zzqn != null) {
            i10 = i9;
            if (!this.zzqn.equals("")) {
                i10 = i9 + zzyy.zzc(7, this.zzqn);
            }
        }
        int i11 = i10;
        if (this.zzqo != 0) {
            i11 = i10 + zzyy.zzd(8, this.zzqo);
        }
        int i12 = i11;
        if (this.zzqs) {
            i12 = i11 + zzyy.zzbb(9) + 1;
        }
        int i13 = i12;
        if (this.zzqr != null) {
            i13 = i12;
            if (this.zzqr.length > 0) {
                int i14 = 0;
                for (int i15 = 0; i15 < this.zzqr.length; i15++) {
                    i14 += zzyy.zzbc(this.zzqr[i15]);
                }
                i13 = i12 + i14 + (this.zzqr.length * 1);
            }
        }
        int i16 = i13;
        if (this.zzqq != null) {
            i16 = i13;
            if (this.zzqq.length > 0) {
                while (true) {
                    i16 = i13;
                    if (i2 >= this.zzqq.length) {
                        break;
                    }
                    zzp zzpVar4 = this.zzqq[i2];
                    i13 = i13;
                    if (zzpVar4 != null) {
                        i13 += zzyy.zzb(11, zzpVar4);
                    }
                    i2++;
                }
            }
        }
        int i17 = i16;
        if (this.zzqp) {
            i17 = i16 + zzyy.zzbb(12) + 1;
        }
        return i17;
    }
}
