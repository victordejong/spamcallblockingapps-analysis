package kotlin;

import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010��\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0014\b\u0087@\u0018�� i2\u00020\u0001:\u0001iB\u0014\b\u0001\u0012\u0006\u0010d\u001a\u00020@ø\u0001��¢\u0006\u0004\bh\u0010\u0014J\u001b\u0010\u0005\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004J\u001b\u0010\t\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020��H\u0097\nø\u0001��¢\u0006\u0004\b\u0007\u0010\bJ\u001b\u0010\t\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\nH\u0087\nø\u0001��¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\t\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\rH\u0087\nø\u0001��¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\t\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b\u0011\u0010\u0012J\u0016\u0010\u0015\u001a\u00020��H\u0087\nø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b\u0016\u0010\bJ\u001b\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\nH\u0087\nø\u0001��¢\u0006\u0004\b\u0018\u0010\fJ\u001b\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\rH\u0087\nø\u0001��¢\u0006\u0004\b\u0019\u0010\u001aJ\u001b\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b\u001b\u0010\u0012J\u001a\u0010\u001e\u001a\u00020\u001d2\b\u0010\u0002\u001a\u0004\u0018\u00010\u001cHÖ\u0003¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b \u0010!J\u0016\u0010#\u001a\u00020��H\u0087\nø\u0001��ø\u0001\u0001¢\u0006\u0004\b\"\u0010\u0014J\u0016\u0010%\u001a\u00020��H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b$\u0010\u0014J\u001b\u0010'\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b&\u0010\bJ\u001b\u0010'\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\nH\u0087\nø\u0001��¢\u0006\u0004\b(\u0010\fJ\u001b\u0010'\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\rH\u0087\nø\u0001��¢\u0006\u0004\b)\u0010\u001aJ\u001b\u0010'\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b*\u0010\u0012J\u001b\u0010,\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\b+\u0010\u0004J\u001b\u0010.\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b-\u0010\bJ\u001b\u0010.\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\nH\u0087\nø\u0001��¢\u0006\u0004\b/\u0010\fJ\u001b\u0010.\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\rH\u0087\nø\u0001��¢\u0006\u0004\b0\u0010\u001aJ\u001b\u0010.\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b1\u0010\u0012J\u001b\u00105\u001a\u0002022\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b3\u00104J\u001b\u00107\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b6\u0010\bJ\u001b\u00107\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\nH\u0087\nø\u0001��¢\u0006\u0004\b8\u0010\fJ\u001b\u00107\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\rH\u0087\nø\u0001��¢\u0006\u0004\b9\u0010\u001aJ\u001b\u00107\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b:\u0010\u0012J\u001b\u0010<\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b;\u0010\bJ\u001b\u0010<\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\nH\u0087\nø\u0001��¢\u0006\u0004\b=\u0010\fJ\u001b\u0010<\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\rH\u0087\nø\u0001��¢\u0006\u0004\b>\u0010\u001aJ\u001b\u0010<\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b?\u0010\u0012J\u0010\u0010B\u001a\u00020@H\u0087\b¢\u0006\u0004\bA\u0010\u0014J\u0010\u0010F\u001a\u00020CH\u0087\b¢\u0006\u0004\bD\u0010EJ\u0010\u0010J\u001a\u00020GH\u0087\b¢\u0006\u0004\bH\u0010IJ\u0010\u0010M\u001a\u00020\u0006H\u0087\b¢\u0006\u0004\bK\u0010LJ\u0010\u0010Q\u001a\u00020NH\u0087\b¢\u0006\u0004\bO\u0010PJ\u0010\u0010U\u001a\u00020RH\u0087\b¢\u0006\u0004\bS\u0010TJ\u000f\u0010Y\u001a\u00020VH\u0016¢\u0006\u0004\bW\u0010XJ\u0016\u0010[\u001a\u00020��H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\bZ\u0010\u0014J\u0016\u0010]\u001a\u00020\nH\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b\\\u0010LJ\u0016\u0010_\u001a\u00020\rH\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b^\u0010PJ\u0016\u0010a\u001a\u00020\u0010H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b`\u0010TJ\u001b\u0010c\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\bb\u0010\u0004R\u001c\u0010d\u001a\u00020@8��@\u0001X\u0081\u0004¢\u0006\f\n\u0004\bd\u0010e\u0012\u0004\bf\u0010gø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006j"}, d2 = {"Lkotlin/UByte;", "Ljava/lang/Comparable;", "other", "and-7apg3OU", "(BB)B", "and", "", "compareTo-7apg3OU", "(BB)I", "compareTo", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(BI)I", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(BJ)I", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(BS)I", "dec-w2LRezQ", "(B)B", "dec", "div-7apg3OU", "div", "div-WZ4Q5Ns", "div-VKZWuLQ", "(BJ)J", "div-xj2QHRw", "", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "inc-w2LRezQ", "inc", "inv-w2LRezQ", "inv", "minus-7apg3OU", "minus", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "minus-xj2QHRw", "or-7apg3OU", "or", "plus-7apg3OU", "plus", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "plus-xj2QHRw", "Lkotlin/ranges/UIntRange;", "rangeTo-7apg3OU", "(BB)Lkotlin/ranges/UIntRange;", "rangeTo", "rem-7apg3OU", "rem", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "rem-xj2QHRw", "times-7apg3OU", "times", "times-WZ4Q5Ns", "times-VKZWuLQ", "times-xj2QHRw", "", "toByte-impl", "toByte", "", "toDouble-impl", "(B)D", "toDouble", "", "toFloat-impl", "(B)F", "toFloat", "toInt-impl", "(B)I", "toInt", "", "toLong-impl", "(B)J", "toLong", "", "toShort-impl", "(B)S", "toShort", "", "toString-impl", "(B)Ljava/lang/String;", "toString", "toUByte-w2LRezQ", "toUByte", "toUInt-pVg5ArA", "toUInt", "toULong-s-VKNKU", "toULong", "toUShort-Mh2AYeg", "toUShort", "xor-7apg3OU", "xor", "data", "B", "getData$annotations", "()V", "constructor-impl", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalUnsignedTypes
/* loaded from: classes2-dex2jar.jar:kotlin/UByte.class */
public final class UByte implements Comparable<UByte> {

