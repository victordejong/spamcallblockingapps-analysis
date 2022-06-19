package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.google.android.gms.internal.auth.k */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/k.class */
public class C7266k {

    /* renamed from: a */
    private static final ClassLoader f34245a = C7266k.class.getClassLoader();

    private C7266k() {
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m7827a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: b */
    public static void m7826b(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }
}
