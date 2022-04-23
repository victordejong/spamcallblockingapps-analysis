package kotlin;

import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.UIntRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.spongycastle.asn1.cmc.BodyPartID;
@SinceKotlin(version = "1.3")
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\u0010��\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0005\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0087@\u0018�� b2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001bB\u0014\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\b\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001��¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020��H\u0097\nø\u0001��¢\u0006\u0004\b\u0010\u0010\u000bJ\u001b\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001��¢\u0006\u0004\b\u0015\u0010\u0016J\u0013\u0010\u0017\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b\u0018\u0010\u0005J\u001b\u0010\u0019\u001a\u00020��2\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001��¢\u0006\u0004\b\u001a\u0010\u000fJ\u001b\u0010\u0019\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b\u001b\u0010\u000bJ\u001b\u0010\u0019\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\b\u001c\u0010\u001dJ\u001b\u0010\u0019\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001��¢\u0006\u0004\b\u001e\u0010\u0016J\u0013\u0010\u001f\u001a\u00020 2\b\u0010\t\u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u0003HÖ\u0001J\u0013\u0010#\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b$\u0010\u0005J\u0013\u0010%\u001a\u00020��H\u0087\bø\u0001��¢\u0006\u0004\b&\u0010\u0005J\u001b\u0010'\u001a\u00020��2\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001��¢\u0006\u0004\b(\u0010\u000fJ\u001b\u0010'\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b)\u0010\u000bJ\u001b\u0010'\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\b*\u0010\u001dJ\u001b\u0010'\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001��¢\u0006\u0004\b+\u0010\u0016J\u001b\u0010,\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\b-\u0010\u000bJ\u001b\u0010.\u001a\u00020��2\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001��¢\u0006\u0004\b/\u0010\u000fJ\u001b\u0010.\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b0\u0010\u000bJ\u001b\u0010.\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\b1\u0010\u001dJ\u001b\u0010.\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001��¢\u0006\u0004\b2\u0010\u0016J\u001b\u00103\u001a\u0002042\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b5\u00106J\u001b\u00107\u001a\u00020��2\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001��¢\u0006\u0004\b8\u0010\u000fJ\u001b\u00107\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b9\u0010\u000bJ\u001b\u00107\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\b:\u0010\u001dJ\u001b\u00107\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001��¢\u0006\u0004\b;\u0010\u0016J\u001b\u0010<\u001a\u00020��2\u0006\u0010=\u001a\u00020\u0003H\u0087\fø\u0001��¢\u0006\u0004\b>\u0010\u000bJ\u001b\u0010?\u001a\u00020��2\u0006\u0010=\u001a\u00020\u0003H\u0087\fø\u0001��¢\u0006\u0004\b@\u0010\u000bJ\u001b\u0010A\u001a\u00020��2\u0006\u0010\t\u001a\u00020\rH\u0087\nø\u0001��¢\u0006\u0004\bB\u0010\u000fJ\u001b\u0010A\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\bC\u0010\u000bJ\u001b\u0010A\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\bD\u0010\u001dJ\u001b\u0010A\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001��¢\u0006\u0004\bE\u0010\u0016J\u0010\u0010F\u001a\u00020GH\u0087\b¢\u0006\u0004\bH\u0010IJ\u0010\u0010J\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\bK\u0010\u0005J\u0010\u0010L\u001a\u00020MH\u0087\b¢\u0006\u0004\bN\u0010OJ\u0010\u0010P\u001a\u00020QH\u0087\b¢\u0006\u0004\bR\u0010SJ\u000f\u0010T\u001a\u00020UH\u0016¢\u0006\u0004\bV\u0010WJ\u0013\u0010X\u001a\u00020\rH\u0087\bø\u0001��¢\u0006\u0004\bY\u0010IJ\u0013\u0010Z\u001a\u00020��H\u0087\bø\u0001��¢\u0006\u0004\b[\u0010\u0005J\u0013\u0010\\\u001a\u00020\u0011H\u0087\bø\u0001��¢\u0006\u0004\b]\u0010OJ\u0013\u0010^\u001a\u00020\u0014H\u0087\bø\u0001��¢\u0006\u0004\b_\u0010SJ\u001b\u0010`\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\ba\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038��X\u0081\u0004¢\u0006\b\n��\u0012\u0004\b\u0006\u0010\u0007ø\u0001��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006c"}, m254d2 = {"Lkotlin/UInt;", "", "data", "", "constructor-impl", "(I)I", "data$annotations", "()V", "and", "other", "and-WZ4Q5Ns", "(II)I", "compareTo", "Lkotlin/UByte;", "compareTo-7apg3OU", "(IB)I", "compareTo-WZ4Q5Ns", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(IJ)I", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(IS)I", "dec", "dec-impl", "div", "div-7apg3OU", "div-WZ4Q5Ns", "div-VKZWuLQ", "(IJ)J", "div-xj2QHRw", "equals", "", "", "hashCode", "inc", "inc-impl", "inv", "inv-impl", "minus", "minus-7apg3OU", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "minus-xj2QHRw", "or", "or-WZ4Q5Ns", "plus", "plus-7apg3OU", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "plus-xj2QHRw", "rangeTo", "Lkotlin/ranges/UIntRange;", "rangeTo-WZ4Q5Ns", "(II)Lkotlin/ranges/UIntRange;", "rem", "rem-7apg3OU", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "rem-xj2QHRw", "shl", "bitCount", "shl-impl", "shr", "shr-impl", "times", "times-7apg3OU", "times-WZ4Q5Ns", "times-VKZWuLQ", "times-xj2QHRw", "toByte", "", "toByte-impl", "(I)B", "toInt", "toInt-impl", "toLong", "", "toLong-impl", "(I)J", "toShort", "", "toShort-impl", "(I)S", "toString", "", "toString-impl", "(I)Ljava/lang/String;", "toUByte", "toUByte-impl", "toUInt", "toUInt-impl", "toULong", "toULong-impl", "toUShort", "toUShort-impl", "xor", "xor-WZ4Q5Ns", "Companion", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
@ExperimentalUnsignedTypes
/* loaded from: classes2-dex2jar.jar:kotlin/UInt.class */
public final class UInt implements Comparable<UInt> {
    public static final Companion Companion = new Companion(null);
    public static final int MAX_VALUE = -1;
    public static final int MIN_VALUE = 0;
    public static final int SIZE_BITS = 32;
    public static final int SIZE_BYTES = 4;
    private final int data;

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u00020\u0004X\u0086Tø\u0001��¢\u0006\u0004\n\u0002\u0010\u0005R\u0013\u0010\u0006\u001a\u00020\u0004X\u0086Tø\u0001��¢\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\bX\u0086T¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n"}, m254d2 = {"Lkotlin/UInt$Companion;", "", "()V", "MAX_VALUE", "Lkotlin/UInt;", "I", "MIN_VALUE", "SIZE_BITS", "", "SIZE_BYTES", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:kotlin/UInt$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @PublishedApi
    private /* synthetic */ UInt(int i) {
        this.data = i;
    }

