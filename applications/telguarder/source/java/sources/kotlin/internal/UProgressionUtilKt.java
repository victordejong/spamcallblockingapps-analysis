package kotlin.internal;

import kotlin.Metadata;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UnsignedKt;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"�� \n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n��\n\u0002\u0010\t\n\u0002\b\u0002\u001a*\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006\u001a*\u0010��\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0007H\u0002ø\u0001��¢\u0006\u0004\b\b\u0010\t\u001a*\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0001ø\u0001��¢\u0006\u0004\b\u000f\u0010\u0006\u001a*\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0010H\u0001ø\u0001��¢\u0006\u0004\b\u0011\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, m400d2 = {"differenceModulo", "Lkotlin/UInt;", "a", "b", "c", "differenceModulo-WZ9TVnA", "(III)I", "Lkotlin/ULong;", "differenceModulo-sambcqE", "(JJJ)J", "getProgressionLastElement", "start", "end", "step", "", "getProgressionLastElement-Nkh28Cs", "", "getProgressionLastElement-7ftBX0g", "kotlin-stdlib"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/internal/UProgressionUtilKt.class */
public final class UProgressionUtilKt {
    /* renamed from: differenceModulo-WZ9TVnA */
    private static final int m5369differenceModuloWZ9TVnA(int i, int i2, int i3) {
        int m4491uintRemainderJ1ME1BU = UnsignedKt.m4491uintRemainderJ1ME1BU(i, i3);
        int m4491uintRemainderJ1ME1BU2 = UnsignedKt.m4491uintRemainderJ1ME1BU(i2, i3);
        int uintCompare = UnsignedKt.uintCompare(m4491uintRemainderJ1ME1BU, m4491uintRemainderJ1ME1BU2);
        int m4257constructorimpl = UInt.m4257constructorimpl(m4491uintRemainderJ1ME1BU - m4491uintRemainderJ1ME1BU2);
        if (uintCompare < 0) {
            m4257constructorimpl = UInt.m4257constructorimpl(m4257constructorimpl + i3);
        }
        return m4257constructorimpl;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: differenceModulo-sambcqE */
    private static final long m5370differenceModulosambcqE(long j, long j2, long j3) {
        long m4493ulongRemaindereb3DHEI = UnsignedKt.m4493ulongRemaindereb3DHEI(j, j3);
        long m4493ulongRemaindereb3DHEI2 = UnsignedKt.m4493ulongRemaindereb3DHEI(j2, j3);
        int ulongCompare = UnsignedKt.ulongCompare(m4493ulongRemaindereb3DHEI, m4493ulongRemaindereb3DHEI2);
        char m4328constructorimpl = ULong.m4328constructorimpl(m4493ulongRemaindereb3DHEI - m4493ulongRemaindereb3DHEI2);
        if (ulongCompare < 0) {
            m4328constructorimpl = ULong.m4328constructorimpl(m4328constructorimpl + j3);
        }
        return m4328constructorimpl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* renamed from: getProgressionLastElement-7ftBX0g */
    public static final long m5371getProgressionLastElement7ftBX0g(long j, long j2, long j3) {
        ?? r11;
        int i = (j3 > 0L ? 1 : (j3 == 0L ? 0 : -1));
        if (i > 0) {
            int ulongCompare = UnsignedKt.ulongCompare(j, j2);
            r11 = j2;
            if (ulongCompare < 0) {
                r11 = ULong.m4328constructorimpl(j2 - m5370differenceModulosambcqE(j2, j, ULong.m4328constructorimpl(j3)));
            }
        } else if (i >= 0) {
            throw new IllegalArgumentException("Step is zero.");
        } else {
            int ulongCompare2 = UnsignedKt.ulongCompare(j, j2);
            r11 = j2;
            if (ulongCompare2 > 0) {
                r11 = ULong.m4328constructorimpl(j2 + m5370differenceModulosambcqE(j, j2, ULong.m4328constructorimpl(-j3)));
            }
        }
        return r11;
    }

    /* renamed from: getProgressionLastElement-Nkh28Cs */
    public static final int m5372getProgressionLastElementNkh28Cs(int i, int i2, int i3) {
        if (i3 > 0) {
            if (UnsignedKt.uintCompare(i, i2) < 0) {
                i2 = UInt.m4257constructorimpl(i2 - m5369differenceModuloWZ9TVnA(i2, i, UInt.m4257constructorimpl(i3)));
            }
        } else if (i3 >= 0) {
            throw new IllegalArgumentException("Step is zero.");
        } else {
            if (UnsignedKt.uintCompare(i, i2) > 0) {
                i2 = UInt.m4257constructorimpl(i2 + m5369differenceModuloWZ9TVnA(i, i2, UInt.m4257constructorimpl(-i3)));
            }
        }
        return i2;
    }
}
