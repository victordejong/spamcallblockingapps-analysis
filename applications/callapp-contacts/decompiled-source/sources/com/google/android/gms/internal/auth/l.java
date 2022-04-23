package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth/l.class */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private static final ClassLoader f28655a = l.class.getClassLoader();

    private l() {
    }

    public static <T extends Parcelable> T a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    public static void a(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }
}
