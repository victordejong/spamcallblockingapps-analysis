package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/IconCompatParcelizer.class */
public class IconCompatParcelizer {
    public static IconCompat read(VersionedParcel versionedParcel) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f1905a = versionedParcel.b(iconCompat.f1905a, 1);
        iconCompat.f1907c = versionedParcel.b(iconCompat.f1907c, 2);
        iconCompat.f1908d = versionedParcel.b((VersionedParcel) iconCompat.f1908d, 3);
        iconCompat.e = versionedParcel.b(iconCompat.e, 4);
        iconCompat.f = versionedParcel.b(iconCompat.f, 5);
        iconCompat.g = (ColorStateList) versionedParcel.b((VersionedParcel) iconCompat.g, 6);
        iconCompat.j = versionedParcel.b(iconCompat.j, 7);
        iconCompat.e();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, VersionedParcel versionedParcel) {
        iconCompat.a(false);
        if (-1 != iconCompat.f1905a) {
            versionedParcel.a(iconCompat.f1905a, 1);
        }
        if (iconCompat.f1907c != null) {
            versionedParcel.a(iconCompat.f1907c, 2);
        }
        if (iconCompat.f1908d != null) {
            versionedParcel.a(iconCompat.f1908d, 3);
        }
        if (iconCompat.e != 0) {
            versionedParcel.a(iconCompat.e, 4);
        }
        if (iconCompat.f != 0) {
            versionedParcel.a(iconCompat.f, 5);
        }
        if (iconCompat.g != null) {
            versionedParcel.a(iconCompat.g, 6);
        }
        if (iconCompat.j != null) {
            versionedParcel.a(iconCompat.j, 7);
        }
    }
}
