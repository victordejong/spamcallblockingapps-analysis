package com.google.android.gms.internal.clearcut;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgy.class */
public final class zzgy extends zzfu<zzgy> implements Cloneable {
    private String[] zzbiw;
    private String[] zzbix;
    private int[] zzbiy = zzgb.zzrx;
    private long[] zzbiz;
    private long[] zzbja;

    public zzgy() {
        String[] strArr = zzgb.zzsc;
        this.zzbiw = strArr;
        this.zzbix = strArr;
        long[] jArr = zzgb.zzry;
        this.zzbiz = jArr;
        this.zzbja = jArr;
        this.zzrj = null;
        this.zzrs = -1;
    }

    /* renamed from: zzgb */
    public final zzgy clone() {
        try {
            zzgy zzgyVar = (zzgy) super.clone();
            String[] strArr = this.zzbiw;
            if (strArr != null && strArr.length > 0) {
                zzgyVar.zzbiw = (String[]) strArr.clone();
            }
            String[] strArr2 = this.zzbix;
            if (strArr2 != null && strArr2.length > 0) {
                zzgyVar.zzbix = (String[]) strArr2.clone();
            }
            int[] iArr = this.zzbiy;
            if (iArr != null && iArr.length > 0) {
                zzgyVar.zzbiy = (int[]) iArr.clone();
            }
            long[] jArr = this.zzbiz;
            if (jArr != null && jArr.length > 0) {
                zzgyVar.zzbiz = (long[]) jArr.clone();
            }
            long[] jArr2 = this.zzbja;
            if (jArr2 != null && jArr2.length > 0) {
                zzgyVar.zzbja = (long[]) jArr2.clone();
            }
            return zzgyVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgy)) {
            return false;
        }
        zzgy zzgyVar = (zzgy) obj;
        if (!zzfy.equals(this.zzbiw, zzgyVar.zzbiw) || !zzfy.equals(this.zzbix, zzgyVar.zzbix) || !zzfy.equals(this.zzbiy, zzgyVar.zzbiy) || !zzfy.equals(this.zzbiz, zzgyVar.zzbiz) || !zzfy.equals(this.zzbja, zzgyVar.zzbja)) {
            return false;
        }
        zzfw zzfwVar = this.zzrj;
        if (zzfwVar != null && !zzfwVar.isEmpty()) {
            return this.zzrj.equals(zzgyVar.zzrj);
        }
        zzfw zzfwVar2 = zzgyVar.zzrj;
        return zzfwVar2 == null || zzfwVar2.isEmpty();
    }

    public final int hashCode() {
        int hashCode = zzfy.hashCode(this.zzbiw);
        int hashCode2 = zzfy.hashCode(this.zzbix);
        int hashCode3 = zzfy.hashCode(this.zzbiy);
        int hashCode4 = zzfy.hashCode(this.zzbiz);
        int hashCode5 = zzfy.hashCode(this.zzbja);
        zzfw zzfwVar = this.zzrj;
        return ((hashCode5 + ((hashCode4 + ((hashCode3 + ((((553293455 + hashCode) * 31) + hashCode2) * 31)) * 31)) * 31)) * 31) + ((zzfwVar == null || zzfwVar.isEmpty()) ? 0 : this.zzrj.hashCode());
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final void zza(zzfs zzfsVar) throws IOException {
        String[] strArr = this.zzbiw;
        if (strArr != null && strArr.length > 0) {
            int i = 0;
            while (true) {
                String[] strArr2 = this.zzbiw;
                if (i >= strArr2.length) {
                    break;
                }
                String str = strArr2[i];
                if (str != null) {
                    zzfsVar.zza(1, str);
                }
                i++;
            }
        }
        String[] strArr3 = this.zzbix;
        if (strArr3 != null && strArr3.length > 0) {
            int i2 = 0;
            while (true) {
                String[] strArr4 = this.zzbix;
                if (i2 >= strArr4.length) {
                    break;
                }
                String str2 = strArr4[i2];
                if (str2 != null) {
                    zzfsVar.zza(2, str2);
                }
                i2++;
            }
        }
        int[] iArr = this.zzbiy;
        if (iArr != null && iArr.length > 0) {
            int i3 = 0;
            while (true) {
                int[] iArr2 = this.zzbiy;
                if (i3 >= iArr2.length) {
                    break;
                }
                zzfsVar.zzc(3, iArr2[i3]);
                i3++;
            }
        }
        long[] jArr = this.zzbiz;
        if (jArr != null && jArr.length > 0) {
            int i4 = 0;
            while (true) {
                long[] jArr2 = this.zzbiz;
                if (i4 >= jArr2.length) {
                    break;
                }
                zzfsVar.zzi(4, jArr2[i4]);
                i4++;
            }
        }
        long[] jArr3 = this.zzbja;
        if (jArr3 != null && jArr3.length > 0) {
            int i5 = 0;
            while (true) {
                long[] jArr4 = this.zzbja;
                if (i5 >= jArr4.length) {
                    break;
                }
                zzfsVar.zzi(5, jArr4[i5]);
                i5++;
            }
        }
        super.zza(zzfsVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final int zzen() {
        long[] jArr;
        long[] jArr2;
        int[] iArr;
        int zzen = super.zzen();
        String[] strArr = this.zzbiw;
        int i = zzen;
        if (strArr != null) {
            i = zzen;
            if (strArr.length > 0) {
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    String[] strArr2 = this.zzbiw;
                    if (i2 >= strArr2.length) {
                        break;
                    }
                    String str = strArr2[i2];
                    int i5 = i4;
                    int i6 = i3;
                    if (str != null) {
                        i6 = i3 + 1;
                        i5 = i4 + zzfs.zzh(str);
                    }
                    i2++;
                    i4 = i5;
                    i3 = i6;
                }
                i = zzen + i4 + (i3 * 1);
            }
        }
        String[] strArr3 = this.zzbix;
        int i7 = i;
        if (strArr3 != null) {
            i7 = i;
            if (strArr3.length > 0) {
                int i8 = 0;
                int i9 = 0;
                int i10 = 0;
                while (true) {
                    String[] strArr4 = this.zzbix;
                    if (i10 >= strArr4.length) {
                        break;
                    }
                    String str2 = strArr4[i10];
                    int i11 = i9;
                    int i12 = i8;
                    if (str2 != null) {
                        i12 = i8 + 1;
                        i11 = i9 + zzfs.zzh(str2);
                    }
                    i10++;
                    i9 = i11;
                    i8 = i12;
                }
                i7 = i + i9 + (i8 * 1);
            }
        }
        int[] iArr2 = this.zzbiy;
        int i13 = i7;
        if (iArr2 != null) {
            i13 = i7;
            if (iArr2.length > 0) {
                int i14 = 0;
                int i15 = 0;
                while (true) {
                    iArr = this.zzbiy;
                    if (i14 >= iArr.length) {
                        break;
                    }
                    i15 += zzfs.zzs(iArr[i14]);
                    i14++;
                }
                i13 = i7 + i15 + (iArr.length * 1);
            }
        }
        long[] jArr3 = this.zzbiz;
        int i16 = i13;
        if (jArr3 != null) {
            i16 = i13;
            if (jArr3.length > 0) {
                int i17 = 0;
                int i18 = 0;
                while (true) {
                    jArr2 = this.zzbiz;
                    if (i17 >= jArr2.length) {
                        break;
                    }
                    i18 += zzfs.zzo(jArr2[i17]);
                    i17++;
                }
                i16 = i13 + i18 + (jArr2.length * 1);
            }
        }
        long[] jArr4 = this.zzbja;
        int i19 = i16;
        if (jArr4 != null) {
            i19 = i16;
            if (jArr4.length > 0) {
                int i20 = 0;
                int i21 = 0;
                while (true) {
                    jArr = this.zzbja;
                    if (i21 >= jArr.length) {
                        break;
                    }
                    i20 += zzfs.zzo(jArr[i21]);
                    i21++;
                }
                i19 = i16 + i20 + (jArr.length * 1);
            }
        }
        return i19;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu
    public final /* synthetic */ zzgy zzeo() throws CloneNotSupportedException {
        return (zzgy) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final /* synthetic */ zzfz zzep() throws CloneNotSupportedException {
        return (zzgy) clone();
    }
}
