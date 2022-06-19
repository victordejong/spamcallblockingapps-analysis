package com.google.android.gms.internal.p135b;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.google.android.gms.internal.b.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/b/f.class */
public class C3703f {

    /* renamed from: a */
    private static final ClassLoader f17769a = C3703f.class.getClassLoader();

    private C3703f() {
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m6532a(Parcel parcel, Parcelable.Creator<T> creator) {
        return parcel.readInt() == 0 ? null : creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m6533a(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    /* renamed from: a */
    public static void m6531a(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }
}
