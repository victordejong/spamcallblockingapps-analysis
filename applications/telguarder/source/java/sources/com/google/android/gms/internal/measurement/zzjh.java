package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzjh.class */
final class zzjh implements zziu {
    private final zzix zza;
    private final String zzb;
    private final Object[] zzc;
    private final int zzd;

    public zzjh(zzix zzixVar, String str, Object[] objArr) {
        int i;
        ArrayIndexOutOfBoundsException e;
        this.zza = zzixVar;
        this.zzb = str;
        this.zzc = objArr;
        try {
            i = str.charAt(0);
        } catch (ArrayIndexOutOfBoundsException e2) {
            char[] charArray = str.toCharArray();
            String str2 = new String(charArray);
            try {
                i = str2.charAt(0);
                str = str2;
            } catch (ArrayIndexOutOfBoundsException e3) {
                try {
                    char[] cArr = new char[str2.length()];
                    str2.getChars(0, str2.length(), cArr, 0);
                    str = new String(cArr);
                    try {
                        i = str.charAt(0);
                    } catch (ArrayIndexOutOfBoundsException e4) {
                        e = e4;
                        throw new IllegalStateException(String.format("Failed parsing '%s' with charArray.length of %d", str, Integer.valueOf(charArray.length)), e);
                    }
                } catch (ArrayIndexOutOfBoundsException e5) {
                    e = e5;
                    str = str2;
                }
            }
        }
        if (i < 55296) {
            this.zzd = i;
            return;
        }
        int i2 = i & 8191;
        int i3 = 1;
        int i4 = 13;
        while (true) {
            int charAt = str.charAt(i3);
            if (charAt < 55296) {
                this.zzd = (charAt << i4) | i2;
                return;
            }
            i2 |= (charAt & 8191) << i4;
            i3++;
            i4 += 13;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final boolean zza() {
        return (this.zzd & 2) == 2;
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final zzix zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zziu
    public final int zzc() {
        return (this.zzd & 1) == 1 ? 1 : 2;
    }

    public final String zzd() {
        return this.zzb;
    }

    public final Object[] zze() {
        return this.zzc;
    }
}
