package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;
import java.nio.charset.Charset;
import java.util.Objects;
import p1727n3.p1803i0.AbstractC26405c;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/IconCompatParcelizer.class */
public class IconCompatParcelizer {
    public static IconCompat read(AbstractC26405c abstractC26405c) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.a = abstractC26405c.m1927r(iconCompat.a, 1);
        byte[] bArr = iconCompat.c;
        if (abstractC26405c.mo1905n(2)) {
            bArr = abstractC26405c.mo1907j();
        }
        iconCompat.c = bArr;
        iconCompat.d = abstractC26405c.m1925v(iconCompat.d, 3);
        iconCompat.e = abstractC26405c.m1927r(iconCompat.e, 4);
        iconCompat.f = abstractC26405c.m1927r(iconCompat.f, 5);
        iconCompat.g = (ColorStateList) abstractC26405c.m1925v(iconCompat.g, 6);
        iconCompat.i = abstractC26405c.m1924x(iconCompat.i, 7);
        iconCompat.j = abstractC26405c.m1924x(iconCompat.j, 8);
        iconCompat.t();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, AbstractC26405c abstractC26405c) {
        Objects.requireNonNull(abstractC26405c);
        iconCompat.i = iconCompat.h.name();
        switch (iconCompat.a) {
            case -1:
                iconCompat.d = (Parcelable) iconCompat.b;
                break;
            case 1:
            case 5:
                iconCompat.d = (Parcelable) iconCompat.b;
                break;
            case 2:
                iconCompat.c = ((String) iconCompat.b).getBytes(Charset.forName("UTF-16"));
                break;
            case 3:
                iconCompat.c = (byte[]) iconCompat.b;
                break;
            case 4:
            case 6:
                iconCompat.c = iconCompat.b.toString().getBytes(Charset.forName("UTF-16"));
                break;
        }
        int i = iconCompat.a;
        if (-1 != i) {
            abstractC26405c.mo1922B(1);
            abstractC26405c.mo1916I(i);
        }
        byte[] bArr = iconCompat.c;
        if (bArr != null) {
            abstractC26405c.mo1922B(2);
            abstractC26405c.mo1919E(bArr);
        }
        Parcelable parcelable = iconCompat.d;
        if (parcelable != null) {
            abstractC26405c.mo1922B(3);
            abstractC26405c.mo1914K(parcelable);
        }
        int i2 = iconCompat.e;
        if (i2 != 0) {
            abstractC26405c.mo1922B(4);
            abstractC26405c.mo1916I(i2);
        }
        int i3 = iconCompat.f;
        if (i3 != 0) {
            abstractC26405c.mo1922B(5);
            abstractC26405c.mo1916I(i3);
        }
        ColorStateList colorStateList = iconCompat.g;
        if (colorStateList != null) {
            abstractC26405c.mo1922B(6);
            abstractC26405c.mo1914K(colorStateList);
        }
        String str = iconCompat.i;
        if (str != null) {
            abstractC26405c.mo1922B(7);
            abstractC26405c.mo1913L(str);
        }
        String str2 = iconCompat.j;
        if (str2 != null) {
            abstractC26405c.mo1922B(8);
            abstractC26405c.mo1913L(str2);
        }
    }
}
