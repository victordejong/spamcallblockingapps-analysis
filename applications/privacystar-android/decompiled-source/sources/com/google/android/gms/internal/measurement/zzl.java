package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzc;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzl.class */
public final class zzl extends zzza<zzl> {
    private String[] zzos = zzzj.zzcfv;
    public String[] zzot = zzzj.zzcfv;
    public zzp[] zzou = zzp.zzk();
    public zzk[] zzov = zzk.zzh();
    public zzh[] zzow = zzh.zze();
    public zzh[] zzox = zzh.zze();
    public zzh[] zzoy = zzh.zze();
    public zzm[] zzoz = zzm.zzi();
    private String zzpa = "";
    private String zzpb = "";
    private String zzpc = "0";
    public String version = "";
    private zzc.zza zzpd = null;
    private float zzpe = 0.0f;
    private boolean zzpf = false;
    private String[] zzpg = zzzj.zzcfv;
    public int zzph = 0;

    public zzl() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzl)) {
            return false;
        }
        zzl zzlVar = (zzl) obj;
        if (!zzze.equals(this.zzos, zzlVar.zzos) || !zzze.equals(this.zzot, zzlVar.zzot) || !zzze.equals(this.zzou, zzlVar.zzou) || !zzze.equals(this.zzov, zzlVar.zzov) || !zzze.equals(this.zzow, zzlVar.zzow) || !zzze.equals(this.zzox, zzlVar.zzox) || !zzze.equals(this.zzoy, zzlVar.zzoy) || !zzze.equals(this.zzoz, zzlVar.zzoz)) {
            return false;
        }
        if (this.zzpa == null) {
            if (zzlVar.zzpa != null) {
                return false;
            }
        } else if (!this.zzpa.equals(zzlVar.zzpa)) {
            return false;
        }
        if (this.zzpb == null) {
            if (zzlVar.zzpb != null) {
                return false;
            }
        } else if (!this.zzpb.equals(zzlVar.zzpb)) {
            return false;
        }
        if (this.zzpc == null) {
            if (zzlVar.zzpc != null) {
                return false;
            }
        } else if (!this.zzpc.equals(zzlVar.zzpc)) {
            return false;
        }
        if (this.version == null) {
            if (zzlVar.version != null) {
                return false;
            }
        } else if (!this.version.equals(zzlVar.version)) {
            return false;
        }
        if (this.zzpd == null) {
            if (zzlVar.zzpd != null) {
                return false;
            }
        } else if (!this.zzpd.equals(zzlVar.zzpd)) {
            return false;
        }
        if (Float.floatToIntBits(this.zzpe) == Float.floatToIntBits(zzlVar.zzpe) && this.zzpf == zzlVar.zzpf && zzze.equals(this.zzpg, zzlVar.zzpg) && this.zzph == zzlVar.zzph) {
            return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzlVar.zzcfc == null || zzlVar.zzcfc.isEmpty() : this.zzcfc.equals(zzlVar.zzcfc);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = zzze.hashCode(this.zzos);
        int hashCode3 = zzze.hashCode(this.zzot);
        int hashCode4 = zzze.hashCode(this.zzou);
        int hashCode5 = zzze.hashCode(this.zzov);
        int hashCode6 = zzze.hashCode(this.zzow);
        int hashCode7 = zzze.hashCode(this.zzox);
        int hashCode8 = zzze.hashCode(this.zzoy);
        int hashCode9 = zzze.hashCode(this.zzoz);
        int hashCode10 = this.zzpa == null ? 0 : this.zzpa.hashCode();
        int hashCode11 = this.zzpb == null ? 0 : this.zzpb.hashCode();
        int hashCode12 = this.zzpc == null ? 0 : this.zzpc.hashCode();
        int hashCode13 = this.version == null ? 0 : this.version.hashCode();
        zzc.zza zzaVar = this.zzpd;
        int hashCode14 = zzaVar == null ? 0 : zzaVar.hashCode();
        int floatToIntBits = Float.floatToIntBits(this.zzpe);
        int i = this.zzpf ? 1231 : 1237;
        int hashCode15 = zzze.hashCode(this.zzpg);
        int i2 = this.zzph;
        int i3 = 0;
        if (this.zzcfc != null) {
            i3 = this.zzcfc.isEmpty() ? 0 : this.zzcfc.hashCode();
        }
        return ((((((((((((((((((((((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + floatToIntBits) * 31) + i) * 31) + hashCode15) * 31) + i2) * 31) + i3;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int zzug = zzyxVar.zzug();
            switch (zzug) {
                case 0:
                    return this;
                case 10:
                    int zzb = zzzj.zzb(zzyxVar, 10);
                    int length = this.zzot == null ? 0 : this.zzot.length;
                    String[] strArr = new String[zzb + length];
                    int i = length;
                    if (length != 0) {
                        System.arraycopy(this.zzot, 0, strArr, 0, length);
                        i = length;
                    }
                    while (i < strArr.length - 1) {
                        strArr[i] = zzyxVar.readString();
                        zzyxVar.zzug();
                        i++;
                    }
                    strArr[i] = zzyxVar.readString();
                    this.zzot = strArr;
                    break;
                case 18:
                    int zzb2 = zzzj.zzb(zzyxVar, 18);
                    int length2 = this.zzou == null ? 0 : this.zzou.length;
                    zzp[] zzpVarArr = new zzp[zzb2 + length2];
                    int i2 = length2;
                    if (length2 != 0) {
                        System.arraycopy(this.zzou, 0, zzpVarArr, 0, length2);
                        i2 = length2;
                    }
                    while (i2 < zzpVarArr.length - 1) {
                        zzpVarArr[i2] = new zzp();
                        zzyxVar.zza(zzpVarArr[i2]);
                        zzyxVar.zzug();
                        i2++;
                    }
                    zzpVarArr[i2] = new zzp();
                    zzyxVar.zza(zzpVarArr[i2]);
                    this.zzou = zzpVarArr;
                    break;
                case 26:
                    int zzb3 = zzzj.zzb(zzyxVar, 26);
                    int length3 = this.zzov == null ? 0 : this.zzov.length;
                    zzk[] zzkVarArr = new zzk[zzb3 + length3];
                    int i3 = length3;
                    if (length3 != 0) {
                        System.arraycopy(this.zzov, 0, zzkVarArr, 0, length3);
                        i3 = length3;
                    }
                    while (i3 < zzkVarArr.length - 1) {
                        zzkVarArr[i3] = new zzk();
                        zzyxVar.zza(zzkVarArr[i3]);
                        zzyxVar.zzug();
                        i3++;
                    }
                    zzkVarArr[i3] = new zzk();
                    zzyxVar.zza(zzkVarArr[i3]);
                    this.zzov = zzkVarArr;
                    break;
                case 34:
                    int zzb4 = zzzj.zzb(zzyxVar, 34);
                    int length4 = this.zzow == null ? 0 : this.zzow.length;
                    zzh[] zzhVarArr = new zzh[zzb4 + length4];
                    int i4 = length4;
                    if (length4 != 0) {
                        System.arraycopy(this.zzow, 0, zzhVarArr, 0, length4);
                        i4 = length4;
                    }
                    while (i4 < zzhVarArr.length - 1) {
                        zzhVarArr[i4] = new zzh();
                        zzyxVar.zza(zzhVarArr[i4]);
                        zzyxVar.zzug();
                        i4++;
                    }
                    zzhVarArr[i4] = new zzh();
                    zzyxVar.zza(zzhVarArr[i4]);
                    this.zzow = zzhVarArr;
                    break;
                case 42:
                    int zzb5 = zzzj.zzb(zzyxVar, 42);
                    int length5 = this.zzox == null ? 0 : this.zzox.length;
                    zzh[] zzhVarArr2 = new zzh[zzb5 + length5];
                    int i5 = length5;
                    if (length5 != 0) {
                        System.arraycopy(this.zzox, 0, zzhVarArr2, 0, length5);
                        i5 = length5;
                    }
                    while (i5 < zzhVarArr2.length - 1) {
                        zzhVarArr2[i5] = new zzh();
                        zzyxVar.zza(zzhVarArr2[i5]);
                        zzyxVar.zzug();
                        i5++;
                    }
                    zzhVarArr2[i5] = new zzh();
                    zzyxVar.zza(zzhVarArr2[i5]);
                    this.zzox = zzhVarArr2;
                    break;
                case 50:
                    int zzb6 = zzzj.zzb(zzyxVar, 50);
                    int length6 = this.zzoy == null ? 0 : this.zzoy.length;
                    zzh[] zzhVarArr3 = new zzh[zzb6 + length6];
                    int i6 = length6;
                    if (length6 != 0) {
                        System.arraycopy(this.zzoy, 0, zzhVarArr3, 0, length6);
                        i6 = length6;
                    }
                    while (i6 < zzhVarArr3.length - 1) {
                        zzhVarArr3[i6] = new zzh();
                        zzyxVar.zza(zzhVarArr3[i6]);
                        zzyxVar.zzug();
                        i6++;
                    }
                    zzhVarArr3[i6] = new zzh();
                    zzyxVar.zza(zzhVarArr3[i6]);
                    this.zzoy = zzhVarArr3;
                    break;
                case 58:
                    int zzb7 = zzzj.zzb(zzyxVar, 58);
                    int length7 = this.zzoz == null ? 0 : this.zzoz.length;
                    zzm[] zzmVarArr = new zzm[zzb7 + length7];
                    int i7 = length7;
                    if (length7 != 0) {
                        System.arraycopy(this.zzoz, 0, zzmVarArr, 0, length7);
                        i7 = length7;
                    }
                    while (i7 < zzmVarArr.length - 1) {
                        zzmVarArr[i7] = new zzm();
                        zzyxVar.zza(zzmVarArr[i7]);
                        zzyxVar.zzug();
                        i7++;
                    }
                    zzmVarArr[i7] = new zzm();
                    zzyxVar.zza(zzmVarArr[i7]);
                    this.zzoz = zzmVarArr;
                    break;
                case 74:
                    this.zzpa = zzyxVar.readString();
                    break;
                case 82:
                    this.zzpb = zzyxVar.readString();
                    break;
                case 98:
                    this.zzpc = zzyxVar.readString();
                    break;
                case 106:
                    this.version = zzyxVar.readString();
                    break;
                case 114:
                    this.zzpd = (zzc.zza) zzyxVar.zza(zzc.zza.zza());
                    break;
                case 125:
                    this.zzpe = Float.intBitsToFloat(zzyxVar.zzva());
                    break;
                case 130:
                    int zzb8 = zzzj.zzb(zzyxVar, 130);
                    int length8 = this.zzpg == null ? 0 : this.zzpg.length;
                    String[] strArr2 = new String[zzb8 + length8];
                    int i8 = length8;
                    if (length8 != 0) {
                        System.arraycopy(this.zzpg, 0, strArr2, 0, length8);
                        i8 = length8;
                    }
                    while (i8 < strArr2.length - 1) {
                        strArr2[i8] = zzyxVar.readString();
                        zzyxVar.zzug();
                        i8++;
                    }
                    strArr2[i8] = zzyxVar.readString();
                    this.zzpg = strArr2;
                    break;
                case 136:
                    this.zzph = zzyxVar.zzuy();
                    break;
                case 144:
                    this.zzpf = zzyxVar.zzum();
                    break;
                case 154:
                    int zzb9 = zzzj.zzb(zzyxVar, 154);
                    int length9 = this.zzos == null ? 0 : this.zzos.length;
                    String[] strArr3 = new String[zzb9 + length9];
                    int i9 = length9;
                    if (length9 != 0) {
                        System.arraycopy(this.zzos, 0, strArr3, 0, length9);
                        i9 = length9;
                    }
                    while (i9 < strArr3.length - 1) {
                        strArr3[i9] = zzyxVar.readString();
                        zzyxVar.zzug();
                        i9++;
                    }
                    strArr3[i9] = zzyxVar.readString();
                    this.zzos = strArr3;
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

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.zzot != null && this.zzot.length > 0) {
            for (int i = 0; i < this.zzot.length; i++) {
                String str = this.zzot[i];
                if (str != null) {
                    zzyyVar.zzb(1, str);
                }
            }
        }
        if (this.zzou != null && this.zzou.length > 0) {
            for (int i2 = 0; i2 < this.zzou.length; i2++) {
                zzp zzpVar = this.zzou[i2];
                if (zzpVar != null) {
                    zzyyVar.zza(2, zzpVar);
                }
            }
        }
        if (this.zzov != null && this.zzov.length > 0) {
            for (int i3 = 0; i3 < this.zzov.length; i3++) {
                zzk zzkVar = this.zzov[i3];
                if (zzkVar != null) {
                    zzyyVar.zza(3, zzkVar);
                }
            }
        }
        if (this.zzow != null && this.zzow.length > 0) {
            for (int i4 = 0; i4 < this.zzow.length; i4++) {
                zzh zzhVar = this.zzow[i4];
                if (zzhVar != null) {
                    zzyyVar.zza(4, zzhVar);
                }
            }
        }
        if (this.zzox != null && this.zzox.length > 0) {
            for (int i5 = 0; i5 < this.zzox.length; i5++) {
                zzh zzhVar2 = this.zzox[i5];
                if (zzhVar2 != null) {
                    zzyyVar.zza(5, zzhVar2);
                }
            }
        }
        if (this.zzoy != null && this.zzoy.length > 0) {
            for (int i6 = 0; i6 < this.zzoy.length; i6++) {
                zzh zzhVar3 = this.zzoy[i6];
                if (zzhVar3 != null) {
                    zzyyVar.zza(6, zzhVar3);
                }
            }
        }
        if (this.zzoz != null && this.zzoz.length > 0) {
            for (int i7 = 0; i7 < this.zzoz.length; i7++) {
                zzm zzmVar = this.zzoz[i7];
                if (zzmVar != null) {
                    zzyyVar.zza(7, zzmVar);
                }
            }
        }
        if (this.zzpa != null && !this.zzpa.equals("")) {
            zzyyVar.zzb(9, this.zzpa);
        }
        if (this.zzpb != null && !this.zzpb.equals("")) {
            zzyyVar.zzb(10, this.zzpb);
        }
        if (this.zzpc != null && !this.zzpc.equals("0")) {
            zzyyVar.zzb(12, this.zzpc);
        }
        if (this.version != null && !this.version.equals("")) {
            zzyyVar.zzb(13, this.version);
        }
        if (this.zzpd != null) {
            zzyyVar.zze(14, this.zzpd);
        }
        if (Float.floatToIntBits(this.zzpe) != Float.floatToIntBits(0.0f)) {
            zzyyVar.zza(15, this.zzpe);
        }
        if (this.zzpg != null && this.zzpg.length > 0) {
            for (int i8 = 0; i8 < this.zzpg.length; i8++) {
                String str2 = this.zzpg[i8];
                if (str2 != null) {
                    zzyyVar.zzb(16, str2);
                }
            }
        }
        if (this.zzph != 0) {
            zzyyVar.zzd(17, this.zzph);
        }
        if (this.zzpf) {
            zzyyVar.zzb(18, this.zzpf);
        }
        if (this.zzos != null && this.zzos.length > 0) {
            for (int i9 = 0; i9 < this.zzos.length; i9++) {
                String str3 = this.zzos[i9];
                if (str3 != null) {
                    zzyyVar.zzb(19, str3);
                }
            }
        }
        super.zza(zzyyVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final int zzf() {
        int zzf = super.zzf();
        int i = zzf;
        if (this.zzot != null) {
            i = zzf;
            if (this.zzot.length > 0) {
                int i2 = 0;
                int i3 = 0;
                for (int i4 = 0; i4 < this.zzot.length; i4++) {
                    String str = this.zzot[i4];
                    i2 = i2;
                    i3 = i3;
                    if (str != null) {
                        i3++;
                        i2 += zzyy.zzfx(str);
                    }
                }
                i = zzf + i2 + (i3 * 1);
            }
        }
        int i5 = i;
        if (this.zzou != null) {
            i5 = i;
            if (this.zzou.length > 0) {
                for (int i6 = 0; i6 < this.zzou.length; i6++) {
                    zzp zzpVar = this.zzou[i6];
                    i = i;
                    if (zzpVar != null) {
                        i += zzyy.zzb(2, zzpVar);
                    }
                }
                i5 = i;
            }
        }
        int i7 = i5;
        if (this.zzov != null) {
            i7 = i5;
            if (this.zzov.length > 0) {
                i7 = i5;
                for (int i8 = 0; i8 < this.zzov.length; i8++) {
                    zzk zzkVar = this.zzov[i8];
                    i7 = i7;
                    if (zzkVar != null) {
                        i7 += zzyy.zzb(3, zzkVar);
                    }
                }
            }
        }
        int i9 = i7;
        if (this.zzow != null) {
            i9 = i7;
            if (this.zzow.length > 0) {
                for (int i10 = 0; i10 < this.zzow.length; i10++) {
                    zzh zzhVar = this.zzow[i10];
                    i7 = i7;
                    if (zzhVar != null) {
                        i7 += zzyy.zzb(4, zzhVar);
                    }
                }
                i9 = i7;
            }
        }
        int i11 = i9;
        if (this.zzox != null) {
            i11 = i9;
            if (this.zzox.length > 0) {
                i11 = i9;
                for (int i12 = 0; i12 < this.zzox.length; i12++) {
                    zzh zzhVar2 = this.zzox[i12];
                    i11 = i11;
                    if (zzhVar2 != null) {
                        i11 += zzyy.zzb(5, zzhVar2);
                    }
                }
            }
        }
        int i13 = i11;
        if (this.zzoy != null) {
            i13 = i11;
            if (this.zzoy.length > 0) {
                for (int i14 = 0; i14 < this.zzoy.length; i14++) {
                    zzh zzhVar3 = this.zzoy[i14];
                    i11 = i11;
                    if (zzhVar3 != null) {
                        i11 += zzyy.zzb(6, zzhVar3);
                    }
                }
                i13 = i11;
            }
        }
        int i15 = i13;
        if (this.zzoz != null) {
            i15 = i13;
            if (this.zzoz.length > 0) {
                i15 = i13;
                for (int i16 = 0; i16 < this.zzoz.length; i16++) {
                    zzm zzmVar = this.zzoz[i16];
                    i15 = i15;
                    if (zzmVar != null) {
                        i15 += zzyy.zzb(7, zzmVar);
                    }
                }
            }
        }
        int i17 = i15;
        if (this.zzpa != null) {
            i17 = i15;
            if (!this.zzpa.equals("")) {
                i17 = i15 + zzyy.zzc(9, this.zzpa);
            }
        }
        int i18 = i17;
        if (this.zzpb != null) {
            i18 = i17;
            if (!this.zzpb.equals("")) {
                i18 = i17 + zzyy.zzc(10, this.zzpb);
            }
        }
        int i19 = i18;
        if (this.zzpc != null) {
            i19 = i18;
            if (!this.zzpc.equals("0")) {
                i19 = i18 + zzyy.zzc(12, this.zzpc);
            }
        }
        int i20 = i19;
        if (this.version != null) {
            i20 = i19;
            if (!this.version.equals("")) {
                i20 = i19 + zzyy.zzc(13, this.version);
            }
        }
        int i21 = i20;
        if (this.zzpd != null) {
            i21 = i20 + zzut.zzc(14, this.zzpd);
        }
        int i22 = i21;
        if (Float.floatToIntBits(this.zzpe) != Float.floatToIntBits(0.0f)) {
            i22 = i21 + zzyy.zzbb(15) + 4;
        }
        int i23 = i22;
        if (this.zzpg != null) {
            i23 = i22;
            if (this.zzpg.length > 0) {
                int i24 = 0;
                int i25 = 0;
                for (int i26 = 0; i26 < this.zzpg.length; i26++) {
                    String str2 = this.zzpg[i26];
                    i24 = i24;
                    i25 = i25;
                    if (str2 != null) {
                        i25++;
                        i24 += zzyy.zzfx(str2);
                    }
                }
                i23 = i22 + i24 + (i25 * 2);
            }
        }
        int i27 = i23;
        if (this.zzph != 0) {
            i27 = i23 + zzyy.zzh(17, this.zzph);
        }
        int i28 = i27;
        if (this.zzpf) {
            i28 = i27 + zzyy.zzbb(18) + 1;
        }
        int i29 = i28;
        if (this.zzos != null) {
            i29 = i28;
            if (this.zzos.length > 0) {
                int i30 = 0;
                int i31 = 0;
                for (int i32 = 0; i32 < this.zzos.length; i32++) {
                    String str3 = this.zzos[i32];
                    i30 = i30;
                    i31 = i31;
                    if (str3 != null) {
                        i31++;
                        i30 += zzyy.zzfx(str3);
                    }
                }
                i29 = i28 + i30 + (i31 * 2);
            }
        }
        return i29;
    }
}
