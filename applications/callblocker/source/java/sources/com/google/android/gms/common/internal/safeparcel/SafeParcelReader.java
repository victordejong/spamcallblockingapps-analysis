package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelReader.class */
public class SafeParcelReader {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException.class */
    public static class ParseException extends RuntimeException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public ParseException(java.lang.String r7, android.os.Parcel r8) {
            /*
                r6 = this;
                r0 = r8
                int r0 = r0.dataPosition()
                r9 = r0
                r0 = r8
                int r0 = r0.dataSize()
                r10 = r0
                r0 = r6
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r2 = r1
                r3 = r7
                java.lang.String r3 = java.lang.String.valueOf(r3)
                int r3 = r3.length()
                r4 = 41
                int r3 = r3 + r4
                r2.<init>(r3)
                r2 = r7
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r2 = " Parcel: pos="
                java.lang.StringBuilder r1 = r1.append(r2)
                r2 = r9
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r2 = " size="
                java.lang.StringBuilder r1 = r1.append(r2)
                r2 = r10
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.safeparcel.SafeParcelReader.ParseException.<init>(java.lang.String, android.os.Parcel):void");
        }
    }

    /* renamed from: a */
    public static int m13970a(int i) {
        return 65535 & i;
    }

    /* renamed from: a */
    public static int m13969a(Parcel parcel) {
        return parcel.readInt();
    }

    /* renamed from: a */
    public static int m13968a(Parcel parcel, int i) {
        return (i & (-65536)) != -65536 ? (i >> 16) & 65535 : parcel.readInt();
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m13965a(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        T createFromParcel;
        int m13968a = m13968a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m13968a == 0) {
            createFromParcel = null;
        } else {
            parcel.setDataPosition(m13968a + dataPosition);
            createFromParcel = creator.createFromParcel(parcel);
        }
        return createFromParcel;
    }

    /* renamed from: a */
    private static void m13967a(Parcel parcel, int i, int i2) {
        int m13968a = m13968a(parcel, i);
        if (m13968a != i2) {
            String hexString = Integer.toHexString(m13968a);
            throw new ParseException(new StringBuilder(String.valueOf(hexString).length() + 46).append("Expected size ").append(i2).append(" got ").append(m13968a).append(" (0x").append(hexString).append(")").toString(), parcel);
        }
    }

    /* renamed from: a */
    private static void m13966a(Parcel parcel, int i, int i2, int i3) {
        if (i2 != i3) {
            String hexString = Integer.toHexString(i2);
            throw new ParseException(new StringBuilder(String.valueOf(hexString).length() + 46).append("Expected size ").append(i3).append(" got ").append(i2).append(" (0x").append(hexString).append(")").toString(), parcel);
        }
    }

