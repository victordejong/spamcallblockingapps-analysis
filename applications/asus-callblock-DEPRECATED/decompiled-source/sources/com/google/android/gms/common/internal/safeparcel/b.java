package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/b.class */
public final class b {
    public static int a(Parcel parcel, int i) {
        parcel.writeInt((-65536) | i);
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    public static void a(Parcel parcel, int i, int i2) {
        if (i2 >= 65535) {
            parcel.writeInt((-65536) | i);
            parcel.writeInt(i2);
            return;
        }
        parcel.writeInt((i2 << 16) | i);
    }

    public static void a(Parcel parcel, int i, long j) {
        a(parcel, i, 8);
        parcel.writeLong(j);
    }

    public static void a(Parcel parcel, int i, Bundle bundle) {
        if (bundle != null) {
            int a2 = a(parcel, i);
            parcel.writeBundle(bundle);
            b(parcel, a2);
        }
    }

    public static void a(Parcel parcel, int i, IBinder iBinder) {
        if (iBinder != null) {
            int a2 = a(parcel, i);
            parcel.writeStrongBinder(iBinder);
            b(parcel, a2);
        }
    }

    public static void a(Parcel parcel, int i, Parcelable parcelable, int i2) {
        if (parcelable != null) {
            int a2 = a(parcel, i);
            parcelable.writeToParcel(parcel, i2);
            b(parcel, a2);
        }
    }

    public static void a(Parcel parcel, int i, Integer num) {
        if (num != null) {
            a(parcel, i, 4);
            parcel.writeInt(num.intValue());
        }
    }

    public static void a(Parcel parcel, int i, String str) {
        if (str != null) {
            int a2 = a(parcel, i);
            parcel.writeString(str);
            b(parcel, a2);
        }
    }

    public static <T extends Parcelable> void a(Parcel parcel, int i, List<T> list) {
        if (list != null) {
            int a2 = a(parcel, i);
            int size = list.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                T t = list.get(i2);
                if (t == null) {
                    parcel.writeInt(0);
                } else {
                    a(parcel, t, 0);
                }
            }
            b(parcel, a2);
        }
    }

    public static void a(Parcel parcel, int i, boolean z) {
        a(parcel, i, 4);
        parcel.writeInt(z ? 1 : 0);
    }

    public static void a(Parcel parcel, int i, byte[] bArr) {
        if (bArr != null) {
            int a2 = a(parcel, i);
            parcel.writeByteArray(bArr);
            b(parcel, a2);
        }
    }

    public static <T extends Parcelable> void a(Parcel parcel, int i, T[] tArr, int i2) {
        if (tArr != null) {
            int a2 = a(parcel, i);
            parcel.writeInt(tArr.length);
            for (T t : tArr) {
                if (t == null) {
                    parcel.writeInt(0);
                } else {
                    a(parcel, t, i2);
                }
            }
            b(parcel, a2);
        }
    }

    public static void a(Parcel parcel, int i, String[] strArr) {
        if (strArr != null) {
            int a2 = a(parcel, i);
            parcel.writeStringArray(strArr);
            b(parcel, a2);
        }
    }

    private static <T extends Parcelable> void a(Parcel parcel, T t, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int dataPosition2 = parcel.dataPosition();
        t.writeToParcel(parcel, i);
        int dataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3 - dataPosition2);
        parcel.setDataPosition(dataPosition3);
    }

    public static void b(Parcel parcel, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(dataPosition - i);
        parcel.setDataPosition(dataPosition);
    }

    public static void b(Parcel parcel, int i, int i2) {
        a(parcel, i, 4);
        parcel.writeInt(i2);
    }
}
