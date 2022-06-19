package org.xutils.common.util;

import org.xutils.C9682x;
/* loaded from: classes2-dex2jar.jar:org/xutils/common/util/DensityUtil.class */
public final class DensityUtil {

    /* renamed from: a */
    private static float f40603a = -1.0f;

    /* renamed from: b */
    private static int f40604b = -1;

    /* renamed from: c */
    private static int f40605c = -1;

    private DensityUtil() {
    }

    public static int dip2px(float f) {
        return (int) ((f * getDensity()) + 0.5f);
    }

    public static float getDensity() {
        if (f40603a <= 0.0f) {
            f40603a = C9682x.app().getResources().getDisplayMetrics().density;
        }
        return f40603a;
    }

    public static int getScreenHeight() {
        if (f40605c <= 0) {
            f40605c = C9682x.app().getResources().getDisplayMetrics().heightPixels;
        }
        return f40605c;
    }

    public static int getScreenWidth() {
        if (f40604b <= 0) {
            f40604b = C9682x.app().getResources().getDisplayMetrics().widthPixels;
        }
        return f40604b;
    }

    public static int px2dip(float f) {
        return (int) ((f / getDensity()) + 0.5f);
    }
}
