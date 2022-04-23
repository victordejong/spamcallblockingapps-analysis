package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
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

    @RecentlyNonNull
    /* renamed from: a */
    public static Bundle m8328a(@RecentlyNonNull Parcel parcel, int i) {
        int v = m8307v(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (v == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(dataPosition + v);
        return readBundle;
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static byte[] m8327b(@RecentlyNonNull Parcel parcel, int i) {
        int v = m8307v(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (v == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + v);
        return createByteArray;
    }

    @RecentlyNonNull
    /* renamed from: c */
    public static int[] m8326c(@RecentlyNonNull Parcel parcel, int i) {
        int v = m8307v(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (v == 0) {
            return null;
        }
        int[] createIntArray = parcel.createIntArray();
        parcel.setDataPosition(dataPosition + v);
        return createIntArray;
    }

    @RecentlyNonNull
    /* renamed from: d */
    public static ArrayList<Integer> m8325d(@RecentlyNonNull Parcel parcel, int i) {
        int v = m8307v(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (v == 0) {
            return null;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i2 = 0; i2 < readInt; i2++) {
            arrayList.add(Integer.valueOf(parcel.readInt()));
        }
        parcel.setDataPosition(dataPosition + v);
        return arrayList;
    }

    @RecentlyNonNull
    /* renamed from: e */
    public static <T extends Parcelable> T m8324e(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Parcelable.Creator<T> creator) {
        int v = m8307v(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (v == 0) {
            return null;
        }
        T createFromParcel = creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + v);
        return createFromParcel;
    }

    @RecentlyNonNull
    /* renamed from: f */
    public static String m8323f(@RecentlyNonNull Parcel parcel, int i) {
        int v = m8307v(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (v == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + v);
        return readString;
    }

    @RecentlyNonNull
    /* renamed from: g */
    public static String[] m8322g(@RecentlyNonNull Parcel parcel, int i) {
        int v = m8307v(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (v == 0) {
            return null;
        }
        String[] createStringArray = parcel.createStringArray();
        parcel.setDataPosition(dataPosition + v);
        return createStringArray;
    }

    @RecentlyNonNull
    /* renamed from: h */
    public static ArrayList<String> m8321h(@RecentlyNonNull Parcel parcel, int i) {
        int v = m8307v(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (v == 0) {
            return null;
        }
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(dataPosition + v);
        return createStringArrayList;
    }

    @RecentlyNonNull
    /* renamed from: i */
    public static <T> T[] m8320i(@RecentlyNonNull Parcel parcel, int i, @RecentlyNonNull Parcelable.Creator<T> creator) {
        int v = m8307v(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (v == 0) {
            return null;
        }
        T[] tArr = (T[]) parcel.createTypedArray(creator);
        parcel.setDataPosition(dataPosition + v);
        return tArr;
    }

    /* renamed from: j */
    public static void m8319j(@RecentlyNonNull Parcel parcel, int i) {
        if (parcel.dataPosition() != i) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Overread allowed size end=");
            sb.append(i);
            throw new ParseException(sb.toString(), parcel);
        }
    }

    /* renamed from: k */
    public static int m8318k(int i) {
        return (char) i;
    }

    /* renamed from: l */
    public static boolean m8317l(@RecentlyNonNull Parcel parcel, int i) {
        m8304y(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    @RecentlyNonNull
    /* renamed from: m */
    public static Boolean m8316m(@RecentlyNonNull Parcel parcel, int i) {
        int v = m8307v(parcel, i);
        if (v == 0) {
            return null;
        }
        m8303z(parcel, i, v, 4);
        return Boolean.valueOf(parcel.readInt() != 0);
    }

    @RecentlyNonNull
    /* renamed from: n */
    public static Double m8315n(@RecentlyNonNull Parcel parcel, int i) {
        int v = m8307v(parcel, i);
        if (v == 0) {
            return null;
        }
        m8303z(parcel, i, v, 8);
        return Double.valueOf(parcel.readDouble());
    }

    /* renamed from: o */
    public static float m8314o(@RecentlyNonNull Parcel parcel, int i) {
        m8304y(parcel, i, 4);
        return parcel.readFloat();
    }

    @RecentlyNonNull
    /* renamed from: p */
    public static Float m8313p(@RecentlyNonNull Parcel parcel, int i) {
        int v = m8307v(parcel, i);
        if (v == 0) {
            return null;
        }
        m8303z(parcel, i, v, 4);
        return Float.valueOf(parcel.readFloat());
    }

    /* renamed from: q */
    public static int m8312q(@RecentlyNonNull Parcel parcel) {
        return parcel.readInt();
    }

    @RecentlyNonNull
    /* renamed from: r */
    public static IBinder m8311r(@RecentlyNonNull Parcel parcel, int i) {
        int v = m8307v(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (v == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(dataPosition + v);
        return readStrongBinder;
    }

    /* renamed from: s */
    public static int m8310s(@RecentlyNonNull Parcel parcel, int i) {
        m8304y(parcel, i, 4);
        return parcel.readInt();
    }

    /* renamed from: t */
    public static long m8309t(@RecentlyNonNull Parcel parcel, int i) {
        m8304y(parcel, i, 8);
        return parcel.readLong();
    }

    @RecentlyNonNull
    /* renamed from: u */
    public static Long m8308u(@RecentlyNonNull Parcel parcel, int i) {
        int v = m8307v(parcel, i);
        if (v == 0) {
            return null;
        }
        m8303z(parcel, i, v, 8);
        return Long.valueOf(parcel.readLong());
    }

    /* renamed from: v */
    public static int m8307v(@RecentlyNonNull Parcel parcel, int i) {
        return (i & (-65536)) != -65536 ? (char) (i >> 16) : parcel.readInt();
    }

    /* renamed from: w */
    public static void m8306w(@RecentlyNonNull Parcel parcel, int i) {
        parcel.setDataPosition(parcel.dataPosition() + m8307v(parcel, i));
    }

    /* renamed from: x */
    public static int m8305x(@RecentlyNonNull Parcel parcel) {
        int q = m8312q(parcel);
        int v = m8307v(parcel, q);
        int dataPosition = parcel.dataPosition();
        if (m8318k(q) != 20293) {
            String valueOf = String.valueOf(Integer.toHexString(q));
            throw new ParseException(valueOf.length() != 0 ? "Expected object header. Got 0x".concat(valueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i = v + dataPosition;
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

    /* renamed from: y */
    private static void m8304y(Parcel parcel, int i, int i2) {
        int v = m8307v(parcel, i);
        if (v != i2) {
            String hexString = Integer.toHexString(v);
            StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
            sb.append("Expected size ");
            sb.append(i2);
            sb.append(" got ");
            sb.append(v);
            sb.append(" (0x");
            sb.append(hexString);
            sb.append(")");
            throw new ParseException(sb.toString(), parcel);
        }
    }

    /* renamed from: z */
    private static void m8303z(Parcel parcel, int i, int i2, int i3) {
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
}
