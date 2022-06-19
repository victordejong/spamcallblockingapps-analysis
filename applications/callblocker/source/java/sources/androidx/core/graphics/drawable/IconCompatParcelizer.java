package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/IconCompatParcelizer.class */
public class IconCompatParcelizer {
    public static IconCompat read(VersionedParcel versionedParcel) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f1974a = versionedParcel.m18142b(iconCompat.f1974a, 1);
        iconCompat.f1976c = versionedParcel.m18133b(iconCompat.f1976c, 2);
        iconCompat.f1977d = versionedParcel.m18141b((VersionedParcel) iconCompat.f1977d, 3);
        iconCompat.f1978e = versionedParcel.m18142b(iconCompat.f1978e, 4);
        iconCompat.f1979f = versionedParcel.m18142b(iconCompat.f1979f, 5);
        iconCompat.f1980g = (ColorStateList) versionedParcel.m18141b((VersionedParcel) iconCompat.f1980g, 6);
        iconCompat.f1982j = versionedParcel.m18135b(iconCompat.f1982j, 7);
        iconCompat.mo18159c();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, VersionedParcel versionedParcel) {
        versionedParcel.m18144a(true, true);
        iconCompat.mo18160a(versionedParcel.m18155a());
        if (-1 != iconCompat.f1974a) {
            versionedParcel.m18154a(iconCompat.f1974a, 1);
        }
        if (iconCompat.f1976c != null) {
            versionedParcel.m18143a(iconCompat.f1976c, 2);
        }
        if (iconCompat.f1977d != null) {
            versionedParcel.m18153a(iconCompat.f1977d, 3);
        }
        if (iconCompat.f1978e != 0) {
            versionedParcel.m18154a(iconCompat.f1978e, 4);
        }
        if (iconCompat.f1979f != 0) {
            versionedParcel.m18154a(iconCompat.f1979f, 5);
        }
        if (iconCompat.f1980g != null) {
            versionedParcel.m18153a(iconCompat.f1980g, 6);
        }
        if (iconCompat.f1982j != null) {
            versionedParcel.m18147a(iconCompat.f1982j, 7);
        }
    }
}
