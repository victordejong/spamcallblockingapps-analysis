package kotlin.collections;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import kotlin.Metadata;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShortArray;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��0\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0010\u001a*\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0007\u001a*\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001��¢\u0006\u0004\b\t\u0010\n\u001a*\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001��¢\u0006\u0004\b\f\u0010\r\u001a*\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001��¢\u0006\u0004\b\u000f\u0010\u0010\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001��¢\u0006\u0004\b\u0013\u0010\u0014\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001��¢\u0006\u0004\b\u0015\u0010\u0016\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001��¢\u0006\u0004\b\u0017\u0010\u0018\u001a*\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003ø\u0001��¢\u0006\u0004\b\u0019\u0010\u001a\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001��¢\u0006\u0004\b\u001e\u0010\u0014\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001��¢\u0006\u0004\b\u001f\u0010\u0016\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001��¢\u0006\u0004\b \u0010\u0018\u001a*\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001ø\u0001��¢\u0006\u0004\b!\u0010\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\""}, m400d2 = {"partition", "", "array", "Lkotlin/UByteArray;", ViewHierarchyConstants.DIMENSION_LEFT_KEY, "right", "partition-4UcCI2c", "([BII)I", "Lkotlin/UIntArray;", "partition-oBK06Vg", "([III)I", "Lkotlin/ULongArray;", "partition--nroSd4", "([JII)I", "Lkotlin/UShortArray;", "partition-Aa5vz7o", "([SII)I", "quickSort", "", "quickSort-4UcCI2c", "([BII)V", "quickSort-oBK06Vg", "([III)V", "quickSort--nroSd4", "([JII)V", "quickSort-Aa5vz7o", "([SII)V", "sortArray", "fromIndex", "toIndex", "sortArray-4UcCI2c", "sortArray-oBK06Vg", "sortArray--nroSd4", "sortArray-Aa5vz7o", "kotlin-stdlib"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/collections/UArraySortingKt.class */
public final class UArraySortingKt {
    /* renamed from: partition--nroSd4 */
    private static final int m4603partitionnroSd4(long[] jArr, int i, int i2) {
        int i3;
        long m4379getsVKNKU = ULongArray.m4379getsVKNKU(jArr, (i + i2) / 2);
        while (i <= i2) {
            int i4 = i;
            while (true) {
                i3 = i2;
                if (UnsignedKt.ulongCompare(ULongArray.m4379getsVKNKU(jArr, i4), m4379getsVKNKU) < 0) {
                    i4++;
                }
            }
            while (UnsignedKt.ulongCompare(ULongArray.m4379getsVKNKU(jArr, i3), m4379getsVKNKU) > 0) {
                i3--;
            }
            i = i4;
            i2 = i3;
            if (i4 <= i3) {
                long m4379getsVKNKU2 = ULongArray.m4379getsVKNKU(jArr, i4);
                ULongArray.m4384setk8EXiF4(jArr, i4, ULongArray.m4379getsVKNKU(jArr, i3));
                ULongArray.m4384setk8EXiF4(jArr, i3, m4379getsVKNKU2);
                i = i4 + 1;
                i2 = i3 - 1;
            }
        }
        return i;
    }

    /* renamed from: partition-4UcCI2c */
    private static final int m4604partition4UcCI2c(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        byte m4237getw2LRezQ = UByteArray.m4237getw2LRezQ(bArr, (i + i2) / 2);
        while (i <= i2) {
            int i5 = i;
            while (true) {
                i3 = m4237getw2LRezQ & 255;
                i4 = i2;
                if (Intrinsics.compare(UByteArray.m4237getw2LRezQ(bArr, i5) & 255, i3) < 0) {
                    i5++;
                }
            }
            while (Intrinsics.compare(UByteArray.m4237getw2LRezQ(bArr, i4) & 255, i3) > 0) {
                i4--;
            }
            i = i5;
            i2 = i4;
            if (i5 <= i4) {
                byte m4237getw2LRezQ2 = UByteArray.m4237getw2LRezQ(bArr, i5);
                UByteArray.m4242setVurrAj0(bArr, i5, UByteArray.m4237getw2LRezQ(bArr, i4));
                UByteArray.m4242setVurrAj0(bArr, i4, m4237getw2LRezQ2);
                i = i5 + 1;
                i2 = i4 - 1;
            }
        }
        return i;
    }

    /* renamed from: partition-Aa5vz7o */
    private static final int m4605partitionAa5vz7o(short[] sArr, int i, int i2) {
        int i3;
        int i4;
        short m4477getMh2AYeg = UShortArray.m4477getMh2AYeg(sArr, (i + i2) / 2);
        while (i <= i2) {
            int i5 = i;
            while (true) {
                i3 = m4477getMh2AYeg & 65535;
                i4 = i2;
                if (Intrinsics.compare(UShortArray.m4477getMh2AYeg(sArr, i5) & 65535, i3) < 0) {
                    i5++;
                }
            }
            while (Intrinsics.compare(UShortArray.m4477getMh2AYeg(sArr, i4) & 65535, i3) > 0) {
                i4--;
            }
            i = i5;
            i2 = i4;
            if (i5 <= i4) {
                short m4477getMh2AYeg2 = UShortArray.m4477getMh2AYeg(sArr, i5);
                UShortArray.m4482set01HTLdE(sArr, i5, UShortArray.m4477getMh2AYeg(sArr, i4));
                UShortArray.m4482set01HTLdE(sArr, i4, m4477getMh2AYeg2);
                i = i5 + 1;
                i2 = i4 - 1;
            }
        }
        return i;
    }

    /* renamed from: partition-oBK06Vg */
    private static final int m4606partitionoBK06Vg(int[] iArr, int i, int i2) {
        int i3;
        int m4308getpVg5ArA = UIntArray.m4308getpVg5ArA(iArr, (i + i2) / 2);
        while (i <= i2) {
            int i4 = i;
            while (true) {
                i3 = i2;
                if (UnsignedKt.uintCompare(UIntArray.m4308getpVg5ArA(iArr, i4), m4308getpVg5ArA) < 0) {
                    i4++;
                }
            }
            while (UnsignedKt.uintCompare(UIntArray.m4308getpVg5ArA(iArr, i3), m4308getpVg5ArA) > 0) {
                i3--;
            }
            i = i4;
            i2 = i3;
            if (i4 <= i3) {
                int m4308getpVg5ArA2 = UIntArray.m4308getpVg5ArA(iArr, i4);
                UIntArray.m4313setVXSXFK8(iArr, i4, UIntArray.m4308getpVg5ArA(iArr, i3));
                UIntArray.m4313setVXSXFK8(iArr, i3, m4308getpVg5ArA2);
                i = i4 + 1;
                i2 = i3 - 1;
            }
        }
        return i;
    }

    /* renamed from: quickSort--nroSd4 */
    private static final void m4607quickSortnroSd4(long[] jArr, int i, int i2) {
        int m4603partitionnroSd4 = m4603partitionnroSd4(jArr, i, i2);
        int i3 = m4603partitionnroSd4 - 1;
        if (i < i3) {
            m4607quickSortnroSd4(jArr, i, i3);
        }
        if (m4603partitionnroSd4 < i2) {
            m4607quickSortnroSd4(jArr, m4603partitionnroSd4, i2);
        }
    }

    /* renamed from: quickSort-4UcCI2c */
    private static final void m4608quickSort4UcCI2c(byte[] bArr, int i, int i2) {
        int m4604partition4UcCI2c = m4604partition4UcCI2c(bArr, i, i2);
        int i3 = m4604partition4UcCI2c - 1;
        if (i < i3) {
            m4608quickSort4UcCI2c(bArr, i, i3);
        }
        if (m4604partition4UcCI2c < i2) {
            m4608quickSort4UcCI2c(bArr, m4604partition4UcCI2c, i2);
        }
    }

    /* renamed from: quickSort-Aa5vz7o */
    private static final void m4609quickSortAa5vz7o(short[] sArr, int i, int i2) {
        int m4605partitionAa5vz7o = m4605partitionAa5vz7o(sArr, i, i2);
        int i3 = m4605partitionAa5vz7o - 1;
        if (i < i3) {
            m4609quickSortAa5vz7o(sArr, i, i3);
        }
        if (m4605partitionAa5vz7o < i2) {
            m4609quickSortAa5vz7o(sArr, m4605partitionAa5vz7o, i2);
        }
    }

    /* renamed from: quickSort-oBK06Vg */
    private static final void m4610quickSortoBK06Vg(int[] iArr, int i, int i2) {
        int m4606partitionoBK06Vg = m4606partitionoBK06Vg(iArr, i, i2);
        int i3 = m4606partitionoBK06Vg - 1;
        if (i < i3) {
            m4610quickSortoBK06Vg(iArr, i, i3);
        }
        if (m4606partitionoBK06Vg < i2) {
            m4610quickSortoBK06Vg(iArr, m4606partitionoBK06Vg, i2);
        }
    }

    /* renamed from: sortArray--nroSd4 */
    public static final void m4611sortArraynroSd4(long[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m4607quickSortnroSd4(array, i, i2 - 1);
    }

    /* renamed from: sortArray-4UcCI2c */
    public static final void m4612sortArray4UcCI2c(byte[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m4608quickSort4UcCI2c(array, i, i2 - 1);
    }

    /* renamed from: sortArray-Aa5vz7o */
    public static final void m4613sortArrayAa5vz7o(short[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m4609quickSortAa5vz7o(array, i, i2 - 1);
    }

    /* renamed from: sortArray-oBK06Vg */
    public static final void m4614sortArrayoBK06Vg(int[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(array, "array");
        m4610quickSortoBK06Vg(array, i, i2 - 1);
    }
}