    @InlineOnly
    /* renamed from: and-WZ4Q5Ns  reason: not valid java name */
    private static final int m2887andWZ4Q5Ns(int i, int i2) {
        return m2894constructorimpl(i & i2);
    }

    @NotNull
    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ UInt m2888boximpl(int i) {
        return new UInt(i);
    }

    @InlineOnly
    /* renamed from: compareTo-7apg3OU  reason: not valid java name */
    private static final int m2889compareTo7apg3OU(int i, byte b) {
        return UnsignedKt.uintCompare(i, m2894constructorimpl(b & 255));
    }

    @InlineOnly
    /* renamed from: compareTo-VKZWuLQ  reason: not valid java name */
    private static final int m2890compareToVKZWuLQ(int i, long j) {
        return UnsignedKt.ulongCompare(ULong.m2962constructorimpl(i & BodyPartID.bodyIdMax), j);
    }

    @InlineOnly
    /* renamed from: compareTo-WZ4Q5Ns  reason: not valid java name */
    private int m2891compareToWZ4Q5Ns(int i) {
        return m2892compareToWZ4Q5Ns(this.data, i);
    }

    @InlineOnly
    /* renamed from: compareTo-WZ4Q5Ns  reason: not valid java name */
    private static int m2892compareToWZ4Q5Ns(int i, int i2) {
        return UnsignedKt.uintCompare(i, i2);
    }

    @InlineOnly
    /* renamed from: compareTo-xj2QHRw  reason: not valid java name */
    private static final int m2893compareToxj2QHRw(int i, short s) {
        return UnsignedKt.uintCompare(i, m2894constructorimpl(s & 65535));
    }

    @PublishedApi
    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m2894constructorimpl(int i) {
        return i;
    }

    @PublishedApi
    public static /* synthetic */ void data$annotations() {
    }

    @InlineOnly
    /* renamed from: dec-impl  reason: not valid java name */
    private static final int m2895decimpl(int i) {
        return m2894constructorimpl(i - 1);
    }

