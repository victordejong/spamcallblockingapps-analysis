package com.google.android.play.core.internal;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.google.android.play.core.internal.y0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/y0.class */
public final class C8527y0 {
    static {
        C8527y0.class.getClassLoader();
    }

    private C8527y0() {
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m3420a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: b */
    public static void m3419b(Parcel parcel, Parcelable parcelable) {
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public static void m3418c(Parcel parcel, IInterface iInterface) {
        parcel.writeStrongBinder(iInterface);
    }
}
