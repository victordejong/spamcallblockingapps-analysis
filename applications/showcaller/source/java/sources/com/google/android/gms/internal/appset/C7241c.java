package com.google.android.gms.internal.appset;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: com.google.android.gms.internal.appset.c */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/appset/c.class */
public final class C7241c {

    /* renamed from: a */
    private static final ClassLoader f34223a = C7241c.class.getClassLoader();

    private C7241c() {
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m7849a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: b */
    public static void m7848b(Parcel parcel, Parcelable parcelable) {
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public static void m7847c(Parcel parcel, IInterface iInterface) {
        parcel.writeStrongBinder(iInterface);
    }
}
