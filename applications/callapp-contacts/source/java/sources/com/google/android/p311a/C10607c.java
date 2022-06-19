package com.google.android.p311a;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.google.android.a.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/a/c.class */
public final class C10607c {
    static {
        C10607c.class.getClassLoader();
    }

    private C10607c() {
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m22618a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m22617a(Parcel parcel, Parcelable parcelable) {
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }
}
