package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzab.class */
public final class zzab {
    private static final zzab zzG = new zzab(new zzz());
    public static final zzj<zzab> zza = zzx.zza;
    public final int zzA;
    public final int zzB;
    public final int zzC;
    public final int zzD;
    public final int zzE;
    public final int zzF;
    private int zzH;
    public final String zzb;
    public final String zzc;
    public final String zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;
    public final String zzj;
    public final zzdd zzk;
    public final String zzl;
    public final String zzm;
    public final int zzn;
    public final List<byte[]> zzo;
    public final zzs zzp;
    public final long zzq;
    public final int zzr;
    public final int zzs;
    public final float zzt;
    public final int zzu;
    public final float zzv;
    public final byte[] zzw;
    public final int zzx;
    public final zzm zzy;
    public final int zzz;

    /* JADX INFO: Access modifiers changed from: private */
    public zzab(zzz zzzVar) {
        String str;
        String str2;
        String str3;
        int i;
        int i2;
        int i3;
        String str4;
        zzdd zzddVar;
        String str5;
        String str6;
        int i4;
        List list;
        List<byte[]> list2;
        zzs zzsVar;
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
        zzm zzmVar;
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
        str = zzzVar.zza;
        this.zzb = str;
        str2 = zzzVar.zzb;
        this.zzc = str2;
        str3 = zzzVar.zzc;
        this.zzd = zzfn.zzK(str3);
        i = zzzVar.zzd;
        this.zze = i;
        this.zzf = 0;
        i2 = zzzVar.zze;
        int i24 = i2;
        this.zzg = i24;
        i3 = zzzVar.zzf;
        this.zzh = i3;
        this.zzi = i3 != -1 ? i3 : i24;
        str4 = zzzVar.zzg;
        this.zzj = str4;
        zzddVar = zzzVar.zzh;
        this.zzk = zzddVar;
        str5 = zzzVar.zzi;
        this.zzl = str5;
        str6 = zzzVar.zzj;
        this.zzm = str6;
        i4 = zzzVar.zzk;
        this.zzn = i4;
        list = zzzVar.zzl;
        if (list == null) {
            list2 = Collections.emptyList();
        } else {
            list3 = zzzVar.zzl;
            list2 = list3;
        }
        this.zzo = list2;
        zzsVar = zzzVar.zzm;
        this.zzp = zzsVar;
        j = zzzVar.zzn;
        this.zzq = j;
        i5 = zzzVar.zzo;
        this.zzr = i5;
        i6 = zzzVar.zzp;
        this.zzs = i6;
        f = zzzVar.zzq;
        this.zzt = f;
        i7 = zzzVar.zzr;
        if (i7 == -1) {
            i8 = 0;
        } else {
            i23 = zzzVar.zzr;
            i8 = i23;
        }
        this.zzu = i8;
        f2 = zzzVar.zzs;
        if (f2 == -1.0f) {
            f3 = 1.0f;
        } else {
            f4 = zzzVar.zzs;
            f3 = f4;
        }
        this.zzv = f3;
        bArr = zzzVar.zzt;
        this.zzw = bArr;
        i9 = zzzVar.zzu;
        this.zzx = i9;
        zzmVar = zzzVar.zzv;
        this.zzy = zzmVar;
        i10 = zzzVar.zzw;
        this.zzz = i10;
        i11 = zzzVar.zzx;
        this.zzA = i11;
        i12 = zzzVar.zzy;
        this.zzB = i12;
        i13 = zzzVar.zzz;
        if (i13 == -1) {
            i14 = 0;
        } else {
            i22 = zzzVar.zzz;
            i14 = i22;
        }
        this.zzC = i14;
        i15 = zzzVar.zzA;
        if (i15 == -1) {
            i16 = 0;
        } else {
            i21 = zzzVar.zzA;
            i16 = i21;
        }
        this.zzD = i16;
        i17 = zzzVar.zzB;
        this.zzE = i17;
        i18 = zzzVar.zzC;
        if (i18 != 0 || zzsVar == null) {
            i19 = zzzVar.zzC;
            i20 = i19;
        } else {
            i20 = 1;
        }
        this.zzF = i20;
    }

