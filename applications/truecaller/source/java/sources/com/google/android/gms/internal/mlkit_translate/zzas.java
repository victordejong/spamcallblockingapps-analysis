package com.google.android.gms.internal.mlkit_translate;

import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzas.class */
public class zzas extends zzal {
    public final zzao zza;
    private final Character zzb;

    public zzas(zzao zzaoVar, Character ch) {
        this.zza = (zzao) zzi.zza(zzaoVar);
        if (ch == null || !zzaoVar.zzb(ch.charValue())) {
            this.zzb = ch;
            return;
        }
        throw new IllegalArgumentException(zzh.zza("Padding character %s was already in alphabet", ch));
    }

    public zzas(String str, String str2, Character ch) {
        this(new zzao(str, str2.toCharArray()), ch);
    }

    public boolean equals(Object obj) {
        if (obj instanceof zzas) {
            zzas zzasVar = (zzas) obj;
            return this.zza.equals(zzasVar.zza) && zzc.zza(this.zzb, zzasVar.zzb);
        }
        return false;
    }

    public int hashCode() {
        return this.zza.hashCode() ^ Arrays.hashCode(new Object[]{this.zzb});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BaseEncoding.");
        sb.append(this.zza.toString());
        if (8 % this.zza.zza != 0) {
            if (this.zzb == null) {
                sb.append(".omitPadding()");
            } else {
                sb.append(".withPadChar('");
                sb.append(this.zzb);
                sb.append("')");
            }
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzal
    public final int zza(int i) {
        return (int) (((this.zza.zza * i) + 7) / 8);
    }

    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    @Override // com.google.android.gms.internal.mlkit_translate.zzal
    public int zza(byte[] bArr, CharSequence charSequence) throws zzap {
        int i;
        zzao zzaoVar;
        zzi.zza(bArr);
        CharSequence zzb = zzb(charSequence);
        if (this.zza.zzb(zzb.length())) {
            int i2 = 0;
            int i3 = 0;
            while (i2 < zzb.length()) {
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                while (true) {
                    i = i6;
                    zzaoVar = this.zza;
                    if (i5 >= zzaoVar.zzb) {
                        break;
                    }
                    ?? r0 = i4 << zzaoVar.zza;
                    i4 = r0;
                    int i7 = i;
                    if (i2 + i5 < zzb.length()) {
                        i4 = r0 | this.zza.zza(zzb.charAt(i + i2));
                        i7 = i + 1;
                    }
                    i5++;
                    i6 = i7;
                }
                int i8 = zzaoVar.zzc;
                int i9 = zzaoVar.zza;
                int i10 = (i8 - 1) << 3;
                while (i10 >= (i8 << 3) - (i * i9)) {
                    bArr[i3] = (byte) ((i4 >>> i10) & 255);
                    i10 -= 8;
                    i3++;
                }
                i2 += this.zza.zzb;
            }
            return i3;
        }
        throw new zzap(C22128a.m8690L1(32, "Invalid input length ", zzb.length()));
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzal
    public final CharSequence zzb(CharSequence charSequence) {
        zzi.zza(charSequence);
        Character ch = this.zzb;
        if (ch == null) {
            return charSequence;
        }
        char charValue = ch.charValue();
        int length = charSequence.length() - 1;
        while (length >= 0 && charSequence.charAt(length) == charValue) {
            length--;
        }
        return charSequence.subSequence(0, length + 1);
    }
}
