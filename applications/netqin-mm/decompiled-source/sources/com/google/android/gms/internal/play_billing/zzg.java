package com.google.android.gms.internal.play_billing;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/play_billing/zzg.class */
public final class zzg {
    static {
        zzg.class.getClassLoader();
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m9427a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m9426a(Parcel parcel, Parcelable parcelable) {
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }
}
