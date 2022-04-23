package com.google.android.gms.common.internal.safeparcel;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/b.class */
public final class b {
    public static <T extends SafeParcelable> T a(Intent intent, String str, Parcelable.Creator<T> creator) {
        byte[] byteArrayExtra = intent.getByteArrayExtra(str);
        if (byteArrayExtra == null) {
            return null;
        }
        return (T) a(byteArrayExtra, creator);
    }

    public static <T extends SafeParcelable> T a(byte[] bArr, Parcelable.Creator<T> creator) {
        o.a(creator);
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        T createFromParcel = creator.createFromParcel(obtain);
        obtain.recycle();
        return createFromParcel;
    }

    public static <T extends SafeParcelable> void a(T t, Intent intent, String str) {
        intent.putExtra(str, a(t));
    }

    private static <T extends SafeParcelable> byte[] a(T t) {
        Parcel obtain = Parcel.obtain();
        t.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }
}