    @InlineOnly
    /* renamed from: div-7apg3OU  reason: not valid java name */
    private static final int m2896div7apg3OU(int i, byte b) {
        return UnsignedKt.m3090uintDivideJ1ME1BU(i, m2894constructorimpl(b & 255));
    }

    @InlineOnly
    /* renamed from: div-VKZWuLQ  reason: not valid java name */
    private static final long m2897divVKZWuLQ(int i, long j) {
        return UnsignedKt.m3092ulongDivideeb3DHEI(ULong.m2962constructorimpl(i & BodyPartID.bodyIdMax), j);
    }

    @InlineOnly
    /* renamed from: div-WZ4Q5Ns  reason: not valid java name */
    private static final int m2898divWZ4Q5Ns(int i, int i2) {
        return UnsignedKt.m3090uintDivideJ1ME1BU(i, i2);
    }

    @InlineOnly
    /* renamed from: div-xj2QHRw  reason: not valid java name */
    private static final int m2899divxj2QHRw(int i, short s) {
        return UnsignedKt.m3090uintDivideJ1ME1BU(i, m2894constructorimpl(s & 65535));
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2900equalsimpl(int i, @Nullable Object obj) {
        if (!(obj instanceof UInt)) {
            return false;
        }
        return i == ((UInt) obj).m2935unboximpl();
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2901equalsimpl0(int i, int i2) {
        throw null;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2902hashCodeimpl(int i) {
        return i;
    }

    @InlineOnly
    /* renamed from: inc-impl  reason: not valid java name */
    private static final int m2903incimpl(int i) {
        return m2894constructorimpl(i + 1);
    }

    @InlineOnly
    /* renamed from: inv-impl  reason: not valid java name */
    private static final int m2904invimpl(int i) {
        return m2894constructorimpl(i ^ (-1));
    }

    @InlineOnly
    /* renamed from: minus-7apg3OU  reason: not valid java name */
    private static final int m2905minus7apg3OU(int i, byte b) {
        return m2894constructorimpl(i - m2894constructorimpl(b & 255));
    }

    @InlineOnly
    /* renamed from: minus-VKZWuLQ  reason: not valid java name */
    private static final long m2906minusVKZWuLQ(int i, long j) {
        return ULong.m2962constructorimpl(ULong.m2962constructorimpl(i & BodyPartID.bodyIdMax) - j);
    }

    @InlineOnly
    /* renamed from: minus-WZ4Q5Ns  reason: not valid java name */
    private static final int m2907minusWZ4Q5Ns(int i, int i2) {
        return m2894constructorimpl(i - i2);
    }

    @InlineOnly
    /* renamed from: minus-xj2QHRw  reason: not valid java name */
    private static final int m2908minusxj2QHRw(int i, short s) {
        return m2894constructorimpl(i - m2894constructorimpl(s & 65535));
    }

    @InlineOnly
    /* renamed from: or-WZ4Q5Ns  reason: not valid java name */
    private static final int m2909orWZ4Q5Ns(int i, int i2) {
        return m2894constructorimpl(i | i2);
    }

    @InlineOnly
    /* renamed from: plus-7apg3OU  reason: not valid java name */
    private static final int m2910plus7apg3OU(int i, byte b) {
        return m2894constructorimpl(i + m2894constructorimpl(b & 255));
    }

    @InlineOnly
    /* renamed from: plus-VKZWuLQ  reason: not valid java name */
    private static final long m2911plusVKZWuLQ(int i, long j) {
        return ULong.m2962constructorimpl(ULong.m2962constructorimpl(i & BodyPartID.bodyIdMax) + j);
    }

    @InlineOnly
    /* renamed from: plus-WZ4Q5Ns  reason: not valid java name */
    private static final int m2912plusWZ4Q5Ns(int i, int i2) {
        return m2894constructorimpl(i + i2);
    }

    @InlineOnly
    /* renamed from: plus-xj2QHRw  reason: not valid java name */
    private static final int m2913plusxj2QHRw(int i, short s) {
        return m2894constructorimpl(i + m2894constructorimpl(s & 65535));
    }

    @InlineOnly
    /* renamed from: rangeTo-WZ4Q5Ns  reason: not valid java name */
    private static final UIntRange m2914rangeToWZ4Q5Ns(int i, int i2) {
        return new UIntRange(i, i2, null);
    }

    @InlineOnly
    /* renamed from: rem-7apg3OU  reason: not valid java name */
    private static final int m2915rem7apg3OU(int i, byte b) {
        return UnsignedKt.m3091uintRemainderJ1ME1BU(i, m2894constructorimpl(b & 255));
    }

    @InlineOnly
    /* renamed from: rem-VKZWuLQ  reason: not valid java name */
    private static final long m2916remVKZWuLQ(int i, long j) {
        return UnsignedKt.m3093ulongRemaindereb3DHEI(ULong.m2962constructorimpl(i & BodyPartID.bodyIdMax), j);
    }

    @InlineOnly
    /* renamed from: rem-WZ4Q5Ns  reason: not valid java name */
    private static final int m2917remWZ4Q5Ns(int i, int i2) {
        return UnsignedKt.m3091uintRemainderJ1ME1BU(i, i2);
    }

    @InlineOnly
    /* renamed from: rem-xj2QHRw  reason: not valid java name */
    private static final int m2918remxj2QHRw(int i, short s) {
        return UnsignedKt.m3091uintRemainderJ1ME1BU(i, m2894constructorimpl(s & 65535));
    }

    @InlineOnly
    /* renamed from: shl-impl  reason: not valid java name */
    private static final int m2919shlimpl(int i, int i2) {
        return m2894constructorimpl(i << i2);
    }

    @InlineOnly
    /* renamed from: shr-impl  reason: not valid java name */
    private static final int m2920shrimpl(int i, int i2) {
        return m2894constructorimpl(i >>> i2);
    }

    @InlineOnly
    /* renamed from: times-7apg3OU  reason: not valid java name */
    private static final int m2921times7apg3OU(int i, byte b) {
        return m2894constructorimpl(i * m2894constructorimpl(b & 255));
    }

    @InlineOnly
    /* renamed from: times-VKZWuLQ  reason: not valid java name */
    private static final long m2922timesVKZWuLQ(int i, long j) {
        return ULong.m2962constructorimpl(ULong.m2962constructorimpl(i & BodyPartID.bodyIdMax) * j);
    }

    @InlineOnly
    /* renamed from: times-WZ4Q5Ns  reason: not valid java name */
    private static final int m2923timesWZ4Q5Ns(int i, int i2) {
        return m2894constructorimpl(i * i2);
    }

    @InlineOnly
    /* renamed from: times-xj2QHRw  reason: not valid java name */
    private static final int m2924timesxj2QHRw(int i, short s) {
        return m2894constructorimpl(i * m2894constructorimpl(s & 65535));
    }

    @InlineOnly
    /* renamed from: toByte-impl  reason: not valid java name */
    private static final byte m2925toByteimpl(int i) {
        return (byte) i;
    }

    @InlineOnly
    /* renamed from: toInt-impl  reason: not valid java name */
    private static final int m2926toIntimpl(int i) {
        return i;
    }

    @InlineOnly
    /* renamed from: toLong-impl  reason: not valid java name */
    private static final long m2927toLongimpl(int i) {
        return i & BodyPartID.bodyIdMax;
    }

    @InlineOnly
    /* renamed from: toShort-impl  reason: not valid java name */
    private static final short m2928toShortimpl(int i) {
        return (short) i;
    }

    @NotNull
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2929toStringimpl(int i) {
        return String.valueOf(i & BodyPartID.bodyIdMax);
    }

    @InlineOnly
    /* renamed from: toUByte-impl  reason: not valid java name */
    private static final byte m2930toUByteimpl(int i) {
        return UByte.m2828constructorimpl((byte) i);
    }

    @InlineOnly
    /* renamed from: toUInt-impl  reason: not valid java name */
    private static final int m2931toUIntimpl(int i) {
        return i;
    }

    @InlineOnly
    /* renamed from: toULong-impl  reason: not valid java name */
    private static final long m2932toULongimpl(int i) {
        return ULong.m2962constructorimpl(i & BodyPartID.bodyIdMax);
    }

    @InlineOnly
    /* renamed from: toUShort-impl  reason: not valid java name */
    private static final short m2933toUShortimpl(int i) {
        return UShort.m3031constructorimpl((short) i);
    }

    @InlineOnly
    /* renamed from: xor-WZ4Q5Ns  reason: not valid java name */
    private static final int m2934xorWZ4Q5Ns(int i, int i2) {
        return m2894constructorimpl(i ^ i2);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UInt uInt) {
        return m2891compareToWZ4Q5Ns(uInt.m2935unboximpl());
    }

    public boolean equals(Object obj) {
        return m2900equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m2902hashCodeimpl(this.data);
    }

    @NotNull
    public String toString() {
        return m2929toStringimpl(this.data);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m2935unboximpl() {
        return this.data;
    }
}
