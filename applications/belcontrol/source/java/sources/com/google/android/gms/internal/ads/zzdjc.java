package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzn;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdjc.class */
public final /* synthetic */ class zzdjc {
    public static final /* synthetic */ int[] zzhge;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
    static {
        int[] iArr = new int[zzn.values().length];
        zzhge = iArr;
        try {
            iArr[zzn.CUSTOM_CLOSE.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            zzhge[zzn.BACK_BUTTON.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            zzhge[zzn.CLOSE_BUTTON.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            zzhge[zzn.OTHER.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
    }
}
