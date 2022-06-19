package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcelable;
import androidx.versionedparcelable.VersionedParcel;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/IconCompatParcelizer.class */
public class IconCompatParcelizer {
    public static IconCompat read(VersionedParcel versionedParcel) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f1484a = versionedParcel.m7493k(iconCompat.f1484a, 1);
        byte[] bArr = iconCompat.f1486c;
        if (versionedParcel.mo1858i(2)) {
            bArr = versionedParcel.mo1860g();
        }
        iconCompat.f1486c = bArr;
        iconCompat.f1487d = versionedParcel.m7492m(iconCompat.f1487d, 3);
        iconCompat.f1488e = versionedParcel.m7493k(iconCompat.f1488e, 4);
        iconCompat.f1489f = versionedParcel.m7493k(iconCompat.f1489f, 5);
        iconCompat.f1490g = (ColorStateList) versionedParcel.m7492m(iconCompat.f1490g, 6);
        String str = iconCompat.f1492i;
        if (versionedParcel.mo1858i(7)) {
            str = versionedParcel.mo1855n();
        }
        iconCompat.f1492i = str;
        iconCompat.f1493j = !versionedParcel.mo1858i(8) ? iconCompat.f1493j : versionedParcel.mo1855n();
        iconCompat.f1491h = PorterDuff.Mode.valueOf(iconCompat.f1492i);
        switch (iconCompat.f1484a) {
            case -1:
                Parcelable parcelable = iconCompat.f1487d;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                iconCompat.f1485b = parcelable;
                break;
            case 1:
            case 5:
                Parcelable parcelable2 = iconCompat.f1487d;
                if (parcelable2 == null) {
                    byte[] bArr2 = iconCompat.f1486c;
                    iconCompat.f1485b = bArr2;
                    iconCompat.f1484a = 3;
                    iconCompat.f1488e = 0;
                    iconCompat.f1489f = bArr2.length;
                    break;
                } else {
                    iconCompat.f1485b = parcelable2;
                    break;
                }
            case 2:
            case 4:
            case 6:
                String str2 = new String(iconCompat.f1486c, Charset.forName("UTF-16"));
                iconCompat.f1485b = str2;
                if (iconCompat.f1484a == 2 && iconCompat.f1493j == null) {
                    iconCompat.f1493j = str2.split(":", -1)[0];
                    break;
                }
                break;
            case 3:
                iconCompat.f1485b = iconCompat.f1486c;
                break;
        }
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, VersionedParcel versionedParcel) {
        Objects.requireNonNull(versionedParcel);
        iconCompat.f1492i = iconCompat.f1491h.name();
        switch (iconCompat.f1484a) {
            case -1:
                iconCompat.f1487d = (Parcelable) iconCompat.f1485b;
                break;
            case 1:
            case 5:
                iconCompat.f1487d = (Parcelable) iconCompat.f1485b;
                break;
            case 2:
                iconCompat.f1486c = ((String) iconCompat.f1485b).getBytes(Charset.forName("UTF-16"));
                break;
            case 3:
                iconCompat.f1486c = (byte[]) iconCompat.f1485b;
                break;
            case 4:
            case 6:
                iconCompat.f1486c = iconCompat.f1485b.toString().getBytes(Charset.forName("UTF-16"));
                break;
        }
        int i = iconCompat.f1484a;
        if (-1 != i) {
            versionedParcel.mo1854p(1);
            versionedParcel.mo1850t(i);
        }
        byte[] bArr = iconCompat.f1486c;
        if (bArr != null) {
            versionedParcel.mo1854p(2);
            versionedParcel.mo1852r(bArr);
        }
        Parcelable parcelable = iconCompat.f1487d;
        if (parcelable != null) {
            versionedParcel.mo1854p(3);
            versionedParcel.mo1849u(parcelable);
        }
        int i2 = iconCompat.f1488e;
        if (i2 != 0) {
            versionedParcel.mo1854p(4);
            versionedParcel.mo1850t(i2);
        }
        int i3 = iconCompat.f1489f;
        if (i3 != 0) {
            versionedParcel.mo1854p(5);
            versionedParcel.mo1850t(i3);
        }
        ColorStateList colorStateList = iconCompat.f1490g;
        if (colorStateList != null) {
            versionedParcel.mo1854p(6);
            versionedParcel.mo1849u(colorStateList);
        }
        String str = iconCompat.f1492i;
        if (str != null) {
            versionedParcel.mo1854p(7);
            versionedParcel.mo1848v(str);
        }
        String str2 = iconCompat.f1493j;
        if (str2 != null) {
            versionedParcel.mo1854p(8);
            versionedParcel.mo1848v(str2);
        }
    }
}
