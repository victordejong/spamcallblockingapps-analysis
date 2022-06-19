package com.google.android.material.p372i;

import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.Log;
import android.util.StateSet;
import androidx.core.graphics.C0834a;
/* renamed from: com.google.android.material.i.b */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/i/b.class */
public class C14607b {

    /* renamed from: a */
    public static final boolean f53247a;

    /* renamed from: b */
    static final String f53248b;

    /* renamed from: c */
    private static final int[] f53249c;

    /* renamed from: d */
    private static final int[] f53250d;

    /* renamed from: e */
    private static final int[] f53251e;

    /* renamed from: f */
    private static final int[] f53252f;

    /* renamed from: g */
    private static final int[] f53253g;

    /* renamed from: h */
    private static final int[] f53254h;

    /* renamed from: i */
    private static final int[] f53255i;

    /* renamed from: j */
    private static final int[] f53256j;

    /* renamed from: k */
    private static final int[] f53257k;

    /* renamed from: l */
    private static final int[] f53258l;

    static {
        f53247a = Build.VERSION.SDK_INT >= 21;
        f53249c = new int[]{16842919};
        f53250d = new int[]{16843623, 16842908};
        f53251e = new int[]{16842908};
        f53252f = new int[]{16843623};
        f53253g = new int[]{16842913, 16842919};
        f53254h = new int[]{16842913, 16843623, 16842908};
        f53255i = new int[]{16842913, 16842908};
        f53256j = new int[]{16842913, 16843623};
        f53257k = new int[]{16842913};
        f53258l = new int[]{16842910, 16842919};
        f53248b = C14607b.class.getSimpleName();
    }

    private C14607b() {
    }

    /* renamed from: a */
    private static int m10637a(int i) {
        return C0834a.m44396b(i, Math.min(Color.alpha(i) * 2, 255));
    }

    /* renamed from: a */
    private static int m10635a(ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        int i = colorForState;
        if (f53247a) {
            i = m10637a(colorForState);
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
    /* JADX WARN: Type inference failed for: r2v3, types: [int[], int[][]] */
    /* renamed from: a */
    public static ColorStateList m10636a(ColorStateList colorStateList) {
        if (f53247a) {
            int[] iArr = f53257k;
            int m10635a = m10635a(colorStateList, f53253g);
            return new ColorStateList(new int[]{iArr, StateSet.NOTHING}, new int[]{m10635a, m10635a(colorStateList, f53249c)});
        }
        int[] iArr2 = f53253g;
        int m10635a2 = m10635a(colorStateList, iArr2);
        int[] iArr3 = f53254h;
        int m10635a3 = m10635a(colorStateList, iArr3);
        int[] iArr4 = f53255i;
        int m10635a4 = m10635a(colorStateList, iArr4);
        int[] iArr5 = f53256j;
        int m10635a5 = m10635a(colorStateList, iArr5);
        int[] iArr6 = f53257k;
        int[] iArr7 = f53249c;
        int m10635a6 = m10635a(colorStateList, iArr7);
        int[] iArr8 = f53250d;
        int m10635a7 = m10635a(colorStateList, iArr8);
        int[] iArr9 = f53251e;
        int m10635a8 = m10635a(colorStateList, iArr9);
        int[] iArr10 = f53252f;
        return new ColorStateList(new int[]{iArr2, iArr3, iArr4, iArr5, iArr6, iArr7, iArr8, iArr9, iArr10, StateSet.NOTHING}, new int[]{m10635a2, m10635a3, m10635a4, m10635a5, 0, m10635a6, m10635a7, m10635a8, m10635a(colorStateList, iArr10), 0});
    }

    /* renamed from: a */
    public static boolean m10634a(int[] iArr) {
        boolean z;
        int length = iArr.length;
        int i = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (i < length) {
            int i2 = iArr[i];
            if (i2 == 16842910) {
                z = true;
            } else {
                if (i2 != 16842908 && i2 != 16842919) {
                    z = z2;
                    if (i2 != 16843623) {
                    }
                }
                z3 = true;
                z = z2;
            }
            i++;
            z2 = z;
        }
        return z2 && z3;
    }

    /* renamed from: b */
    public static ColorStateList m10633b(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (Build.VERSION.SDK_INT >= 22 && Build.VERSION.SDK_INT <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0 && Color.alpha(colorStateList.getColorForState(f53258l, 0)) != 0) {
                Log.w(f53248b, "Use a non-transparent color for the default color as it will be used to finish ripple animations.");
            }
            return colorStateList;
        }
        return ColorStateList.valueOf(0);
    }
}
