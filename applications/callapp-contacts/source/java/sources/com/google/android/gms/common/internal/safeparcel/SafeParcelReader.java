package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelReader.class */
public final class SafeParcelReader {

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException.class */
    public static class ParseException extends RuntimeException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public ParseException(java.lang.String r6, android.os.Parcel r7) {
            /*
                r5 = this;
                r0 = r7
                int r0 = r0.dataPosition()
                r8 = r0
                r0 = r7
                int r0 = r0.dataSize()
                r9 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = r6
                java.lang.String r2 = java.lang.String.valueOf(r2)
                int r2 = r2.length()
                r3 = 41
                int r2 = r2 + r3
                r1.<init>(r2)
                r7 = r0
                r0 = r7
                r1 = r6
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r7
                java.lang.String r1 = " Parcel: pos="
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r7
                r1 = r8
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r7
                java.lang.String r1 = " size="
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r7
                r1 = r9
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r7
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.safeparcel.SafeParcelReader.ParseException.<init>(java.lang.String, android.os.Parcel):void");
        }
    }

    private SafeParcelReader() {
    }

    /* renamed from: a */
    public static int m19146a(Parcel parcel) {
        int readInt = parcel.readInt();
        int m19145a = m19145a(parcel, readInt);
        int dataPosition = parcel.dataPosition();
        if (((char) readInt) != 20293) {
            String valueOf = String.valueOf(Integer.toHexString(readInt));
            throw new ParseException(valueOf.length() != 0 ? "Expected object header. Got 0x".concat(valueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i = m19145a + dataPosition;
        if (i >= dataPosition && i <= parcel.dataSize()) {
            return i;
        }
        StringBuilder sb = new StringBuilder(54);
        sb.append("Size read is invalid start=");
        sb.append(dataPosition);
        sb.append(" end=");
        sb.append(i);
        throw new ParseException(sb.toString(), parcel);
    }

    /* renamed from: a */
    public static int m19145a(Parcel parcel, int i) {
        return (i & (-65536)) != -65536 ? (char) (i >> 16) : parcel.readInt();
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m19143a(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int m19145a = m19145a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m19145a == 0) {
            return null;
        }
        T createFromParcel = creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + m19145a);
        return createFromParcel;
    }

    /* renamed from: a */
    public static void m19144a(Parcel parcel, int i, int i2) {
        int m19145a = m19145a(parcel, i);
        if (m19145a == i2) {
            return;
        }
        String hexString = Integer.toHexString(m19145a);
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
        sb.append("Expected size ");
        sb.append(i2);
        sb.append(" got ");
        sb.append(m19145a);
        sb.append(" (0x");
        sb.append(hexString);
        sb.append(")");
        throw new ParseException(sb.toString(), parcel);
    }

    /* renamed from: b */
    public static void m19142b(Parcel parcel, int i) {
        parcel.setDataPosition(parcel.dataPosition() + m19145a(parcel, i));
    }

    /* renamed from: b */
    public static void m19141b(Parcel parcel, int i, int i2) {
        if (i == i2) {
            return;
        }
        String hexString = Integer.toHexString(i);
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
        sb.append("Expected size ");
        sb.append(i2);
        sb.append(" got ");
        sb.append(i);
        sb.append(" (0x");
        sb.append(hexString);
        sb.append(")");
        throw new ParseException(sb.toString(), parcel);
    }

    /* renamed from: b */
    public static <T> T[] m19140b(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int m19145a = m19145a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m19145a == 0) {
            return null;
        }
        T[] tArr = (T[]) parcel.createTypedArray(creator);
        parcel.setDataPosition(dataPosition + m19145a);
        return tArr;
    }

    /* renamed from: c */
    public static <T> ArrayList<T> m19138c(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int m19145a = m19145a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m19145a == 0) {
            return null;
        }
        ArrayList<T> createTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(dataPosition + m19145a);
        return createTypedArrayList;
    }

