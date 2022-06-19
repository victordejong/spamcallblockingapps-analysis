package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzge;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzha.class */
public final class zzha extends zzfu<zzha> implements Cloneable {
    private byte[] zzbjn;
    public byte[] zzbjp;
    public byte[] zzbjw;
    public long zzbjf = 0;
    public long zzbjg = 0;
    private long zzbjh = 0;
    private String tag = "";
    public int zzbji = 0;
    private String zzbjj = "";
    private int zzbjk = 0;
    private boolean zzbjl = false;
    private zzhb[] zzbjm = zzhb.zzge();
    private zzge.zzd zzbjo = null;
    private String zzbjq = "";
    private String zzbjr = "";
    private zzgy zzbjs = null;
    private String zzbjt = "";
    public long zzbju = 180000;
    private zzgz zzbjv = null;
    private String zzbjx = "";
    private int zzbjy = 0;
    private int[] zzbjz = zzgb.zzrx;
    private long zzbka = 0;
    private zzge.zzs zzbkb = null;
    public boolean zzbkc = false;

    public zzha() {
        byte[] bArr = zzgb.zzse;
        this.zzbjn = bArr;
        this.zzbjp = bArr;
        this.zzbjw = bArr;
        this.zzrj = null;
        this.zzrs = -1;
    }

