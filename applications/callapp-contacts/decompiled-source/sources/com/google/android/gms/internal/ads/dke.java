package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dke.class */
final /* synthetic */ class dke {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ int[] f26887a;

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ int[] f26888b;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0055 -> B:26:0x0014). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:22:0x001f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:8:0x002a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:28:0x003e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:24:0x0049). Please submit an issue!!! */
    static {
        int[] iArr = new int[dkd.values().length];
        f26888b = iArr;
        try {
            iArr[dkd.NIST_P256.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            f26888b[dkd.NIST_P384.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            f26888b[dkd.NIST_P521.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        int[] iArr2 = new int[dkh.values().length];
        f26887a = iArr2;
        try {
            iArr2[dkh.UNCOMPRESSED.ordinal()] = 1;
        } catch (NoSuchFieldError e4) {
        }
        try {
            f26887a[dkh.DO_NOT_USE_CRUNCHY_UNCOMPRESSED.ordinal()] = 2;
        } catch (NoSuchFieldError e5) {
        }
        try {
            f26887a[dkh.COMPRESSED.ordinal()] = 3;
        } catch (NoSuchFieldError e6) {
        }
    }
}
