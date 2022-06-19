package p005a4;

import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.Log;
/* renamed from: a4.b */
/* loaded from: classes-dex2jar.jar:a4/b.class */
public class C0016b {

    /* renamed from: a */
    public static final int[] f15a = {16842910, 16842919};

    /* renamed from: b */
    public static final String f16b = C0016b.class.getSimpleName();

    /* renamed from: a */
    public static ColorStateList m8930a(ColorStateList colorStateList) {
        if (colorStateList != null) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 22 && i <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0 && Color.alpha(colorStateList.getColorForState(f15a, 0)) != 0) {
                Log.w(f16b, "Use a non-transparent color for the default color as it will be used to finish ripple animations.");
            }
            return colorStateList;
        }
        return ColorStateList.valueOf(0);
    }

    /* renamed from: b */
    public static boolean m8929b(int[] iArr) {
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
