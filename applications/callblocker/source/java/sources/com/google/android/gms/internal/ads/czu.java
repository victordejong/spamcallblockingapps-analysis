package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/czu.class */
final /* synthetic */ class czu {

    /* renamed from: a */
    static final /* synthetic */ int[] f13875a;

    /* renamed from: b */
    static final /* synthetic */ int[] f13876b = new int[czt.values().length];

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:28:0x0049). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:24:0x003e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:8:0x002a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:32:0x001f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:30:0x0014). Please submit an issue!!! */
    static {
        try {
            f13876b[czt.NIST_P256.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            f13876b[czt.NIST_P384.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            f13876b[czt.NIST_P521.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        f13875a = new int[czw.values().length];
        try {
            f13875a[czw.UNCOMPRESSED.ordinal()] = 1;
        } catch (NoSuchFieldError e4) {
        }
        try {
            f13875a[czw.DO_NOT_USE_CRUNCHY_UNCOMPRESSED.ordinal()] = 2;
        } catch (NoSuchFieldError e5) {
        }
        try {
            f13875a[czw.COMPRESSED.ordinal()] = 3;
        } catch (NoSuchFieldError e6) {
        }
    }
}
