package com.google.android.gms.ads.nonagon.transaction.omid;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/nonagon/transaction/omid/zza.class */
final /* synthetic */ class zza {
    static final /* synthetic */ int[] zzhoj;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
    static {
        int[] iArr = new int[OmidMediaType.values().length];
        zzhoj = iArr;
        try {
            iArr[OmidMediaType.DISPLAY.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            zzhoj[OmidMediaType.VIDEO.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            zzhoj[OmidMediaType.UNKNOWN.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
    }
}
