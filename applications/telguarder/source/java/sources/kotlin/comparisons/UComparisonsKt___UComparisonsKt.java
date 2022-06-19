package kotlin.comparisons;

import kotlin.Metadata;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��B\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\u001a\"\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0007ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005\u001a+\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0087\bø\u0001��¢\u0006\u0004\b\u0007\u0010\b\u001a&\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\n\u0010\t\u001a\u00020\n\"\u00020\u0001H\u0007ø\u0001��¢\u0006\u0004\b\u000b\u0010\f\u001a\"\u0010��\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0007ø\u0001��¢\u0006\u0004\b\u000e\u0010\u000f\u001a+\u0010��\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\rH\u0087\bø\u0001��¢\u0006\u0004\b\u0010\u0010\u0011\u001a&\u0010��\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\n\u0010\t\u001a\u00020\u0012\"\u00020\rH\u0007ø\u0001��¢\u0006\u0004\b\u0013\u0010\u0014\u001a\"\u0010��\u001a\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u0015H\u0007ø\u0001��¢\u0006\u0004\b\u0016\u0010\u0017\u001a+\u0010��\u001a\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u00152\u0006\u0010\u0006\u001a\u00020\u0015H\u0087\bø\u0001��¢\u0006\u0004\b\u0018\u0010\u0019\u001a&\u0010��\u001a\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00152\n\u0010\t\u001a\u00020\u001a\"\u00020\u0015H\u0007ø\u0001��¢\u0006\u0004\b\u001b\u0010\u001c\u001a\"\u0010��\u001a\u00020\u001d2\u0006\u0010\u0002\u001a\u00020\u001d2\u0006\u0010\u0003\u001a\u00020\u001dH\u0007ø\u0001��¢\u0006\u0004\b\u001e\u0010\u001f\u001a+\u0010��\u001a\u00020\u001d2\u0006\u0010\u0002\u001a\u00020\u001d2\u0006\u0010\u0003\u001a\u00020\u001d2\u0006\u0010\u0006\u001a\u00020\u001dH\u0087\bø\u0001��¢\u0006\u0004\b \u0010!\u001a&\u0010��\u001a\u00020\u001d2\u0006\u0010\u0002\u001a\u00020\u001d2\n\u0010\t\u001a\u00020\"\"\u00020\u001dH\u0007ø\u0001��¢\u0006\u0004\b#\u0010$\u001a\"\u0010%\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0007ø\u0001��¢\u0006\u0004\b&\u0010\u0005\u001a+\u0010%\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0087\bø\u0001��¢\u0006\u0004\b'\u0010\b\u001a&\u0010%\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\n\u0010\t\u001a\u00020\n\"\u00020\u0001H\u0007ø\u0001��¢\u0006\u0004\b(\u0010\f\u001a\"\u0010%\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0007ø\u0001��¢\u0006\u0004\b)\u0010\u000f\u001a+\u0010%\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\rH\u0087\bø\u0001��¢\u0006\u0004\b*\u0010\u0011\u001a&\u0010%\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\n\u0010\t\u001a\u00020\u0012\"\u00020\rH\u0007ø\u0001��¢\u0006\u0004\b+\u0010\u0014\u001a\"\u0010%\u001a\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u0015H\u0007ø\u0001��¢\u0006\u0004\b,\u0010\u0017\u001a+\u0010%\u001a\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u00152\u0006\u0010\u0006\u001a\u00020\u0015H\u0087\bø\u0001��¢\u0006\u0004\b-\u0010\u0019\u001a&\u0010%\u001a\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00152\n\u0010\t\u001a\u00020\u001a\"\u00020\u0015H\u0007ø\u0001��¢\u0006\u0004\b.\u0010\u001c\u001a\"\u0010%\u001a\u00020\u001d2\u0006\u0010\u0002\u001a\u00020\u001d2\u0006\u0010\u0003\u001a\u00020\u001dH\u0007ø\u0001��¢\u0006\u0004\b/\u0010\u001f\u001a+\u0010%\u001a\u00020\u001d2\u0006\u0010\u0002\u001a\u00020\u001d2\u0006\u0010\u0003\u001a\u00020\u001d2\u0006\u0010\u0006\u001a\u00020\u001dH\u0087\bø\u0001��¢\u0006\u0004\b0\u0010!\u001a&\u0010%\u001a\u00020\u001d2\u0006\u0010\u0002\u001a\u00020\u001d2\n\u0010\t\u001a\u00020\"\"\u00020\u001dH\u0007ø\u0001��¢\u0006\u0004\b1\u0010$\u0082\u0002\u0004\n\u0002\b\u0019¨\u00062"}, m400d2 = {"maxOf", "Lkotlin/UByte;", "a", "b", "maxOf-Kr8caGY", "(BB)B", "c", "maxOf-b33U2AM", "(BBB)B", "other", "Lkotlin/UByteArray;", "maxOf-Wr6uiD8", "(B[B)B", "Lkotlin/UInt;", "maxOf-J1ME1BU", "(II)I", "maxOf-WZ9TVnA", "(III)I", "Lkotlin/UIntArray;", "maxOf-Md2H83M", "(I[I)I", "Lkotlin/ULong;", "maxOf-eb3DHEI", "(JJ)J", "maxOf-sambcqE", "(JJJ)J", "Lkotlin/ULongArray;", "maxOf-R03FKyM", "(J[J)J", "Lkotlin/UShort;", "maxOf-5PvTz6A", "(SS)S", "maxOf-VKSA0NQ", "(SSS)S", "Lkotlin/UShortArray;", "maxOf-t1qELG4", "(S[S)S", "minOf", "minOf-Kr8caGY", "minOf-b33U2AM", "minOf-Wr6uiD8", "minOf-J1ME1BU", "minOf-WZ9TVnA", "minOf-Md2H83M", "minOf-eb3DHEI", "minOf-sambcqE", "minOf-R03FKyM", "minOf-5PvTz6A", "minOf-VKSA0NQ", "minOf-t1qELG4", "kotlin-stdlib"}, m399k = 5, m398mv = {1, 4, 0}, m396xi = 1, m395xs = "kotlin/comparisons/UComparisonsKt")
/* loaded from: classes-dex2jar.jar:kotlin/comparisons/UComparisonsKt___UComparisonsKt.class */
public class UComparisonsKt___UComparisonsKt {
    /* renamed from: maxOf-5PvTz6A */
    public static final short m5330maxOf5PvTz6A(short s, short s2) {
        return Intrinsics.compare(s & 65535, 65535 & s2) >= 0 ? s : s2;
    }

