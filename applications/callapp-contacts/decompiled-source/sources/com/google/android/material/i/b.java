package com.google.android.material.i;

import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.Log;
import android.util.StateSet;
import androidx.core.graphics.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/i/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f30575a;

    /* renamed from: b  reason: collision with root package name */
    static final String f30576b;

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f30577c;

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f30578d;
    private static final int[] e;
    private static final int[] f;
    private static final int[] g;
    private static final int[] h;
    private static final int[] i;
    private static final int[] j;
    private static final int[] k;
    private static final int[] l;

    static {
        f30575a = Build.VERSION.SDK_INT >= 21;
        f30577c = new int[]{16842919};
        f30578d = new int[]{16843623, 16842908};
        e = new int[]{16842908};
        f = new int[]{16843623};
        g = new int[]{16842913, 16842919};
        h = new int[]{16842913, 16843623, 16842908};
        i = new int[]{16842913, 16842908};
        j = new int[]{16842913, 16843623};
        k = new int[]{16842913};
        l = new int[]{16842910, 16842919};
        f30576b = b.class.getSimpleName();
    }

    private b() {
    }

    private static int a(int i2) {
        return a.b(i2, Math.min(Color.alpha(i2) * 2, 255));
    }

    private static int a(ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        int i2 = colorForState;
        if (f30575a) {
            i2 = a(colorForState);
        }
        return i2;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
    /* JADX WARN: Type inference failed for: r2v3, types: [int[], int[][]] */
    public static ColorStateList a(ColorStateList colorStateList) {
        if (f30575a) {
            int[] iArr = k;
            int a2 = a(colorStateList, g);
            return new ColorStateList(new int[]{iArr, StateSet.NOTHING}, new int[]{a2, a(colorStateList, f30577c)});
        }
        int[] iArr2 = g;
        int a3 = a(colorStateList, iArr2);
        int[] iArr3 = h;
        int a4 = a(colorStateList, iArr3);
        int[] iArr4 = i;
        int a5 = a(colorStateList, iArr4);
        int[] iArr5 = j;
        int a6 = a(colorStateList, iArr5);
        int[] iArr6 = k;
        int[] iArr7 = f30577c;
        int a7 = a(colorStateList, iArr7);
        int[] iArr8 = f30578d;
        int a8 = a(colorStateList, iArr8);
        int[] iArr9 = e;
        int a9 = a(colorStateList, iArr9);
        int[] iArr10 = f;
        return new ColorStateList(new int[]{iArr2, iArr3, iArr4, iArr5, iArr6, iArr7, iArr8, iArr9, iArr10, StateSet.NOTHING}, new int[]{a3, a4, a5, a6, 0, a7, a8, a9, a(colorStateList, iArr10), 0});
    }

    public static boolean a(int[] iArr) {
        boolean z = false;
        boolean z2 = false;
        for (int i2 : iArr) {
            if (i2 == 16842910) {
                z = true;
            } else {
                if (!(i2 == 16842908 || i2 == 16842919)) {
                    z = z;
                    if (i2 != 16843623) {
                    }
                }
                z2 = true;
                z = z;
            }
        }
        return z && z2;
    }

    public static ColorStateList b(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return ColorStateList.valueOf(0);
        }
        if (Build.VERSION.SDK_INT >= 22 && Build.VERSION.SDK_INT <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0 && Color.alpha(colorStateList.getColorForState(l, 0)) != 0) {
            Log.w(f30576b, "Use a non-transparent color for the default color as it will be used to finish ripple animations.");
        }
        return colorStateList;
    }
}
