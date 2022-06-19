package com.google.android.gms.internal.p139f;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.google.android.gms.internal.f.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/f/d.class */
public class C3733d {

    /* renamed from: a */
    private static final ClassLoader f17792a = C3733d.class.getClassLoader();

    private C3733d() {
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m6507a(Parcel parcel, Parcelable.Creator<T> creator) {
        return parcel.readInt() == 0 ? null : creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m6508a(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }
}
