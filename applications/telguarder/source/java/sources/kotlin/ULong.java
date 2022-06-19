package kotlin;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.ULongRange;
import okhttp3.internal.p027ws.WebSocketProtocol;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��j\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\u0010��\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0087@\u0018�� m2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001mB\u0014\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\b\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u000eH\u0087\nø\u0001��¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020��H\u0097\nø\u0001��¢\u0006\u0004\b\u0014\u0010\u0015J\u001b\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0016H\u0087\nø\u0001��¢\u0006\u0004\b\u0017\u0010\u0018J\u0016\u0010\u0019\u001a\u00020��H\u0087\nø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u001a\u0010\u0005J\u001b\u0010\u001b\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u000eH\u0087\nø\u0001��¢\u0006\u0004\b\u001c\u0010\u001dJ\u001b\u0010\u001b\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\b\u001e\u0010\u001fJ\u001b\u0010\u001b\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b \u0010\u000bJ\u001b\u0010\u001b\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0016H\u0087\nø\u0001��¢\u0006\u0004\b!\u0010\"J\u0013\u0010#\u001a\u00020$2\b\u0010\t\u001a\u0004\u0018\u00010%HÖ\u0003J\t\u0010&\u001a\u00020\rHÖ\u0001J\u0016\u0010'\u001a\u00020��H\u0087\nø\u0001��ø\u0001\u0001¢\u0006\u0004\b(\u0010\u0005J\u0016\u0010)\u001a\u00020��H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b*\u0010\u0005J\u001b\u0010+\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u000eH\u0087\nø\u0001��¢\u0006\u0004\b,\u0010\u001dJ\u001b\u0010+\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\b-\u0010\u001fJ\u001b\u0010+\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b.\u0010\u000bJ\u001b\u0010+\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0016H\u0087\nø\u0001��¢\u0006\u0004\b/\u0010\"J\u001b\u00100\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\b1\u0010\u000bJ\u001b\u00102\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u000eH\u0087\nø\u0001��¢\u0006\u0004\b3\u0010\u001dJ\u001b\u00102\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\b4\u0010\u001fJ\u001b\u00102\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b5\u0010\u000bJ\u001b\u00102\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0016H\u0087\nø\u0001��¢\u0006\u0004\b6\u0010\"J\u001b\u00107\u001a\u0002082\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b9\u0010:J\u001b\u0010;\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u000eH\u0087\nø\u0001��¢\u0006\u0004\b<\u0010\u001dJ\u001b\u0010;\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\b=\u0010\u001fJ\u001b\u0010;\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b>\u0010\u000bJ\u001b\u0010;\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0016H\u0087\nø\u0001��¢\u0006\u0004\b?\u0010\"J\u001e\u0010@\u001a\u00020��2\u0006\u0010A\u001a\u00020\rH\u0087\fø\u0001��ø\u0001\u0001¢\u0006\u0004\bB\u0010\u001fJ\u001e\u0010C\u001a\u00020��2\u0006\u0010A\u001a\u00020\rH\u0087\fø\u0001��ø\u0001\u0001¢\u0006\u0004\bD\u0010\u001fJ\u001b\u0010E\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u000eH\u0087\nø\u0001��¢\u0006\u0004\bF\u0010\u001dJ\u001b\u0010E\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\bG\u0010\u001fJ\u001b\u0010E\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\bH\u0010\u000bJ\u001b\u0010E\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0016H\u0087\nø\u0001��¢\u0006\u0004\bI\u0010\"J\u0010\u0010J\u001a\u00020KH\u0087\b¢\u0006\u0004\bL\u0010MJ\u0010\u0010N\u001a\u00020OH\u0087\b¢\u0006\u0004\bP\u0010QJ\u0010\u0010R\u001a\u00020SH\u0087\b¢\u0006\u0004\bT\u0010UJ\u0010\u0010V\u001a\u00020\rH\u0087\b¢\u0006\u0004\bW\u0010XJ\u0010\u0010Y\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\bZ\u0010\u0005J\u0010\u0010[\u001a\u00020\\H\u0087\b¢\u0006\u0004\b]\u0010^J\u000f\u0010_\u001a\u00020`H\u0016¢\u0006\u0004\ba\u0010bJ\u0016\u0010c\u001a\u00020\u000eH\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\bd\u0010MJ\u0016\u0010e\u001a\u00020\u0011H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\bf\u0010XJ\u0016\u0010g\u001a\u00020��H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\bh\u0010\u0005J\u0016\u0010i\u001a\u00020\u0016H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\bj\u0010^J\u001b\u0010k\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\bl\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038��X\u0081\u0004¢\u0006\b\n��\u0012\u0004\b\u0006\u0010\u0007ø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006n"}, m400d2 = {"Lkotlin/ULong;", "", "data", "", "constructor-impl", "(J)J", "getData$annotations", "()V", "and", "other", "and-VKZWuLQ", "(JJ)J", "compareTo", "", "Lkotlin/UByte;", "compareTo-7apg3OU", "(JB)I", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(JI)I", "compareTo-VKZWuLQ", "(JJ)I", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(JS)I", "dec", "dec-s-VKNKU", "div", "div-7apg3OU", "(JB)J", "div-WZ4Q5Ns", "(JI)J", "div-VKZWuLQ", "div-xj2QHRw", "(JS)J", "equals", "", "", "hashCode", "inc", "inc-s-VKNKU", "inv", "inv-s-VKNKU", "minus", "minus-7apg3OU", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "minus-xj2QHRw", "or", "or-VKZWuLQ", "plus", "plus-7apg3OU", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "plus-xj2QHRw", "rangeTo", "Lkotlin/ranges/ULongRange;", "rangeTo-VKZWuLQ", "(JJ)Lkotlin/ranges/ULongRange;", "rem", "rem-7apg3OU", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "rem-xj2QHRw", "shl", "bitCount", "shl-s-VKNKU", "shr", "shr-s-VKNKU", "times", "times-7apg3OU", "times-WZ4Q5Ns", "times-VKZWuLQ", "times-xj2QHRw", "toByte", "", "toByte-impl", "(J)B", "toDouble", "", "toDouble-impl", "(J)D", "toFloat", "", "toFloat-impl", "(J)F", "toInt", "toInt-impl", "(J)I", "toLong", "toLong-impl", "toShort", "", "toShort-impl", "(J)S", "toString", "", "toString-impl", "(J)Ljava/lang/String;", "toUByte", "toUByte-w2LRezQ", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toUShort", "toUShort-Mh2AYeg", "xor", "xor-VKZWuLQ", "Companion", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes2-dex2jar.jar:kotlin/ULong.class */
public final class ULong implements Comparable<ULong> {
    public static final Companion Companion = new Companion(null);
    public static final long MAX_VALUE = -1;
    public static final long MIN_VALUE = 0;
    public static final int SIZE_BITS = 64;
    public static final int SIZE_BYTES = 8;
    private final long data;

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u00020\u0004X\u0086Tø\u0001��ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\u0005R\u0016\u0010\u0006\u001a\u00020\u0004X\u0086Tø\u0001��ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\bX\u0086T¢\u0006\u0002\n��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\n"}, m400d2 = {"Lkotlin/ULong$Companion;", "", "()V", "MAX_VALUE", "Lkotlin/ULong;", "J", "MIN_VALUE", "SIZE_BITS", "", "SIZE_BYTES", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
    /* loaded from: classes2-dex2jar.jar:kotlin/ULong$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private /* synthetic */ ULong(long j) {
        this.data = j;
    }

    /* renamed from: and-VKZWuLQ */
    private static final long m4321andVKZWuLQ(long j, long j2) {
        return m4328constructorimpl(j & j2);
    }

    /* renamed from: box-impl */
    public static final /* synthetic */ ULong m4322boximpl(long j) {
        return new ULong(j);
    }

    /* renamed from: compareTo-7apg3OU */
    private static final int m4323compareTo7apg3OU(long j, byte b) {
        return UnsignedKt.ulongCompare(j, m4328constructorimpl(b & 255));
    }

    /* renamed from: compareTo-VKZWuLQ */
    private int m4324compareToVKZWuLQ(long j) {
        return m4325compareToVKZWuLQ(this.data, j);
    }

    /* renamed from: compareTo-VKZWuLQ */
    private static int m4325compareToVKZWuLQ(long j, long j2) {
        return UnsignedKt.ulongCompare(j, j2);
    }

    /* renamed from: compareTo-WZ4Q5Ns */
    private static final int m4326compareToWZ4Q5Ns(long j, int i) {
        return UnsignedKt.ulongCompare(j, m4328constructorimpl(i & 4294967295L));
    }

    /* renamed from: compareTo-xj2QHRw */
    private static final int m4327compareToxj2QHRw(long j, short s) {
        return UnsignedKt.ulongCompare(j, m4328constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX));
    }

    /* renamed from: constructor-impl */
    public static long m4328constructorimpl(long j) {
        return j;
    }

    /* renamed from: dec-s-VKNKU */
    private static final long m4329decsVKNKU(long j) {
        return m4328constructorimpl(j - 1);
    }

    /* renamed from: div-7apg3OU */
    private static final long m4330div7apg3OU(long j, byte b) {
        return UnsignedKt.m4492ulongDivideeb3DHEI(j, m4328constructorimpl(b & 255));
    }

    /* renamed from: div-VKZWuLQ */
    private static final long m4331divVKZWuLQ(long j, long j2) {
        return UnsignedKt.m4492ulongDivideeb3DHEI(j, j2);
    }

    /* renamed from: div-WZ4Q5Ns */
    private static final long m4332divWZ4Q5Ns(long j, int i) {
        return UnsignedKt.m4492ulongDivideeb3DHEI(j, m4328constructorimpl(i & 4294967295L));
    }

    /* renamed from: div-xj2QHRw */
    private static final long m4333divxj2QHRw(long j, short s) {
        return UnsignedKt.m4492ulongDivideeb3DHEI(j, m4328constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX));
    }

    /* renamed from: equals-impl */
    public static boolean m4334equalsimpl(long j, Object obj) {
        return (obj instanceof ULong) && j == ((ULong) obj).m4371unboximpl();
    }

    /* renamed from: equals-impl0 */
    public static final boolean m4335equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static /* synthetic */ void getData$annotations() {
    }

    /* renamed from: hashCode-impl */
    public static int m4336hashCodeimpl(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: inc-s-VKNKU */
    private static final long m4337incsVKNKU(long j) {
        return m4328constructorimpl(j + 1);
    }

    /* renamed from: inv-s-VKNKU */
    private static final long m4338invsVKNKU(long j) {
        return m4328constructorimpl(j ^ (-1));
    }

    /* renamed from: minus-7apg3OU */
    private static final long m4339minus7apg3OU(long j, byte b) {
        return m4328constructorimpl(j - m4328constructorimpl(b & 255));
    }

    /* renamed from: minus-VKZWuLQ */
    private static final long m4340minusVKZWuLQ(long j, long j2) {
        return m4328constructorimpl(j - j2);
    }

    /* renamed from: minus-WZ4Q5Ns */
    private static final long m4341minusWZ4Q5Ns(long j, int i) {
        return m4328constructorimpl(j - m4328constructorimpl(i & 4294967295L));
    }

    /* renamed from: minus-xj2QHRw */
    private static final long m4342minusxj2QHRw(long j, short s) {
        return m4328constructorimpl(j - m4328constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX));
    }

    /* renamed from: or-VKZWuLQ */
    private static final long m4343orVKZWuLQ(long j, long j2) {
        return m4328constructorimpl(j | j2);
    }

    /* renamed from: plus-7apg3OU */
    private static final long m4344plus7apg3OU(long j, byte b) {
        return m4328constructorimpl(j + m4328constructorimpl(b & 255));
    }

    /* renamed from: plus-VKZWuLQ */
    private static final long m4345plusVKZWuLQ(long j, long j2) {
        return m4328constructorimpl(j + j2);
    }

    /* renamed from: plus-WZ4Q5Ns */
    private static final long m4346plusWZ4Q5Ns(long j, int i) {
        return m4328constructorimpl(j + m4328constructorimpl(i & 4294967295L));
    }

    /* renamed from: plus-xj2QHRw */
    private static final long m4347plusxj2QHRw(long j, short s) {
        return m4328constructorimpl(j + m4328constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX));
    }

    /* renamed from: rangeTo-VKZWuLQ */
    private static final ULongRange m4348rangeToVKZWuLQ(long j, long j2) {
        return new ULongRange(j, j2, null);
    }

    /* renamed from: rem-7apg3OU */
    private static final long m4349rem7apg3OU(long j, byte b) {
        return UnsignedKt.m4493ulongRemaindereb3DHEI(j, m4328constructorimpl(b & 255));
    }

    /* renamed from: rem-VKZWuLQ */
    private static final long m4350remVKZWuLQ(long j, long j2) {
        return UnsignedKt.m4493ulongRemaindereb3DHEI(j, j2);
    }

    /* renamed from: rem-WZ4Q5Ns */
    private static final long m4351remWZ4Q5Ns(long j, int i) {
        return UnsignedKt.m4493ulongRemaindereb3DHEI(j, m4328constructorimpl(i & 4294967295L));
    }

    /* renamed from: rem-xj2QHRw */
    private static final long m4352remxj2QHRw(long j, short s) {
        return UnsignedKt.m4493ulongRemaindereb3DHEI(j, m4328constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX));
    }

    /* renamed from: shl-s-VKNKU */
    private static final long m4353shlsVKNKU(long j, int i) {
        return m4328constructorimpl(j << i);
    }

    /* renamed from: shr-s-VKNKU */
    private static final long m4354shrsVKNKU(long j, int i) {
        return m4328constructorimpl(j >>> i);
    }

    /* renamed from: times-7apg3OU */
    private static final long m4355times7apg3OU(long j, byte b) {
        return m4328constructorimpl(j * m4328constructorimpl(b & 255));
    }

    /* renamed from: times-VKZWuLQ */
    private static final long m4356timesVKZWuLQ(long j, long j2) {
        return m4328constructorimpl(j * j2);
    }

    /* renamed from: times-WZ4Q5Ns */
    private static final long m4357timesWZ4Q5Ns(long j, int i) {
        return m4328constructorimpl(j * m4328constructorimpl(i & 4294967295L));
    }

    /* renamed from: times-xj2QHRw */
    private static final long m4358timesxj2QHRw(long j, short s) {
        return m4328constructorimpl(j * m4328constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX));
    }

    /* renamed from: toByte-impl */
    private static final byte m4359toByteimpl(long j) {
        return (byte) j;
    }

    /* renamed from: toDouble-impl */
    private static final double m4360toDoubleimpl(long j) {
        return UnsignedKt.ulongToDouble(j);
    }

    /* renamed from: toFloat-impl */
    private static final float m4361toFloatimpl(long j) {
        return (float) UnsignedKt.ulongToDouble(j);
    }

    /* renamed from: toInt-impl */
    private static final int m4362toIntimpl(long j) {
        return (int) j;
    }

    /* renamed from: toLong-impl */
    private static final long m4363toLongimpl(long j) {
        return j;
    }

    /* renamed from: toShort-impl */
    private static final short m4364toShortimpl(long j) {
        return (short) j;
    }

    /* renamed from: toString-impl */
    public static String m4365toStringimpl(long j) {
        return UnsignedKt.ulongToString(j);
    }

    /* renamed from: toUByte-w2LRezQ */
    private static final byte m4366toUBytew2LRezQ(long j) {
        return UByte.m4188constructorimpl((byte) j);
    }

    /* renamed from: toUInt-pVg5ArA */
    private static final int m4367toUIntpVg5ArA(long j) {
        return UInt.m4257constructorimpl((int) j);
    }

    /* renamed from: toULong-s-VKNKU */
    private static final long m4368toULongsVKNKU(long j) {
        return j;
    }

    /* renamed from: toUShort-Mh2AYeg */
    private static final short m4369toUShortMh2AYeg(long j) {
        return UShort.m4428constructorimpl((short) j);
    }

    /* renamed from: xor-VKZWuLQ */
    private static final long m4370xorVKZWuLQ(long j, long j2) {
        return m4328constructorimpl(j ^ j2);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(ULong uLong) {
        return m4324compareToVKZWuLQ(uLong.m4371unboximpl());
    }

    public boolean equals(Object obj) {
        return m4334equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m4336hashCodeimpl(this.data);
    }

    public String toString() {
        return m4365toStringimpl(this.data);
    }

    /* renamed from: unbox-impl */
    public final /* synthetic */ long m4371unboximpl() {
        return this.data;
    }
}
