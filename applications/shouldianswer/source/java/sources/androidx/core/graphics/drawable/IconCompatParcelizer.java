package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/IconCompatParcelizer.class */
public class IconCompatParcelizer {
    public static IconCompat read(VersionedParcel versionedParcel) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f1929a = versionedParcel.m4362b(iconCompat.f1929a, 1);
        iconCompat.f1931c = versionedParcel.m4353b(iconCompat.f1931c, 2);
        iconCompat.f1932d = versionedParcel.m4361b((VersionedParcel) iconCompat.f1932d, 3);
        iconCompat.f1933e = versionedParcel.m4362b(iconCompat.f1933e, 4);
        iconCompat.f1934f = versionedParcel.m4362b(iconCompat.f1934f, 5);
        iconCompat.f1935g = (ColorStateList) versionedParcel.m4361b((VersionedParcel) iconCompat.f1935g, 6);
        iconCompat.f1937j = versionedParcel.m4355b(iconCompat.f1937j, 7);
        iconCompat.mo4378c();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, VersionedParcel versionedParcel) {
        versionedParcel.m4364a(true, true);
        iconCompat.mo4379a(versionedParcel.m4375a());
        if (-1 != iconCompat.f1929a) {
            versionedParcel.m4374a(iconCompat.f1929a, 1);
        }
        if (iconCompat.f1931c != null) {
            versionedParcel.m4363a(iconCompat.f1931c, 2);
        }
        if (iconCompat.f1932d != null) {
            versionedParcel.m4373a(iconCompat.f1932d, 3);
        }
        if (iconCompat.f1933e != 0) {
            versionedParcel.m4374a(iconCompat.f1933e, 4);
        }
        if (iconCompat.f1934f != 0) {
            versionedParcel.m4374a(iconCompat.f1934f, 5);
        }
        if (iconCompat.f1935g != null) {
            versionedParcel.m4373a(iconCompat.f1935g, 6);
        }
        if (iconCompat.f1937j != null) {
            versionedParcel.m4367a(iconCompat.f1937j, 7);
        }
    }
}
