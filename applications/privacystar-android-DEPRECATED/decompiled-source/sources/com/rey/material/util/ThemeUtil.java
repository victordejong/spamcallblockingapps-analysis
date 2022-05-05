package com.rey.material.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.TypedValue;
import com.rey.material.C1686R;
/* loaded from: classes2-dex2jar.jar:com/rey/material/util/ThemeUtil.class */
public class ThemeUtil {
    private static TypedValue value;

    @TargetApi(21)
    public static int colorAccent(Context context, int i) {
        return Build.VERSION.SDK_INT >= 21 ? getColor(context, 16843829, i) : getColor(context, C1686R.C1687attr.colorAccent, i);
    }

    @TargetApi(21)
    public static int colorButtonNormal(Context context, int i) {
        return Build.VERSION.SDK_INT >= 21 ? getColor(context, 16843819, i) : getColor(context, C1686R.C1687attr.colorButtonNormal, i);
    }

    @TargetApi(21)
    public static int colorControlActivated(Context context, int i) {
        return Build.VERSION.SDK_INT >= 21 ? getColor(context, 16843818, i) : getColor(context, C1686R.C1687attr.colorControlActivated, i);
    }

    @TargetApi(21)
    public static int colorControlHighlight(Context context, int i) {
        return Build.VERSION.SDK_INT >= 21 ? getColor(context, 16843820, i) : getColor(context, C1686R.C1687attr.colorControlHighlight, i);
    }

    @TargetApi(21)
    public static int colorControlNormal(Context context, int i) {
        return Build.VERSION.SDK_INT >= 21 ? getColor(context, 16843817, i) : getColor(context, C1686R.C1687attr.colorControlNormal, i);
    }

    @TargetApi(21)
    public static int colorPrimary(Context context, int i) {
        return Build.VERSION.SDK_INT >= 21 ? getColor(context, 16843827, i) : getColor(context, C1686R.C1687attr.colorPrimary, i);
    }

    @TargetApi(21)
    public static int colorPrimaryDark(Context context, int i) {
        return Build.VERSION.SDK_INT >= 21 ? getColor(context, 16843828, i) : getColor(context, C1686R.C1687attr.colorPrimaryDark, i);
    }

    @TargetApi(21)
    public static int colorSwitchThumbNormal(Context context, int i) {
        return getColor(context, C1686R.C1687attr.colorSwitchThumbNormal, i);
    }

    public static int dpToPx(Context context, int i) {
        return (int) (TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics()) + 0.5f);
    }

    private static int getColor(Context context, int i, int i2) {
        if (value == null) {
            value = new TypedValue();
        }
        try {
            Resources.Theme theme = context.getTheme();
            if (theme != null && theme.resolveAttribute(i, value, true)) {
                if (value.type >= 16 && value.type <= 31) {
                    return value.data;
                }
                if (value.type == 3) {
                    return context.getResources().getColor(value.resourceId);
                }
            }
        } catch (Exception e) {
        }
        return i2;
    }

    public static CharSequence getString(TypedArray typedArray, int i, CharSequence charSequence) {
        String string = typedArray.getString(i);
        String str = string;
        if (string == null) {
            str = charSequence;
        }
        return str;
    }

    public static int getType(TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return typedArray.getType(i);
        }
        TypedValue peekValue = typedArray.peekValue(i);
        return peekValue == null ? 0 : peekValue.type;
    }

    public static int spToPx(Context context, int i) {
        return (int) (TypedValue.applyDimension(2, i, context.getResources().getDisplayMetrics()) + 0.5f);
    }

    public static int textColorPrimary(Context context, int i) {
        return getColor(context, 16842806, i);
    }

    public static int textColorSecondary(Context context, int i) {
        return getColor(context, 16842808, i);
    }

    public static int windowBackground(Context context, int i) {
        return getColor(context, 16842836, i);
    }
}
