package p081h.p203i.p204a.p224e.p235d.p240n.p241x;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.internal.view.SupportMenu;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
/* renamed from: h.i.a.e.d.n.x.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/x/a.class */
public class C7029a {

    /* renamed from: h.i.a.e.d.n.x.a$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/x/a$a.class */
    public static class C7030a extends RuntimeException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C7030a(java.lang.String r6, android.os.Parcel r7) {
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
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a.C7030a.<init>(java.lang.String, android.os.Parcel):void");
        }
    }

    /* renamed from: A */
    public static Integer m21271A(Parcel parcel, int i) {
        int E = m21267E(parcel, i);
        if (E == 0) {
            return null;
        }
        m21261a(parcel, i, E, 4);
        return Integer.valueOf(parcel.readInt());
    }

    /* renamed from: B */
    public static long m21270B(Parcel parcel, int i) {
        m21262a(parcel, i, 8);
        return parcel.readLong();
    }

    /* renamed from: C */
    public static Long m21269C(Parcel parcel, int i) {
        int E = m21267E(parcel, i);
        if (E == 0) {
            return null;
        }
        m21261a(parcel, i, E, 8);
        return Long.valueOf(parcel.readLong());
    }

    /* renamed from: D */
    public static short m21268D(Parcel parcel, int i) {
        m21262a(parcel, i, 4);
        return (short) parcel.readInt();
    }

    /* renamed from: E */
    public static int m21267E(Parcel parcel, int i) {
        return (i & SupportMenu.CATEGORY_MASK) != -65536 ? (i >> 16) & 65535 : parcel.readInt();
    }

    /* renamed from: F */
    public static void m21266F(Parcel parcel, int i) {
        parcel.setDataPosition(parcel.dataPosition() + m21267E(parcel, i));
    }

    /* renamed from: a */
    public static int m21265a(int i) {
        return i & 65535;
    }

    /* renamed from: a */
    public static int m21264a(Parcel parcel) {
        return parcel.readInt();
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m21260a(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int E = m21267E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        T createFromParcel = creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + E);
        return createFromParcel;
    }

    /* renamed from: a */
    public static BigDecimal m21263a(Parcel parcel, int i) {
        int E = m21267E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        int readInt = parcel.readInt();
        parcel.setDataPosition(dataPosition + E);
        return new BigDecimal(new BigInteger(createByteArray), readInt);
    }

    /* renamed from: a */
    public static void m21262a(Parcel parcel, int i, int i2) {
        int E = m21267E(parcel, i);
        if (E != i2) {
            String hexString = Integer.toHexString(E);
            StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
            sb.append("Expected size ");
            sb.append(i2);
            sb.append(" got ");
            sb.append(E);
            sb.append(" (0x");
            sb.append(hexString);
            sb.append(")");
            throw new C7030a(sb.toString(), parcel);
        }
    }

    /* renamed from: a */
    public static void m21261a(Parcel parcel, int i, int i2, int i3) {
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
            throw new C7030a(sb.toString(), parcel);
        }
    }

    /* renamed from: a */
    public static void m21259a(Parcel parcel, int i, List list, ClassLoader classLoader) {
        int E = m21267E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E != 0) {
            parcel.readList(list, classLoader);
            parcel.setDataPosition(dataPosition + E);
        }
    }

    /* renamed from: b */
    public static int m21258b(Parcel parcel) {
        int a = m21264a(parcel);
        int E = m21267E(parcel, a);
        int dataPosition = parcel.dataPosition();
        if (m21265a(a) != 20293) {
            String valueOf = String.valueOf(Integer.toHexString(a));
            throw new C7030a(valueOf.length() != 0 ? "Expected object header. Got 0x".concat(valueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i = E + dataPosition;
        if (i >= dataPosition && i <= parcel.dataSize()) {
            return i;
        }
        StringBuilder sb = new StringBuilder(54);
        sb.append("Size read is invalid start=");
        sb.append(dataPosition);
        sb.append(" end=");
        sb.append(i);
        throw new C7030a(sb.toString(), parcel);
    }

    /* renamed from: b */
    public static <T> T[] m21256b(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int E = m21267E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        T[] tArr = (T[]) parcel.createTypedArray(creator);
        parcel.setDataPosition(dataPosition + E);
        return tArr;
    }

    /* renamed from: b */
    public static BigDecimal[] m21257b(Parcel parcel, int i) {
        int E = m21267E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigDecimal[] bigDecimalArr = new BigDecimal[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            byte[] createByteArray = parcel.createByteArray();
            bigDecimalArr[i2] = new BigDecimal(new BigInteger(createByteArray), parcel.readInt());
        }
        parcel.setDataPosition(dataPosition + E);
        return bigDecimalArr;
    }

    /* renamed from: c */
    public static BigInteger m21255c(Parcel parcel, int i) {
        int E = m21267E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + E);
        return new BigInteger(createByteArray);
    }

    /* renamed from: c */
    public static <T> ArrayList<T> m21254c(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int E = m21267E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        ArrayList<T> createTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(dataPosition + E);
        return createTypedArrayList;
    }

    /* renamed from: d */
    public static BigInteger[] m21253d(Parcel parcel, int i) {
        int E = m21267E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigInteger[] bigIntegerArr = new BigInteger[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            bigIntegerArr[i2] = new BigInteger(parcel.createByteArray());
        }
        parcel.setDataPosition(dataPosition + E);
        return bigIntegerArr;
    }

    /* renamed from: e */
    public static boolean[] m21252e(Parcel parcel, int i) {
        int E = m21267E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        boolean[] createBooleanArray = parcel.createBooleanArray();
        parcel.setDataPosition(dataPosition + E);
        return createBooleanArray;
    }

    /* renamed from: f */
    public static Bundle m21251f(Parcel parcel, int i) {
        int E = m21267E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(dataPosition + E);
        return readBundle;
    }

    /* renamed from: g */
    public static byte[] m21250g(Parcel parcel, int i) {
        int E = m21267E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + E);
        return createByteArray;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[][] m21249h(android.os.Parcel r4, int r5) {
        /*
            r0 = r4
            r1 = r5
            int r0 = m21267E(r0, r1)
            r6 = r0
            r0 = r4
            int r0 = r0.dataPosition()
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0011
            r0 = 0
            return r0
        L_0x0011:
            r0 = r4
            int r0 = r0.readInt()
            r8 = r0
            r0 = r8
            byte[] r0 = new byte[r0]
            r9 = r0
            r0 = 0
            r5 = r0
        L_0x0020:
            r0 = r5
            r1 = r8
            if (r0 >= r1) goto L_0x0034
            r0 = r9
            r1 = r5
            r2 = r4
            byte[] r2 = r2.createByteArray()
            r0[r1] = r2
            int r5 = r5 + 1
            goto L_0x0020
        L_0x0034:
            r0 = r4
            r1 = r7
            r2 = r6
            int r1 = r1 + r2
            r0.setDataPosition(r1)
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a.m21249h(android.os.Parcel, int):byte[][]");
    }

    /* renamed from: i */
    public static double[] m21248i(Parcel parcel, int i) {
        int E = m21267E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        double[] createDoubleArray = parcel.createDoubleArray();
        parcel.setDataPosition(dataPosition + E);
        return createDoubleArray;
    }

    /* renamed from: j */
    public static float[] m21247j(Parcel parcel, int i) {
        int E = m21267E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        float[] createFloatArray = parcel.createFloatArray();
        parcel.setDataPosition(dataPosition + E);
        return createFloatArray;
    }

    /* renamed from: k */
    public static int[] m21246k(Parcel parcel, int i) {
        int E = m21267E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        int[] createIntArray = parcel.createIntArray();
        parcel.setDataPosition(dataPosition + E);
        return createIntArray;
    }

    /* renamed from: l */
    public static long[] m21245l(Parcel parcel, int i) {
        int E = m21267E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        long[] createLongArray = parcel.createLongArray();
        parcel.setDataPosition(dataPosition + E);
        return createLongArray;
    }

    /* renamed from: m */
    public static Parcel m21244m(Parcel parcel, int i) {
        int E = m21267E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        obtain.appendFrom(parcel, dataPosition, E);
        parcel.setDataPosition(dataPosition + E);
        return obtain;
    }

    /* renamed from: n */
    public static Parcel[] m21243n(Parcel parcel, int i) {
        int E = m21267E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
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
        parcel.setDataPosition(dataPosition + E);
        return parcelArr;
    }

    /* renamed from: o */
    public static String m21242o(Parcel parcel, int i) {
        int E = m21267E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + E);
        return readString;
    }

    /* renamed from: p */
    public static String[] m21241p(Parcel parcel, int i) {
        int E = m21267E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        String[] createStringArray = parcel.createStringArray();
        parcel.setDataPosition(dataPosition + E);
        return createStringArray;
    }

    /* renamed from: q */
    public static ArrayList<String> m21240q(Parcel parcel, int i) {
        int E = m21267E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(dataPosition + E);
        return createStringArrayList;
    }

    /* renamed from: r */
    public static void m21239r(Parcel parcel, int i) {
        if (parcel.dataPosition() != i) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Overread allowed size end=");
            sb.append(i);
            throw new C7030a(sb.toString(), parcel);
        }
    }

    /* renamed from: s */
    public static boolean m21238s(Parcel parcel, int i) {
        m21262a(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    /* renamed from: t */
    public static byte m21237t(Parcel parcel, int i) {
        m21262a(parcel, i, 4);
        return (byte) parcel.readInt();
    }

    /* renamed from: u */
    public static double m21236u(Parcel parcel, int i) {
        m21262a(parcel, i, 8);
        return parcel.readDouble();
    }

    /* renamed from: v */
    public static Double m21235v(Parcel parcel, int i) {
        int E = m21267E(parcel, i);
        if (E == 0) {
            return null;
        }
        m21261a(parcel, i, E, 8);
        return Double.valueOf(parcel.readDouble());
    }

    /* renamed from: w */
    public static float m21234w(Parcel parcel, int i) {
        m21262a(parcel, i, 4);
        return parcel.readFloat();
    }

    /* renamed from: x */
    public static Float m21233x(Parcel parcel, int i) {
        int E = m21267E(parcel, i);
        if (E == 0) {
            return null;
        }
        m21261a(parcel, i, E, 4);
        return Float.valueOf(parcel.readFloat());
    }

    /* renamed from: y */
    public static IBinder m21232y(Parcel parcel, int i) {
        int E = m21267E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(dataPosition + E);
        return readStrongBinder;
    }

    /* renamed from: z */
    public static int m21231z(Parcel parcel, int i) {
        m21262a(parcel, i, 4);
        return parcel.readInt();
    }
}