    /* renamed from: b */
    public static int m13964b(Parcel parcel) {
        int m13969a = m13969a(parcel);
        int m13968a = m13968a(parcel, m13969a);
        int dataPosition = parcel.dataPosition();
        if (m13970a(m13969a) != 20293) {
            String valueOf = String.valueOf(Integer.toHexString(m13969a));
            throw new ParseException(valueOf.length() != 0 ? "Expected object header. Got 0x".concat(valueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i = dataPosition + m13968a;
        if (i >= dataPosition && i <= parcel.dataSize()) {
            return i;
        }
        throw new ParseException(new StringBuilder(54).append("Size read is invalid start=").append(dataPosition).append(" end=").append(i).toString(), parcel);
    }

    /* renamed from: b */
    public static void m13963b(Parcel parcel, int i) {
        parcel.setDataPosition(m13968a(parcel, i) + parcel.dataPosition());
    }

    /* renamed from: b */
    public static <T> T[] m13962b(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        Object[] objArr;
        int m13968a = m13968a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m13968a == 0) {
            objArr = null;
        } else {
            Object[] createTypedArray = parcel.createTypedArray(creator);
            parcel.setDataPosition(m13968a + dataPosition);
            objArr = createTypedArray;
        }
        return (T[]) objArr;
    }

    /* renamed from: c */
    public static <T> ArrayList<T> m13960c(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        ArrayList<T> arrayList;
        int m13968a = m13968a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m13968a == 0) {
            arrayList = null;
        } else {
            ArrayList<T> createTypedArrayList = parcel.createTypedArrayList(creator);
            parcel.setDataPosition(m13968a + dataPosition);
            arrayList = createTypedArrayList;
        }
        return arrayList;
    }

    /* renamed from: c */
    public static boolean m13961c(Parcel parcel, int i) {
        m13967a(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    /* renamed from: d */
    public static Boolean m13959d(Parcel parcel, int i) {
        Boolean valueOf;
        int m13968a = m13968a(parcel, i);
        if (m13968a == 0) {
            valueOf = null;
        } else {
            m13966a(parcel, i, m13968a, 4);
            valueOf = Boolean.valueOf(parcel.readInt() != 0);
        }
        return valueOf;
    }

    /* renamed from: e */
    public static int m13958e(Parcel parcel, int i) {
        m13967a(parcel, i, 4);
        return parcel.readInt();
    }

    /* renamed from: f */
    public static long m13957f(Parcel parcel, int i) {
        m13967a(parcel, i, 8);
        return parcel.readLong();
    }

    /* renamed from: g */
    public static Long m13956g(Parcel parcel, int i) {
        Long valueOf;
        int m13968a = m13968a(parcel, i);
        if (m13968a == 0) {
            valueOf = null;
        } else {
            m13966a(parcel, i, m13968a, 8);
            valueOf = Long.valueOf(parcel.readLong());
        }
        return valueOf;
    }

    /* renamed from: h */
    public static float m13955h(Parcel parcel, int i) {
        m13967a(parcel, i, 4);
        return parcel.readFloat();
    }

    /* renamed from: i */
    public static Float m13954i(Parcel parcel, int i) {
        Float valueOf;
        int m13968a = m13968a(parcel, i);
        if (m13968a == 0) {
            valueOf = null;
        } else {
            m13966a(parcel, i, m13968a, 4);
            valueOf = Float.valueOf(parcel.readFloat());
        }
        return valueOf;
    }

    /* renamed from: j */
    public static Double m13953j(Parcel parcel, int i) {
        Double valueOf;
        int m13968a = m13968a(parcel, i);
        if (m13968a == 0) {
            valueOf = null;
        } else {
            m13966a(parcel, i, m13968a, 8);
            valueOf = Double.valueOf(parcel.readDouble());
        }
        return valueOf;
    }

    /* renamed from: k */
    public static String m13952k(Parcel parcel, int i) {
        String str;
        int m13968a = m13968a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m13968a == 0) {
            str = null;
        } else {
            String readString = parcel.readString();
            parcel.setDataPosition(m13968a + dataPosition);
            str = readString;
        }
        return str;
    }

    /* renamed from: l */
    public static IBinder m13951l(Parcel parcel, int i) {
        IBinder iBinder;
        int m13968a = m13968a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m13968a == 0) {
            iBinder = null;
        } else {
            IBinder readStrongBinder = parcel.readStrongBinder();
            parcel.setDataPosition(m13968a + dataPosition);
            iBinder = readStrongBinder;
        }
        return iBinder;
    }

    /* renamed from: m */
    public static Bundle m13950m(Parcel parcel, int i) {
        Bundle bundle;
        int m13968a = m13968a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m13968a == 0) {
            bundle = null;
        } else {
            Bundle readBundle = parcel.readBundle();
            parcel.setDataPosition(m13968a + dataPosition);
            bundle = readBundle;
        }
        return bundle;
    }

    /* renamed from: n */
    public static byte[] m13949n(Parcel parcel, int i) {
        byte[] bArr;
        int m13968a = m13968a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m13968a == 0) {
            bArr = null;
        } else {
            byte[] createByteArray = parcel.createByteArray();
            parcel.setDataPosition(m13968a + dataPosition);
            bArr = createByteArray;
        }
        return bArr;
    }

    /* renamed from: o */
    public static String[] m13948o(Parcel parcel, int i) {
        String[] strArr;
        int m13968a = m13968a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m13968a == 0) {
            strArr = null;
        } else {
            String[] createStringArray = parcel.createStringArray();
            parcel.setDataPosition(m13968a + dataPosition);
            strArr = createStringArray;
        }
        return strArr;
    }

    /* renamed from: p */
    public static ArrayList<Integer> m13947p(Parcel parcel, int i) {
        ArrayList<Integer> arrayList;
        int m13968a = m13968a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m13968a == 0) {
            arrayList = null;
        } else {
            ArrayList<Integer> arrayList2 = new ArrayList<>();
            int readInt = parcel.readInt();
            for (int i2 = 0; i2 < readInt; i2++) {
                arrayList2.add(Integer.valueOf(parcel.readInt()));
            }
            parcel.setDataPosition(dataPosition + m13968a);
            arrayList = arrayList2;
        }
        return arrayList;
    }

    /* renamed from: q */
    public static ArrayList<String> m13946q(Parcel parcel, int i) {
        ArrayList<String> arrayList;
        int m13968a = m13968a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m13968a == 0) {
            arrayList = null;
        } else {
            ArrayList<String> createStringArrayList = parcel.createStringArrayList();
            parcel.setDataPosition(m13968a + dataPosition);
            arrayList = createStringArrayList;
        }
        return arrayList;
    }

    /* renamed from: r */
    public static void m13945r(Parcel parcel, int i) {
        if (parcel.dataPosition() != i) {
            throw new ParseException(new StringBuilder(37).append("Overread allowed size end=").append(i).toString(), parcel);
        }
    }
}
