package com.tencent.mmkv;
/* loaded from: classes2-dex2jar.jar:com/tencent/mmkv/MMKV$a.class */
/* synthetic */ class MMKV$a {

    /* renamed from: a */
    static final /* synthetic */ int[] f12538a;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
    static {
        int[] iArr = new int[MMKVLogLevel.values().length];
        f12538a = iArr;
        try {
            iArr[MMKVLogLevel.LevelDebug.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            f12538a[MMKVLogLevel.LevelWarning.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            f12538a[MMKVLogLevel.LevelError.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            f12538a[MMKVLogLevel.LevelNone.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            f12538a[MMKVLogLevel.LevelInfo.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
    }
}
