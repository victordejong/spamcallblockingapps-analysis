package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfu.class */
final /* synthetic */ class dfu {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ int[] f26811a;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
    static {
        int[] iArr = new int[dhw.values().length];
        f26811a = iArr;
        try {
            iArr[dhw.SHA1.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            f26811a[dhw.SHA256.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            f26811a[dhw.SHA512.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
    }
}
