package com.google.android.gms.internal.p138e;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.google.android.gms.internal.e.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/d.class */
public class C3722d {

    /* renamed from: a */
    private static final ClassLoader f17782a = C3722d.class.getClassLoader();

    private C3722d() {
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m6516a(Parcel parcel, Parcelable.Creator<T> creator) {
        return parcel.readInt() == 0 ? null : creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m6517a(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    /* renamed from: a */
    public static void m6515a(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* renamed from: a */
    public static void m6514a(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: a */
    public static boolean m6518a(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    /* renamed from: b */
    public static void m6513b(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 1);
    }
}
