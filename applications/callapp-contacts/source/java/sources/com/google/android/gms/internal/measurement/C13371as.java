package com.google.android.gms.internal.measurement;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;
/* renamed from: com.google.android.gms.internal.measurement.as */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/as.class */
public final class C13371as {

    /* renamed from: a */
    private static final ClassLoader f50607a = C13371as.class.getClassLoader();

    private C13371as() {
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m13248a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m13249a(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    /* renamed from: a */
    public static void m13247a(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* renamed from: a */
    public static void m13246a(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: a */
    public static boolean m13250a(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    /* renamed from: b */
    public static HashMap m13245b(Parcel parcel) {
        return parcel.readHashMap(f50607a);
    }
}
