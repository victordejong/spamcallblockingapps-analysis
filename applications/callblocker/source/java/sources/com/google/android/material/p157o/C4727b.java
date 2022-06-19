package com.google.android.material.p157o;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.Log;
import android.util.StateSet;
import androidx.core.graphics.C0529a;
/* renamed from: com.google.android.material.o.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/o/b.class */
public class C4727b {

    /* renamed from: a */
    public static final boolean f20437a;

    /* renamed from: b */
    static final String f20438b;

    /* renamed from: c */
    private static final int[] f20439c;

    /* renamed from: d */
    private static final int[] f20440d;

    /* renamed from: e */
    private static final int[] f20441e;

    /* renamed from: f */
    private static final int[] f20442f;

    /* renamed from: g */
    private static final int[] f20443g;

    /* renamed from: h */
    private static final int[] f20444h;

    /* renamed from: i */
    private static final int[] f20445i;

    /* renamed from: j */
    private static final int[] f20446j;

    /* renamed from: k */
    private static final int[] f20447k;

    /* renamed from: l */
    private static final int[] f20448l;

    static {
        f20437a = Build.VERSION.SDK_INT >= 21;
        f20439c = new int[]{16842919};
        f20440d = new int[]{16843623, 16842908};
        f20441e = new int[]{16842908};
        f20442f = new int[]{16843623};
        f20443g = new int[]{16842913, 16842919};
        f20444h = new int[]{16842913, 16843623, 16842908};
        f20445i = new int[]{16842913, 16842908};
        f20446j = new int[]{16842913, 16843623};
        f20447k = new int[]{16842913};
        f20448l = new int[]{16842910, 16842919};
        f20438b = C4727b.class.getSimpleName();
    }

    private C4727b() {
    }

    @TargetApi(21)
    /* renamed from: a */
    private static int m2760a(int i) {
        return C0529a.m20633b(i, Math.min(Color.alpha(i) * 2, 255));
    }

    /* renamed from: a */
    private static int m2758a(ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        int i = colorForState;
        if (f20437a) {
            i = m2760a(colorForState);
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
    /* JADX WARN: Type inference failed for: r2v3, types: [int[], int[][]] */
    /* renamed from: a */
    public static ColorStateList m2759a(ColorStateList colorStateList) {
        ColorStateList colorStateList2;
        if (f20437a) {
            int[] iArr = f20447k;
            int m2758a = m2758a(colorStateList, f20443g);
            colorStateList2 = new ColorStateList(new int[]{iArr, StateSet.NOTHING}, new int[]{m2758a, m2758a(colorStateList, f20439c)});
        } else {
            int[] iArr2 = f20443g;
            int m2758a2 = m2758a(colorStateList, f20443g);
            int[] iArr3 = f20444h;
            int m2758a3 = m2758a(colorStateList, f20444h);
            int[] iArr4 = f20445i;
            int m2758a4 = m2758a(colorStateList, f20445i);
            int[] iArr5 = f20446j;
            int m2758a5 = m2758a(colorStateList, f20446j);
            int[] iArr6 = f20447k;
            int[] iArr7 = f20439c;
            int m2758a6 = m2758a(colorStateList, f20439c);
            int[] iArr8 = f20440d;
            int m2758a7 = m2758a(colorStateList, f20440d);
            int[] iArr9 = f20441e;
            int m2758a8 = m2758a(colorStateList, f20441e);
            colorStateList2 = new ColorStateList(new int[]{iArr2, iArr3, iArr4, iArr5, iArr6, iArr7, iArr8, iArr9, f20442f, StateSet.NOTHING}, new int[]{m2758a2, m2758a3, m2758a4, m2758a5, 0, m2758a6, m2758a7, m2758a8, m2758a(colorStateList, f20442f), 0});
        }
        return colorStateList2;
    }

    /* renamed from: a */
    public static boolean m2757a(int[] iArr) {
        boolean z;
        boolean z2;
        boolean z3 = true;
        int length = iArr.length;
        int i = 0;
        boolean z4 = false;
        boolean z5 = false;
        while (true) {
            z = z5;
            if (i >= length) {
                break;
            }
            int i2 = iArr[i];
            if (i2 == 16842910) {
                z2 = true;
            } else if (i2 == 16842908) {
                z4 = true;
                z2 = z;
            } else if (i2 == 16842919) {
                z4 = true;
                z2 = z;
            } else {
                z2 = z;
                if (i2 == 16843623) {
                    z4 = true;
                    z2 = z;
                }
            }
            i++;
            z5 = z2;
        }
        if (!z || !z4) {
            z3 = false;
        }
        return z3;
    }

    /* renamed from: b */
    public static ColorStateList m2756b(ColorStateList colorStateList) {
        ColorStateList valueOf;
        if (colorStateList != null) {
            valueOf = colorStateList;
            if (Build.VERSION.SDK_INT >= 22) {
                valueOf = colorStateList;
                if (Build.VERSION.SDK_INT <= 27) {
                    valueOf = colorStateList;
                    if (Color.alpha(colorStateList.getDefaultColor()) == 0) {
                        valueOf = colorStateList;
                        if (Color.alpha(colorStateList.getColorForState(f20448l, 0)) != 0) {
                            Log.w(f20438b, "Use a non-transparent color for the default color as it will be used to finish ripple animations.");
                            valueOf = colorStateList;
                        }
                    }
                }
            }
        } else {
            valueOf = ColorStateList.valueOf(0);
        }
        return valueOf;
    }
}
