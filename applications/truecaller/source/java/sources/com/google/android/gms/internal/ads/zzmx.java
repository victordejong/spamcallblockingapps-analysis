package com.google.android.gms.internal.ads;

import com.huawei.hms.support.api.entity.core.JosStatusCodes;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzmx.class */
public final class zzmx {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, JosStatusCodes.RTN_CODE_COMMON_ERROR, 7350};
    private static final int[] zzc = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    public static zzmv zza(byte[] bArr) throws zzaha {
        return zzb(new zzame(bArr, bArr.length), false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002e, code lost:
        if (r0 == 29) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x018e, code lost:
        if (r0 != 3) goto L67;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x017b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzmv zzb(com.google.android.gms.internal.ads.zzame r7, boolean r8) throws com.google.android.gms.internal.ads.zzaha {
        /*
            Method dump skipped, instructions count: 482
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzmx.zzb(com.google.android.gms.internal.ads.zzame, boolean):com.google.android.gms.internal.ads.zzmv");
    }

    private static int zzc(zzame zzameVar) {
        int zzh = zzameVar.zzh(5);
        return zzh == 31 ? zzameVar.zzh(6) + 32 : zzh;
    }

    private static int zzd(zzame zzameVar) throws zzaha {
        int i;
        int zzh = zzameVar.zzh(4);
        if (zzh == 15) {
            i = zzameVar.zzh(24);
        } else if (zzh >= 13) {
            throw zzaha.zzb(null, null);
        } else {
            i = zzb[zzh];
        }
        return i;
    }
}