    /* renamed from: c */
    public static boolean m19139c(Parcel parcel, int i) {
        m19144a(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    /* renamed from: d */
    public static byte m19137d(Parcel parcel, int i) {
        m19144a(parcel, i, 4);
        return (byte) parcel.readInt();
    }

    /* renamed from: e */
    public static int m19136e(Parcel parcel, int i) {
        m19144a(parcel, i, 4);
        return parcel.readInt();
    }

    /* renamed from: f */
    public static long m19135f(Parcel parcel, int i) {
        m19144a(parcel, i, 8);
        return parcel.readLong();
    }

    /* renamed from: g */
    public static Long m19134g(Parcel parcel, int i) {
        int m19145a = m19145a(parcel, i);
        if (m19145a == 0) {
            return null;
        }
        m19141b(parcel, m19145a, 8);
        return Long.valueOf(parcel.readLong());
    }

    /* renamed from: h */
    public static BigInteger m19133h(Parcel parcel, int i) {
        int m19145a = m19145a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m19145a == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + m19145a);
        return new BigInteger(createByteArray);
    }

    /* renamed from: i */
    public static float m19132i(Parcel parcel, int i) {
        m19144a(parcel, i, 4);
        return parcel.readFloat();
    }

    /* renamed from: j */
    public static Float m19131j(Parcel parcel, int i) {
        int m19145a = m19145a(parcel, i);
        if (m19145a == 0) {
            return null;
        }
        m19141b(parcel, m19145a, 4);
        return Float.valueOf(parcel.readFloat());
    }

    /* renamed from: k */
    public static double m19130k(Parcel parcel, int i) {
        m19144a(parcel, i, 8);
        return parcel.readDouble();
    }

    /* renamed from: l */
    public static BigDecimal m19129l(Parcel parcel, int i) {
        int m19145a = m19145a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m19145a == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        int readInt = parcel.readInt();
        parcel.setDataPosition(dataPosition + m19145a);
        return new BigDecimal(new BigInteger(createByteArray), readInt);
    }

    /* renamed from: m */
    public static String m19128m(Parcel parcel, int i) {
        int m19145a = m19145a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m19145a == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + m19145a);
        return readString;
    }

    /* renamed from: n */
    public static IBinder m19127n(Parcel parcel, int i) {
        int m19145a = m19145a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m19145a == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(dataPosition + m19145a);
        return readStrongBinder;
    }

    /* renamed from: o */
    public static Bundle m19126o(Parcel parcel, int i) {
        int m19145a = m19145a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m19145a == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(dataPosition + m19145a);
        return readBundle;
    }

    /* renamed from: p */
    public static byte[] m19125p(Parcel parcel, int i) {
        int m19145a = m19145a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m19145a == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + m19145a);
        return createByteArray;
    }

    /* renamed from: q */
    public static int[] m19124q(Parcel parcel, int i) {
        int m19145a = m19145a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m19145a == 0) {
            return null;
        }
        int[] createIntArray = parcel.createIntArray();
        parcel.setDataPosition(dataPosition + m19145a);
        return createIntArray;
    }

    /* renamed from: r */
    public static BigInteger[] m19123r(Parcel parcel, int i) {
        int m19145a = m19145a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m19145a == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigInteger[] bigIntegerArr = new BigInteger[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            bigIntegerArr[i2] = new BigInteger(parcel.createByteArray());
        }
        parcel.setDataPosition(dataPosition + m19145a);
        return bigIntegerArr;
    }

    /* renamed from: s */
    public static BigDecimal[] m19122s(Parcel parcel, int i) {
        int m19145a = m19145a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m19145a == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigDecimal[] bigDecimalArr = new BigDecimal[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            bigDecimalArr[i2] = new BigDecimal(new BigInteger(parcel.createByteArray()), parcel.readInt());
        }
        parcel.setDataPosition(dataPosition + m19145a);
        return bigDecimalArr;
    }

    /* renamed from: t */
    public static String[] m19121t(Parcel parcel, int i) {
        int m19145a = m19145a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m19145a == 0) {
            return null;
        }
        String[] createStringArray = parcel.createStringArray();
        parcel.setDataPosition(dataPosition + m19145a);
        return createStringArray;
    }

    /* renamed from: u */
    public static ArrayList<String> m19120u(Parcel parcel, int i) {
        int m19145a = m19145a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m19145a == 0) {
            return null;
        }
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(dataPosition + m19145a);
        return createStringArrayList;
    }

    /* renamed from: v */
    public static Parcel m19119v(Parcel parcel, int i) {
        int m19145a = m19145a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m19145a == 0) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        obtain.appendFrom(parcel, dataPosition, m19145a);
        parcel.setDataPosition(dataPosition + m19145a);
        return obtain;
    }

    /* renamed from: w */
    public static Parcel[] m19118w(Parcel parcel, int i) {
        int m19145a = m19145a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m19145a == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        Parcel[] parcelArr = new Parcel[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            int readInt2 = parcel.readInt();
            if (readInt2 != 0) {
                int dataPosition2 = parcel.dataPosition();
                Parcel obtain = Parcel.obtain();
                obtain.appendFrom(parcel, dataPosition2, readInt2);
                parcelArr[i2] = obtain;
                parcel.setDataPosition(dataPosition2 + readInt2);
            } else {
                parcelArr[i2] = null;
            }
        }
        parcel.setDataPosition(dataPosition + m19145a);
        return parcelArr;
    }

    /* renamed from: x */
    public static void m19117x(Parcel parcel, int i) {
        if (parcel.dataPosition() == i) {
            return;
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(i);
        throw new ParseException(sb.toString(), parcel);
    }
}
