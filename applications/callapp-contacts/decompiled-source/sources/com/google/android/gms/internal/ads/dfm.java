package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfm.class */
final /* synthetic */ class dfm {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ int[] f26803a;

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ int[] f26804b;

    /* renamed from: c  reason: collision with root package name */
    static final /* synthetic */ int[] f26805c;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x007f -> B:48:0x0014). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0083 -> B:44:0x001f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0087 -> B:8:0x002a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x008b -> B:34:0x003e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008f -> B:46:0x0049). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0093 -> B:15:0x0054). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0097 -> B:38:0x0068). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x009b -> B:32:0x0073). Please submit an issue!!! */
    static {
        int[] iArr = new int[dhh.values().length];
        f26805c = iArr;
        try {
            iArr[dhh.UNCOMPRESSED.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            f26805c[dhh.DO_NOT_USE_CRUNCHY_UNCOMPRESSED.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            f26805c[dhh.COMPRESSED.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        int[] iArr2 = new int[dhv.values().length];
        f26804b = iArr2;
        try {
            iArr2[dhv.NIST_P256.ordinal()] = 1;
        } catch (NoSuchFieldError e4) {
        }
        try {
            f26804b[dhv.NIST_P384.ordinal()] = 2;
        } catch (NoSuchFieldError e5) {
        }
        try {
            f26804b[dhv.NIST_P521.ordinal()] = 3;
        } catch (NoSuchFieldError e6) {
        }
        int[] iArr3 = new int[dhw.values().length];
        f26803a = iArr3;
        try {
            iArr3[dhw.SHA1.ordinal()] = 1;
        } catch (NoSuchFieldError e7) {
        }
        try {
            f26803a[dhw.SHA256.ordinal()] = 2;
        } catch (NoSuchFieldError e8) {
        }
        try {
            f26803a[dhw.SHA512.ordinal()] = 3;
        } catch (NoSuchFieldError e9) {
        }
    }
}
