package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import java.math.BigDecimal;
import java.math.BigInteger;
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
        public ParseException(@androidx.annotation.RecentlyNonNull java.lang.String r6, @androidx.annotation.RecentlyNonNull android.os.Parcel r7) {
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

    /* renamed from: A */
    public static float m16985A(@RecentlyNonNull Parcel parcel, int i) {
        m16975K(parcel, i, 4);
        return parcel.readFloat();
    }

    @RecentlyNonNull
    /* renamed from: B */
    public static Float m16984B(@RecentlyNonNull Parcel parcel, int i) {
        int m16978H = m16978H(parcel, i);
        if (m16978H == 0) {
            return null;
        }
        m16974L(parcel, i, m16978H, 4);
        return Float.valueOf(parcel.readFloat());
    }

    /* renamed from: C */
    public static int m16983C(@RecentlyNonNull Parcel parcel) {
        return parcel.readInt();
    }

    @RecentlyNonNull
    /* renamed from: D */
    public static IBinder m16982D(@RecentlyNonNull Parcel parcel, int i) {
        int m16978H = m16978H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m16978H == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(dataPosition + m16978H);
        return readStrongBinder;
    }

    /* renamed from: E */
    public static int m16981E(@RecentlyNonNull Parcel parcel, int i) {
        m16975K(parcel, i, 4);
        return parcel.readInt();
    }

    /* renamed from: F */
    public static long m16980F(@RecentlyNonNull Parcel parcel, int i) {
        m16975K(parcel, i, 8);
        return parcel.readLong();
    }

    @RecentlyNonNull
    /* renamed from: G */
    public static Long m16979G(@RecentlyNonNull Parcel parcel, int i) {
        int m16978H = m16978H(parcel, i);
        if (m16978H == 0) {
            return null;
        }
        m16974L(parcel, i, m16978H, 8);
        return Long.valueOf(parcel.readLong());
    }

    /* renamed from: H */
    public static int m16978H(@RecentlyNonNull Parcel parcel, int i) {
        return (i & (-65536)) != -65536 ? (char) (i >> 16) : parcel.readInt();
    }

    /* renamed from: I */
    public static void m16977I(@RecentlyNonNull Parcel parcel, int i) {
        parcel.setDataPosition(parcel.dataPosition() + m16978H(parcel, i));
    }

    /* renamed from: J */
    public static int m16976J(@RecentlyNonNull Parcel parcel) {
        int m16983C = m16983C(parcel);
        int m16978H = m16978H(parcel, m16983C);
        int dataPosition = parcel.dataPosition();
        if (m16952v(m16983C) != 20293) {
            String valueOf = String.valueOf(Integer.toHexString(m16983C));
            throw new ParseException(valueOf.length() != 0 ? "Expected object header. Got 0x".concat(valueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i = m16978H + dataPosition;
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
    private static void m16975K(Parcel parcel, int i, int i2) {
        int m16978H = m16978H(parcel, i);
        if (m16978H == i2) {
            return;
        }
        String hexString = Integer.toHexString(m16978H);
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
        sb.append("Expected size ");
        sb.append(i2);
        sb.append(" got ");
        sb.append(m16978H);
        sb.append(" (0x");
        sb.append(hexString);
        sb.append(")");
        throw new ParseException(sb.toString(), parcel);
    }

    /* renamed from: L */
    private static void m16974L(Parcel parcel, int i, int i2, int i3) {
        if (i2 == i3) {
            return;
        }
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

    @RecentlyNonNull
    /* renamed from: a */
    public static BigDecimal m16973a(@RecentlyNonNull Parcel parcel, int i) {
        int m16978H = m16978H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m16978H == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        int readInt = parcel.readInt();
        parcel.setDataPosition(dataPosition + m16978H);
        return new BigDecimal(new BigInteger(createByteArray), readInt);
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static BigDecimal[] m16972b(@RecentlyNonNull Parcel parcel, int i) {
        int m16978H = m16978H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m16978H == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigDecimal[] bigDecimalArr = new BigDecimal[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            bigDecimalArr[i2] = new BigDecimal(new BigInteger(parcel.createByteArray()), parcel.readInt());
        }
        parcel.setDataPosition(dataPosition + m16978H);
        return bigDecimalArr;
    }

    @RecentlyNonNull
    /* renamed from: c */
    public static BigInteger m16971c(@RecentlyNonNull Parcel parcel, int i) {
        int m16978H = m16978H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m16978H == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + m16978H);
        return new BigInteger(createByteArray);
    }

    @RecentlyNonNull
    /* renamed from: d */
    public static BigInteger[] m16970d(@RecentlyNonNull Parcel parcel, int i) {
        int m16978H = m16978H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m16978H == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigInteger[] bigIntegerArr = new BigInteger[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            bigIntegerArr[i2] = new BigInteger(parcel.createByteArray());
        }
        parcel.setDataPosition(dataPosition + m16978H);
        return bigIntegerArr;
    }

    @RecentlyNonNull
    /* renamed from: e */
    public static boolean[] m16969e(@RecentlyNonNull Parcel parcel, int i) {
        int m16978H = m16978H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m16978H == 0) {
            return null;
        }
        boolean[] createBooleanArray = parcel.createBooleanArray();
        parcel.setDataPosition(dataPosition + m16978H);
        return createBooleanArray;
    }

    @RecentlyNonNull
    /* renamed from: f */
    public static Bundle m16968f(@RecentlyNonNull Parcel parcel, int i) {
        int m16978H = m16978H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m16978H == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(dataPosition + m16978H);
        return readBundle;
    }

    @RecentlyNonNull
    /* renamed from: g */
    public static byte[] m16967g(@RecentlyNonNull Parcel parcel, int i) {
        int m16978H = m16978H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m16978H == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + m16978H);
        return createByteArray;
    }

    @RecentlyNonNull
    /* renamed from: h */
    public static double[] m16966h(@RecentlyNonNull Parcel parcel, int i) {
        int m16978H = m16978H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m16978H == 0) {
            return null;
        }
        double[] createDoubleArray = parcel.createDoubleArray();
        parcel.setDataPosition(dataPosition + m16978H);
        return createDoubleArray;
    }

    @RecentlyNonNull
    /* renamed from: i */
    public static float[] m16965i(@RecentlyNonNull Parcel parcel, int i) {
        int m16978H = m16978H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m16978H == 0) {
            return null;
        }
        float[] createFloatArray = parcel.createFloatArray();
        parcel.setDataPosition(dataPosition + m16978H);
        return createFloatArray;
    }

    @RecentlyNonNull
    /* renamed from: j */
    public static int[] m16964j(@RecentlyNonNull Parcel parcel, int i) {
        int m16978H = m16978H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m16978H == 0) {
            return null;
        }
        int[] createIntArray = parcel.createIntArray();
        parcel.setDataPosition(dataPosition + m16978H);
        return createIntArray;
    }

    @RecentlyNonNull
    /* renamed from: k */
    public static ArrayList<Integer> m16963k(@RecentlyNonNull Parcel parcel, int i) {
        int m16978H = m16978H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m16978H == 0) {
            return null;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i2 = 0; i2 < readInt; i2++) {
            arrayList.add(Integer.valueOf(parcel.readInt()));
        }
        parcel.setDataPosition(dataPosition + m16978H);
        return arrayList;
    }

    @RecentlyNonNull
    /* renamed from: l */
    public static long[] m16962l(@RecentlyNonNull Parcel parcel, int i) {
        int m16978H = m16978H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m16978H == 0) {
            return null;
        }
        long[] createLongArray = parcel.createLongArray();
        parcel.setDataPosition(dataPosition + m16978H);
        return createLongArray;
    }

    @RecentlyNonNull
    /* renamed from: m */
    public static Parcel m16961m(@RecentlyNonNull Parcel parcel, int i) {
        int m16978H = m16978H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m16978H == 0) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        obtain.appendFrom(parcel, dataPosition, m16978H);
        parcel.setDataPosition(dataPosition + m16978H);
        return obtain;
    }

    @RecentlyNonNull
    /* renamed from: n */
    public static Parcel[] m16960n(@RecentlyNonNull Parcel parcel, int i) {
        int m16978H = m16978H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m16978H == 0) {
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
        parcel.setDataPosition(dataPosition + m16978H);
        return parcelArr;
    }

    @RecentlyNonNull
    /* renamed from: o */
    public static <T extends Parcelable> T m16959o(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Parcelable.Creator<T> creator) {
        int m16978H = m16978H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m16978H == 0) {
            return null;
        }
        T createFromParcel = creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + m16978H);
        return createFromParcel;
    }

    @RecentlyNonNull
    /* renamed from: p */
    public static String m16958p(@RecentlyNonNull Parcel parcel, int i) {
        int m16978H = m16978H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m16978H == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + m16978H);
        return readString;
    }

    @RecentlyNonNull
    /* renamed from: q */
    public static String[] m16957q(@RecentlyNonNull Parcel parcel, int i) {
        int m16978H = m16978H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m16978H == 0) {
            return null;
        }
        String[] createStringArray = parcel.createStringArray();
        parcel.setDataPosition(dataPosition + m16978H);
        return createStringArray;
    }

    @RecentlyNonNull
    /* renamed from: r */
    public static ArrayList<String> m16956r(@RecentlyNonNull Parcel parcel, int i) {
        int m16978H = m16978H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m16978H == 0) {
            return null;
        }
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(dataPosition + m16978H);
        return createStringArrayList;
    }

    @RecentlyNonNull
    /* renamed from: s */
    public static <T> T[] m16955s(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Parcelable.Creator<T> creator) {
        int m16978H = m16978H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m16978H == 0) {
            return null;
        }
        T[] tArr = (T[]) parcel.createTypedArray(creator);
        parcel.setDataPosition(dataPosition + m16978H);
        return tArr;
    }

    @RecentlyNonNull
    /* renamed from: t */
    public static <T> ArrayList<T> m16954t(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Parcelable.Creator<T> creator) {
        int m16978H = m16978H(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m16978H == 0) {
            return null;
        }
        ArrayList<T> createTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(dataPosition + m16978H);
        return createTypedArrayList;
    }

    /* renamed from: u */
    public static void m16953u(@RecentlyNonNull Parcel parcel, int i) {
        if (parcel.dataPosition() == i) {
            return;
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(i);
        throw new ParseException(sb.toString(), parcel);
    }

    /* renamed from: v */
    public static int m16952v(int i) {
        return (char) i;
    }

    /* renamed from: w */
    public static boolean m16951w(@RecentlyNonNull Parcel parcel, int i) {
        m16975K(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    @RecentlyNonNull
    /* renamed from: x */
    public static Boolean m16950x(@RecentlyNonNull Parcel parcel, int i) {
        int m16978H = m16978H(parcel, i);
        if (m16978H == 0) {
            return null;
        }
        m16974L(parcel, i, m16978H, 4);
        return Boolean.valueOf(parcel.readInt() != 0);
    }

    /* renamed from: y */
    public static double m16949y(@RecentlyNonNull Parcel parcel, int i) {
        m16975K(parcel, i, 8);
        return parcel.readDouble();
    }

    @RecentlyNonNull
    /* renamed from: z */
    public static Double m16948z(@RecentlyNonNull Parcel parcel, int i) {
        int m16978H = m16978H(parcel, i);
        if (m16978H == 0) {
            return null;
        }
        m16974L(parcel, i, m16978H, 8);
        return Double.valueOf(parcel.readDouble());
    }
}