    /* renamed from: f */
    private final byte f20430f;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\t\u0010\nR\u001c\u0010\u0002\u001a\u00020\u00018\u0006@\u0006X\u0086Tø\u0001��ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u00020\u00018\u0006@\u0006X\u0086Tø\u0001��ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u0004\u0010\u0003R\u0016\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0007\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u000b"}, d2 = {"Lkotlin/UByte$Companion;", "Lkotlin/UByte;", "MAX_VALUE", "B", "MIN_VALUE", "", "SIZE_BITS", "I", "SIZE_BYTES", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/UByte$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    @PublishedApi
    private /* synthetic */ UByte(byte b) {
        this.f20430f = b;
    }

    @NotNull
    /* renamed from: a */
    public static final /* synthetic */ UByte m2468a(byte b) {
        return new UByte(b);
    }

    @InlineOnly
    /* renamed from: b */
    private int m2467b(byte b) {
        return m2466e(this.f20430f, b);
    }

    @InlineOnly
    /* renamed from: e */
    private static int m2466e(byte b, byte b2) {
        return Intrinsics.m1828g(b & 255, b2 & 255);
    }

    @PublishedApi
    /* renamed from: g */
    public static byte m2465g(byte b) {
        return b;
    }

    /* renamed from: h */
    public static boolean m2464h(byte b, @Nullable Object obj) {
        return (obj instanceof UByte) && b == ((UByte) obj).m2461l();
    }

    /* renamed from: i */
    public static int m2463i(byte b) {
        return b;
    }

    @NotNull
    /* renamed from: k */
    public static String m2462k(byte b) {
        return String.valueOf(b & 255);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UByte uByte) {
        return m2467b(uByte.m2461l());
    }

    public boolean equals(Object obj) {
        return m2464h(this.f20430f, obj);
    }

    public int hashCode() {
        byte b = this.f20430f;
        m2463i(b);
        return b;
    }

    /* renamed from: l */
    public final /* synthetic */ byte m2461l() {
        return this.f20430f;
    }

    @NotNull
    public String toString() {
        return m2462k(this.f20430f);
    }
}
