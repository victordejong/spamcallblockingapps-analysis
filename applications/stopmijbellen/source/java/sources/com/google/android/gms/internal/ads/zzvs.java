package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvs.class */
public final class zzvs {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};
    private static final int[] zzc = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static zzvr zza(byte[] bArr) throws zzbj {
        return zzb(new zzfc(bArr, bArr.length), false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002e, code lost:
        if (r0 == 29) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x019e, code lost:
        if (r0 != 3) goto L71;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x018b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzvr zzb(com.google.android.gms.internal.ads.zzfc r7, boolean r8) throws com.google.android.gms.internal.ads.zzbj {
        /*
            Method dump skipped, instructions count: 498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzvs.zzb(com.google.android.gms.internal.ads.zzfc, boolean):com.google.android.gms.internal.ads.zzvr");
    }

    private static int zzc(zzfc zzfcVar) {
        int zzc2 = zzfcVar.zzc(5);
        return zzc2 == 31 ? zzfcVar.zzc(6) + 32 : zzc2;
    }

    private static int zzd(zzfc zzfcVar) throws zzbj {
        int i;
        int zzc2 = zzfcVar.zzc(4);
        if (zzc2 == 15) {
            i = zzfcVar.zzc(24);
        } else if (zzc2 >= 13) {
            throw zzbj.zza(null, null);
        } else {
            i = zzb[zzc2];
        }
        return i;
    }
}
