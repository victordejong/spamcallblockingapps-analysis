package com.mopub.common.util;

import android.content.Context;
import android.util.TypedValue;
import com.mopub.common.Preconditions;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/util/Dips.class */
public class Dips {
    /* renamed from: a */
    private static float m6619a(Context context) {
        Preconditions.checkNotNull(context);
        return context.getResources().getDisplayMetrics().density;
    }

    public static float asFloatPixels(float f, Context context) {
        Preconditions.checkNotNull(context);
        return TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    public static int asIntPixels(float f, Context context) {
        Preconditions.checkNotNull(context);
        return (int) (asFloatPixels(f, context) + 0.5f);
    }

    public static float dipsToFloatPixels(float f, Context context) {
        Preconditions.checkNotNull(context);
        return f * m6619a(context);
    }

    public static int dipsToIntPixels(float f, Context context) {
        Preconditions.checkNotNull(context);
        return (int) (dipsToFloatPixels(f, context) + 0.5f);
    }

    public static float pixelsToFloatDips(float f, Context context) {
        Preconditions.checkNotNull(context);
        return f / m6619a(context);
    }

    public static int pixelsToIntDips(float f, Context context) {
        Preconditions.checkNotNull(context);
        return (int) (pixelsToFloatDips(f, context) + 0.5f);
    }

    public static int screenHeightAsIntDips(Context context) {
        Preconditions.checkNotNull(context);
        return pixelsToIntDips(context.getResources().getDisplayMetrics().heightPixels, context);
    }

    public static int screenWidthAsIntDips(Context context) {
        Preconditions.checkNotNull(context);
        return pixelsToIntDips(context.getResources().getDisplayMetrics().widthPixels, context);
    }
}
