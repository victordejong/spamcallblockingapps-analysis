package kotlin;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.UIntRange;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��n\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\u0010��\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0087@\u0018�� j2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001jB\u0014\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\b\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001��¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020��H\u0097\nø\u0001��¢\u0006\u0004\b\u0010\u0010\u000bJ\u001b\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001��¢\u0006\u0004\b\u0015\u0010\u0016J\u0016\u0010\u0017\u001a\u00020��H\u0087\nø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u0018\u0010\u0005J\u001b\u0010\u0019\u001a\u00020��2\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001��¢\u0006\u0004\b\u001a\u0010\u000fJ\u001b\u0010\u0019\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b\u001b\u0010\u000bJ\u001b\u0010\u0019\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\b\u001c\u0010\u001dJ\u001b\u0010\u0019\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001��¢\u0006\u0004\b\u001e\u0010\u0016J\u0013\u0010\u001f\u001a\u00020 2\b\u0010\t\u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u0003HÖ\u0001J\u0016\u0010#\u001a\u00020��H\u0087\nø\u0001��ø\u0001\u0001¢\u0006\u0004\b$\u0010\u0005J\u0016\u0010%\u001a\u00020��H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b&\u0010\u0005J\u001b\u0010'\u001a\u00020��2\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001��¢\u0006\u0004\b(\u0010\u000fJ\u001b\u0010'\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b)\u0010\u000bJ\u001b\u0010'\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\b*\u0010\u001dJ\u001b\u0010'\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001��¢\u0006\u0004\b+\u0010\u0016J\u001b\u0010,\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\b-\u0010\u000bJ\u001b\u0010.\u001a\u00020��2\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001��¢\u0006\u0004\b/\u0010\u000fJ\u001b\u0010.\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b0\u0010\u000bJ\u001b\u0010.\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\b1\u0010\u001dJ\u001b\u0010.\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001��¢\u0006\u0004\b2\u0010\u0016J\u001b\u00103\u001a\u0002042\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b5\u00106J\u001b\u00107\u001a\u00020��2\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001��¢\u0006\u0004\b8\u0010\u000fJ\u001b\u00107\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b9\u0010\u000bJ\u001b\u00107\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\b:\u0010\u001dJ\u001b\u00107\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001��¢\u0006\u0004\b;\u0010\u0016J\u001e\u0010<\u001a\u00020��2\u0006\u0010=\u001a\u00020\u0003H\u0087\fø\u0001��ø\u0001\u0001¢\u0006\u0004\b>\u0010\u000bJ\u001e\u0010?\u001a\u00020��2\u0006\u0010=\u001a\u00020\u0003H\u0087\fø\u0001��ø\u0001\u0001¢\u0006\u0004\b@\u0010\u000bJ\u001b\u0010A\u001a\u00020��2\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001��¢\u0006\u0004\bB\u0010\u000fJ\u001b\u0010A\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\bC\u0010\u000bJ\u001b\u0010A\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\bD\u0010\u001dJ\u001b\u0010A\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001��¢\u0006\u0004\bE\u0010\u0016J\u0010\u0010F\u001a\u00020GH\u0087\b¢\u0006\u0004\bH\u0010IJ\u0010\u0010J\u001a\u00020KH\u0087\b¢\u0006\u0004\bL\u0010MJ\u0010\u0010N\u001a\u00020OH\u0087\b¢\u0006\u0004\bP\u0010QJ\u0010\u0010R\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\bS\u0010\u0005J\u0010\u0010T\u001a\u00020UH\u0087\b¢\u0006\u0004\bV\u0010WJ\u0010\u0010X\u001a\u00020YH\u0087\b¢\u0006\u0004\bZ\u0010[J\u000f\u0010\\\u001a\u00020]H\u0016¢\u0006\u0004\b^\u0010_J\u0016\u0010`\u001a\u00020\rH\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\ba\u0010IJ\u0016\u0010b\u001a\u00020��H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\bc\u0010\u0005J\u0016\u0010d\u001a\u00020\u0011H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\be\u0010WJ\u0016\u0010f\u001a\u00020\u0014H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\bg\u0010[J\u001b\u0010h\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\bi\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038��X\u0081\u0004¢\u0006\b\n��\u0012\u0004\b\u0006\u0010\u0007ø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006k"}, m400d2 = {"Lkotlin/UInt;", "", "data", "", "constructor-impl", "(I)I", "getData$annotations", "()V", "and", "other", "and-WZ4Q5Ns", "(II)I", "compareTo", "Lkotlin/UByte;", "compareTo-7apg3OU", "(IB)I", "compareTo-WZ4Q5Ns", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(IJ)I", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(IS)I", "dec", "dec-pVg5ArA", "div", "div-7apg3OU", "div-WZ4Q5Ns", "div-VKZWuLQ", "(IJ)J", "div-xj2QHRw", "equals", "", "", "hashCode", "inc", "inc-pVg5ArA", "inv", "inv-pVg5ArA", "minus", "minus-7apg3OU", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "minus-xj2QHRw", "or", "or-WZ4Q5Ns", "plus", "plus-7apg3OU", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "plus-xj2QHRw", "rangeTo", "Lkotlin/ranges/UIntRange;", "rangeTo-WZ4Q5Ns", "(II)Lkotlin/ranges/UIntRange;", "rem", "rem-7apg3OU", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "rem-xj2QHRw", "shl", "bitCount", "shl-pVg5ArA", "shr", "shr-pVg5ArA", "times", "times-7apg3OU", "times-WZ4Q5Ns", "times-VKZWuLQ", "times-xj2QHRw", "toByte", "", "toByte-impl", "(I)B", "toDouble", "", "toDouble-impl", "(I)D", "toFloat", "", "toFloat-impl", "(I)F", "toInt", "toInt-impl", "toLong", "", "toLong-impl", "(I)J", "toShort", "", "toShort-impl", "(I)S", "toString", "", "toString-impl", "(I)Ljava/lang/String;", "toUByte", "toUByte-w2LRezQ", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toUShort", "toUShort-Mh2AYeg", "xor", "xor-WZ4Q5Ns", "Companion", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes2-dex2jar.jar:kotlin/UInt.class */
public final class UInt implements Comparable<UInt> {
    public static final Companion Companion = new Companion(null);
    public static final int MAX_VALUE = -1;
    public static final int MIN_VALUE = 0;
    public static final int SIZE_BITS = 32;
    public static final int SIZE_BYTES = 4;
    private final int data;

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u00020\u0004X\u0086Tø\u0001��ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\u0005R\u0016\u0010\u0006\u001a\u00020\u0004X\u0086Tø\u0001��ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\bX\u0086T¢\u0006\u0002\n��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\n"}, m400d2 = {"Lkotlin/UInt$Companion;", "", "()V", "MAX_VALUE", "Lkotlin/UInt;", "I", "MIN_VALUE", "SIZE_BITS", "", "SIZE_BYTES", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
    /* loaded from: classes2-dex2jar.jar:kotlin/UInt$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private /* synthetic */ UInt(int i) {
        this.data = i;
    }

