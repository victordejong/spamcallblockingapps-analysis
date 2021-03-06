package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;
import androidx.versionedparcelable.AbstractC0520a;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/IconCompatParcelizer.class */
public class IconCompatParcelizer {
    public static IconCompat read(AbstractC0520a abstractC0520a) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.a = abstractC0520a.m11943p(iconCompat.a, 1);
        iconCompat.c = abstractC0520a.m11949j(iconCompat.c, 2);
        iconCompat.d = abstractC0520a.m11941r(iconCompat.d, 3);
        iconCompat.e = abstractC0520a.m11943p(iconCompat.e, 4);
        iconCompat.f = abstractC0520a.m11943p(iconCompat.f, 5);
        iconCompat.g = (ColorStateList) abstractC0520a.m11941r(iconCompat.g, 6);
        iconCompat.i = abstractC0520a.m11939t(iconCompat.i, 7);
        iconCompat.j();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, AbstractC0520a abstractC0520a) {
        abstractC0520a.m11935x(true, true);
        iconCompat.k(abstractC0520a.m11953f());
        int i = iconCompat.a;
        if (-1 != i) {
            abstractC0520a.m11967F(i, 1);
        }
        byte[] bArr = iconCompat.c;
        if (bArr != null) {
            abstractC0520a.m11971B(bArr, 2);
        }
        Parcelable parcelable = iconCompat.d;
        if (parcelable != null) {
            abstractC0520a.m11965H(parcelable, 3);
        }
        int i2 = iconCompat.e;
        if (i2 != 0) {
            abstractC0520a.m11967F(i2, 4);
        }
        int i3 = iconCompat.f;
        if (i3 != 0) {
            abstractC0520a.m11967F(i3, 5);
        }
        ColorStateList colorStateList = iconCompat.g;
        if (colorStateList != null) {
            abstractC0520a.m11965H(colorStateList, 6);
        }
        String str = iconCompat.i;
        if (str != null) {
            abstractC0520a.m11963J(str, 7);
        }
    }
}
