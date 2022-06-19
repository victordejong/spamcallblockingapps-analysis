package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.google.android.gms.internal.location.ai */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/ai.class */
public final class C13321ai {

    /* renamed from: a */
    private static final ClassLoader f50556a = C13321ai.class.getClassLoader();

    private C13321ai() {
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m13337a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m13336a(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* renamed from: a */
    public static void m13335a(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }
}
