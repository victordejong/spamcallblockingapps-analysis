package kotlin.random;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020��H\u0007¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0003\u0010\u0006\u001a\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H��¢\u0006\u0004\b\u000b\u0010\f\u001a\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\rH��¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H��¢\u0006\u0004\b\u000f\u0010\u0011\u001a\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H��¢\u0006\u0004\b\u000f\u0010\u0012\u001a\u0017\u0010\u0014\u001a\u00020��2\u0006\u0010\u0013\u001a\u00020��H��¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u001b\u0010\u0018\u001a\u00020��*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0007¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u001b\u0010\u001b\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u001aH\u0007¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u001b\u0010\u001e\u001a\u00020��*\u00020��2\u0006\u0010\u001d\u001a\u00020��H��¢\u0006\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"", "seed", "Lkotlin/random/Random;", "Random", "(I)Lkotlin/random/Random;", "", "(J)Lkotlin/random/Random;", "", Constants.MessagePayloadKeys.FROM, "until", "", "boundsErrorMessage", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;", "", "", "checkRangeBounds", "(DD)V", "(II)V", "(JJ)V", FirebaseAnalytics.Param.VALUE, "fastLog2", "(I)I", "Lkotlin/ranges/IntRange;", "range", "nextInt", "(Lkotlin/random/Random;Lkotlin/ranges/IntRange;)I", "Lkotlin/ranges/LongRange;", "nextLong", "(Lkotlin/random/Random;Lkotlin/ranges/LongRange;)J", "bitCount", "takeUpperBits", "(II)I", "kotlin-stdlib"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/random/RandomKt.class */
public final class RandomKt {
    @NotNull
    /* renamed from: a */
    public static final String m1759a(@NotNull Object from, @NotNull Object until) {
        Intrinsics.m1830e(from, "from");
        Intrinsics.m1830e(until, "until");
        return "Random range is empty: [" + from + ", " + until + ").";
    }

    /* renamed from: b */
    public static final void m1758b(int i, int i2) {
        if (!(i2 > i)) {
            throw new IllegalArgumentException(m1759a(Integer.valueOf(i), Integer.valueOf(i2)).toString());
        }
    }

    /* renamed from: c */
    public static final int m1757c(int i) {
        return 31 - Integer.numberOfLeadingZeros(i);
    }

    /* renamed from: d */
    public static final int m1756d(int i, int i2) {
        return (i >>> (32 - i2)) & ((-i2) >> 31);
    }
}
