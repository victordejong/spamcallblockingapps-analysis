package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/IconCompatParcelizer.class */
public class IconCompatParcelizer {
    public static IconCompat read(VersionedParcel versionedParcel) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f3574a = versionedParcel.m39644b(iconCompat.f3574a, 1);
        iconCompat.f3576c = versionedParcel.m39633b(iconCompat.f3576c, 2);
        iconCompat.f3577d = versionedParcel.m39640b((VersionedParcel) iconCompat.f3577d, 3);
        iconCompat.f3578e = versionedParcel.m39644b(iconCompat.f3578e, 4);
        iconCompat.f3579f = versionedParcel.m39644b(iconCompat.f3579f, 5);
        iconCompat.f3580g = (ColorStateList) versionedParcel.m39640b((VersionedParcel) iconCompat.f3580g, 6);
        iconCompat.f3582j = versionedParcel.m39635b(iconCompat.f3582j, 7);
        iconCompat.mo39666e();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, VersionedParcel versionedParcel) {
        iconCompat.mo39667a(false);
        if (-1 != iconCompat.f3574a) {
            versionedParcel.m39664a(iconCompat.f3574a, 1);
        }
        if (iconCompat.f3576c != null) {
            versionedParcel.m39646a(iconCompat.f3576c, 2);
        }
        if (iconCompat.f3577d != null) {
            versionedParcel.m39660a(iconCompat.f3577d, 3);
        }
        if (iconCompat.f3578e != 0) {
            versionedParcel.m39664a(iconCompat.f3578e, 4);
        }
        if (iconCompat.f3579f != 0) {
            versionedParcel.m39664a(iconCompat.f3579f, 5);
        }
        if (iconCompat.f3580g != null) {
            versionedParcel.m39660a(iconCompat.f3580g, 6);
        }
        if (iconCompat.f3582j != null) {
            versionedParcel.m39653a(iconCompat.f3582j, 7);
        }
    }
}
