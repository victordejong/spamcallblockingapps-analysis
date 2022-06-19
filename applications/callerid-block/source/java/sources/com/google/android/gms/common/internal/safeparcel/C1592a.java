package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import java.util.List;
/* renamed from: com.google.android.gms.common.internal.safeparcel.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/a.class */
public class C1592a {
    /* renamed from: a */
    public static int m8302a(@RecentlyNonNull Parcel parcel) {
        return m8281v(parcel, 20293);
    }

    /* renamed from: b */
    public static void m8301b(@RecentlyNonNull Parcel parcel, int i) {
        m8280w(parcel, i);
    }

    /* renamed from: c */
    public static void m8300c(@RecentlyNonNull Parcel parcel, int i, boolean z) {
        m8282u(parcel, i, 4);
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: d */
    public static void m8299d(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Boolean bool, boolean z) {
        if (bool != null) {
            m8282u(parcel, i, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        } else if (!z) {
        } else {
            m8282u(parcel, i, 0);
        }
    }

    /* renamed from: e */
    public static void m8298e(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Bundle bundle, boolean z) {
        if (bundle == null) {
            if (!z) {
                return;
            }
            m8282u(parcel, i, 0);
            return;
        }
        int m8281v = m8281v(parcel, i);
        parcel.writeBundle(bundle);
        m8280w(parcel, m8281v);
    }

    /* renamed from: f */
    public static void m8297f(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull byte[] bArr, boolean z) {
        if (bArr == null) {
            if (!z) {
                return;
            }
            m8282u(parcel, i, 0);
            return;
        }
        int m8281v = m8281v(parcel, i);
        parcel.writeByteArray(bArr);
        m8280w(parcel, m8281v);
    }

    /* renamed from: g */
    public static void m8296g(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Double d, boolean z) {
        if (d != null) {
            m8282u(parcel, i, 8);
            parcel.writeDouble(d.doubleValue());
        } else if (!z) {
        } else {
            m8282u(parcel, i, 0);
        }
    }

    /* renamed from: h */
    public static void m8295h(@RecentlyNonNull Parcel parcel, int i, float f) {
        m8282u(parcel, i, 4);
        parcel.writeFloat(f);
    }

    /* renamed from: i */
    public static void m8294i(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Float f, boolean z) {
        if (f != null) {
            m8282u(parcel, i, 4);
            parcel.writeFloat(f.floatValue());
        } else if (!z) {
        } else {
            m8282u(parcel, i, 0);
        }
    }

    /* renamed from: j */
    public static void m8293j(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull IBinder iBinder, boolean z) {
        if (iBinder == null) {
            if (!z) {
                return;
            }
            m8282u(parcel, i, 0);
            return;
        }
        int m8281v = m8281v(parcel, i);
        parcel.writeStrongBinder(iBinder);
        m8280w(parcel, m8281v);
    }

    /* renamed from: k */
    public static void m8292k(@RecentlyNonNull Parcel parcel, int i, int i2) {
        m8282u(parcel, i, 4);
        parcel.writeInt(i2);
    }

    /* renamed from: l */
    public static void m8291l(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull int[] iArr, boolean z) {
        if (iArr == null) {
            if (!z) {
                return;
            }
            m8282u(parcel, i, 0);
            return;
        }
        int m8281v = m8281v(parcel, i);
        parcel.writeIntArray(iArr);
        m8280w(parcel, m8281v);
    }

    /* renamed from: m */
    public static void m8290m(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull List<Integer> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            m8282u(parcel, i, 0);
            return;
        }
        int m8281v = m8281v(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeInt(list.get(i2).intValue());
        }
        m8280w(parcel, m8281v);
    }

    /* renamed from: n */
    public static void m8289n(@RecentlyNonNull Parcel parcel, int i, long j) {
        m8282u(parcel, i, 8);
        parcel.writeLong(j);
    }

    /* renamed from: o */
    public static void m8288o(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Long l, boolean z) {
        if (l != null) {
            m8282u(parcel, i, 8);
            parcel.writeLong(l.longValue());
        } else if (!z) {
        } else {
            m8282u(parcel, i, 0);
        }
    }

    /* renamed from: p */
    public static void m8287p(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Parcelable parcelable, int i2, boolean z) {
        if (parcelable == null) {
            if (!z) {
                return;
            }
            m8282u(parcel, i, 0);
            return;
        }
        int m8281v = m8281v(parcel, i);
        parcelable.writeToParcel(parcel, i2);
        m8280w(parcel, m8281v);
    }

    /* renamed from: q */
    public static void m8286q(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull String str, boolean z) {
        if (str == null) {
            if (!z) {
                return;
            }
            m8282u(parcel, i, 0);
            return;
        }
        int m8281v = m8281v(parcel, i);
        parcel.writeString(str);
        m8280w(parcel, m8281v);
    }

    /* renamed from: r */
    public static void m8285r(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull String[] strArr, boolean z) {
        if (strArr == null) {
            if (!z) {
                return;
            }
            m8282u(parcel, i, 0);
            return;
        }
        int m8281v = m8281v(parcel, i);
        parcel.writeStringArray(strArr);
        m8280w(parcel, m8281v);
    }

    /* renamed from: s */
    public static void m8284s(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull List<String> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            m8282u(parcel, i, 0);
            return;
        }
        int m8281v = m8281v(parcel, i);
        parcel.writeStringList(list);
        m8280w(parcel, m8281v);
    }

    /* renamed from: t */
    public static <T extends Parcelable> void m8283t(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull T[] tArr, int i2, boolean z) {
        if (tArr == null) {
            if (!z) {
                return;
            }
            m8282u(parcel, i, 0);
            return;
        }
        int m8281v = m8281v(parcel, i);
        parcel.writeInt(tArr.length);
        for (T t : tArr) {
            if (t == null) {
                parcel.writeInt(0);
            } else {
                m8279x(parcel, t, i2);
            }
        }
        m8280w(parcel, m8281v);
    }

    /* renamed from: u */
    private static void m8282u(Parcel parcel, int i, int i2) {
        parcel.writeInt(i | (i2 << 16));
    }

    /* renamed from: v */
    private static int m8281v(Parcel parcel, int i) {
        parcel.writeInt(i | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    /* renamed from: w */
    private static void m8280w(Parcel parcel, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(dataPosition - i);
        parcel.setDataPosition(dataPosition);
    }

    /* renamed from: x */
    private static <T extends Parcelable> void m8279x(Parcel parcel, T t, int i) {
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
