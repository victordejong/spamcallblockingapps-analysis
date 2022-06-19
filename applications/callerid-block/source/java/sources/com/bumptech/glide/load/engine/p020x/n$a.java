package com.bumptech.glide.load.engine.p020x;

import android.graphics.Bitmap;
/* renamed from: com.bumptech.glide.load.engine.x.n$a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/n$a.class */
/* synthetic */ class n$a {

    /* renamed from: a */
    static final /* synthetic */ int[] f3624a;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
    static {
        int[] iArr = new int[Bitmap.Config.values().length];
        f3624a = iArr;
        try {
            iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            f3624a[Bitmap.Config.RGB_565.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            f3624a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            f3624a[Bitmap.Config.ALPHA_8.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
    }
}
