package com.google.android.gms.internal.measurement;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;
/* renamed from: com.google.android.gms.internal.measurement.r0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/r0.class */
public final class C2166r0 {

    /* renamed from: a */
    private static final ClassLoader f9813a = C2166r0.class.getClassLoader();

    private C2166r0() {
    }

    /* renamed from: a */
    public static boolean m4201a(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    /* renamed from: b */
    public static void m4200b(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: c */
    public static <T extends Parcelable> T m4199c(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: d */
    public static void m4198d(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* renamed from: e */
    public static void m4197e(Parcel parcel, IInterface iInterface) {
        parcel.writeStrongBinder(iInterface == null ? null : iInterface.asBinder());
    }

    /* renamed from: f */
    public static HashMap m4196f(Parcel parcel) {
        return parcel.readHashMap(f9813a);
    }
}
