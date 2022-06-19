package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzedk.class */
final /* synthetic */ class zzedk {
    static final /* synthetic */ int[] zzidt;
    static final /* synthetic */ int[] zzidu;
    static final /* synthetic */ int[] zzidv;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x007f -> B:48:0x0014). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0083 -> B:44:0x001f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0087 -> B:8:0x002a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x008b -> B:34:0x003e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008f -> B:46:0x0049). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0093 -> B:15:0x0054). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0097 -> B:38:0x0068). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x009b -> B:32:0x0073). Please submit an issue!!! */
    static {
        int[] iArr = new int[zzefe.values().length];
        zzidv = iArr;
        try {
            iArr[zzefe.UNCOMPRESSED.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            zzidv[zzefe.DO_NOT_USE_CRUNCHY_UNCOMPRESSED.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            zzidv[zzefe.COMPRESSED.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        int[] iArr2 = new int[zzefs.values().length];
        zzidu = iArr2;
        try {
            iArr2[zzefs.NIST_P256.ordinal()] = 1;
        } catch (NoSuchFieldError e4) {
        }
        try {
            zzidu[zzefs.NIST_P384.ordinal()] = 2;
        } catch (NoSuchFieldError e5) {
        }
        try {
            zzidu[zzefs.NIST_P521.ordinal()] = 3;
        } catch (NoSuchFieldError e6) {
        }
        int[] iArr3 = new int[zzeft.values().length];
        zzidt = iArr3;
        try {
            iArr3[zzeft.SHA1.ordinal()] = 1;
        } catch (NoSuchFieldError e7) {
        }
        try {
            zzidt[zzeft.SHA256.ordinal()] = 2;
        } catch (NoSuchFieldError e8) {
        }
        try {
            zzidt[zzeft.SHA512.ordinal()] = 3;
        } catch (NoSuchFieldError e9) {
        }
    }
}
