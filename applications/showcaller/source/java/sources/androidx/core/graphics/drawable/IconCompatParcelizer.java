package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/IconCompatParcelizer.class */
public class IconCompatParcelizer {
    public static IconCompat read(VersionedParcel versionedParcel) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f2986b = versionedParcel.m30794p(iconCompat.f2986b, 1);
        iconCompat.f2988d = versionedParcel.m30797j(iconCompat.f2988d, 2);
        iconCompat.f2989e = versionedParcel.m30793r(iconCompat.f2989e, 3);
        iconCompat.f2990f = versionedParcel.m30794p(iconCompat.f2990f, 4);
        iconCompat.f2991g = versionedParcel.m30794p(iconCompat.f2991g, 5);
        iconCompat.f2992h = (ColorStateList) versionedParcel.m30793r(iconCompat.f2992h, 6);
        iconCompat.f2994j = versionedParcel.m30792t(iconCompat.f2994j, 7);
        iconCompat.f2995k = versionedParcel.m30792t(iconCompat.f2995k, 8);
        iconCompat.m33234n();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, VersionedParcel versionedParcel) {
        versionedParcel.m30789x(true, true);
        iconCompat.m33233o(versionedParcel.m30799f());
        int i = iconCompat.f2986b;
        if (-1 != i) {
            versionedParcel.m30809F(i, 1);
        }
        byte[] bArr = iconCompat.f2988d;
        if (bArr != null) {
            versionedParcel.m30811B(bArr, 2);
        }
        Parcelable parcelable = iconCompat.f2989e;
        if (parcelable != null) {
            versionedParcel.m30808H(parcelable, 3);
        }
        int i2 = iconCompat.f2990f;
        if (i2 != 0) {
            versionedParcel.m30809F(i2, 4);
        }
        int i3 = iconCompat.f2991g;
        if (i3 != 0) {
            versionedParcel.m30809F(i3, 5);
        }
        ColorStateList colorStateList = iconCompat.f2992h;
        if (colorStateList != null) {
            versionedParcel.m30808H(colorStateList, 6);
        }
        String str = iconCompat.f2994j;
        if (str != null) {
            versionedParcel.m30807J(str, 7);
        }
        String str2 = iconCompat.f2995k;
        if (str2 != null) {
            versionedParcel.m30807J(str2, 8);
        }
    }
}
