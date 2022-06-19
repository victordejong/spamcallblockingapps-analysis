package com.google.android.material.ripple;

import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.StateSet;
import androidx.core.graphics.C0569a;
/* loaded from: classes-dex2jar.jar:com/google/android/material/ripple/RippleUtils.class */
public class RippleUtils {
    private static final int[] FOCUSED_STATE_SET;
    private static final int[] HOVERED_FOCUSED_STATE_SET;
    private static final int[] HOVERED_STATE_SET;
    private static final int[] PRESSED_STATE_SET;
    private static final int[] SELECTED_FOCUSED_STATE_SET;
    private static final int[] SELECTED_HOVERED_FOCUSED_STATE_SET;
    private static final int[] SELECTED_HOVERED_STATE_SET;
    private static final int[] SELECTED_PRESSED_STATE_SET;
    private static final int[] SELECTED_STATE_SET;
    public static final boolean USE_FRAMEWORK_RIPPLE;

    static {
        USE_FRAMEWORK_RIPPLE = Build.VERSION.SDK_INT >= 21;
        PRESSED_STATE_SET = new int[]{16842919};
        HOVERED_FOCUSED_STATE_SET = new int[]{16843623, 16842908};
        FOCUSED_STATE_SET = new int[]{16842908};
        HOVERED_STATE_SET = new int[]{16843623};
        SELECTED_PRESSED_STATE_SET = new int[]{16842913, 16842919};
        SELECTED_HOVERED_FOCUSED_STATE_SET = new int[]{16842913, 16843623, 16842908};
        SELECTED_FOCUSED_STATE_SET = new int[]{16842913, 16842908};
        SELECTED_HOVERED_STATE_SET = new int[]{16842913, 16843623};
        SELECTED_STATE_SET = new int[]{16842913};
    }

    private RippleUtils() {
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
    /* JADX WARN: Type inference failed for: r2v3, types: [int[], int[][]] */
    public static ColorStateList convertToRippleDrawableColor(ColorStateList colorStateList) {
        if (USE_FRAMEWORK_RIPPLE) {
            int[] iArr = SELECTED_STATE_SET;
            int colorForState = getColorForState(colorStateList, SELECTED_PRESSED_STATE_SET);
            return new ColorStateList(new int[]{iArr, StateSet.NOTHING}, new int[]{colorForState, getColorForState(colorStateList, PRESSED_STATE_SET)});
        }
        int[] iArr2 = SELECTED_PRESSED_STATE_SET;
        int colorForState2 = getColorForState(colorStateList, iArr2);
        int[] iArr3 = SELECTED_HOVERED_FOCUSED_STATE_SET;
        int colorForState3 = getColorForState(colorStateList, iArr3);
        int[] iArr4 = SELECTED_FOCUSED_STATE_SET;
        int colorForState4 = getColorForState(colorStateList, iArr4);
        int[] iArr5 = SELECTED_HOVERED_STATE_SET;
        int colorForState5 = getColorForState(colorStateList, iArr5);
        int[] iArr6 = SELECTED_STATE_SET;
        int[] iArr7 = PRESSED_STATE_SET;
        int colorForState6 = getColorForState(colorStateList, iArr7);
        int[] iArr8 = HOVERED_FOCUSED_STATE_SET;
        int colorForState7 = getColorForState(colorStateList, iArr8);
        int[] iArr9 = FOCUSED_STATE_SET;
        int colorForState8 = getColorForState(colorStateList, iArr9);
        int[] iArr10 = HOVERED_STATE_SET;
        return new ColorStateList(new int[]{iArr2, iArr3, iArr4, iArr5, iArr6, iArr7, iArr8, iArr9, iArr10, StateSet.NOTHING}, new int[]{colorForState2, colorForState3, colorForState4, colorForState5, 0, colorForState6, colorForState7, colorForState8, getColorForState(colorStateList, iArr10), 0});
    }

    private static int doubleAlpha(int i) {
        return C0569a.m6171b(i, Math.min(Color.alpha(i) * 2, 255));
    }

    private static int getColorForState(ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        int i = colorForState;
        if (USE_FRAMEWORK_RIPPLE) {
            i = doubleAlpha(colorForState);
        }
        return i;
    }
}
