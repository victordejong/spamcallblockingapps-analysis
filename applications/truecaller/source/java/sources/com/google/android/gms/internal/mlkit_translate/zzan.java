package com.google.android.gms.internal.mlkit_translate;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzan.class */
public final class zzan extends zzas {
    private final char[] zzb;

    private zzan(zzao zzaoVar) {
        super(zzaoVar, null);
        char[] cArr;
        this.zzb = new char[512];
        cArr = zzaoVar.zze;
        zzi.zza(cArr.length == 16);
        for (int i = 0; i < 256; i++) {
            this.zzb[i] = zzaoVar.zza(i >>> 4);
            this.zzb[i | 256] = zzaoVar.zza(i & 15);
        }
    }

    public zzan(String str, String str2) {
        this(new zzao(str, str2.toCharArray()));
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzas, com.google.android.gms.internal.mlkit_translate.zzal
    public final int zza(byte[] bArr, CharSequence charSequence) throws zzap {
        zzi.zza(bArr);
        if (charSequence.length() % 2 != 1) {
            int i = 0;
            int i2 = 0;
            while (i < charSequence.length()) {
                bArr[i2] = (byte) ((this.zza.zza(charSequence.charAt(i)) << 4) | this.zza.zza(charSequence.charAt(i + 1)));
                i += 2;
                i2++;
            }
            return i2;
        }
        throw new zzap(C22128a.m8690L1(32, "Invalid input length ", charSequence.length()));
    }
}
