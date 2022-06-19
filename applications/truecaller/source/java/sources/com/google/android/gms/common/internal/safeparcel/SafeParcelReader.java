package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelReader.class */
public class SafeParcelReader {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException.class */
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

    /* renamed from: A */
    public static int m38891A(Parcel parcel) {
        int readInt = parcel.readInt();
        int m38864y = m38864y(parcel, readInt);
        int dataPosition = parcel.dataPosition();
        if (((char) readInt) != 20293) {
            String valueOf = String.valueOf(Integer.toHexString(readInt));
            throw new ParseException(valueOf.length() != 0 ? "Expected object header. Got 0x".concat(valueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i = m38864y + dataPosition;
        if (i >= dataPosition && i <= parcel.dataSize()) {
            return i;
        }
        throw new ParseException(C22128a.m8683N1(54, "Size read is invalid start=", dataPosition, " end=", i), parcel);
    }

    /* renamed from: B */
    public static void m38890B(Parcel parcel, int i, int i2, int i3) {
        if (i2 == i3) {
            return;
        }
        String hexString = Integer.toHexString(i2);
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
        sb.append("Expected size ");
        sb.append(i3);
        sb.append(" got ");
        sb.append(i2);
        throw new ParseException(C22128a.m8610j(sb, " (0x", hexString, ")"), parcel);
    }

    /* renamed from: C */
    public static void m38889C(Parcel parcel, int i, int i2) {
        int m38864y = m38864y(parcel, i);
        if (m38864y == i2) {
            return;
        }
        String hexString = Integer.toHexString(m38864y);
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
        sb.append("Expected size ");
        sb.append(i2);
        sb.append(" got ");
        sb.append(m38864y);
        throw new ParseException(C22128a.m8610j(sb, " (0x", hexString, ")"), parcel);
    }

    /* renamed from: a */
    public static BigDecimal m38888a(Parcel parcel, int i) {
        int m38864y = m38864y(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m38864y == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        int readInt = parcel.readInt();
        parcel.setDataPosition(dataPosition + m38864y);
        return new BigDecimal(new BigInteger(createByteArray), readInt);
    }

    /* renamed from: b */
    public static BigInteger m38887b(Parcel parcel, int i) {
        int m38864y = m38864y(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m38864y == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + m38864y);
        return new BigInteger(createByteArray);
    }

    /* renamed from: c */
    public static Bundle m38886c(Parcel parcel, int i) {
        int m38864y = m38864y(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m38864y == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(dataPosition + m38864y);
        return readBundle;
    }

    /* renamed from: d */
    public static byte[] m38885d(Parcel parcel, int i) {
        int m38864y = m38864y(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m38864y == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + m38864y);
        return createByteArray;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [byte[], byte[][]] */
    /* renamed from: e */
    public static byte[][] m38884e(Parcel parcel, int i) {
        int m38864y = m38864y(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m38864y == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        ?? r0 = new byte[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            r0[i2] = parcel.createByteArray();
        }
        parcel.setDataPosition(dataPosition + m38864y);
        return r0;
    }

    /* renamed from: f */
    public static int[] m38883f(Parcel parcel, int i) {
        int m38864y = m38864y(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m38864y == 0) {
            return null;
        }
        int[] createIntArray = parcel.createIntArray();
        parcel.setDataPosition(dataPosition + m38864y);
        return createIntArray;
    }

    /* renamed from: g */
    public static ArrayList<Integer> m38882g(Parcel parcel, int i) {
        int m38864y = m38864y(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m38864y == 0) {
            return null;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i2 = 0; i2 < readInt; i2++) {
            arrayList.add(Integer.valueOf(parcel.readInt()));
        }
        parcel.setDataPosition(dataPosition + m38864y);
        return arrayList;
    }

    /* renamed from: h */
    public static Parcel m38881h(Parcel parcel, int i) {
        int m38864y = m38864y(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m38864y == 0) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        obtain.appendFrom(parcel, dataPosition, m38864y);
        parcel.setDataPosition(dataPosition + m38864y);
        return obtain;
    }

    /* renamed from: i */
    public static <T extends Parcelable> T m38880i(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int m38864y = m38864y(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m38864y == 0) {
            return null;
        }
        T createFromParcel = creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + m38864y);
        return createFromParcel;
    }

    /* renamed from: j */
    public static String m38879j(Parcel parcel, int i) {
        int m38864y = m38864y(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m38864y == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + m38864y);
        return readString;
    }

    /* renamed from: k */
    public static String[] m38878k(Parcel parcel, int i) {
        int m38864y = m38864y(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m38864y == 0) {
            return null;
        }
        String[] createStringArray = parcel.createStringArray();
        parcel.setDataPosition(dataPosition + m38864y);
        return createStringArray;
    }

    /* renamed from: l */
    public static ArrayList<String> m38877l(Parcel parcel, int i) {
        int m38864y = m38864y(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m38864y == 0) {
            return null;
        }
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(dataPosition + m38864y);
        return createStringArrayList;
    }

    /* renamed from: m */
    public static <T> T[] m38876m(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int m38864y = m38864y(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m38864y == 0) {
            return null;
        }
        T[] tArr = (T[]) parcel.createTypedArray(creator);
        parcel.setDataPosition(dataPosition + m38864y);
        return tArr;
    }

    /* renamed from: n */
    public static <T> ArrayList<T> m38875n(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int m38864y = m38864y(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m38864y == 0) {
            return null;
        }
        ArrayList<T> createTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(dataPosition + m38864y);
        return createTypedArrayList;
    }

    /* renamed from: o */
    public static void m38874o(Parcel parcel, int i) {
        if (parcel.dataPosition() == i) {
            return;
        }
        throw new ParseException(C22128a.m8690L1(37, "Overread allowed size end=", i), parcel);
    }

    /* renamed from: p */
    public static boolean m38873p(Parcel parcel, int i) {
        m38889C(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    /* renamed from: q */
    public static byte m38872q(Parcel parcel, int i) {
        m38889C(parcel, i, 4);
        return (byte) parcel.readInt();
    }

    /* renamed from: r */
    public static double m38871r(Parcel parcel, int i) {
        m38889C(parcel, i, 8);
        return parcel.readDouble();
    }

    /* renamed from: s */
    public static float m38870s(Parcel parcel, int i) {
        m38889C(parcel, i, 4);
        return parcel.readFloat();
    }

    /* renamed from: t */
    public static Float m38869t(Parcel parcel, int i) {
        int m38864y = m38864y(parcel, i);
        if (m38864y == 0) {
            return null;
        }
        m38890B(parcel, i, m38864y, 4);
        return Float.valueOf(parcel.readFloat());
    }

    /* renamed from: u */
    public static IBinder m38868u(Parcel parcel, int i) {
        int m38864y = m38864y(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m38864y == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(dataPosition + m38864y);
        return readStrongBinder;
    }

    /* renamed from: v */
    public static int m38867v(Parcel parcel, int i) {
        m38889C(parcel, i, 4);
        return parcel.readInt();
    }

    /* renamed from: w */
    public static long m38866w(Parcel parcel, int i) {
        m38889C(parcel, i, 8);
        return parcel.readLong();
    }

    /* renamed from: x */
    public static Long m38865x(Parcel parcel, int i) {
        int m38864y = m38864y(parcel, i);
        if (m38864y == 0) {
            return null;
        }
        m38890B(parcel, i, m38864y, 8);
        return Long.valueOf(parcel.readLong());
    }

    /* renamed from: y */
    public static int m38864y(Parcel parcel, int i) {
        return (i & (-65536)) != -65536 ? (char) (i >> 16) : parcel.readInt();
    }

    /* renamed from: z */
    public static void m38863z(Parcel parcel, int i) {
        parcel.setDataPosition(parcel.dataPosition() + m38864y(parcel, i));
    }
}