    /* renamed from: and-WZ4Q5Ns */
    private static final int m4250andWZ4Q5Ns(int i, int i2) {
        return m4257constructorimpl(i & i2);
    }

    /* renamed from: box-impl */
    public static final /* synthetic */ UInt m4251boximpl(int i) {
        return new UInt(i);
    }

    /* renamed from: compareTo-7apg3OU */
    private static final int m4252compareTo7apg3OU(int i, byte b) {
        return UnsignedKt.uintCompare(i, m4257constructorimpl(b & 255));
    }

    /* renamed from: compareTo-VKZWuLQ */
    private static final int m4253compareToVKZWuLQ(int i, long j) {
        return UnsignedKt.ulongCompare(ULong.m4328constructorimpl(i & 4294967295L), j);
    }

    /* renamed from: compareTo-WZ4Q5Ns */
    private int m4254compareToWZ4Q5Ns(int i) {
        return m4255compareToWZ4Q5Ns(this.data, i);
    }

    /* renamed from: compareTo-WZ4Q5Ns */
    private static int m4255compareToWZ4Q5Ns(int i, int i2) {
        return UnsignedKt.uintCompare(i, i2);
    }

    /* renamed from: compareTo-xj2QHRw */
    private static final int m4256compareToxj2QHRw(int i, short s) {
        return UnsignedKt.uintCompare(i, m4257constructorimpl(s & 65535));
    }

