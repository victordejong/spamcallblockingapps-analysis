package com.google.android.gms.internal.p359e;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.google.android.gms.internal.e.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e/g.class */
public class C13288g {

    /* renamed from: a */
    private static final ClassLoader f50538a = C13288g.class.getClassLoader();

    private C13288g() {
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m13490a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m13491a(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    /* renamed from: a */
    public static void m13489a(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* renamed from: a */
    public static void m13488a(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: a */
    public static boolean m13492a(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    /* renamed from: b */
    public static void m13487b(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 1);
    }
}
