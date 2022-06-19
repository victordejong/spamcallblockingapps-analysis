package com.google.android.gms.internal.auth_api;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.auth-api.f;
/* renamed from: com.google.android.gms.internal.auth_api.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth_api/f.class */
public class C13137f {

    /* renamed from: a */
    private static final ClassLoader f50258a = f.class.getClassLoader();

    private C13137f() {
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m13608a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m13609a(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    /* renamed from: a */
    public static void m13607a(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }
}