    /* renamed from: constructor-impl */
    public static int m4257constructorimpl(int i) {
        return i;
    }

    /* renamed from: dec-pVg5ArA */
    private static final int m4258decpVg5ArA(int i) {
        return m4257constructorimpl(i - 1);
    }

    /* renamed from: div-7apg3OU */
    private static final int m4259div7apg3OU(int i, byte b) {
        return UnsignedKt.m4490uintDivideJ1ME1BU(i, m4257constructorimpl(b & 255));
    }

    /* renamed from: div-VKZWuLQ */
    private static final long m4260divVKZWuLQ(int i, long j) {
        return UnsignedKt.m4492ulongDivideeb3DHEI(ULong.m4328constructorimpl(i & 4294967295L), j);
    }

    /* renamed from: div-WZ4Q5Ns */
    private static final int m4261divWZ4Q5Ns(int i, int i2) {
        return UnsignedKt.m4490uintDivideJ1ME1BU(i, i2);
    }

    /* renamed from: div-xj2QHRw */
    private static final int m4262divxj2QHRw(int i, short s) {
        return UnsignedKt.m4490uintDivideJ1ME1BU(i, m4257constructorimpl(s & 65535));
    }

    /* renamed from: equals-impl */
    public static boolean m4263equalsimpl(int i, Object obj) {
        return (obj instanceof UInt) && i == ((UInt) obj).m4300unboximpl();
    }

    /* renamed from: equals-impl0 */
    public static final boolean m4264equalsimpl0(int i, int i2) {
        return i == i2;
    }

    public static /* synthetic */ void getData$annotations() {
    }

    /* renamed from: hashCode-impl */
    public static int m4265hashCodeimpl(int i) {
        return i;
    }

    /* renamed from: inc-pVg5ArA */
    private static final int m4266incpVg5ArA(int i) {
        return m4257constructorimpl(i + 1);
    }

    /* renamed from: inv-pVg5ArA */
    private static final int m4267invpVg5ArA(int i) {
        return m4257constructorimpl(i ^ (-1));
    }

    /* renamed from: minus-7apg3OU */
    private static final int m4268minus7apg3OU(int i, byte b) {
        return m4257constructorimpl(i - m4257constructorimpl(b & 255));
    }

    /* renamed from: minus-VKZWuLQ */
    private static final long m4269minusVKZWuLQ(int i, long j) {
        return ULong.m4328constructorimpl(ULong.m4328constructorimpl(i & 4294967295L) - j);
    }

    /* renamed from: minus-WZ4Q5Ns */
    private static final int m4270minusWZ4Q5Ns(int i, int i2) {
        return m4257constructorimpl(i - i2);
    }

    /* renamed from: minus-xj2QHRw */
    private static final int m4271minusxj2QHRw(int i, short s) {
        return m4257constructorimpl(i - m4257constructorimpl(s & 65535));
    }

    /* renamed from: or-WZ4Q5Ns */
    private static final int m4272orWZ4Q5Ns(int i, int i2) {
        return m4257constructorimpl(i | i2);
    }

    /* renamed from: plus-7apg3OU */
    private static final int m4273plus7apg3OU(int i, byte b) {
        return m4257constructorimpl(i + m4257constructorimpl(b & 255));
    }

    /* renamed from: plus-VKZWuLQ */
    private static final long m4274plusVKZWuLQ(int i, long j) {
        return ULong.m4328constructorimpl(ULong.m4328constructorimpl(i & 4294967295L) + j);
    }

    /* renamed from: plus-WZ4Q5Ns */
    private static final int m4275plusWZ4Q5Ns(int i, int i2) {
        return m4257constructorimpl(i + i2);
    }

    /* renamed from: plus-xj2QHRw */
    private static final int m4276plusxj2QHRw(int i, short s) {
        return m4257constructorimpl(i + m4257constructorimpl(s & 65535));
    }

    /* renamed from: rangeTo-WZ4Q5Ns */
    private static final UIntRange m4277rangeToWZ4Q5Ns(int i, int i2) {
        return new UIntRange(i, i2, null);
    }

