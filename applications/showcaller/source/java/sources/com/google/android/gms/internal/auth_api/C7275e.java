package com.google.android.gms.internal.auth_api;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.auth-api.e;
/* renamed from: com.google.android.gms.internal.auth_api.e */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/e.class */
public class C7275e {

    /* renamed from: a */
    private static final ClassLoader f34316a = e.class.getClassLoader();

    private C7275e() {
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m7817a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: b */
    public static void m7816b(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    /* renamed from: c */
    public static void m7815c(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }
}
