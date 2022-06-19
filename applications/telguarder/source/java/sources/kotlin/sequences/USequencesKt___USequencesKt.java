package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\"\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001c\u0010��\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0007ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001c\u0010��\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0002H\u0007ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0005\u001a\u001c\u0010��\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00070\u0002H\u0007ø\u0001��¢\u0006\u0004\b\b\u0010\t\u001a\u001c\u0010��\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\n0\u0002H\u0007ø\u0001��¢\u0006\u0004\b\u000b\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, m400d2 = {"sum", "Lkotlin/UInt;", "Lkotlin/sequences/Sequence;", "Lkotlin/UByte;", "sumOfUByte", "(Lkotlin/sequences/Sequence;)I", "sumOfUInt", "Lkotlin/ULong;", "sumOfULong", "(Lkotlin/sequences/Sequence;)J", "Lkotlin/UShort;", "sumOfUShort", "kotlin-stdlib"}, m399k = 5, m398mv = {1, 4, 0}, m396xi = 1, m395xs = "kotlin/sequences/USequencesKt")
/* loaded from: classes-dex2jar.jar:kotlin/sequences/USequencesKt___USequencesKt.class */
class USequencesKt___USequencesKt {
    public static final int sumOfUByte(Sequence<UByte> sum) {
        Intrinsics.checkNotNullParameter(sum, "$this$sum");
        Iterator<UByte> it = sum.iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = UInt.m4257constructorimpl(i2 + UInt.m4257constructorimpl(it.next().m4229unboximpl() & 255));
            } else {
                return i2;
            }
        }
    }

    public static final int sumOfUInt(Sequence<UInt> sum) {
        Intrinsics.checkNotNullParameter(sum, "$this$sum");
        Iterator<UInt> it = sum.iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = UInt.m4257constructorimpl(i2 + it.next().m4300unboximpl());
            } else {
                return i2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    public static final long sumOfULong(Sequence<ULong> sum) {
        Intrinsics.checkNotNullParameter(sum, "$this$sum");
        Iterator<ULong> it = sum.iterator();
        ?? r0 = 0;
        while (true) {
            char c = r0;
            if (it.hasNext()) {
                r0 = ULong.m4328constructorimpl(c + it.next().m4371unboximpl());
            } else {
                return c;
            }
        }
    }

    public static final int sumOfUShort(Sequence<UShort> sum) {
        Intrinsics.checkNotNullParameter(sum, "$this$sum");
        Iterator<UShort> it = sum.iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = UInt.m4257constructorimpl(i2 + UInt.m4257constructorimpl(it.next().m4469unboximpl() & 65535));
            } else {
                return i2;
            }
        }
    }
}
