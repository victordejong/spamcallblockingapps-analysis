package p081h.p203i.p204a.p224e.p235d.p240n.p241x;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.internal.view.SupportMenu;
import java.util.List;
/* renamed from: h.i.a.e.d.n.x.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/x/b.class */
public class C7031b {
    /* renamed from: a */
    public static int m21230a(Parcel parcel) {
        return m21205b(parcel, 20293);
    }

    /* renamed from: a */
    public static void m21229a(Parcel parcel, int i) {
        m21202c(parcel, i);
    }

    /* renamed from: a */
    public static void m21228a(Parcel parcel, int i, byte b) {
        m21204b(parcel, i, 4);
        parcel.writeInt(b);
    }

    /* renamed from: a */
    public static void m21227a(Parcel parcel, int i, double d) {
        m21204b(parcel, i, 8);
        parcel.writeDouble(d);
    }

    /* renamed from: a */
    public static void m21226a(Parcel parcel, int i, float f) {
        m21204b(parcel, i, 4);
        parcel.writeFloat(f);
    }

    /* renamed from: a */
    public static void m21225a(Parcel parcel, int i, int i2) {
        m21204b(parcel, i, 4);
        parcel.writeInt(i2);
    }

    /* renamed from: a */
    public static void m21224a(Parcel parcel, int i, long j) {
        m21204b(parcel, i, 8);
        parcel.writeLong(j);
    }

    /* renamed from: a */
    public static void m21223a(Parcel parcel, int i, Bundle bundle, boolean z) {
        if (bundle != null) {
            int b = m21205b(parcel, i);
            parcel.writeBundle(bundle);
            m21202c(parcel, b);
        } else if (z) {
            m21204b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m21222a(Parcel parcel, int i, IBinder iBinder, boolean z) {
        if (iBinder != null) {
            int b = m21205b(parcel, i);
            parcel.writeStrongBinder(iBinder);
            m21202c(parcel, b);
        } else if (z) {
            m21204b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m21221a(Parcel parcel, int i, Parcel parcel2, boolean z) {
        if (parcel2 != null) {
            int b = m21205b(parcel, i);
            parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            m21202c(parcel, b);
        } else if (z) {
            m21204b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m21220a(Parcel parcel, int i, Parcelable parcelable, int i2, boolean z) {
        if (parcelable != null) {
            int b = m21205b(parcel, i);
            parcelable.writeToParcel(parcel, i2);
            m21202c(parcel, b);
        } else if (z) {
            m21204b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m21219a(Parcel parcel, int i, Double d, boolean z) {
        if (d != null) {
            m21204b(parcel, i, 8);
            parcel.writeDouble(d.doubleValue());
        } else if (z) {
            m21204b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m21218a(Parcel parcel, int i, Float f, boolean z) {
        if (f != null) {
            m21204b(parcel, i, 4);
            parcel.writeFloat(f.floatValue());
        } else if (z) {
            m21204b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m21217a(Parcel parcel, int i, Integer num, boolean z) {
        if (num != null) {
            m21204b(parcel, i, 4);
            parcel.writeInt(num.intValue());
        } else if (z) {
            m21204b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m21216a(Parcel parcel, int i, Long l, boolean z) {
        if (l != null) {
            m21204b(parcel, i, 8);
            parcel.writeLong(l.longValue());
        } else if (z) {
            m21204b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m21215a(Parcel parcel, int i, String str, boolean z) {
        if (str != null) {
            int b = m21205b(parcel, i);
            parcel.writeString(str);
            m21202c(parcel, b);
        } else if (z) {
            m21204b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m21214a(Parcel parcel, int i, List list, boolean z) {
        if (list != null) {
            int b = m21205b(parcel, i);
            parcel.writeList(list);
            m21202c(parcel, b);
        } else if (z) {
            m21204b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m21213a(Parcel parcel, int i, short s) {
        m21204b(parcel, i, 4);
        parcel.writeInt(s);
    }

    /* renamed from: a */
    public static void m21212a(Parcel parcel, int i, boolean z) {
        m21204b(parcel, i, 4);
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: a */
    public static void m21211a(Parcel parcel, int i, byte[] bArr, boolean z) {
        if (bArr != null) {
            int b = m21205b(parcel, i);
            parcel.writeByteArray(bArr);
            m21202c(parcel, b);
        } else if (z) {
            m21204b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m21210a(Parcel parcel, int i, int[] iArr, boolean z) {
        if (iArr != null) {
            int b = m21205b(parcel, i);
            parcel.writeIntArray(iArr);
            m21202c(parcel, b);
        } else if (z) {
            m21204b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static <T extends Parcelable> void m21209a(Parcel parcel, int i, T[] tArr, int i2, boolean z) {
        if (tArr != null) {
            int b = m21205b(parcel, i);
            parcel.writeInt(tArr.length);
            for (T t : tArr) {
                if (t == null) {
                    parcel.writeInt(0);
                } else {
                    m21206a(parcel, t, i2);
                }
            }
            m21202c(parcel, b);
        } else if (z) {
            m21204b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m21208a(Parcel parcel, int i, String[] strArr, boolean z) {
        if (strArr != null) {
            int b = m21205b(parcel, i);
            parcel.writeStringArray(strArr);
            m21202c(parcel, b);
        } else if (z) {
            m21204b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m21207a(Parcel parcel, int i, byte[][] bArr, boolean z) {
        if (bArr != null) {
            int b = m21205b(parcel, i);
            parcel.writeInt(bArr.length);
            for (byte[] bArr2 : bArr) {
                parcel.writeByteArray(bArr2);
            }
            m21202c(parcel, b);
        } else if (z) {
            m21204b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static <T extends Parcelable> void m21206a(Parcel parcel, T t, int i) {
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
    public static int m21205b(Parcel parcel, int i) {
        parcel.writeInt(i | SupportMenu.CATEGORY_MASK);
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    /* renamed from: b */
    public static void m21204b(Parcel parcel, int i, int i2) {
        if (i2 >= 65535) {
            parcel.writeInt(i | SupportMenu.CATEGORY_MASK);
            parcel.writeInt(i2);
            return;
        }
        parcel.writeInt(i | (i2 << 16));
    }

    /* renamed from: b */
    public static void m21203b(Parcel parcel, int i, List<String> list, boolean z) {
        if (list != null) {
            int b = m21205b(parcel, i);
            parcel.writeStringList(list);
            m21202c(parcel, b);
        } else if (z) {
            m21204b(parcel, i, 0);
        }
    }

    /* renamed from: c */
    public static void m21202c(Parcel parcel, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(dataPosition - i);
        parcel.setDataPosition(dataPosition);
    }

    /* renamed from: c */
    public static <T extends Parcelable> void m21201c(Parcel parcel, int i, List<T> list, boolean z) {
        if (list != null) {
            int b = m21205b(parcel, i);
            int size = list.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                T t = list.get(i2);
                if (t == null) {
                    parcel.writeInt(0);
                } else {
                    m21206a(parcel, t, 0);
                }
            }
            m21202c(parcel, b);
        } else if (z) {
            m21204b(parcel, i, 0);
        }
    }
}
