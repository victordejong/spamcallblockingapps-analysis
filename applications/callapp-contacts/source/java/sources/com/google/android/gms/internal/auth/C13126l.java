package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.google.android.gms.internal.auth.l */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth/l.class */
public class C13126l {

    /* renamed from: a */
    private static final ClassLoader f50253a = C13126l.class.getClassLoader();

    private C13126l() {
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m13619a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m13618a(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }
}
