package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import java.util.List;
/* renamed from: com.google.android.gms.common.internal.safeparcel.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/a.class */
public class C6170a {
    /* renamed from: a */
    public static int m16947a(@RecentlyNonNull Parcel parcel) {
        return m16924x(parcel, 20293);
    }

    /* renamed from: b */
    public static void m16946b(@RecentlyNonNull Parcel parcel, int i) {
        m16923y(parcel, i);
    }

    /* renamed from: c */
    public static void m16945c(@RecentlyNonNull Parcel parcel, int i, boolean z) {
        m16925w(parcel, i, 4);
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: d */
    public static void m16944d(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Boolean bool, boolean z) {
        if (bool != null) {
            m16925w(parcel, i, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        } else if (!z) {
        } else {
            m16925w(parcel, i, 0);
        }
    }

    /* renamed from: e */
    public static void m16943e(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Bundle bundle, boolean z) {
        if (bundle == null) {
            if (!z) {
                return;
            }
            m16925w(parcel, i, 0);
            return;
        }
        int m16924x = m16924x(parcel, i);
        parcel.writeBundle(bundle);
        m16923y(parcel, m16924x);
    }

    /* renamed from: f */
    public static void m16942f(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull byte[] bArr, boolean z) {
        if (bArr == null) {
            if (!z) {
                return;
            }
            m16925w(parcel, i, 0);
            return;
        }
        int m16924x = m16924x(parcel, i);
        parcel.writeByteArray(bArr);
        m16923y(parcel, m16924x);
    }

    /* renamed from: g */
    public static void m16941g(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Double d, boolean z) {
        if (d != null) {
            m16925w(parcel, i, 8);
            parcel.writeDouble(d.doubleValue());
        } else if (!z) {
        } else {
            m16925w(parcel, i, 0);
        }
    }

    /* renamed from: h */
    public static void m16940h(@RecentlyNonNull Parcel parcel, int i, float f) {
        m16925w(parcel, i, 4);
        parcel.writeFloat(f);
    }

    /* renamed from: i */
    public static void m16939i(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Float f, boolean z) {
        if (f != null) {
            m16925w(parcel, i, 4);
            parcel.writeFloat(f.floatValue());
        } else if (!z) {
        } else {
            m16925w(parcel, i, 0);
        }
    }

    /* renamed from: j */
    public static void m16938j(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull IBinder iBinder, boolean z) {
        if (iBinder == null) {
            if (!z) {
                return;
            }
            m16925w(parcel, i, 0);
            return;
        }
        int m16924x = m16924x(parcel, i);
        parcel.writeStrongBinder(iBinder);
        m16923y(parcel, m16924x);
    }

    /* renamed from: k */
    public static void m16937k(@RecentlyNonNull Parcel parcel, int i, int i2) {
        m16925w(parcel, i, 4);
        parcel.writeInt(i2);
    }

    /* renamed from: l */
    public static void m16936l(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull int[] iArr, boolean z) {
        if (iArr == null) {
            if (!z) {
                return;
            }
            m16925w(parcel, i, 0);
            return;
        }
        int m16924x = m16924x(parcel, i);
        parcel.writeIntArray(iArr);
        m16923y(parcel, m16924x);
    }

    /* renamed from: m */
    public static void m16935m(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull List<Integer> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            m16925w(parcel, i, 0);
            return;
        }
        int m16924x = m16924x(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeInt(list.get(i2).intValue());
        }
        m16923y(parcel, m16924x);
    }

    /* renamed from: n */
    public static void m16934n(@RecentlyNonNull Parcel parcel, int i, long j) {
        m16925w(parcel, i, 8);
        parcel.writeLong(j);
    }

    /* renamed from: o */
    public static void m16933o(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Long l, boolean z) {
        if (l != null) {
            m16925w(parcel, i, 8);
            parcel.writeLong(l.longValue());
        } else if (!z) {
        } else {
            m16925w(parcel, i, 0);
        }
    }

    /* renamed from: p */
    public static void m16932p(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Parcel parcel2, boolean z) {
        if (parcel2 == null) {
            if (!z) {
                return;
            }
            m16925w(parcel, i, 0);
            return;
        }
        int m16924x = m16924x(parcel, i);
        parcel.appendFrom(parcel2, 0, parcel2.dataSize());
        m16923y(parcel, m16924x);
    }

    /* renamed from: q */
    public static void m16931q(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Parcelable parcelable, int i2, boolean z) {
        if (parcelable == null) {
            if (!z) {
                return;
            }
            m16925w(parcel, i, 0);
            return;
        }
        int m16924x = m16924x(parcel, i);
        parcelable.writeToParcel(parcel, i2);
        m16923y(parcel, m16924x);
    }

    /* renamed from: r */
    public static void m16930r(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull String str, boolean z) {
        if (str == null) {
            if (!z) {
                return;
            }
            m16925w(parcel, i, 0);
            return;
        }
        int m16924x = m16924x(parcel, i);
        parcel.writeString(str);
        m16923y(parcel, m16924x);
    }

    /* renamed from: s */
    public static void m16929s(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull String[] strArr, boolean z) {
        if (strArr == null) {
            if (!z) {
                return;
            }
            m16925w(parcel, i, 0);
            return;
        }
        int m16924x = m16924x(parcel, i);
        parcel.writeStringArray(strArr);
        m16923y(parcel, m16924x);
    }

    /* renamed from: t */
    public static void m16928t(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull List<String> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            m16925w(parcel, i, 0);
            return;
        }
        int m16924x = m16924x(parcel, i);
        parcel.writeStringList(list);
        m16923y(parcel, m16924x);
    }

    /* renamed from: u */
    public static <T extends Parcelable> void m16927u(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull T[] tArr, int i2, boolean z) {
        if (tArr == null) {
            if (!z) {
                return;
            }
            m16925w(parcel, i, 0);
            return;
        }
        int m16924x = m16924x(parcel, i);
        parcel.writeInt(tArr.length);
        for (T t : tArr) {
            if (t == null) {
                parcel.writeInt(0);
            } else {
                m16922z(parcel, t, i2);
            }
        }
        m16923y(parcel, m16924x);
    }

    /* renamed from: v */
    public static <T extends Parcelable> void m16926v(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull List<T> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            m16925w(parcel, i, 0);
            return;
        }
        int m16924x = m16924x(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            T t = list.get(i2);
            if (t == null) {
                parcel.writeInt(0);
            } else {
                m16922z(parcel, t, 0);
            }
        }
        m16923y(parcel, m16924x);
    }

    /* renamed from: w */
    private static void m16925w(Parcel parcel, int i, int i2) {
        parcel.writeInt(i | (i2 << 16));
    }

    /* renamed from: x */
    private static int m16924x(Parcel parcel, int i) {
        parcel.writeInt(i | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    /* renamed from: y */
    private static void m16923y(Parcel parcel, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(dataPosition - i);
        parcel.setDataPosition(dataPosition);
    }

    /* renamed from: z */
    private static <T extends Parcelable> void m16922z(Parcel parcel, T t, int i) {
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
