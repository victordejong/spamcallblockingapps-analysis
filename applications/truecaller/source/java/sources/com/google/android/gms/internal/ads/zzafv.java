package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzafv.class */
public final class zzafv {
    public final int zzA;
    public final int zzB;
    public final int zzC;
    public final int zzD;
    public final int zzE;
    private int zzH;
    public final String zza;
    public final String zzb;
    public final String zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final String zzi;
    public final zzaiv zzj;
    public final String zzk;
    public final String zzl;
    public final int zzm;
    public final List<byte[]> zzn;
    public final zzn zzo;
    public final long zzp;
    public final int zzq;
    public final int zzr;
    public final float zzs;
    public final int zzt;
    public final float zzu;
    public final byte[] zzv;
    public final int zzw;
    public final zzj zzx;
    public final int zzy;
    public final int zzz;
    private static final zzafv zzG = new zzafv(new zzaft());
    public static final zzadw<zzafv> zzF = zzafs.zza;

    /* JADX INFO: Access modifiers changed from: private */
    public zzafv(zzaft zzaftVar) {
        String str;
        String str2;
        String str3;
        int i;
        int i2;
        int i3;
        String str4;
        zzaiv zzaivVar;
        String str5;
        String str6;
        int i4;
        List list;
        List<byte[]> list2;
        zzn zznVar;
        long j;
        int i5;
        int i6;
        float f;
        int i7;
        int i8;
        float f2;
        float f3;
        byte[] bArr;
        int i9;
        zzj zzjVar;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        float f4;
        int i23;
        List<byte[]> list3;
        str = zzaftVar.zza;
        this.zza = str;
        str2 = zzaftVar.zzb;
        this.zzb = str2;
        str3 = zzaftVar.zzc;
        this.zzc = zzamq.zzq(str3);
        i = zzaftVar.zzd;
        this.zzd = i;
        this.zze = 0;
        i2 = zzaftVar.zze;
        int i24 = i2;
        this.zzf = i24;
        i3 = zzaftVar.zzf;
        this.zzg = i3;
        this.zzh = i3 != -1 ? i3 : i24;
        str4 = zzaftVar.zzg;
        this.zzi = str4;
        zzaivVar = zzaftVar.zzh;
        this.zzj = zzaivVar;
        str5 = zzaftVar.zzi;
        this.zzk = str5;
        str6 = zzaftVar.zzj;
        this.zzl = str6;
        i4 = zzaftVar.zzk;
        this.zzm = i4;
        list = zzaftVar.zzl;
        if (list == null) {
            list2 = Collections.emptyList();
        } else {
            list3 = zzaftVar.zzl;
            list2 = list3;
        }
        this.zzn = list2;
        zznVar = zzaftVar.zzm;
        this.zzo = zznVar;
        j = zzaftVar.zzn;
        this.zzp = j;
        i5 = zzaftVar.zzo;
        this.zzq = i5;
        i6 = zzaftVar.zzp;
        this.zzr = i6;
        f = zzaftVar.zzq;
        this.zzs = f;
        i7 = zzaftVar.zzr;
        if (i7 == -1) {
            i8 = 0;
        } else {
            i23 = zzaftVar.zzr;
            i8 = i23;
        }
        this.zzt = i8;
        f2 = zzaftVar.zzs;
        if (f2 == -1.0f) {
            f3 = 1.0f;
        } else {
            f4 = zzaftVar.zzs;
            f3 = f4;
        }
        this.zzu = f3;
        bArr = zzaftVar.zzt;
        this.zzv = bArr;
        i9 = zzaftVar.zzu;
        this.zzw = i9;
        zzjVar = zzaftVar.zzv;
        this.zzx = zzjVar;
        i10 = zzaftVar.zzw;
        this.zzy = i10;
        i11 = zzaftVar.zzx;
        this.zzz = i11;
        i12 = zzaftVar.zzy;
        this.zzA = i12;
        i13 = zzaftVar.zzz;
        if (i13 == -1) {
            i14 = 0;
        } else {
            i22 = zzaftVar.zzz;
            i14 = i22;
        }
        this.zzB = i14;
        i15 = zzaftVar.zzA;
        if (i15 == -1) {
            i16 = 0;
        } else {
            i21 = zzaftVar.zzA;
            i16 = i21;
        }
        this.zzC = i16;
        i17 = zzaftVar.zzB;
        this.zzD = i17;
        i18 = zzaftVar.zzC;
        if (i18 != 0 || zznVar == null) {
            i19 = zzaftVar.zzC;
            i20 = i19;
        } else {
            i20 = 1;
        }
        this.zzE = i20;
    }

