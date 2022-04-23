package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/a.class */
public final class a {
    private a() {
    }

    public static int a(Parcel parcel, int i) {
        parcel.writeInt(i | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    public static void a(Parcel parcel, int i, byte b2) {
        b(parcel, i, 4);
        parcel.writeInt(b2);
    }

    public static void a(Parcel parcel, int i, double d2) {
        b(parcel, i, 8);
        parcel.writeDouble(d2);
    }

    public static void a(Parcel parcel, int i, float f) {
        b(parcel, i, 4);
        parcel.writeFloat(f);
    }

    public static void a(Parcel parcel, int i, int i2) {
        b(parcel, i, 4);
        parcel.writeInt(i2);
    }

    public static void a(Parcel parcel, int i, long j) {
        b(parcel, i, 8);
        parcel.writeLong(j);
    }

    public static void a(Parcel parcel, int i, Bundle bundle, boolean z) {
        if (bundle != null) {
            int a2 = a(parcel, i);
            parcel.writeBundle(bundle);
            b(parcel, a2);
        } else if (z) {
            b(parcel, i, 0);
        }
    }

    public static void a(Parcel parcel, int i, IBinder iBinder) {
        if (iBinder != null) {
            int a2 = a(parcel, i);
            parcel.writeStrongBinder(iBinder);
            b(parcel, a2);
        }
    }

    public static void a(Parcel parcel, int i, Parcel parcel2, boolean z) {
        if (parcel2 != null) {
            int a2 = a(parcel, i);
            parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            b(parcel, a2);
        } else if (z) {
            b(parcel, i, 0);
        }
    }

    public static void a(Parcel parcel, int i, Parcelable parcelable, int i2, boolean z) {
        if (parcelable != null) {
            int a2 = a(parcel, i);
            parcelable.writeToParcel(parcel, i2);
            b(parcel, a2);
        } else if (z) {
            b(parcel, i, 0);
        }
    }

    public static void a(Parcel parcel, int i, Float f) {
        if (f != null) {
            b(parcel, i, 4);
            parcel.writeFloat(f.floatValue());
        }
    }

    public static void a(Parcel parcel, int i, Long l) {
        if (l != null) {
            b(parcel, i, 8);
            parcel.writeLong(l.longValue());
        }
    }

    public static void a(Parcel parcel, int i, String str, boolean z) {
        if (str != null) {
            int a2 = a(parcel, i);
            parcel.writeString(str);
            b(parcel, a2);
        } else if (z) {
            b(parcel, i, 0);
        }
    }

    public static void a(Parcel parcel, int i, List<String> list) {
        if (list != null) {
            int a2 = a(parcel, i);
            parcel.writeStringList(list);
            b(parcel, a2);
        }
    }

    public static <T extends Parcelable> void a(Parcel parcel, int i, List<T> list, boolean z) {
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
        } else if (z) {
            b(parcel, i, 0);
        }
    }

    public static void a(Parcel parcel, int i, boolean z) {
        b(parcel, i, 4);
        parcel.writeInt(z ? 1 : 0);
    }

    public static void a(Parcel parcel, int i, byte[] bArr, boolean z) {
        if (bArr != null) {
            int a2 = a(parcel, i);
            parcel.writeByteArray(bArr);
            b(parcel, a2);
        } else if (z) {
            b(parcel, i, 0);
        }
    }

    public static void a(Parcel parcel, int i, int[] iArr, boolean z) {
        if (iArr != null) {
            int a2 = a(parcel, i);
            parcel.writeIntArray(iArr);
            b(parcel, a2);
        } else if (z) {
            b(parcel, i, 0);
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

    public static void a(Parcel parcel, int i, String[] strArr, boolean z) {
        if (strArr != null) {
            int a2 = a(parcel, i);
            parcel.writeStringArray(strArr);
            b(parcel, a2);
        } else if (z) {
            b(parcel, i, 0);
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
        parcel.writeInt(i | (i2 << 16));
    }

    public static void b(Parcel parcel, int i, List<Parcel> list) {
        int a2 = a(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            Parcel parcel2 = list.get(i2);
            if (parcel2 != null) {
                parcel.writeInt(parcel2.dataSize());
                parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            } else {
                parcel.writeInt(0);
            }
        }
        b(parcel, a2);
    }
}