    public final boolean equals(Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj == null || zzab.class != obj.getClass()) {
            return false;
        }
        zzab zzabVar = (zzab) obj;
        int i2 = this.zzH;
        return (i2 == 0 || (i = zzabVar.zzH) == 0 || i2 == i) && this.zze == zzabVar.zze && this.zzg == zzabVar.zzg && this.zzh == zzabVar.zzh && this.zzn == zzabVar.zzn && this.zzq == zzabVar.zzq && this.zzr == zzabVar.zzr && this.zzs == zzabVar.zzs && this.zzu == zzabVar.zzu && this.zzx == zzabVar.zzx && this.zzz == zzabVar.zzz && this.zzA == zzabVar.zzA && this.zzB == zzabVar.zzB && this.zzC == zzabVar.zzC && this.zzD == zzabVar.zzD && this.zzE == zzabVar.zzE && this.zzF == zzabVar.zzF && Float.compare(this.zzt, zzabVar.zzt) == 0 && Float.compare(this.zzv, zzabVar.zzv) == 0 && zzfn.zzP(this.zzb, zzabVar.zzb) && zzfn.zzP(this.zzc, zzabVar.zzc) && zzfn.zzP(this.zzj, zzabVar.zzj) && zzfn.zzP(this.zzl, zzabVar.zzl) && zzfn.zzP(this.zzm, zzabVar.zzm) && zzfn.zzP(this.zzd, zzabVar.zzd) && Arrays.equals(this.zzw, zzabVar.zzw) && zzfn.zzP(this.zzk, zzabVar.zzk) && zzfn.zzP(this.zzy, zzabVar.zzy) && zzfn.zzP(this.zzp, zzabVar.zzp) && zzd(zzabVar);
    }

    public final int hashCode() {
        int i = this.zzH;
        int i2 = i;
        if (i == 0) {
            String str = this.zzb;
            int i3 = 0;
            int hashCode = str == null ? 0 : str.hashCode();
            String str2 = this.zzc;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.zzd;
            int hashCode3 = str3 == null ? 0 : str3.hashCode();
            int i4 = this.zze;
            int i5 = this.zzg;
            int i6 = this.zzh;
            String str4 = this.zzj;
            int hashCode4 = str4 == null ? 0 : str4.hashCode();
            zzdd zzddVar = this.zzk;
            int hashCode5 = zzddVar == null ? 0 : zzddVar.hashCode();
            String str5 = this.zzl;
            int hashCode6 = str5 == null ? 0 : str5.hashCode();
            String str6 = this.zzm;
            if (str6 != null) {
                i3 = str6.hashCode();
            }
            int i7 = this.zzn;
            int i8 = (int) this.zzq;
            int i9 = this.zzr;
            i2 = ((((((((((((((((Float.floatToIntBits(this.zzv) + ((((Float.floatToIntBits(this.zzt) + ((((((((((((((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + i4) * 961) + i5) * 31) + i6) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i3) * 31) + i7) * 31) + i8) * 31) + i9) * 31) + this.zzs) * 31)) * 31) + this.zzu) * 31)) * 31) + this.zzx) * 31) + this.zzz) * 31) + this.zzA) * 31) + this.zzB) * 31) + this.zzC) * 31) + this.zzD) * 31) + this.zzE) * 31) + this.zzF;
            this.zzH = i2;
        }
        return i2;
    }

    public final String toString() {
        String str = this.zzb;
        String str2 = this.zzc;
        String str3 = this.zzl;
        String str4 = this.zzm;
        String str5 = this.zzj;
        int i = this.zzi;
        String str6 = this.zzd;
        int i2 = this.zzr;
        int i3 = this.zzs;
        float f = this.zzt;
        int i4 = this.zzz;
        int i5 = this.zzA;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 104 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length());
        C0082b.m8749m(sb, "Format(", str, ", ", str2);
        C0082b.m8749m(sb, ", ", str3, ", ", str4);
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

    public final int zza() {
        int i;
        int i2 = this.zzr;
        if (i2 == -1 || (i = this.zzs) == -1) {
            return -1;
        }
        return i2 * i;
    }

    public final zzz zzb() {
        return new zzz(this, null);
    }

    public final zzab zzc(int i) {
        zzz zzzVar = new zzz(this, null);
        zzzVar.zzA(i);
        return new zzab(zzzVar);
    }

    public final boolean zzd(zzab zzabVar) {
        if (this.zzo.size() == zzabVar.zzo.size()) {
            for (int i = 0; i < this.zzo.size(); i++) {
                if (!Arrays.equals(this.zzo.get(i), zzabVar.zzo.get(i))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }
}
