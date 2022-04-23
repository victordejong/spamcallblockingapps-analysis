package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.EncodeStrategy;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DecodeJob$a.class */
/* synthetic */ class DecodeJob$a {

    /* renamed from: a */
    static final /* synthetic */ int[] f3540a;

    /* renamed from: b */
    static final /* synthetic */ int[] f3541b;

    /* renamed from: c */
    static final /* synthetic */ int[] f3542c;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x008a -> B:39:0x0014). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x008e -> B:6:0x001f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0092 -> B:49:0x0033). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0096 -> B:43:0x003e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009a -> B:37:0x0049). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x009e -> B:51:0x0054). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a2 -> B:17:0x005f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a6 -> B:41:0x0073). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00aa -> B:35:0x007e). Please submit an issue!!! */
    static {
        int[] iArr = new int[EncodeStrategy.values().length];
        f3542c = iArr;
        try {
            iArr[EncodeStrategy.SOURCE.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            f3542c[EncodeStrategy.TRANSFORMED.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        int[] iArr2 = new int[DecodeJob$Stage.values().length];
        f3541b = iArr2;
        try {
            iArr2[DecodeJob$Stage.RESOURCE_CACHE.ordinal()] = 1;
        } catch (NoSuchFieldError e3) {
        }
        try {
            f3541b[DecodeJob$Stage.DATA_CACHE.ordinal()] = 2;
        } catch (NoSuchFieldError e4) {
        }
        try {
            f3541b[DecodeJob$Stage.SOURCE.ordinal()] = 3;
        } catch (NoSuchFieldError e5) {
        }
        try {
            f3541b[DecodeJob$Stage.FINISHED.ordinal()] = 4;
        } catch (NoSuchFieldError e6) {
        }
        try {
            f3541b[DecodeJob$Stage.INITIALIZE.ordinal()] = 5;
        } catch (NoSuchFieldError e7) {
        }
        int[] iArr3 = new int[DecodeJob$RunReason.values().length];
        f3540a = iArr3;
        try {
            iArr3[DecodeJob$RunReason.INITIALIZE.ordinal()] = 1;
        } catch (NoSuchFieldError e8) {
        }
        try {
            f3540a[DecodeJob$RunReason.SWITCH_TO_SOURCE_SERVICE.ordinal()] = 2;
        } catch (NoSuchFieldError e9) {
        }
        try {
            f3540a[DecodeJob$RunReason.DECODE_DATA.ordinal()] = 3;
        } catch (NoSuchFieldError e10) {
        }
    }
}
