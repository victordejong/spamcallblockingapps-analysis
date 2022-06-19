package com.google.android.play.core.internal;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.google.android.play.core.internal.bo */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bo.class */
public final class C15051bo {
    static {
        C15051bo.class.getClassLoader();
    }

    private C15051bo() {
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m9549a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static void m9550a(Parcel parcel, IInterface iInterface) {
        parcel.writeStrongBinder(iInterface);
    }

    /* renamed from: a */
    public static void m9548a(Parcel parcel, Parcelable parcelable) {
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }
}
