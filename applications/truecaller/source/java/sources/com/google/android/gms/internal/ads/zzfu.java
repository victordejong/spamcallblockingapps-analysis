package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfu.class */
public final /* synthetic */ class zzfu implements zzgd {
    public static final zzgd zza = new zzfu();

    private zzfu() {
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final int zza(Object obj) {
        int i = zzge.zza;
        String str = ((zzfo) obj).zza;
        int i2 = 0;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            i2 = 1;
        } else if (zzamq.zza < 26) {
            if (!str.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                return 0;
            }
            i2 = -1;
        }
        return i2;
    }
}
