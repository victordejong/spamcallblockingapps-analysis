package kotlin;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.UIntRange;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��n\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0010\u0005\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\u0010��\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0087@\u0018�� f2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001fB\u0014\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\b\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020��H\u0097\nø\u0001��¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b\u0011\u0010\u0012J\u001b\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0013H\u0087\nø\u0001��¢\u0006\u0004\b\u0014\u0010\u0015J\u001b\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0016H\u0087\nø\u0001��¢\u0006\u0004\b\u0017\u0010\u0018J\u0016\u0010\u0019\u001a\u00020��H\u0087\nø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u001a\u0010\u0005J\u001b\u0010\u001b\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b\u001c\u0010\u000fJ\u001b\u0010\u001b\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b\u001d\u0010\u0012J\u001b\u0010\u001b\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u0013H\u0087\nø\u0001��¢\u0006\u0004\b\u001e\u0010\u001fJ\u001b\u0010\u001b\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0016H\u0087\nø\u0001��¢\u0006\u0004\b \u0010\u0018J\u0013\u0010!\u001a\u00020\"2\b\u0010\t\u001a\u0004\u0018\u00010#HÖ\u0003J\t\u0010$\u001a\u00020\rHÖ\u0001J\u0016\u0010%\u001a\u00020��H\u0087\nø\u0001��ø\u0001\u0001¢\u0006\u0004\b&\u0010\u0005J\u0016\u0010'\u001a\u00020��H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b(\u0010\u0005J\u001b\u0010)\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b*\u0010\u000fJ\u001b\u0010)\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b+\u0010\u0012J\u001b\u0010)\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u0013H\u0087\nø\u0001��¢\u0006\u0004\b,\u0010\u001fJ\u001b\u0010)\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0016H\u0087\nø\u0001��¢\u0006\u0004\b-\u0010\u0018J\u001b\u0010.\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\b/\u0010\u000bJ\u001b\u00100\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b1\u0010\u000fJ\u001b\u00100\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b2\u0010\u0012J\u001b\u00100\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u0013H\u0087\nø\u0001��¢\u0006\u0004\b3\u0010\u001fJ\u001b\u00100\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0016H\u0087\nø\u0001��¢\u0006\u0004\b4\u0010\u0018J\u001b\u00105\u001a\u0002062\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b7\u00108J\u001b\u00109\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b:\u0010\u000fJ\u001b\u00109\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b;\u0010\u0012J\u001b\u00109\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u0013H\u0087\nø\u0001��¢\u0006\u0004\b<\u0010\u001fJ\u001b\u00109\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0016H\u0087\nø\u0001��¢\u0006\u0004\b=\u0010\u0018J\u001b\u0010>\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b?\u0010\u000fJ\u001b\u0010>\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0010H\u0087\nø\u0001��¢\u0006\u0004\b@\u0010\u0012J\u001b\u0010>\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u0013H\u0087\nø\u0001��¢\u0006\u0004\bA\u0010\u001fJ\u001b\u0010>\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0016H\u0087\nø\u0001��¢\u0006\u0004\bB\u0010\u0018J\u0010\u0010C\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\bD\u0010\u0005J\u0010\u0010E\u001a\u00020FH\u0087\b¢\u0006\u0004\bG\u0010HJ\u0010\u0010I\u001a\u00020JH\u0087\b¢\u0006\u0004\bK\u0010LJ\u0010\u0010M\u001a\u00020\rH\u0087\b¢\u0006\u0004\bN\u0010OJ\u0010\u0010P\u001a\u00020QH\u0087\b¢\u0006\u0004\bR\u0010SJ\u0010\u0010T\u001a\u00020UH\u0087\b¢\u0006\u0004\bV\u0010WJ\u000f\u0010X\u001a\u00020YH\u0016¢\u0006\u0004\bZ\u0010[J\u0016\u0010\\\u001a\u00020��H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b]\u0010\u0005J\u0016\u0010^\u001a\u00020\u0010H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b_\u0010OJ\u0016\u0010`\u001a\u00020\u0013H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\ba\u0010SJ\u0016\u0010b\u001a\u00020\u0016H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\bc\u0010WJ\u001b\u0010d\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\be\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038��X\u0081\u0004¢\u0006\b\n��\u0012\u0004\b\u0006\u0010\u0007ø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006g"}, m400d2 = {"Lkotlin/UByte;", "", "data", "", "constructor-impl", "(B)B", "getData$annotations", "()V", "and", "other", "and-7apg3OU", "(BB)B", "compareTo", "", "compareTo-7apg3OU", "(BB)I", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(BI)I", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(BJ)I", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(BS)I", "dec", "dec-w2LRezQ", "div", "div-7apg3OU", "div-WZ4Q5Ns", "div-VKZWuLQ", "(BJ)J", "div-xj2QHRw", "equals", "", "", "hashCode", "inc", "inc-w2LRezQ", "inv", "inv-w2LRezQ", "minus", "minus-7apg3OU", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "minus-xj2QHRw", "or", "or-7apg3OU", "plus", "plus-7apg3OU", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "plus-xj2QHRw", "rangeTo", "Lkotlin/ranges/UIntRange;", "rangeTo-7apg3OU", "(BB)Lkotlin/ranges/UIntRange;", "rem", "rem-7apg3OU", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "rem-xj2QHRw", "times", "times-7apg3OU", "times-WZ4Q5Ns", "times-VKZWuLQ", "times-xj2QHRw", "toByte", "toByte-impl", "toDouble", "", "toDouble-impl", "(B)D", "toFloat", "", "toFloat-impl", "(B)F", "toInt", "toInt-impl", "(B)I", "toLong", "", "toLong-impl", "(B)J", "toShort", "", "toShort-impl", "(B)S", "toString", "", "toString-impl", "(B)Ljava/lang/String;", "toUByte", "toUByte-w2LRezQ", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toUShort", "toUShort-Mh2AYeg", "xor", "xor-7apg3OU", "Companion", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes2-dex2jar.jar:kotlin/UByte.class */
public final class UByte implements Comparable<UByte> {
    public static final Companion Companion = new Companion(null);
    public static final byte MAX_VALUE = -1;
    public static final byte MIN_VALUE = 0;
    public static final int SIZE_BITS = 8;
    public static final int SIZE_BYTES = 1;
    private final byte data;

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u00020\u0004X\u0086Tø\u0001��ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\u0005R\u0016\u0010\u0006\u001a\u00020\u0004X\u0086Tø\u0001��ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\bX\u0086T¢\u0006\u0002\n��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\n"}, m400d2 = {"Lkotlin/UByte$Companion;", "", "()V", "MAX_VALUE", "Lkotlin/UByte;", "B", "MIN_VALUE", "SIZE_BITS", "", "SIZE_BYTES", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
    /* loaded from: classes2-dex2jar.jar:kotlin/UByte$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private /* synthetic */ UByte(byte b) {
        this.data = b;
    }

    /* renamed from: and-7apg3OU */
    private static final byte m4181and7apg3OU(byte b, byte b2) {
        return m4188constructorimpl((byte) (b & b2));
    }

    /* renamed from: box-impl */
    public static final /* synthetic */ UByte m4182boximpl(byte b) {
        return new UByte(b);
    }

    /* renamed from: compareTo-7apg3OU */
    private int m4183compareTo7apg3OU(byte b) {
        return m4184compareTo7apg3OU(this.data, b);
    }

    /* renamed from: compareTo-7apg3OU */
    private static int m4184compareTo7apg3OU(byte b, byte b2) {
        return Intrinsics.compare(b & 255, b2 & 255);
    }

    /* renamed from: compareTo-VKZWuLQ */
    private static final int m4185compareToVKZWuLQ(byte b, long j) {
        return UnsignedKt.ulongCompare(ULong.m4328constructorimpl(b & 255), j);
    }

    /* renamed from: compareTo-WZ4Q5Ns */
    private static final int m4186compareToWZ4Q5Ns(byte b, int i) {
        return UnsignedKt.uintCompare(UInt.m4257constructorimpl(b & 255), i);
    }

    /* renamed from: compareTo-xj2QHRw */
    private static final int m4187compareToxj2QHRw(byte b, short s) {
        return Intrinsics.compare(b & 255, s & 65535);
    }

    /* renamed from: constructor-impl */
    public static byte m4188constructorimpl(byte b) {
        return b;
    }

    /* renamed from: dec-w2LRezQ */
    private static final byte m4189decw2LRezQ(byte b) {
        return m4188constructorimpl((byte) (b - 1));
    }

    /* renamed from: div-7apg3OU */
    private static final int m4190div7apg3OU(byte b, byte b2) {
        return UnsignedKt.m4490uintDivideJ1ME1BU(UInt.m4257constructorimpl(b & 255), UInt.m4257constructorimpl(b2 & 255));
    }

    /* renamed from: div-VKZWuLQ */
    private static final long m4191divVKZWuLQ(byte b, long j) {
        return UnsignedKt.m4492ulongDivideeb3DHEI(ULong.m4328constructorimpl(b & 255), j);
    }

    /* renamed from: div-WZ4Q5Ns */
    private static final int m4192divWZ4Q5Ns(byte b, int i) {
        return UnsignedKt.m4490uintDivideJ1ME1BU(UInt.m4257constructorimpl(b & 255), i);
    }

    /* renamed from: div-xj2QHRw */
    private static final int m4193divxj2QHRw(byte b, short s) {
        return UnsignedKt.m4490uintDivideJ1ME1BU(UInt.m4257constructorimpl(b & 255), UInt.m4257constructorimpl(s & 65535));
    }

    /* renamed from: equals-impl */
    public static boolean m4194equalsimpl(byte b, Object obj) {
        return (obj instanceof UByte) && b == ((UByte) obj).m4229unboximpl();
    }

    /* renamed from: equals-impl0 */
    public static final boolean m4195equalsimpl0(byte b, byte b2) {
        return b == b2;
    }

    public static /* synthetic */ void getData$annotations() {
    }

    /* renamed from: hashCode-impl */
    public static int m4196hashCodeimpl(byte b) {
        return b;
    }

    /* renamed from: inc-w2LRezQ */
    private static final byte m4197incw2LRezQ(byte b) {
        return m4188constructorimpl((byte) (b + 1));
    }

    /* renamed from: inv-w2LRezQ */
    private static final byte m4198invw2LRezQ(byte b) {
        return m4188constructorimpl((byte) (b ^ (-1)));
    }

    /* renamed from: minus-7apg3OU */
    private static final int m4199minus7apg3OU(byte b, byte b2) {
        return UInt.m4257constructorimpl(UInt.m4257constructorimpl(b & 255) - UInt.m4257constructorimpl(b2 & 255));
    }

    /* renamed from: minus-VKZWuLQ */
    private static final long m4200minusVKZWuLQ(byte b, long j) {
        return ULong.m4328constructorimpl(ULong.m4328constructorimpl(b & 255) - j);
    }

    /* renamed from: minus-WZ4Q5Ns */
    private static final int m4201minusWZ4Q5Ns(byte b, int i) {
        return UInt.m4257constructorimpl(UInt.m4257constructorimpl(b & 255) - i);
    }

    /* renamed from: minus-xj2QHRw */
    private static final int m4202minusxj2QHRw(byte b, short s) {
        return UInt.m4257constructorimpl(UInt.m4257constructorimpl(b & 255) - UInt.m4257constructorimpl(s & 65535));
    }

    /* renamed from: or-7apg3OU */
    private static final byte m4203or7apg3OU(byte b, byte b2) {
        return m4188constructorimpl((byte) (b | b2));
    }

    /* renamed from: plus-7apg3OU */
    private static final int m4204plus7apg3OU(byte b, byte b2) {
        return UInt.m4257constructorimpl(UInt.m4257constructorimpl(b & 255) + UInt.m4257constructorimpl(b2 & 255));
    }

    /* renamed from: plus-VKZWuLQ */
    private static final long m4205plusVKZWuLQ(byte b, long j) {
        return ULong.m4328constructorimpl(ULong.m4328constructorimpl(b & 255) + j);
    }

    /* renamed from: plus-WZ4Q5Ns */
    private static final int m4206plusWZ4Q5Ns(byte b, int i) {
        return UInt.m4257constructorimpl(UInt.m4257constructorimpl(b & 255) + i);
    }

    /* renamed from: plus-xj2QHRw */
    private static final int m4207plusxj2QHRw(byte b, short s) {
        return UInt.m4257constructorimpl(UInt.m4257constructorimpl(b & 255) + UInt.m4257constructorimpl(s & 65535));
    }

    /* renamed from: rangeTo-7apg3OU */
    private static final UIntRange m4208rangeTo7apg3OU(byte b, byte b2) {
        return new UIntRange(UInt.m4257constructorimpl(b & 255), UInt.m4257constructorimpl(b2 & 255), null);
    }

    /* renamed from: rem-7apg3OU */
    private static final int m4209rem7apg3OU(byte b, byte b2) {
        return UnsignedKt.m4491uintRemainderJ1ME1BU(UInt.m4257constructorimpl(b & 255), UInt.m4257constructorimpl(b2 & 255));
    }

    /* renamed from: rem-VKZWuLQ */
    private static final long m4210remVKZWuLQ(byte b, long j) {
        return UnsignedKt.m4493ulongRemaindereb3DHEI(ULong.m4328constructorimpl(b & 255), j);
    }

    /* renamed from: rem-WZ4Q5Ns */
    private static final int m4211remWZ4Q5Ns(byte b, int i) {
        return UnsignedKt.m4491uintRemainderJ1ME1BU(UInt.m4257constructorimpl(b & 255), i);
    }

    /* renamed from: rem-xj2QHRw */
    private static final int m4212remxj2QHRw(byte b, short s) {
        return UnsignedKt.m4491uintRemainderJ1ME1BU(UInt.m4257constructorimpl(b & 255), UInt.m4257constructorimpl(s & 65535));
    }

    /* renamed from: times-7apg3OU */
    private static final int m4213times7apg3OU(byte b, byte b2) {
        return UInt.m4257constructorimpl(UInt.m4257constructorimpl(b & 255) * UInt.m4257constructorimpl(b2 & 255));
    }

    /* renamed from: times-VKZWuLQ */
    private static final long m4214timesVKZWuLQ(byte b, long j) {
        return ULong.m4328constructorimpl(ULong.m4328constructorimpl(b & 255) * j);
    }

    /* renamed from: times-WZ4Q5Ns */
    private static final int m4215timesWZ4Q5Ns(byte b, int i) {
        return UInt.m4257constructorimpl(UInt.m4257constructorimpl(b & 255) * i);
    }

    /* renamed from: times-xj2QHRw */
    private static final int m4216timesxj2QHRw(byte b, short s) {
        return UInt.m4257constructorimpl(UInt.m4257constructorimpl(b & 255) * UInt.m4257constructorimpl(s & 65535));
    }

    /* renamed from: toByte-impl */
    private static final byte m4217toByteimpl(byte b) {
        return b;
    }

    /* renamed from: toDouble-impl */
    private static final double m4218toDoubleimpl(byte b) {
        return b & 255;
    }

    /* renamed from: toFloat-impl */
    private static final float m4219toFloatimpl(byte b) {
        return b & 255;
    }

    /* renamed from: toInt-impl */
    private static final int m4220toIntimpl(byte b) {
        return b & 255;
    }

    /* renamed from: toLong-impl */
    private static final long m4221toLongimpl(byte b) {
        return b & 255;
    }

    /* renamed from: toShort-impl */
    private static final short m4222toShortimpl(byte b) {
        return (short) (b & 255);
    }

    /* renamed from: toString-impl */
    public static String m4223toStringimpl(byte b) {
        return String.valueOf(b & 255);
    }

    /* renamed from: toUByte-w2LRezQ */
    private static final byte m4224toUBytew2LRezQ(byte b) {
        return b;
    }

    /* renamed from: toUInt-pVg5ArA */
    private static final int m4225toUIntpVg5ArA(byte b) {
        return UInt.m4257constructorimpl(b & 255);
    }

    /* renamed from: toULong-s-VKNKU */
    private static final long m4226toULongsVKNKU(byte b) {
        return ULong.m4328constructorimpl(b & 255);
    }

    /* renamed from: toUShort-Mh2AYeg */
    private static final short m4227toUShortMh2AYeg(byte b) {
        return UShort.m4428constructorimpl((short) (b & 255));
    }

    /* renamed from: xor-7apg3OU */
    private static final byte m4228xor7apg3OU(byte b, byte b2) {
        return m4188constructorimpl((byte) (b ^ b2));
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UByte uByte) {
        return m4183compareTo7apg3OU(uByte.m4229unboximpl());
    }

    public boolean equals(Object obj) {
        return m4194equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m4196hashCodeimpl(this.data);
    }

    public String toString() {
        return m4223toStringimpl(this.data);
    }

    /* renamed from: unbox-impl */
    public final /* synthetic */ byte m4229unboximpl() {
        return this.data;
    }
}