    /* renamed from: maxOf-J1ME1BU */
    public static final int m5331maxOfJ1ME1BU(int i, int i2) {
        if (UnsignedKt.uintCompare(i, i2) < 0) {
            i = i2;
        }
        return i;
    }

    /* renamed from: maxOf-Kr8caGY */
    public static final byte m5332maxOfKr8caGY(byte b, byte b2) {
        return Intrinsics.compare(b & 255, b2 & 255) >= 0 ? b : b2;
    }

    /* renamed from: maxOf-Md2H83M */
    public static final int m5333maxOfMd2H83M(int i, int... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (int i2 : other) {
            i = UComparisonsKt.m5331maxOfJ1ME1BU(i, i2);
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* renamed from: maxOf-R03FKyM */
    public static final long m5334maxOfR03FKyM(long j, long... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        ?? r5 = j;
        for (long j2 : other) {
            r5 = UComparisonsKt.m5339maxOfeb3DHEI(r5, j2);
        }
        return r5;
    }

    /* renamed from: maxOf-VKSA0NQ */
    private static final short m5335maxOfVKSA0NQ(short s, short s2, short s3) {
        return UComparisonsKt.m5330maxOf5PvTz6A(s, UComparisonsKt.m5330maxOf5PvTz6A(s2, s3));
    }

    /* renamed from: maxOf-WZ9TVnA */
    private static final int m5336maxOfWZ9TVnA(int i, int i2, int i3) {
        return UComparisonsKt.m5331maxOfJ1ME1BU(i, UComparisonsKt.m5331maxOfJ1ME1BU(i2, i3));
    }

    /* renamed from: maxOf-Wr6uiD8 */
    public static final byte m5337maxOfWr6uiD8(byte b, byte... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int length = other.length;
        byte b2 = b;
        int i = 0;
        while (i < length) {
            i++;
            b2 = UComparisonsKt.m5332maxOfKr8caGY(b2, other[i]);
        }
        return b2;
    }

    /* renamed from: maxOf-b33U2AM */
    private static final byte m5338maxOfb33U2AM(byte b, byte b2, byte b3) {
        return UComparisonsKt.m5332maxOfKr8caGY(b, UComparisonsKt.m5332maxOfKr8caGY(b2, b3));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* renamed from: maxOf-eb3DHEI */
    public static final long m5339maxOfeb3DHEI(long j, long j2) {
        int ulongCompare = UnsignedKt.ulongCompare(j, j2);
        ?? r5 = j;
        if (ulongCompare < 0) {
            r5 = j2;
        }
        return r5;
    }

    /* renamed from: maxOf-sambcqE */
    private static final long m5340maxOfsambcqE(long j, long j2, long j3) {
        return UComparisonsKt.m5339maxOfeb3DHEI(j, UComparisonsKt.m5339maxOfeb3DHEI(j2, j3));
    }

    /* renamed from: maxOf-t1qELG4 */
    public static final short m5341maxOft1qELG4(short s, short... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int length = other.length;
        short s2 = s;
        int i = 0;
        while (i < length) {
            i++;
            s2 = UComparisonsKt.m5330maxOf5PvTz6A(s2, other[i]);
        }
        return s2;
    }

    /* renamed from: minOf-5PvTz6A */
    public static final short m5342minOf5PvTz6A(short s, short s2) {
        return Intrinsics.compare(s & 65535, 65535 & s2) <= 0 ? s : s2;
    }

    /* renamed from: minOf-J1ME1BU */
    public static final int m5343minOfJ1ME1BU(int i, int i2) {
        if (UnsignedKt.uintCompare(i, i2) > 0) {
            i = i2;
        }
        return i;
    }

    /* renamed from: minOf-Kr8caGY */
    public static final byte m5344minOfKr8caGY(byte b, byte b2) {
        return Intrinsics.compare(b & 255, b2 & 255) <= 0 ? b : b2;
    }

    /* renamed from: minOf-Md2H83M */
    public static final int m5345minOfMd2H83M(int i, int... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int i2 = i;
        for (int i3 : other) {
            i2 = UComparisonsKt.m5343minOfJ1ME1BU(i2, i3);
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* renamed from: minOf-R03FKyM */
    public static final long m5346minOfR03FKyM(long j, long... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        ?? r5 = j;
        for (long j2 : other) {
            r5 = UComparisonsKt.m5351minOfeb3DHEI(r5, j2);
        }
        return r5;
    }

    /* renamed from: minOf-VKSA0NQ */
    private static final short m5347minOfVKSA0NQ(short s, short s2, short s3) {
        return UComparisonsKt.m5342minOf5PvTz6A(s, UComparisonsKt.m5342minOf5PvTz6A(s2, s3));
    }

    /* renamed from: minOf-WZ9TVnA */
    private static final int m5348minOfWZ9TVnA(int i, int i2, int i3) {
        return UComparisonsKt.m5343minOfJ1ME1BU(i, UComparisonsKt.m5343minOfJ1ME1BU(i2, i3));
    }

    /* renamed from: minOf-Wr6uiD8 */
    public static final byte m5349minOfWr6uiD8(byte b, byte... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int length = other.length;
        byte b2 = b;
        int i = 0;
        while (i < length) {
            i++;
            b2 = UComparisonsKt.m5344minOfKr8caGY(b2, other[i]);
        }
        return b2;
    }

    /* renamed from: minOf-b33U2AM */
    private static final byte m5350minOfb33U2AM(byte b, byte b2, byte b3) {
        return UComparisonsKt.m5344minOfKr8caGY(b, UComparisonsKt.m5344minOfKr8caGY(b2, b3));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* renamed from: minOf-eb3DHEI */
    public static final long m5351minOfeb3DHEI(long j, long j2) {
        int ulongCompare = UnsignedKt.ulongCompare(j, j2);
        ?? r5 = j;
        if (ulongCompare > 0) {
            r5 = j2;
        }
        return r5;
    }

    /* renamed from: minOf-sambcqE */
    private static final long m5352minOfsambcqE(long j, long j2, long j3) {
        return UComparisonsKt.m5351minOfeb3DHEI(j, UComparisonsKt.m5351minOfeb3DHEI(j2, j3));
    }

    /* renamed from: minOf-t1qELG4 */
    public static final short m5353minOft1qELG4(short s, short... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int length = other.length;
        short s2 = s;
        int i = 0;
        while (i < length) {
            i++;
            s2 = UComparisonsKt.m5342minOf5PvTz6A(s2, other[i]);
        }
        return s2;
    }
}