    public final boolean equals(Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj == null || zzafv.class != obj.getClass()) {
            return false;
        }
        zzafv zzafvVar = (zzafv) obj;
        int i2 = this.zzH;
        return (i2 == 0 || (i = zzafvVar.zzH) == 0 || i2 == i) && this.zzd == zzafvVar.zzd && this.zzf == zzafvVar.zzf && this.zzg == zzafvVar.zzg && this.zzm == zzafvVar.zzm && this.zzp == zzafvVar.zzp && this.zzq == zzafvVar.zzq && this.zzr == zzafvVar.zzr && this.zzt == zzafvVar.zzt && this.zzw == zzafvVar.zzw && this.zzy == zzafvVar.zzy && this.zzz == zzafvVar.zzz && this.zzA == zzafvVar.zzA && this.zzB == zzafvVar.zzB && this.zzC == zzafvVar.zzC && this.zzD == zzafvVar.zzD && this.zzE == zzafvVar.zzE && Float.compare(this.zzs, zzafvVar.zzs) == 0 && Float.compare(this.zzu, zzafvVar.zzu) == 0 && zzamq.zzc(this.zza, zzafvVar.zza) && zzamq.zzc(this.zzb, zzafvVar.zzb) && zzamq.zzc(this.zzi, zzafvVar.zzi) && zzamq.zzc(this.zzk, zzafvVar.zzk) && zzamq.zzc(this.zzl, zzafvVar.zzl) && zzamq.zzc(this.zzc, zzafvVar.zzc) && Arrays.equals(this.zzv, zzafvVar.zzv) && zzamq.zzc(this.zzj, zzafvVar.zzj) && zzamq.zzc(this.zzx, zzafvVar.zzx) && zzamq.zzc(this.zzo, zzafvVar.zzo) && zzd(zzafvVar);
    }

    public final int hashCode() {
        int i = this.zzH;
        int i2 = i;
        if (i == 0) {
            String str = this.zza;
            int i3 = 0;
            int hashCode = str == null ? 0 : str.hashCode();
            String str2 = this.zzb;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.zzc;
            int hashCode3 = str3 == null ? 0 : str3.hashCode();
            int i4 = this.zzd;
            int i5 = this.zzf;
            int i6 = this.zzg;
            String str4 = this.zzi;
            int hashCode4 = str4 == null ? 0 : str4.hashCode();
            zzaiv zzaivVar = this.zzj;
            int hashCode5 = zzaivVar == null ? 0 : zzaivVar.hashCode();
            String str5 = this.zzk;
            int hashCode6 = str5 == null ? 0 : str5.hashCode();
            String str6 = this.zzl;
            if (str6 != null) {
                i3 = str6.hashCode();
            }
            int i7 = this.zzm;
            int i8 = (int) this.zzp;
            int i9 = this.zzq;
            i2 = ((((((((((((((((Float.floatToIntBits(this.zzu) + ((((Float.floatToIntBits(this.zzs) + ((((((((((((((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + i4) * 961) + i5) * 31) + i6) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i3) * 31) + i7) * 31) + i8) * 31) + i9) * 31) + this.zzr) * 31)) * 31) + this.zzt) * 31)) * 31) + this.zzw) * 31) + this.zzy) * 31) + this.zzz) * 31) + this.zzA) * 31) + this.zzB) * 31) + this.zzC) * 31) + this.zzD) * 31) + this.zzE;
            this.zzH = i2;
        }
        return i2;
    }

    public final String toString() {
        String str = this.zza;
        String str2 = this.zzb;
        String str3 = this.zzk;
        String str4 = this.zzl;
        String str5 = this.zzi;
        int i = this.zzh;
        String str6 = this.zzc;
        int i2 = this.zzq;
        int i3 = this.zzr;
        float f = this.zzs;
        int i4 = this.zzy;
        int i5 = this.zzz;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 104 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length());
        C22128a.m8666T0(sb, "Format(", str, ", ", str2);
        C22128a.m8666T0(sb, ", ", str3, ", ", str4);
        sb.append(", ");
        sb.append(str5);
        sb.append(", ");
        sb.append(i);
        sb.append(", ");
        sb.append(str6);
        sb.append(", [");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        sb.append(", ");
        sb.append(f);
        sb.append("], [");
        sb.append(i4);
        sb.append(", ");
        sb.append(i5);
        sb.append("])");
        return sb.toString();
    }

    public final zzaft zza() {
        return new zzaft(this, null);
    }

    public final zzafv zzb(int i) {
        zzaft zzaftVar = new zzaft(this, null);
        zzaftVar.zzag(i);
        return new zzafv(zzaftVar);
    }

    public final int zzc() {
        int i;
        int i2 = this.zzq;
        if (i2 == -1 || (i = this.zzr) == -1) {
            return -1;
        }
        return i2 * i;
    }

    public final boolean zzd(zzafv zzafvVar) {
        if (this.zzn.size() == zzafvVar.zzn.size()) {
            for (int i = 0; i < this.zzn.size(); i++) {
                if (!Arrays.equals(this.zzn.get(i), zzafvVar.zzn.get(i))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }
}