    /* renamed from: rem-7apg3OU */
    private static final int m4278rem7apg3OU(int i, byte b) {
        return UnsignedKt.m4491uintRemainderJ1ME1BU(i, m4257constructorimpl(b & 255));
    }

    /* renamed from: rem-VKZWuLQ */
    private static final long m4279remVKZWuLQ(int i, long j) {
        return UnsignedKt.m4493ulongRemaindereb3DHEI(ULong.m4328constructorimpl(i & 4294967295L), j);
    }

    /* renamed from: rem-WZ4Q5Ns */
    private static final int m4280remWZ4Q5Ns(int i, int i2) {
        return UnsignedKt.m4491uintRemainderJ1ME1BU(i, i2);
    }

    /* renamed from: rem-xj2QHRw */
    private static final int m4281remxj2QHRw(int i, short s) {
        return UnsignedKt.m4491uintRemainderJ1ME1BU(i, m4257constructorimpl(s & 65535));
    }

    /* renamed from: shl-pVg5ArA */
    private static final int m4282shlpVg5ArA(int i, int i2) {
        return m4257constructorimpl(i << i2);
    }

    /* renamed from: shr-pVg5ArA */
    private static final int m4283shrpVg5ArA(int i, int i2) {
        return m4257constructorimpl(i >>> i2);
    }

    /* renamed from: times-7apg3OU */
    private static final int m4284times7apg3OU(int i, byte b) {
        return m4257constructorimpl(i * m4257constructorimpl(b & 255));
    }

    /* renamed from: times-VKZWuLQ */
    private static final long m4285timesVKZWuLQ(int i, long j) {
        return ULong.m4328constructorimpl(ULong.m4328constructorimpl(i & 4294967295L) * j);
    }

    /* renamed from: times-WZ4Q5Ns */
    private static final int m4286timesWZ4Q5Ns(int i, int i2) {
        return m4257constructorimpl(i * i2);
    }

    /* renamed from: times-xj2QHRw */
    private static final int m4287timesxj2QHRw(int i, short s) {
        return m4257constructorimpl(i * m4257constructorimpl(s & 65535));
    }

    /* renamed from: toByte-impl */
    private static final byte m4288toByteimpl(int i) {
        return (byte) i;
    }

    /* renamed from: toDouble-impl */
    private static final double m4289toDoubleimpl(int i) {
        return UnsignedKt.uintToDouble(i);
    }

    /* renamed from: toFloat-impl */
    private static final float m4290toFloatimpl(int i) {
        return (float) UnsignedKt.uintToDouble(i);
    }

    /* renamed from: toInt-impl */
    private static final int m4291toIntimpl(int i) {
        return i;
    }

    /* renamed from: toLong-impl */
    private static final long m4292toLongimpl(int i) {
        return i & 4294967295L;
    }

    /* renamed from: toShort-impl */
    private static final short m4293toShortimpl(int i) {
        return (short) i;
    }

    /* renamed from: toString-impl */
    public static String m4294toStringimpl(int i) {
        return String.valueOf(i & 4294967295L);
    }

    /* renamed from: toUByte-w2LRezQ */
    private static final byte m4295toUBytew2LRezQ(int i) {
        return UByte.m4188constructorimpl((byte) i);
    }

    /* renamed from: toUInt-pVg5ArA */
    private static final int m4296toUIntpVg5ArA(int i) {
        return i;
    }

    /* renamed from: toULong-s-VKNKU */
    private static final long m4297toULongsVKNKU(int i) {
        return ULong.m4328constructorimpl(i & 4294967295L);
    }

    /* renamed from: toUShort-Mh2AYeg */
    private static final short m4298toUShortMh2AYeg(int i) {
        return UShort.m4428constructorimpl((short) i);
    }

    /* renamed from: xor-WZ4Q5Ns */
    private static final int m4299xorWZ4Q5Ns(int i, int i2) {
        return m4257constructorimpl(i ^ i2);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UInt uInt) {
        return m4254compareToWZ4Q5Ns(uInt.m4300unboximpl());
    }

    public boolean equals(Object obj) {
        return m4263equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m4265hashCodeimpl(this.data);
    }

    public String toString() {
        return m4294toStringimpl(this.data);
    }

    /* renamed from: unbox-impl */
    public final /* synthetic */ int m4300unboximpl() {
        return this.data;
    }
}
