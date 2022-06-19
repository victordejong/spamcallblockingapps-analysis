package com.google.android.gms.internal.clearcut;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgz.class */
public final class zzgz extends zzfu<zzgz> implements Cloneable {
    private byte[] zzbjb = zzgb.zzse;
    private String zzbjc = "";
    private byte[][] zzbjd = zzgb.zzsd;
    private boolean zzbje = false;

    public zzgz() {
        this.zzrj = null;
        this.zzrs = -1;
    }

    /* renamed from: zzgc */
    public final zzgz clone() {
        try {
            zzgz zzgzVar = (zzgz) super.clone();
            byte[][] bArr = this.zzbjd;
            if (bArr != null && bArr.length > 0) {
                zzgzVar.zzbjd = (byte[][]) bArr.clone();
            }
            return zzgzVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgz)) {
            return false;
        }
        zzgz zzgzVar = (zzgz) obj;
        if (!Arrays.equals(this.zzbjb, zzgzVar.zzbjb)) {
            return false;
        }
        String str = this.zzbjc;
        if (str == null) {
            if (zzgzVar.zzbjc != null) {
                return false;
            }
        } else if (!str.equals(zzgzVar.zzbjc)) {
            return false;
        }
        if (!zzfy.zza(this.zzbjd, zzgzVar.zzbjd)) {
            return false;
        }
        return (this.zzrj == null || this.zzrj.isEmpty()) ? zzgzVar.zzrj == null || zzgzVar.zzrj.isEmpty() : this.zzrj.equals(zzgzVar.zzrj);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = Arrays.hashCode(this.zzbjb);
        String str = this.zzbjc;
        int hashCode3 = str == null ? 0 : str.hashCode();
        int zza = zzfy.zza(this.zzbjd);
        int i = 0;
        if (this.zzrj != null) {
            i = this.zzrj.isEmpty() ? 0 : this.zzrj.hashCode();
        }
        return ((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + zza) * 31) + 1237) * 31) + i;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final void zza(zzfs zzfsVar) {
        if (!Arrays.equals(this.zzbjb, zzgb.zzse)) {
            zzfsVar.zza(1, this.zzbjb);
        }
        byte[][] bArr = this.zzbjd;
        if (bArr != null && bArr.length > 0) {
            int i = 0;
            while (true) {
                byte[][] bArr2 = this.zzbjd;
                if (i >= bArr2.length) {
                    break;
                }
                byte[] bArr3 = bArr2[i];
                if (bArr3 != null) {
                    zzfsVar.zza(2, bArr3);
                }
                i++;
            }
        }
        String str = this.zzbjc;
        if (str != null && !str.equals("")) {
            zzfsVar.zza(4, this.zzbjc);
        }
        super.zza(zzfsVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final int zzen() {
        int i;
        int zzen = super.zzen();
        int i2 = zzen;
        if (!Arrays.equals(this.zzbjb, zzgb.zzse)) {
            i2 = zzen + zzfs.zzb(1, this.zzbjb);
        }
        byte[][] bArr = this.zzbjd;
        int i3 = i2;
        if (bArr != null) {
            i3 = i2;
            if (bArr.length > 0) {
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                while (true) {
                    i = i6;
                    byte[][] bArr2 = this.zzbjd;
                    if (i4 >= bArr2.length) {
                        break;
                    }
                    byte[] bArr3 = bArr2[i4];
                    int i7 = i5;
                    int i8 = i;
                    if (bArr3 != null) {
                        i8 = i + 1;
                        i7 = i5 + zzfs.zzh(bArr3);
                    }
                    i4++;
                    i5 = i7;
                    i6 = i8;
                }
                i3 = i2 + i5 + (i * 1);
            }
        }
        String str = this.zzbjc;
        int i9 = i3;
        if (str != null) {
            i9 = i3;
            if (!str.equals("")) {
                i9 = i3 + zzfs.zzb(4, this.zzbjc);
            }
        }
        return i9;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu
    public final /* synthetic */ zzgz zzeo() {
        return (zzgz) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final /* synthetic */ zzfz zzep() {
        return (zzgz) clone();
    }
}
