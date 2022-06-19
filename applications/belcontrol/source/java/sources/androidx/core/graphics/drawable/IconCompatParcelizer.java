package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/IconCompatParcelizer.class */
public class IconCompatParcelizer {
    public static IconCompat read(d40 d40Var) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.a = d40Var.m2828v(iconCompat.a, 1);
        iconCompat.c = d40Var.m2839m(iconCompat.c, 2);
        iconCompat.d = d40Var.m2889A(iconCompat.d, 3);
        iconCompat.e = d40Var.m2828v(iconCompat.e, 4);
        iconCompat.f = d40Var.m2828v(iconCompat.f, 5);
        iconCompat.g = (ColorStateList) d40Var.m2889A(iconCompat.g, 6);
        iconCompat.i = d40Var.m2885E(iconCompat.i, 7);
        iconCompat.d();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, d40 d40Var) {
        d40Var.m2879K(true, true);
        iconCompat.e(d40Var.m2851g());
        int i = iconCompat.a;
        if (-1 != i) {
            d40Var.m2865Y(i, 1);
        }
        byte[] bArr = iconCompat.c;
        if (bArr != null) {
            d40Var.m2873Q(bArr, 2);
        }
        Parcelable parcelable = iconCompat.d;
        if (parcelable != null) {
            d40Var.m2856d0(parcelable, 3);
        }
        int i2 = iconCompat.e;
        if (i2 != 0) {
            d40Var.m2865Y(i2, 4);
        }
        int i3 = iconCompat.f;
        if (i3 != 0) {
            d40Var.m2865Y(i3, 5);
        }
        ColorStateList colorStateList = iconCompat.g;
        if (colorStateList != null) {
            d40Var.m2856d0(colorStateList, 6);
        }
        String str = iconCompat.i;
        if (str != null) {
            d40Var.m2848h0(str, 7);
        }
    }
}
