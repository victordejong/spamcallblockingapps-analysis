package p660rx.internal.util.unsafe;
/* renamed from: rx.internal.util.unsafe.Pow2 */
/* loaded from: classes3-dex2jar.jar:rx/internal/util/unsafe/Pow2.class */
public final class Pow2 {
    public static boolean isPowerOfTwo(int i) {
        return (i & (i - 1)) == 0;
    }

    public static int roundToPowerOfTwo(int i) {
        return 1 << (32 - Integer.numberOfLeadingZeros(i - 1));
    }
}
