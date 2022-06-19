package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* renamed from: com.google.android.gms.common.internal.safeparcel.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/b.class */
public class C2664b {
    /* renamed from: a */
    public static int m13944a(Parcel parcel) {
        return m13925b(parcel, 20293);
    }

    /* renamed from: a */
    public static void m13943a(Parcel parcel, int i) {
        m13922c(parcel, i);
    }

    /* renamed from: a */
    public static void m13942a(Parcel parcel, int i, float f) {
        m13924b(parcel, i, 4);
        parcel.writeFloat(f);
    }

    /* renamed from: a */
    public static void m13941a(Parcel parcel, int i, int i2) {
        m13924b(parcel, i, 4);
        parcel.writeInt(i2);
    }

    /* renamed from: a */
    public static void m13940a(Parcel parcel, int i, long j) {
        m13924b(parcel, i, 8);
        parcel.writeLong(j);
    }

    /* renamed from: a */
    public static void m13939a(Parcel parcel, int i, Bundle bundle, boolean z) {
        if (bundle == null) {
            if (!z) {
                return;
            }
            m13924b(parcel, i, 0);
            return;
        }
        int m13925b = m13925b(parcel, i);
        parcel.writeBundle(bundle);
        m13922c(parcel, m13925b);
    }

    /* renamed from: a */
    public static void m13938a(Parcel parcel, int i, IBinder iBinder, boolean z) {
        if (iBinder == null) {
            if (!z) {
                return;
            }
            m13924b(parcel, i, 0);
            return;
        }
        int m13925b = m13925b(parcel, i);
        parcel.writeStrongBinder(iBinder);
        m13922c(parcel, m13925b);
    }

    /* renamed from: a */
    public static void m13937a(Parcel parcel, int i, Parcelable parcelable, int i2, boolean z) {
        if (parcelable == null) {
            if (!z) {
                return;
            }
            m13924b(parcel, i, 0);
            return;
        }
        int m13925b = m13925b(parcel, i);
        parcelable.writeToParcel(parcel, i2);
        m13922c(parcel, m13925b);
    }

    /* renamed from: a */
    public static void m13936a(Parcel parcel, int i, Boolean bool, boolean z) {
        if (bool == null) {
            if (!z) {
                return;
            }
            m13924b(parcel, i, 0);
            return;
        }
        m13924b(parcel, i, 4);
        int i2 = 0;
        if (bool.booleanValue()) {
            i2 = 1;
        }
        parcel.writeInt(i2);
    }

    /* renamed from: a */
    public static void m13935a(Parcel parcel, int i, Double d, boolean z) {
        if (d != null) {
            m13924b(parcel, i, 8);
            parcel.writeDouble(d.doubleValue());
        } else if (!z) {
        } else {
            m13924b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m13934a(Parcel parcel, int i, Float f, boolean z) {
        if (f != null) {
            m13924b(parcel, i, 4);
            parcel.writeFloat(f.floatValue());
        } else if (!z) {
        } else {
            m13924b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m13933a(Parcel parcel, int i, Long l, boolean z) {
        if (l != null) {
            m13924b(parcel, i, 8);
            parcel.writeLong(l.longValue());
        } else if (!z) {
        } else {
            m13924b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m13932a(Parcel parcel, int i, String str, boolean z) {
        if (str == null) {
            if (!z) {
                return;
            }
            m13924b(parcel, i, 0);
            return;
        }
        int m13925b = m13925b(parcel, i);
        parcel.writeString(str);
        m13922c(parcel, m13925b);
    }

    /* renamed from: a */
    public static void m13931a(Parcel parcel, int i, List<Integer> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            m13924b(parcel, i, 0);
            return;
        }
        int m13925b = m13925b(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeInt(list.get(i2).intValue());
        }
        m13922c(parcel, m13925b);
    }

    /* renamed from: a */
    public static void m13930a(Parcel parcel, int i, boolean z) {
        m13924b(parcel, i, 4);
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: a */
    public static void m13929a(Parcel parcel, int i, byte[] bArr, boolean z) {
        if (bArr == null) {
            if (!z) {
                return;
            }
            m13924b(parcel, i, 0);
            return;
        }
        int m13925b = m13925b(parcel, i);
        parcel.writeByteArray(bArr);
        m13922c(parcel, m13925b);
    }

    /* renamed from: a */
    public static <T extends Parcelable> void m13928a(Parcel parcel, int i, T[] tArr, int i2, boolean z) {
        if (tArr == null) {
            if (!z) {
                return;
            }
            m13924b(parcel, i, 0);
            return;
        }
        int m13925b = m13925b(parcel, i);
        parcel.writeInt(tArr.length);
        for (T t : tArr) {
            if (t == null) {
                parcel.writeInt(0);
            } else {
                m13926a(parcel, t, i2);
            }
        }
        m13922c(parcel, m13925b);
    }

    /* renamed from: a */
    public static void m13927a(Parcel parcel, int i, String[] strArr, boolean z) {
        if (strArr == null) {
            if (!z) {
                return;
            }
            m13924b(parcel, i, 0);
            return;
        }
        int m13925b = m13925b(parcel, i);
        parcel.writeStringArray(strArr);
        m13922c(parcel, m13925b);
    }

    /* renamed from: a */
    private static <T extends Parcelable> void m13926a(Parcel parcel, T t, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int dataPosition2 = parcel.dataPosition();
        t.writeToParcel(parcel, i);
        int dataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3 - dataPosition2);
        parcel.setDataPosition(dataPosition3);
    }

    /* renamed from: b */
    private static int m13925b(Parcel parcel, int i) {
        parcel.writeInt((-65536) | i);
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    /* renamed from: b */
    private static void m13924b(Parcel parcel, int i, int i2) {
        if (i2 < 65535) {
            parcel.writeInt((i2 << 16) | i);
            return;
        }
        parcel.writeInt((-65536) | i);
        parcel.writeInt(i2);
    }

    /* renamed from: b */
    public static void m13923b(Parcel parcel, int i, List<String> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            m13924b(parcel, i, 0);
            return;
        }
        int m13925b = m13925b(parcel, i);
        parcel.writeStringList(list);
        m13922c(parcel, m13925b);
    }

    /* renamed from: c */
    private static void m13922c(Parcel parcel, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(dataPosition - i);
        parcel.setDataPosition(dataPosition);
    }

    /* renamed from: c */
    public static <T extends Parcelable> void m13921c(Parcel parcel, int i, List<T> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            m13924b(parcel, i, 0);
            return;
        }
        int m13925b = m13925b(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            T t = list.get(i2);
            if (t == null) {
                parcel.writeInt(0);
            } else {
                m13926a(parcel, t, 0);
            }
        }
        m13922c(parcel, m13925b);
    }
}
