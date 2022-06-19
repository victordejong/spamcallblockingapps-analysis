package p078c.p084c.p085a.p096b.p106v;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.Log;
import android.util.StateSet;
import p020b.p041h.p042e.C1522a;
/* renamed from: c.c.a.b.v.b */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/v/b.class */
public class C1928b {

    /* renamed from: a */
    public static final boolean f6876a;

    /* renamed from: b */
    private static final int[] f6877b;

    /* renamed from: c */
    private static final int[] f6878c;

    /* renamed from: d */
    private static final int[] f6879d;

    /* renamed from: e */
    private static final int[] f6880e;

    /* renamed from: f */
    private static final int[] f6881f;

    /* renamed from: g */
    private static final int[] f6882g;

    /* renamed from: h */
    private static final int[] f6883h;

    /* renamed from: i */
    private static final int[] f6884i;

    /* renamed from: j */
    private static final int[] f6885j;

    /* renamed from: k */
    private static final int[] f6886k;

    /* renamed from: l */
    static final String f6887l;

    static {
        f6876a = Build.VERSION.SDK_INT >= 21;
        f6877b = new int[]{16842919};
        f6878c = new int[]{16843623, 16842908};
        f6879d = new int[]{16842908};
        f6880e = new int[]{16843623};
        f6881f = new int[]{16842913, 16842919};
        f6882g = new int[]{16842913, 16843623, 16842908};
        f6883h = new int[]{16842913, 16842908};
        f6884i = new int[]{16842913, 16843623};
        f6885j = new int[]{16842913};
        f6886k = new int[]{16842910, 16842919};
        f6887l = C1928b.class.getSimpleName();
    }

    private C1928b() {
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [int[], int[][]] */
    /* JADX WARN: Type inference failed for: r2v3, types: [int[], int[][]] */
    /* renamed from: a */
    public static ColorStateList m28661a(ColorStateList colorStateList) {
        if (f6876a) {
            int[] iArr = f6885j;
            int m28659c = m28659c(colorStateList, f6881f);
            return new ColorStateList(new int[]{iArr, StateSet.NOTHING}, new int[]{m28659c, m28659c(colorStateList, f6877b)});
        }
        int[] iArr2 = f6881f;
        int m28659c2 = m28659c(colorStateList, iArr2);
        int[] iArr3 = f6882g;
        int m28659c3 = m28659c(colorStateList, iArr3);
        int[] iArr4 = f6883h;
        int m28659c4 = m28659c(colorStateList, iArr4);
        int[] iArr5 = f6884i;
        int m28659c5 = m28659c(colorStateList, iArr5);
        int[] iArr6 = f6885j;
        int[] iArr7 = f6877b;
        int m28659c6 = m28659c(colorStateList, iArr7);
        int[] iArr8 = f6878c;
        int m28659c7 = m28659c(colorStateList, iArr8);
        int[] iArr9 = f6879d;
        int m28659c8 = m28659c(colorStateList, iArr9);
        int[] iArr10 = f6880e;
        return new ColorStateList(new int[]{iArr2, iArr3, iArr4, iArr5, iArr6, iArr7, iArr8, iArr9, iArr10, StateSet.NOTHING}, new int[]{m28659c2, m28659c3, m28659c4, m28659c5, 0, m28659c6, m28659c7, m28659c8, m28659c(colorStateList, iArr10), 0});
    }

    @TargetApi(21)
    /* renamed from: b */
    private static int m28660b(int i) {
        return C1522a.m29848d(i, Math.min(Color.alpha(i) * 2, 255));
    }

    /* renamed from: c */
    private static int m28659c(ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        int i = colorForState;
        if (f6876a) {
            i = m28660b(colorForState);
        }
        return i;
    }

    /* renamed from: d */
    public static ColorStateList m28658d(ColorStateList colorStateList) {
        if (colorStateList != null) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 22 && i <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0 && Color.alpha(colorStateList.getColorForState(f6886k, 0)) != 0) {
                Log.w(f6887l, "Use a non-transparent color for the default color as it will be used to finish ripple animations.");
            }
            return colorStateList;
        }
        return ColorStateList.valueOf(0);
    }

    /* renamed from: e */
    public static boolean m28657e(int[] iArr) {
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
        boolean z4 = false;
        if (z2) {
            z4 = false;
            if (z3) {
                z4 = true;
            }
        }
        return z4;
    }
}
