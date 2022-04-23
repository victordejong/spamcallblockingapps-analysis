package com.amazon.device.ads;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidStateType.class */
enum MraidStateType {
    LOADING,
    DEFAULT,
    EXPANDED,
    RESIZED,
    HIDDEN;

    /* renamed from: com.amazon.device.ads.MraidStateType$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/MraidStateType$1.class */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6522a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[MraidStateType.values().length];
            f6522a = iArr;
            try {
                iArr[MraidStateType.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6522a[MraidStateType.HIDDEN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6522a[MraidStateType.DEFAULT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f6522a[MraidStateType.RESIZED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f6522a[MraidStateType.EXPANDED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    @Override // java.lang.Enum
    public final String toString() {
        int i = AnonymousClass1.f6522a[ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "" : "expanded" : "resized" : "default" : "hidden" : "loading";
    }
}
