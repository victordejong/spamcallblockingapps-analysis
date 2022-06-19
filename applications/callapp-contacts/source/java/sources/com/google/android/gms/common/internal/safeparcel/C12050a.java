package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* renamed from: com.google.android.gms.common.internal.safeparcel.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/a.class */
public final class C12050a {
    private C12050a() {
    }

    /* renamed from: a */
    public static int m19116a(Parcel parcel, int i) {
        parcel.writeInt(i | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    /* renamed from: a */
    public static void m19115a(Parcel parcel, int i, byte b) {
        m19094b(parcel, i, 4);
        parcel.writeInt(b);
    }

    /* renamed from: a */
    public static void m19114a(Parcel parcel, int i, double d) {
        m19094b(parcel, i, 8);
        parcel.writeDouble(d);
    }

    /* renamed from: a */
    public static void m19113a(Parcel parcel, int i, float f) {
        m19094b(parcel, i, 4);
        parcel.writeFloat(f);
    }

    /* renamed from: a */
    public static void m19112a(Parcel parcel, int i, int i2) {
        m19094b(parcel, i, 4);
        parcel.writeInt(i2);
    }

    /* renamed from: a */
    public static void m19111a(Parcel parcel, int i, long j) {
        m19094b(parcel, i, 8);
        parcel.writeLong(j);
    }

    /* renamed from: a */
    public static void m19110a(Parcel parcel, int i, Bundle bundle, boolean z) {
        if (bundle == null) {
            if (!z) {
                return;
            }
            m19094b(parcel, i, 0);
            return;
        }
        int m19116a = m19116a(parcel, i);
        parcel.writeBundle(bundle);
        m19095b(parcel, m19116a);
    }

    /* renamed from: a */
    public static void m19109a(Parcel parcel, int i, IBinder iBinder) {
        if (iBinder == null) {
            return;
        }
        int m19116a = m19116a(parcel, i);
        parcel.writeStrongBinder(iBinder);
        m19095b(parcel, m19116a);
    }

    /* renamed from: a */
    public static void m19108a(Parcel parcel, int i, Parcel parcel2, boolean z) {
        if (parcel2 == null) {
            if (!z) {
                return;
            }
            m19094b(parcel, i, 0);
            return;
        }
        int m19116a = m19116a(parcel, i);
        parcel.appendFrom(parcel2, 0, parcel2.dataSize());
        m19095b(parcel, m19116a);
    }

    /* renamed from: a */
    public static void m19107a(Parcel parcel, int i, Parcelable parcelable, int i2, boolean z) {
        if (parcelable == null) {
            if (!z) {
                return;
            }
            m19094b(parcel, i, 0);
            return;
        }
        int m19116a = m19116a(parcel, i);
        parcelable.writeToParcel(parcel, i2);
        m19095b(parcel, m19116a);
    }

    /* renamed from: a */
    public static void m19106a(Parcel parcel, int i, Float f) {
        if (f == null) {
            return;
        }
        m19094b(parcel, i, 4);
        parcel.writeFloat(f.floatValue());
    }

    /* renamed from: a */
    public static void m19105a(Parcel parcel, int i, Long l) {
        if (l == null) {
            return;
        }
        m19094b(parcel, i, 8);
        parcel.writeLong(l.longValue());
    }

    /* renamed from: a */
    public static void m19104a(Parcel parcel, int i, String str, boolean z) {
        if (str == null) {
            if (!z) {
                return;
            }
            m19094b(parcel, i, 0);
            return;
        }
        int m19116a = m19116a(parcel, i);
        parcel.writeString(str);
        m19095b(parcel, m19116a);
    }

    /* renamed from: a */
    public static void m19103a(Parcel parcel, int i, List<String> list) {
        if (list == null) {
            return;
        }
        int m19116a = m19116a(parcel, i);
        parcel.writeStringList(list);
        m19095b(parcel, m19116a);
    }

    /* renamed from: a */
    public static <T extends Parcelable> void m19102a(Parcel parcel, int i, List<T> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            m19094b(parcel, i, 0);
            return;
        }
        int m19116a = m19116a(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            T t = list.get(i2);
            if (t == null) {
                parcel.writeInt(0);
            } else {
                m19096a(parcel, t, 0);
            }
        }
        m19095b(parcel, m19116a);
    }

    /* renamed from: a */
    public static void m19101a(Parcel parcel, int i, boolean z) {
        m19094b(parcel, i, 4);
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: a */
    public static void m19100a(Parcel parcel, int i, byte[] bArr, boolean z) {
        if (bArr == null) {
            if (!z) {
                return;
            }
            m19094b(parcel, i, 0);
            return;
        }
        int m19116a = m19116a(parcel, i);
        parcel.writeByteArray(bArr);
        m19095b(parcel, m19116a);
    }

    /* renamed from: a */
    public static void m19099a(Parcel parcel, int i, int[] iArr, boolean z) {
        if (iArr == null) {
            if (!z) {
                return;
            }
            m19094b(parcel, i, 0);
            return;
        }
        int m19116a = m19116a(parcel, i);
        parcel.writeIntArray(iArr);
        m19095b(parcel, m19116a);
    }

    /* renamed from: a */
    public static <T extends Parcelable> void m19098a(Parcel parcel, int i, T[] tArr, int i2) {
        if (tArr == null) {
            return;
        }
        int m19116a = m19116a(parcel, i);
        parcel.writeInt(tArr.length);
        for (T t : tArr) {
            if (t == null) {
                parcel.writeInt(0);
            } else {
                m19096a(parcel, t, i2);
            }
        }
        m19095b(parcel, m19116a);
    }

    /* renamed from: a */
    public static void m19097a(Parcel parcel, int i, String[] strArr, boolean z) {
        if (strArr == null) {
            if (!z) {
                return;
            }
            m19094b(parcel, i, 0);
            return;
        }
        int m19116a = m19116a(parcel, i);
        parcel.writeStringArray(strArr);
        m19095b(parcel, m19116a);
    }

    /* renamed from: a */
    private static <T extends Parcelable> void m19096a(Parcel parcel, T t, int i) {
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
    public static void m19095b(Parcel parcel, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(dataPosition - i);
        parcel.setDataPosition(dataPosition);
    }

    /* renamed from: b */
    public static void m19094b(Parcel parcel, int i, int i2) {
        parcel.writeInt(i | (i2 << 16));
    }

    /* renamed from: b */
    public static void m19093b(Parcel parcel, int i, List<Parcel> list) {
        int m19116a = m19116a(parcel, i);
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
        m19095b(parcel, m19116a);
    }
}
