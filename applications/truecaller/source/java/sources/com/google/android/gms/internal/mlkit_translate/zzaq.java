package com.google.android.gms.internal.mlkit_translate;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzaq.class */
public final class zzaq extends zzas {
    private zzaq(zzao zzaoVar, Character ch) {
        super(zzaoVar, ch);
        char[] cArr;
        cArr = zzaoVar.zze;
        zzi.zza(cArr.length == 64);
    }

    public zzaq(String str, String str2, Character ch) {
        this(new zzao(str, str2.toCharArray()), ch);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzas, com.google.android.gms.internal.mlkit_translate.zzal
    public final int zza(byte[] bArr, CharSequence charSequence) throws zzap {
        zzi.zza(bArr);
        CharSequence zzb = zzb(charSequence);
        if (this.zza.zzb(zzb.length())) {
            int i = 0;
            int i2 = 0;
            while (i < zzb.length()) {
                int i3 = i + 1;
                int zza = this.zza.zza(zzb.charAt(i));
                int i4 = i3 + 1;
                int zza2 = (zza << 18) | (this.zza.zza(zzb.charAt(i3)) << 12);
                int i5 = i2 + 1;
                bArr[i2] = (byte) (zza2 >>> 16);
                int i6 = i5;
                int i7 = i4;
                if (i4 < zzb.length()) {
                    i = i4 + 1;
                    int zza3 = zza2 | (this.zza.zza(zzb.charAt(i4)) << 6);
                    i2 = i5 + 1;
                    bArr[i5] = (byte) (zza3 >>> 8);
                    if (i < zzb.length()) {
                        int i8 = i + 1;
                        int zza4 = this.zza.zza(zzb.charAt(i));
                        i6 = i2 + 1;
                        bArr[i2] = (byte) (zza3 | zza4);
                        i7 = i8;
                    }
                }
                int i9 = i6;
                i = i7;
                i2 = i9;
            }
            return i2;
        }
        throw new zzap(C22128a.m8690L1(32, "Invalid input length ", zzb.length()));
    }
}
