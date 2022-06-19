package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelWriter.class */
public class SafeParcelWriter {
    private SafeParcelWriter() {
    }

    /* renamed from: a */
    public static int m38862a(Parcel parcel) {
        return m38841v(parcel, 20293);
    }

    /* renamed from: b */
    public static void m38861b(Parcel parcel, int i, boolean z) {
        parcel.writeInt(i | 262144);
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: c */
    public static void m38860c(Parcel parcel, int i, Bundle bundle, boolean z) {
        if (bundle == null) {
            if (!z) {
                return;
            }
            parcel.writeInt(i | 0);
            return;
        }
        int m38841v = m38841v(parcel, i);
        parcel.writeBundle(bundle);
        m38840w(parcel, m38841v);
    }

    /* renamed from: d */
    public static void m38859d(Parcel parcel, int i, byte[] bArr, boolean z) {
        if (bArr == null) {
            if (!z) {
                return;
            }
            parcel.writeInt(i | 0);
            return;
        }
        int m38841v = m38841v(parcel, i);
        parcel.writeByteArray(bArr);
        m38840w(parcel, m38841v);
    }

    /* renamed from: e */
    public static void m38858e(Parcel parcel, int i, byte[][] bArr, boolean z) {
        if (bArr == null) {
            if (!z) {
                return;
            }
            parcel.writeInt(i | 0);
            return;
        }
        int m38841v = m38841v(parcel, i);
        parcel.writeInt(bArr.length);
        for (byte[] bArr2 : bArr) {
            parcel.writeByteArray(bArr2);
        }
        m38840w(parcel, m38841v);
    }

    /* renamed from: f */
    public static void m38857f(Parcel parcel, int i, double d) {
        parcel.writeInt(i | 524288);
        parcel.writeDouble(d);
    }

    /* renamed from: g */
    public static void m38856g(Parcel parcel, int i, float f) {
        parcel.writeInt(i | 262144);
        parcel.writeFloat(f);
    }

    /* renamed from: h */
    public static void m38855h(Parcel parcel, int i, Float f, boolean z) {
        if (f != null) {
            parcel.writeInt(i | 262144);
            parcel.writeFloat(f.floatValue());
        } else if (!z) {
        } else {
            parcel.writeInt(i | 0);
        }
    }

    /* renamed from: i */
    public static void m38854i(Parcel parcel, int i, IBinder iBinder, boolean z) {
        if (iBinder == null) {
            if (!z) {
                return;
            }
            parcel.writeInt(i | 0);
            return;
        }
        int m38841v = m38841v(parcel, i);
        parcel.writeStrongBinder(iBinder);
        m38840w(parcel, m38841v);
    }

    /* renamed from: j */
    public static void m38853j(Parcel parcel, int i, int i2) {
        parcel.writeInt(i | 262144);
        parcel.writeInt(i2);
    }

    /* renamed from: k */
    public static void m38852k(Parcel parcel, int i, int[] iArr, boolean z) {
        if (iArr == null) {
            if (!z) {
                return;
            }
            parcel.writeInt(i | 0);
            return;
        }
        int m38841v = m38841v(parcel, i);
        parcel.writeIntArray(iArr);
        m38840w(parcel, m38841v);
    }

    /* renamed from: l */
    public static void m38851l(Parcel parcel, int i, List<Integer> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            parcel.writeInt(i | 0);
            return;
        }
        int m38841v = m38841v(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeInt(list.get(i2).intValue());
        }
        m38840w(parcel, m38841v);
    }

    /* renamed from: m */
    public static void m38850m(Parcel parcel, int i, long j) {
        parcel.writeInt(i | 524288);
        parcel.writeLong(j);
    }

    /* renamed from: n */
    public static void m38849n(Parcel parcel, int i, Long l, boolean z) {
        if (l != null) {
            parcel.writeInt(i | 524288);
            parcel.writeLong(l.longValue());
        } else if (!z) {
        } else {
            parcel.writeInt(i | 0);
        }
    }

    /* renamed from: o */
    public static void m38848o(Parcel parcel, int i, Parcel parcel2, boolean z) {
        if (parcel2 == null) {
            if (!z) {
                return;
            }
            parcel.writeInt(i | 0);
            return;
        }
        int m38841v = m38841v(parcel, i);
        parcel.appendFrom(parcel2, 0, parcel2.dataSize());
        m38840w(parcel, m38841v);
    }

    /* renamed from: p */
    public static void m38847p(Parcel parcel, int i, Parcelable parcelable, int i2, boolean z) {
        if (parcelable == null) {
            if (!z) {
                return;
            }
            parcel.writeInt(i | 0);
            return;
        }
        int m38841v = m38841v(parcel, i);
        parcelable.writeToParcel(parcel, i2);
        m38840w(parcel, m38841v);
    }

    /* renamed from: q */
    public static void m38846q(Parcel parcel, int i, String str, boolean z) {
        if (str == null) {
            if (!z) {
                return;
            }
            parcel.writeInt(i | 0);
            return;
        }
        int m38841v = m38841v(parcel, i);
        parcel.writeString(str);
        m38840w(parcel, m38841v);
    }

    /* renamed from: r */
    public static void m38845r(Parcel parcel, int i, String[] strArr, boolean z) {
        if (strArr == null) {
            if (!z) {
                return;
            }
            parcel.writeInt(i | 0);
            return;
        }
        int m38841v = m38841v(parcel, i);
        parcel.writeStringArray(strArr);
        m38840w(parcel, m38841v);
    }

    /* renamed from: s */
    public static void m38844s(Parcel parcel, int i, List<String> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            parcel.writeInt(i | 0);
            return;
        }
        int m38841v = m38841v(parcel, i);
        parcel.writeStringList(list);
        m38840w(parcel, m38841v);
    }

    /* renamed from: t */
    public static <T extends Parcelable> void m38843t(Parcel parcel, int i, T[] tArr, int i2, boolean z) {
        if (tArr == null) {
            if (!z) {
                return;
            }
            parcel.writeInt(i | 0);
            return;
        }
        int m38841v = m38841v(parcel, i);
        parcel.writeInt(tArr.length);
        for (T t : tArr) {
            if (t == null) {
                parcel.writeInt(0);
            } else {
                m38839x(parcel, t, i2);
            }
        }
        m38840w(parcel, m38841v);
    }

    /* renamed from: u */
    public static <T extends Parcelable> void m38842u(Parcel parcel, int i, List<T> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            parcel.writeInt(i | 0);
            return;
        }
        int m38841v = m38841v(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            T t = list.get(i2);
            if (t == null) {
                parcel.writeInt(0);
            } else {
                m38839x(parcel, t, 0);
            }
        }
        m38840w(parcel, m38841v);
    }

    /* renamed from: v */
    public static int m38841v(Parcel parcel, int i) {
        parcel.writeInt(i | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    /* renamed from: w */
    public static void m38840w(Parcel parcel, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(dataPosition - i);
        parcel.setDataPosition(dataPosition);
    }

    /* renamed from: x */
    public static <T extends Parcelable> void m38839x(Parcel parcel, T t, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int dataPosition2 = parcel.dataPosition();
        t.writeToParcel(parcel, i);
        int dataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3 - dataPosition2);
        parcel.setDataPosition(dataPosition3);
    }
}
