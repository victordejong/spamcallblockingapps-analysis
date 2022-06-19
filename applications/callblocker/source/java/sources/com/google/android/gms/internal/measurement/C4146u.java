package com.google.android.gms.internal.measurement;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;
/* renamed from: com.google.android.gms.internal.measurement.u */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/u.class */
public class C4146u {

    /* renamed from: a */
    private static final ClassLoader f18529a = C4146u.class.getClassLoader();

    private C4146u() {
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m4944a(Parcel parcel, Parcelable.Creator<T> creator) {
        return parcel.readInt() == 0 ? null : creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m4945a(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    /* renamed from: a */
    public static void m4943a(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* renamed from: a */
    public static void m4942a(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: a */
    public static boolean m4946a(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    /* renamed from: b */
    public static HashMap m4941b(Parcel parcel) {
        return parcel.readHashMap(f18529a);
    }
}
