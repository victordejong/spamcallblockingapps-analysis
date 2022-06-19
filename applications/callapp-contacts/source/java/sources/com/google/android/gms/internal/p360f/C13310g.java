package com.google.android.gms.internal.p360f;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.google.android.gms.internal.f.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/f/g.class */
public final class C13310g {

    /* renamed from: a */
    private static final ClassLoader f50542a = C13310g.class.getClassLoader();

    private C13310g() {
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m13355a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m13354a(Parcel parcel, Parcelable parcelable) {
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }
}
