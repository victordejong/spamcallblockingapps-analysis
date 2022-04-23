package com.mopub.common.util;

import android.content.Context;
import android.util.TypedValue;
import androidx.annotation.NonNull;
import com.mopub.common.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/util/Dips.class */
public class Dips {
    /* renamed from: a */
    public static float m30660a(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    public static float asFloatPixels(float f, Context context) {
        return TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    public static int asIntPixels(float f, Context context) {
        return (int) (asFloatPixels(f, context) + 0.5f);
    }

    public static float dipsToFloatPixels(float f, Context context) {
        return f * m30660a(context);
    }

    public static int dipsToIntPixels(float f, Context context) {
        return (int) (dipsToFloatPixels(f, context) + 0.5f);
    }

    public static float pixelsToFloatDips(float f, Context context) {
        return f / m30660a(context);
    }

    public static int pixelsToIntDips(float f, Context context) {
        return (int) (pixelsToFloatDips(f, context) + 0.5f);
    }

    public static int screenHeightAsIntDips(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        return pixelsToIntDips(context.getResources().getDisplayMetrics().heightPixels, context);
    }

    public static int screenWidthAsIntDips(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        return pixelsToIntDips(context.getResources().getDisplayMetrics().widthPixels, context);
    }
}
