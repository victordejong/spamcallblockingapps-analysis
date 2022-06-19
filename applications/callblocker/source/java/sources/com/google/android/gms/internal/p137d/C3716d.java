package com.google.android.gms.internal.p137d;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.google.android.gms.internal.d.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/d/d.class */
public class C3716d {

    /* renamed from: a */
    private static final ClassLoader f17777a = C3716d.class.getClassLoader();

    private C3716d() {
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m6524a(Parcel parcel, Parcelable.Creator<T> creator) {
        return parcel.readInt() == 0 ? null : creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m6525a(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    /* renamed from: a */
    public static void m6523a(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }
}
