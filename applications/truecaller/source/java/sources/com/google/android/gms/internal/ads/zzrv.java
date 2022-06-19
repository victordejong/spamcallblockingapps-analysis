package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzrv.class */
public final class zzrv {
    public final boolean zza;
    public final String zzb;
    public final zzow zzc;
    public final int zzd;
    public final byte[] zze;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public zzrv(boolean z, String str, int i, byte[] bArr, int i2, int i3, byte[] bArr2) {
        int i4;
        boolean z2;
        zzakt.zza((i == 0) ^ (bArr2 == null));
        this.zza = z;
        this.zzb = str;
        this.zzd = i;
        this.zze = bArr2;
        if (str == null) {
            i4 = 1;
        } else {
            switch (str.hashCode()) {
                case 3046605:
                    if (str.equals("cbc1")) {
                        z2 = true;
                        break;
                    }
                    z2 = true;
                    break;
                case 3046671:
                    if (str.equals("cbcs")) {
                        z2 = true;
                        break;
                    }
                    z2 = true;
                    break;
                case 3049879:
                    if (str.equals("cenc")) {
                        z2 = false;
                        break;
                    }
                    z2 = true;
                    break;
                case 3049895:
                    if (str.equals("cens")) {
                        z2 = true;
                        break;
                    }
                    z2 = true;
                    break;
                default:
                    z2 = true;
                    break;
            }
            i4 = 1;
            if (z2) {
                i4 = 1;
                if (!z2) {
                    if (z2 || z2) {
                        i4 = 2;
                    } else {
                        str.length();
                        i4 = 1;
                    }
                }
            }
        }
        this.zzc = new zzow(i4, bArr, i2, i3);
    }
}
