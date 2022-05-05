package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import okhttp3.internal.http2.C2445Settings;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelReader.class */
public class SafeParcelReader {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException.class */
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
    public static Float m14501A(Parcel parcel, int i) {
        int H = m14494H(parcel, i);
        if (H == 0) {
            return null;
        }
        m14490L(parcel, i, H, 4);
        return Float.valueOf(parcel.readFloat());
    }

    /* renamed from: B */
    public static int m14500B(Parcel parcel) {
        return parcel.readInt();
    }

    /* renamed from: C */
    public static IBinder m14499C(Parcel parcel, int i) {
        int H = m14494H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (H == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(dataPosition + H);
        return readStrongBinder;
    }

    /* renamed from: D */
    public static int m14498D(Parcel parcel, int i) {
        m14491K(parcel, i, 4);
        return parcel.readInt();
    }

    /* renamed from: E */
    public static Integer m14497E(Parcel parcel, int i) {
        int H = m14494H(parcel, i);
        if (H == 0) {
            return null;
        }
        m14490L(parcel, i, H, 4);
        return Integer.valueOf(parcel.readInt());
    }

    /* renamed from: F */
    public static long m14496F(Parcel parcel, int i) {
        m14491K(parcel, i, 8);
        return parcel.readLong();
    }

    /* renamed from: G */
    public static Long m14495G(Parcel parcel, int i) {
        int H = m14494H(parcel, i);
        if (H == 0) {
            return null;
        }
        m14490L(parcel, i, H, 8);
        return Long.valueOf(parcel.readLong());
    }

    /* renamed from: H */
    public static int m14494H(Parcel parcel, int i) {
        return (i & (-65536)) != -65536 ? (i >> 16) & C2445Settings.DEFAULT_INITIAL_WINDOW_SIZE : parcel.readInt();
    }

    /* renamed from: I */
    public static void m14493I(Parcel parcel, int i) {
        parcel.setDataPosition(parcel.dataPosition() + m14494H(parcel, i));
    }

    /* renamed from: J */
    public static int m14492J(Parcel parcel) {
        int B = m14500B(parcel);
        int H = m14494H(parcel, B);
        int dataPosition = parcel.dataPosition();
        if (m14469u(B) != 20293) {
            String valueOf = String.valueOf(Integer.toHexString(B));
            throw new ParseException(valueOf.length() != 0 ? "Expected object header. Got 0x".concat(valueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i = H + dataPosition;
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

    /* renamed from: K */
    private static void m14491K(Parcel parcel, int i, int i2) {
        int H = m14494H(parcel, i);
        if (H != i2) {
            String hexString = Integer.toHexString(H);
            StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
            sb.append("Expected size ");
            sb.append(i2);
            sb.append(" got ");
            sb.append(H);
            sb.append(" (0x");
            sb.append(hexString);
            sb.append(")");
            throw new ParseException(sb.toString(), parcel);
        }
    }

    /* renamed from: L */
    private static void m14490L(Parcel parcel, int i, int i2, int i3) {
        if (i2 != i3) {
            String hexString = Integer.toHexString(i2);
            StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
            sb.append("Expected size ");
            sb.append(i3);
            sb.append(" got ");
            sb.append(i2);
            sb.append(" (0x");
            sb.append(hexString);
            sb.append(")");
            throw new ParseException(sb.toString(), parcel);
        }
    }

    /* renamed from: a */
    public static BigDecimal m14489a(Parcel parcel, int i) {
        int H = m14494H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (H == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        int readInt = parcel.readInt();
        parcel.setDataPosition(dataPosition + H);
        return new BigDecimal(new BigInteger(createByteArray), readInt);
    }

    /* renamed from: b */
    public static BigDecimal[] m14488b(Parcel parcel, int i) {
        int H = m14494H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (H == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigDecimal[] bigDecimalArr = new BigDecimal[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            byte[] createByteArray = parcel.createByteArray();
            bigDecimalArr[i2] = new BigDecimal(new BigInteger(createByteArray), parcel.readInt());
        }
        parcel.setDataPosition(dataPosition + H);
        return bigDecimalArr;
    }

    /* renamed from: c */
    public static BigInteger m14487c(Parcel parcel, int i) {
        int H = m14494H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (H == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + H);
        return new BigInteger(createByteArray);
    }

    /* renamed from: d */
    public static BigInteger[] m14486d(Parcel parcel, int i) {
        int H = m14494H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (H == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigInteger[] bigIntegerArr = new BigInteger[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            bigIntegerArr[i2] = new BigInteger(parcel.createByteArray());
        }
        parcel.setDataPosition(dataPosition + H);
        return bigIntegerArr;
    }

    /* renamed from: e */
    public static boolean[] m14485e(Parcel parcel, int i) {
        int H = m14494H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (H == 0) {
            return null;
        }
        boolean[] createBooleanArray = parcel.createBooleanArray();
        parcel.setDataPosition(dataPosition + H);
        return createBooleanArray;
    }

    /* renamed from: f */
    public static Bundle m14484f(Parcel parcel, int i) {
        int H = m14494H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (H == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(dataPosition + H);
        return readBundle;
    }

    /* renamed from: g */
    public static byte[] m14483g(Parcel parcel, int i) {
        int H = m14494H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (H == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + H);
        return createByteArray;
    }

    /* renamed from: h */
    public static double[] m14482h(Parcel parcel, int i) {
        int H = m14494H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (H == 0) {
            return null;
        }
        double[] createDoubleArray = parcel.createDoubleArray();
        parcel.setDataPosition(dataPosition + H);
        return createDoubleArray;
    }

    /* renamed from: i */
    public static float[] m14481i(Parcel parcel, int i) {
        int H = m14494H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (H == 0) {
            return null;
        }
        float[] createFloatArray = parcel.createFloatArray();
        parcel.setDataPosition(dataPosition + H);
        return createFloatArray;
    }

    /* renamed from: j */
    public static int[] m14480j(Parcel parcel, int i) {
        int H = m14494H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (H == 0) {
            return null;
        }
        int[] createIntArray = parcel.createIntArray();
        parcel.setDataPosition(dataPosition + H);
        return createIntArray;
    }

    /* renamed from: k */
    public static long[] m14479k(Parcel parcel, int i) {
        int H = m14494H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (H == 0) {
            return null;
        }
        long[] createLongArray = parcel.createLongArray();
        parcel.setDataPosition(dataPosition + H);
        return createLongArray;
    }

    /* renamed from: l */
    public static Parcel m14478l(Parcel parcel, int i) {
        int H = m14494H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (H == 0) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        obtain.appendFrom(parcel, dataPosition, H);
        parcel.setDataPosition(dataPosition + H);
        return obtain;
    }

    /* renamed from: m */
    public static Parcel[] m14477m(Parcel parcel, int i) {
        int H = m14494H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (H == 0) {
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
        parcel.setDataPosition(dataPosition + H);
        return parcelArr;
    }

    /* renamed from: n */
    public static <T extends Parcelable> T m14476n(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int H = m14494H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (H == 0) {
            return null;
        }
        T createFromParcel = creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + H);
        return createFromParcel;
    }

    /* renamed from: o */
    public static String m14475o(Parcel parcel, int i) {
        int H = m14494H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (H == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + H);
        return readString;
    }

    /* renamed from: p */
    public static String[] m14474p(Parcel parcel, int i) {
        int H = m14494H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (H == 0) {
            return null;
        }
        String[] createStringArray = parcel.createStringArray();
        parcel.setDataPosition(dataPosition + H);
        return createStringArray;
    }

    /* renamed from: q */
    public static ArrayList<String> m14473q(Parcel parcel, int i) {
        int H = m14494H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (H == 0) {
            return null;
        }
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(dataPosition + H);
        return createStringArrayList;
    }

    /* renamed from: r */
    public static <T> T[] m14472r(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int H = m14494H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (H == 0) {
            return null;
        }
        T[] tArr = (T[]) parcel.createTypedArray(creator);
        parcel.setDataPosition(dataPosition + H);
        return tArr;
    }

    /* renamed from: s */
    public static <T> ArrayList<T> m14471s(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int H = m14494H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (H == 0) {
            return null;
        }
        ArrayList<T> createTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(dataPosition + H);
        return createTypedArrayList;
    }

    /* renamed from: t */
    public static void m14470t(Parcel parcel, int i) {
        if (parcel.dataPosition() != i) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Overread allowed size end=");
            sb.append(i);
            throw new ParseException(sb.toString(), parcel);
        }
    }

    /* renamed from: u */
    public static int m14469u(int i) {
        return i & C2445Settings.DEFAULT_INITIAL_WINDOW_SIZE;
    }

    /* renamed from: v */
    public static boolean m14468v(Parcel parcel, int i) {
        m14491K(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    /* renamed from: w */
    public static Boolean m14467w(Parcel parcel, int i) {
        int H = m14494H(parcel, i);
        if (H == 0) {
            return null;
        }
        m14490L(parcel, i, H, 4);
        return Boolean.valueOf(parcel.readInt() != 0);
    }

    /* renamed from: x */
    public static double m14466x(Parcel parcel, int i) {
        m14491K(parcel, i, 8);
        return parcel.readDouble();
    }

    /* renamed from: y */
    public static Double m14465y(Parcel parcel, int i) {
        int H = m14494H(parcel, i);
        if (H == 0) {
            return null;
        }
        m14490L(parcel, i, H, 8);
        return Double.valueOf(parcel.readDouble());
    }

    /* renamed from: z */
    public static float m14464z(Parcel parcel, int i) {
        m14491K(parcel, i, 4);
        return parcel.readFloat();
    }
}
