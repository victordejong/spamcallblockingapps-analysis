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

    public static int a(Parcel parcel) {
        int readInt = parcel.readInt();
        int a2 = a(parcel, readInt);
        int dataPosition = parcel.dataPosition();
        if (((char) readInt) != 20293) {
            String valueOf = String.valueOf(Integer.toHexString(readInt));
            throw new ParseException(valueOf.length() != 0 ? "Expected object header. Got 0x".concat(valueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i = a2 + dataPosition;
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

    public static int a(Parcel parcel, int i) {
        return (i & (-65536)) != -65536 ? (char) (i >> 16) : parcel.readInt();
    }

    public static <T extends Parcelable> T a(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        T createFromParcel = creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + a2);
        return createFromParcel;
    }

    public static void a(Parcel parcel, int i, int i2) {
        int a2 = a(parcel, i);
        if (a2 != i2) {
            String hexString = Integer.toHexString(a2);
            StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
            sb.append("Expected size ");
            sb.append(i2);
            sb.append(" got ");
            sb.append(a2);
            sb.append(" (0x");
            sb.append(hexString);
            sb.append(")");
            throw new ParseException(sb.toString(), parcel);
        }
    }

    public static void b(Parcel parcel, int i) {
        parcel.setDataPosition(parcel.dataPosition() + a(parcel, i));
    }

    public static void b(Parcel parcel, int i, int i2) {
        if (i != i2) {
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
    }

    public static <T> T[] b(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        T[] tArr = (T[]) parcel.createTypedArray(creator);
        parcel.setDataPosition(dataPosition + a2);
        return tArr;
    }

    public static <T> ArrayList<T> c(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        ArrayList<T> createTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(dataPosition + a2);
        return createTypedArrayList;
    }

    public static boolean c(Parcel parcel, int i) {
        a(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    public static byte d(Parcel parcel, int i) {
        a(parcel, i, 4);
        return (byte) parcel.readInt();
    }

    public static int e(Parcel parcel, int i) {
        a(parcel, i, 4);
        return parcel.readInt();
    }

    public static long f(Parcel parcel, int i) {
        a(parcel, i, 8);
        return parcel.readLong();
    }

    public static Long g(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        if (a2 == 0) {
            return null;
        }
        b(parcel, a2, 8);
        return Long.valueOf(parcel.readLong());
    }

    public static BigInteger h(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + a2);
        return new BigInteger(createByteArray);
    }

    public static float i(Parcel parcel, int i) {
        a(parcel, i, 4);
        return parcel.readFloat();
    }

    public static Float j(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        if (a2 == 0) {
            return null;
        }
        b(parcel, a2, 4);
        return Float.valueOf(parcel.readFloat());
    }

    public static double k(Parcel parcel, int i) {
        a(parcel, i, 8);
        return parcel.readDouble();
    }

    public static BigDecimal l(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        int readInt = parcel.readInt();
        parcel.setDataPosition(dataPosition + a2);
        return new BigDecimal(new BigInteger(createByteArray), readInt);
    }

    public static String m(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + a2);
        return readString;
    }

    public static IBinder n(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(dataPosition + a2);
        return readStrongBinder;
    }

    public static Bundle o(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(dataPosition + a2);
        return readBundle;
    }

    public static byte[] p(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + a2);
        return createByteArray;
    }

    public static int[] q(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        int[] createIntArray = parcel.createIntArray();
        parcel.setDataPosition(dataPosition + a2);
        return createIntArray;
    }

    public static BigInteger[] r(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigInteger[] bigIntegerArr = new BigInteger[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            bigIntegerArr[i2] = new BigInteger(parcel.createByteArray());
        }
        parcel.setDataPosition(dataPosition + a2);
        return bigIntegerArr;
    }

    public static BigDecimal[] s(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigDecimal[] bigDecimalArr = new BigDecimal[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            byte[] createByteArray = parcel.createByteArray();
            bigDecimalArr[i2] = new BigDecimal(new BigInteger(createByteArray), parcel.readInt());
        }
        parcel.setDataPosition(dataPosition + a2);
        return bigDecimalArr;
    }

    public static String[] t(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        String[] createStringArray = parcel.createStringArray();
        parcel.setDataPosition(dataPosition + a2);
        return createStringArray;
    }

    public static ArrayList<String> u(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(dataPosition + a2);
        return createStringArrayList;
    }

    public static Parcel v(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        obtain.appendFrom(parcel, dataPosition, a2);
        parcel.setDataPosition(dataPosition + a2);
        return obtain;
    }

    public static Parcel[] w(Parcel parcel, int i) {
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
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
        parcel.setDataPosition(dataPosition + a2);
        return parcelArr;
    }

    public static void x(Parcel parcel, int i) {
        if (parcel.dataPosition() != i) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Overread allowed size end=");
            sb.append(i);
            throw new ParseException(sb.toString(), parcel);
        }
    }
}
