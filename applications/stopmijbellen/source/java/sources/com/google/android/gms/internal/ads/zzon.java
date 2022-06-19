package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzon.class */
public final /* synthetic */ class zzon implements zzox {
    public static final /* synthetic */ zzon zza = new zzon();

    private /* synthetic */ zzon() {
    }

    @Override // com.google.android.gms.internal.ads.zzox
    public final int zza(Object obj) {
        int i = zzoy.zza;
        String str = ((zzoh) obj).zza;
        int i2 = 0;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            i2 = 1;
        } else if (zzfn.zza < 26) {
            if (!str.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                return 0;
            }
            i2 = -1;
        }
        return i2;
    }
}