    /* renamed from: zzgd */
    public final zzha clone() {
        try {
            zzha zzhaVar = (zzha) super.clone();
            zzhb[] zzhbVarArr = this.zzbjm;
            if (zzhbVarArr != null && zzhbVarArr.length > 0) {
                zzhaVar.zzbjm = new zzhb[zzhbVarArr.length];
                int i = 0;
                while (true) {
                    zzhb[] zzhbVarArr2 = this.zzbjm;
                    if (i >= zzhbVarArr2.length) {
                        break;
                    }
                    if (zzhbVarArr2[i] != null) {
                        zzhaVar.zzbjm[i] = (zzhb) zzhbVarArr2[i].clone();
                    }
                    i++;
                }
            }
            zzge.zzd zzdVar = this.zzbjo;
            if (zzdVar != null) {
                zzhaVar.zzbjo = zzdVar;
            }
            zzgy zzgyVar = this.zzbjs;
            if (zzgyVar != null) {
                zzhaVar.zzbjs = (zzgy) zzgyVar.clone();
            }
            zzgz zzgzVar = this.zzbjv;
            if (zzgzVar != null) {
                zzhaVar.zzbjv = (zzgz) zzgzVar.clone();
            }
            int[] iArr = this.zzbjz;
            if (iArr != null && iArr.length > 0) {
                zzhaVar.zzbjz = (int[]) iArr.clone();
            }
            zzge.zzs zzsVar = this.zzbkb;
            if (zzsVar != null) {
                zzhaVar.zzbkb = zzsVar;
            }
            return zzhaVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzha)) {
            return false;
        }
        zzha zzhaVar = (zzha) obj;
        if (this.zzbjf != zzhaVar.zzbjf || this.zzbjg != zzhaVar.zzbjg) {
            return false;
        }
        String str = this.tag;
        if (str == null) {
            if (zzhaVar.tag != null) {
                return false;
            }
        } else if (!str.equals(zzhaVar.tag)) {
            return false;
        }
        if (this.zzbji != zzhaVar.zzbji) {
            return false;
        }
        String str2 = this.zzbjj;
        if (str2 == null) {
            if (zzhaVar.zzbjj != null) {
                return false;
            }
        } else if (!str2.equals(zzhaVar.zzbjj)) {
            return false;
        }
        if (!zzfy.equals(this.zzbjm, zzhaVar.zzbjm) || !Arrays.equals(this.zzbjn, zzhaVar.zzbjn)) {
            return false;
        }
        zzge.zzd zzdVar = this.zzbjo;
        if (zzdVar == null) {
            if (zzhaVar.zzbjo != null) {
                return false;
            }
        } else if (!zzdVar.equals(zzhaVar.zzbjo)) {
            return false;
        }
        if (!Arrays.equals(this.zzbjp, zzhaVar.zzbjp)) {
            return false;
        }
        String str3 = this.zzbjq;
        if (str3 == null) {
            if (zzhaVar.zzbjq != null) {
                return false;
            }
        } else if (!str3.equals(zzhaVar.zzbjq)) {
            return false;
        }
        String str4 = this.zzbjr;
        if (str4 == null) {
            if (zzhaVar.zzbjr != null) {
                return false;
            }
        } else if (!str4.equals(zzhaVar.zzbjr)) {
            return false;
        }
        zzgy zzgyVar = this.zzbjs;
        if (zzgyVar == null) {
            if (zzhaVar.zzbjs != null) {
                return false;
            }
        } else if (!zzgyVar.equals(zzhaVar.zzbjs)) {
            return false;
        }
        String str5 = this.zzbjt;
        if (str5 == null) {
            if (zzhaVar.zzbjt != null) {
                return false;
            }
        } else if (!str5.equals(zzhaVar.zzbjt)) {
            return false;
        }
        if (this.zzbju != zzhaVar.zzbju) {
            return false;
        }
        zzgz zzgzVar = this.zzbjv;
        if (zzgzVar == null) {
            if (zzhaVar.zzbjv != null) {
                return false;
            }
        } else if (!zzgzVar.equals(zzhaVar.zzbjv)) {
            return false;
        }
        if (!Arrays.equals(this.zzbjw, zzhaVar.zzbjw)) {
            return false;
        }
        String str6 = this.zzbjx;
        if (str6 == null) {
            if (zzhaVar.zzbjx != null) {
                return false;
            }
        } else if (!str6.equals(zzhaVar.zzbjx)) {
            return false;
        }
        if (!zzfy.equals(this.zzbjz, zzhaVar.zzbjz)) {
            return false;
        }
        zzge.zzs zzsVar = this.zzbkb;
        if (zzsVar == null) {
            if (zzhaVar.zzbkb != null) {
                return false;
            }
        } else if (!zzsVar.equals(zzhaVar.zzbkb)) {
            return false;
        }
        if (this.zzbkc != zzhaVar.zzbkc) {
            return false;
        }
        zzfw zzfwVar = this.zzrj;
        if (zzfwVar != null && !zzfwVar.isEmpty()) {
            return this.zzrj.equals(zzhaVar.zzrj);
        }
        zzfw zzfwVar2 = zzhaVar.zzrj;
        return zzfwVar2 == null || zzfwVar2.isEmpty();
    }

    public final int hashCode() {
        long j = this.zzbjf;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.zzbjg;
        int i2 = (int) (j2 ^ (j2 >>> 32));
        String str = this.tag;
        int hashCode = str == null ? 0 : str.hashCode();
        int i3 = this.zzbji;
        String str2 = this.zzbjj;
        int hashCode2 = str2 == null ? 0 : str2.hashCode();
        int i4 = 1237;
        int hashCode3 = zzfy.hashCode(this.zzbjm);
        int hashCode4 = Arrays.hashCode(this.zzbjn);
        zzge.zzd zzdVar = this.zzbjo;
        int hashCode5 = zzdVar == null ? 0 : zzdVar.hashCode();
        int hashCode6 = Arrays.hashCode(this.zzbjp);
        String str3 = this.zzbjq;
        int hashCode7 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.zzbjr;
        int hashCode8 = str4 == null ? 0 : str4.hashCode();
        zzgy zzgyVar = this.zzbjs;
        int hashCode9 = zzgyVar == null ? 0 : zzgyVar.hashCode();
        String str5 = this.zzbjt;
        int hashCode10 = str5 == null ? 0 : str5.hashCode();
        long j3 = this.zzbju;
        int i5 = (int) (j3 ^ (j3 >>> 32));
        zzgz zzgzVar = this.zzbjv;
        int hashCode11 = zzgzVar == null ? 0 : zzgzVar.hashCode();
        int hashCode12 = Arrays.hashCode(this.zzbjw);
        String str6 = this.zzbjx;
        int hashCode13 = str6 == null ? 0 : str6.hashCode();
        int hashCode14 = zzfy.hashCode(this.zzbjz);
        zzge.zzs zzsVar = this.zzbkb;
        int hashCode15 = zzsVar == null ? 0 : zzsVar.hashCode();
        if (this.zzbkc) {
            i4 = 1231;
        }
        zzfw zzfwVar = this.zzrj;
        int i6 = 0;
        if (zzfwVar != null) {
            i6 = zzfwVar.isEmpty() ? 0 : this.zzrj.hashCode();
        }
        return ((((((hashCode14 + ((((hashCode12 + ((((((((((((((hashCode6 + ((((hashCode4 + ((((((((((((((553293672 + i) * 31) + i2) * 31 * 31) + hashCode) * 31) + i3) * 31) + hashCode2) * 31 * 31) + 1237) * 31) + hashCode3) * 31)) * 31) + hashCode5) * 31)) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + i5) * 31) + hashCode11) * 31)) * 31) + hashCode13) * 31 * 31)) * 31 * 31) + hashCode15) * 31) + i4) * 31) + i6;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final void zza(zzfs zzfsVar) throws IOException {
        long j = this.zzbjf;
        if (j != 0) {
            zzfsVar.zzi(1, j);
        }
        String str = this.tag;
        if (str != null && !str.equals("")) {
            zzfsVar.zza(2, this.tag);
        }
        zzhb[] zzhbVarArr = this.zzbjm;
        if (zzhbVarArr != null && zzhbVarArr.length > 0) {
            int i = 0;
            while (true) {
                zzhb[] zzhbVarArr2 = this.zzbjm;
                if (i >= zzhbVarArr2.length) {
                    break;
                }
                zzhb zzhbVar = zzhbVarArr2[i];
                if (zzhbVar != null) {
                    zzfsVar.zza(3, zzhbVar);
                }
                i++;
            }
        }
        byte[] bArr = this.zzbjn;
        byte[] bArr2 = zzgb.zzse;
        if (!Arrays.equals(bArr, bArr2)) {
            zzfsVar.zza(4, this.zzbjn);
        }
        if (!Arrays.equals(this.zzbjp, bArr2)) {
            zzfsVar.zza(6, this.zzbjp);
        }
        zzgy zzgyVar = this.zzbjs;
        if (zzgyVar != null) {
            zzfsVar.zza(7, zzgyVar);
        }
        String str2 = this.zzbjq;
        if (str2 != null && !str2.equals("")) {
            zzfsVar.zza(8, this.zzbjq);
        }
        zzge.zzd zzdVar = this.zzbjo;
        if (zzdVar != null) {
            zzfsVar.zze(9, zzdVar);
        }
        int i2 = this.zzbji;
        if (i2 != 0) {
            zzfsVar.zzc(11, i2);
        }
        String str3 = this.zzbjr;
        if (str3 != null && !str3.equals("")) {
            zzfsVar.zza(13, this.zzbjr);
        }
        String str4 = this.zzbjt;
        if (str4 != null && !str4.equals("")) {
            zzfsVar.zza(14, this.zzbjt);
        }
        long j2 = this.zzbju;
        if (j2 != 180000) {
            zzfsVar.zzb(15, 0);
            zzfsVar.zzn(zzfs.zzj(j2));
        }
        zzgz zzgzVar = this.zzbjv;
        if (zzgzVar != null) {
            zzfsVar.zza(16, zzgzVar);
        }
        long j3 = this.zzbjg;
        if (j3 != 0) {
            zzfsVar.zzi(17, j3);
        }
        if (!Arrays.equals(this.zzbjw, bArr2)) {
            zzfsVar.zza(18, this.zzbjw);
        }
        int[] iArr = this.zzbjz;
        if (iArr != null && iArr.length > 0) {
            int i3 = 0;
            while (true) {
                int[] iArr2 = this.zzbjz;
                if (i3 >= iArr2.length) {
                    break;
                }
                zzfsVar.zzc(20, iArr2[i3]);
                i3++;
            }
        }
        zzge.zzs zzsVar = this.zzbkb;
        if (zzsVar != null) {
            zzfsVar.zze(23, zzsVar);
        }
        String str5 = this.zzbjx;
        if (str5 != null && !str5.equals("")) {
            zzfsVar.zza(24, this.zzbjx);
        }
        boolean z = this.zzbkc;
        if (z) {
            zzfsVar.zzb(25, z);
        }
        String str6 = this.zzbjj;
        if (str6 != null && !str6.equals("")) {
            zzfsVar.zza(26, this.zzbjj);
        }
        super.zza(zzfsVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final int zzen() {
        int[] iArr;
        int zzen = super.zzen();
        long j = this.zzbjf;
        int i = zzen;
        if (j != 0) {
            i = zzen + zzfs.zzd(1, j);
        }
        String str = this.tag;
        int i2 = i;
        if (str != null) {
            i2 = i;
            if (!str.equals("")) {
                i2 = i + zzfs.zzb(2, this.tag);
            }
        }
        zzhb[] zzhbVarArr = this.zzbjm;
        int i3 = i2;
        if (zzhbVarArr != null) {
            i3 = i2;
            if (zzhbVarArr.length > 0) {
                int i4 = 0;
                while (true) {
                    zzhb[] zzhbVarArr2 = this.zzbjm;
                    i3 = i2;
                    if (i4 >= zzhbVarArr2.length) {
                        break;
                    }
                    zzhb zzhbVar = zzhbVarArr2[i4];
                    int i5 = i2;
                    if (zzhbVar != null) {
                        i5 = i2 + zzfs.zzb(3, zzhbVar);
                    }
                    i4++;
                    i2 = i5;
                }
            }
        }
        byte[] bArr = this.zzbjn;
        byte[] bArr2 = zzgb.zzse;
        int i6 = i3;
        if (!Arrays.equals(bArr, bArr2)) {
            i6 = i3 + zzfs.zzb(4, this.zzbjn);
        }
        int i7 = i6;
        if (!Arrays.equals(this.zzbjp, bArr2)) {
            i7 = i6 + zzfs.zzb(6, this.zzbjp);
        }
        zzgy zzgyVar = this.zzbjs;
        int i8 = i7;
        if (zzgyVar != null) {
            i8 = i7 + zzfs.zzb(7, zzgyVar);
        }
        String str2 = this.zzbjq;
        int i9 = i8;
        if (str2 != null) {
            i9 = i8;
            if (!str2.equals("")) {
                i9 = i8 + zzfs.zzb(8, this.zzbjq);
            }
        }
        zzge.zzd zzdVar = this.zzbjo;
        int i10 = i9;
        if (zzdVar != null) {
            i10 = i9 + zzbn.zzc(9, zzdVar);
        }
        int i11 = this.zzbji;
        int i12 = i10;
        if (i11 != 0) {
            i12 = i10 + zzfs.zzs(i11) + zzfs.zzr(11);
        }
        String str3 = this.zzbjr;
        int i13 = i12;
        if (str3 != null) {
            i13 = i12;
            if (!str3.equals("")) {
                i13 = i12 + zzfs.zzb(13, this.zzbjr);
            }
        }
        String str4 = this.zzbjt;
        int i14 = i13;
        if (str4 != null) {
            i14 = i13;
            if (!str4.equals("")) {
                i14 = i13 + zzfs.zzb(14, this.zzbjt);
            }
        }
        long j2 = this.zzbju;
        int i15 = i14;
        if (j2 != 180000) {
            i15 = i14 + zzfs.zzo(zzfs.zzj(j2)) + zzfs.zzr(15);
        }
        zzgz zzgzVar = this.zzbjv;
        int i16 = i15;
        if (zzgzVar != null) {
            i16 = i15 + zzfs.zzb(16, zzgzVar);
        }
        long j3 = this.zzbjg;
        int i17 = i16;
        if (j3 != 0) {
            i17 = i16 + zzfs.zzd(17, j3);
        }
        int i18 = i17;
        if (!Arrays.equals(this.zzbjw, bArr2)) {
            i18 = i17 + zzfs.zzb(18, this.zzbjw);
        }
        int[] iArr2 = this.zzbjz;
        int i19 = i18;
        if (iArr2 != null) {
            i19 = i18;
            if (iArr2.length > 0) {
                int i20 = 0;
                int i21 = 0;
                while (true) {
                    iArr = this.zzbjz;
                    if (i21 >= iArr.length) {
                        break;
                    }
                    i20 += zzfs.zzs(iArr[i21]);
                    i21++;
                }
                i19 = i18 + i20 + (iArr.length * 2);
            }
        }
        zzge.zzs zzsVar = this.zzbkb;
        int i22 = i19;
        if (zzsVar != null) {
            i22 = i19 + zzbn.zzc(23, zzsVar);
        }
        String str5 = this.zzbjx;
        int i23 = i22;
        if (str5 != null) {
            i23 = i22;
            if (!str5.equals("")) {
                i23 = i22 + zzfs.zzb(24, this.zzbjx);
            }
        }
        int i24 = i23;
        if (this.zzbkc) {
            i24 = i23 + zzfs.zzr(25) + 1;
        }
        String str6 = this.zzbjj;
        int i25 = i24;
        if (str6 != null) {
            i25 = i24;
            if (!str6.equals("")) {
                i25 = i24 + zzfs.zzb(26, this.zzbjj);
            }
        }
        return i25;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu
    public final /* synthetic */ zzha zzeo() throws CloneNotSupportedException {
        return (zzha) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final /* synthetic */ zzfz zzep() throws CloneNotSupportedException {
        return (zzha) clone();
    }
}
