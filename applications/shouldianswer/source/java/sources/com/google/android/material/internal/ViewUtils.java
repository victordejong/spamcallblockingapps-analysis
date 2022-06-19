package com.google.android.material.internal;

import android.graphics.PorterDuff;
import android.view.View;
import androidx.core.p023g.C0552u;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/ViewUtils.class */
public class ViewUtils {
    public static boolean isLayoutRtl(View view) {
        boolean z = true;
        if (C0552u.m6245f(view) != 1) {
            z = false;
        }
        return z;
    }

    public static PorterDuff.Mode parseTintMode(int i, PorterDuff.Mode mode) {
        if (i != 3) {
            if (i == 5) {
                return PorterDuff.Mode.SRC_IN;
            }
            if (i == 9) {
                return PorterDuff.Mode.SRC_ATOP;
            }
            switch (i) {
                case 14:
                    return PorterDuff.Mode.MULTIPLY;
                case 15:
                    return PorterDuff.Mode.SCREEN;
                case 16:
                    return PorterDuff.Mode.ADD;
                default:
                    return mode;
            }
        }
        return PorterDuff.Mode.SRC_OVER;
    }
}
