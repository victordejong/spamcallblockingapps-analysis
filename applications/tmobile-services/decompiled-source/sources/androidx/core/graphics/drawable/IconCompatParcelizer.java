package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import androidx.versionedparcelable.VersionedParcel;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/IconCompatParcelizer.class */
public class IconCompatParcelizer {
    public static IconCompat read(VersionedParcel versionedParcel) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f3052a = versionedParcel.m16560p(iconCompat.f3052a, 1);
        iconCompat.f3054c = versionedParcel.m16563j(iconCompat.f3054c, 2);
        iconCompat.f3055d = versionedParcel.m16559r(iconCompat.f3055d, 3);
        iconCompat.f3056e = versionedParcel.m16560p(iconCompat.f3056e, 4);
        iconCompat.f3057f = versionedParcel.m16560p(iconCompat.f3057f, 5);
        iconCompat.f3058g = (ColorStateList) versionedParcel.m16559r(iconCompat.f3058g, 6);
        iconCompat.f3060i = versionedParcel.m16558t(iconCompat.f3060i, 7);
        iconCompat.m19478q();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, VersionedParcel versionedParcel) {
        versionedParcel.mo16538x(true, true);
        iconCompat.m19477r(versionedParcel.mo16547f());
        int i = iconCompat.f3052a;
        if (-1 != i) {
            versionedParcel.m16574F(i, 1);
        }
        byte[] bArr = iconCompat.f3054c;
        if (bArr != null) {
            versionedParcel.m16576B(bArr, 2);
        }
        Parcelable parcelable = iconCompat.f3055d;
        if (parcelable != null) {
            versionedParcel.m16573H(parcelable, 3);
        }
        int i2 = iconCompat.f3056e;
        if (i2 != 0) {
            versionedParcel.m16574F(i2, 4);
        }
        int i3 = iconCompat.f3057f;
        if (i3 != 0) {
            versionedParcel.m16574F(i3, 5);
        }
        ColorStateList colorStateList = iconCompat.f3058g;
        if (colorStateList != null) {
            versionedParcel.m16573H(colorStateList, 6);
        }
        String str = iconCompat.f3060i;
        if (str != null) {
            versionedParcel.m16572J(str, 7);
        }
    }
}
