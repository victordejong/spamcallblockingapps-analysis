package com.google.android.gms.internal.clearcut;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgy.class */
public final class zzgy extends zzfu<zzgy> implements Cloneable {
    private String[] zzbiw = zzgb.zzsc;
    private String[] zzbix = zzgb.zzsc;
    private int[] zzbiy = zzgb.zzrx;
    private long[] zzbiz = zzgb.zzry;
    private long[] zzbja = zzgb.zzry;

    public zzgy() {
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
        return (this.zzrj == null || this.zzrj.isEmpty()) ? zzgyVar.zzrj == null || zzgyVar.zzrj.isEmpty() : this.zzrj.equals(zzgyVar.zzrj);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = zzfy.hashCode(this.zzbiw);
        int hashCode3 = zzfy.hashCode(this.zzbix);
        int hashCode4 = zzfy.hashCode(this.zzbiy);
        int hashCode5 = zzfy.hashCode(this.zzbiz);
        return ((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + zzfy.hashCode(this.zzbja)) * 31) + ((this.zzrj == null || this.zzrj.isEmpty()) ? 0 : this.zzrj.hashCode());
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final void zza(zzfs zzfsVar) {
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
        int i;
        int zzen = super.zzen();
        String[] strArr = this.zzbiw;
        int i2 = zzen;
        if (strArr != null) {
            i2 = zzen;
            if (strArr.length > 0) {
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    i = i5;
                    String[] strArr2 = this.zzbiw;
                    if (i3 >= strArr2.length) {
                        break;
                    }
                    String str = strArr2[i3];
                    int i6 = i4;
                    int i7 = i;
                    if (str != null) {
                        i7 = i + 1;
                        i6 = i4 + zzfs.zzh(str);
                    }
                    i3++;
                    i4 = i6;
                    i5 = i7;
                }
                i2 = zzen + i4 + (i * 1);
            }
        }
        String[] strArr3 = this.zzbix;
        int i8 = i2;
        if (strArr3 != null) {
            i8 = i2;
            if (strArr3.length > 0) {
                int i9 = 0;
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    String[] strArr4 = this.zzbix;
                    if (i9 >= strArr4.length) {
                        break;
                    }
                    String str2 = strArr4[i9];
                    int i12 = i11;
                    int i13 = i10;
                    if (str2 != null) {
                        i13 = i10 + 1;
                        i12 = i11 + zzfs.zzh(str2);
                    }
                    i9++;
                    i11 = i12;
                    i10 = i13;
                }
                i8 = i2 + i11 + (i10 * 1);
            }
        }
        int[] iArr2 = this.zzbiy;
        int i14 = i8;
        if (iArr2 != null) {
            i14 = i8;
            if (iArr2.length > 0) {
                int i15 = 0;
                int i16 = 0;
                while (true) {
                    iArr = this.zzbiy;
                    if (i15 >= iArr.length) {
                        break;
                    }
                    i16 += zzfs.zzs(iArr[i15]);
                    i15++;
                }
                i14 = i8 + i16 + (iArr.length * 1);
            }
        }
        long[] jArr3 = this.zzbiz;
        int i17 = i14;
        if (jArr3 != null) {
            i17 = i14;
            if (jArr3.length > 0) {
                int i18 = 0;
                int i19 = 0;
                while (true) {
                    jArr2 = this.zzbiz;
                    if (i18 >= jArr2.length) {
                        break;
                    }
                    i19 += zzfs.zzo(jArr2[i18]);
                    i18++;
                }
                i17 = i14 + i19 + (jArr2.length * 1);
            }
        }
        long[] jArr4 = this.zzbja;
        int i20 = i17;
        if (jArr4 != null) {
            i20 = i17;
            if (jArr4.length > 0) {
                int i21 = 0;
                int i22 = 0;
                while (true) {
                    jArr = this.zzbja;
                    if (i22 >= jArr.length) {
                        break;
                    }
                    i21 += zzfs.zzo(jArr[i22]);
                    i22++;
                }
                i20 = i17 + i21 + (jArr.length * 1);
            }
        }
        return i20;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu
    public final /* synthetic */ zzgy zzeo() {
        return (zzgy) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final /* synthetic */ zzfz zzep() {
        return (zzgy) clone();
    }
}
