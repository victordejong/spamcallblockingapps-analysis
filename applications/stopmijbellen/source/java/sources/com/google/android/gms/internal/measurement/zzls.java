package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzls.class */
final class zzls implements zzlf {
    private final zzli zza;
    private final String zzb;
    private final Object[] zzc;
    private final int zzd;

    public zzls(zzli zzliVar, String str, Object[] objArr) {
        int i;
        Throwable e;
        this.zza = zzliVar;
        this.zzb = str;
        this.zzc = objArr;
        try {
            i = str.charAt(0);
        } catch (StringIndexOutOfBoundsException e2) {
            char[] charArray = str.toCharArray();
            String str2 = new String(charArray);
            try {
                i = str2.charAt(0);
                str = str2;
            } catch (StringIndexOutOfBoundsException e3) {
                try {
                    char[] cArr = new char[str2.length()];
                    str2.getChars(0, str2.length(), cArr, 0);
                    str = new String(cArr);
                } catch (ArrayIndexOutOfBoundsException e4) {
                    e = e4;
                } catch (StringIndexOutOfBoundsException e5) {
                    e = e5;
                }
                try {
                    i = str.charAt(0);
                } catch (ArrayIndexOutOfBoundsException | StringIndexOutOfBoundsException e6) {
                    e = e6;
                    str2 = str;
                    throw new IllegalStateException(String.format("Failed parsing '%s' with charArray.length of %d", str2, Integer.valueOf(charArray.length)), e);
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

    @Override // com.google.android.gms.internal.measurement.zzlf
    public final boolean zza() {
        return (this.zzd & 2) == 2;
    }

    @Override // com.google.android.gms.internal.measurement.zzlf
    public final zzli zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzlf
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
