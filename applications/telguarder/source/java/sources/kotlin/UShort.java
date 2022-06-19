package kotlin;

import androidx.exifinterface.media.ExifInterface;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.UIntRange;
import okhttp3.internal.p027ws.WebSocketProtocol;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��j\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0010\n\n\u0002\b\t\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\u0010��\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0087@\u0018�� f2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001fB\u0014\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\b\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u000eH\u0087\nø\u0001��¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001��¢\u0006\u0004\b\u0015\u0010\u0016J\u001b\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020��H\u0097\nø\u0001��¢\u0006\u0004\b\u0017\u0010\u0018J\u0016\u0010\u0019\u001a\u00020��H\u0087\nø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u001a\u0010\u0005J\u001b\u0010\u001b\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\nø\u0001��¢\u0006\u0004\b\u001c\u0010\u0010J\u001b\u0010\u001b\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\b\u001d\u0010\u0013J\u001b\u0010\u001b\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001��¢\u0006\u0004\b\u001e\u0010\u001fJ\u001b\u0010\u001b\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b \u0010\u0018J\u0013\u0010!\u001a\u00020\"2\b\u0010\t\u001a\u0004\u0018\u00010#HÖ\u0003J\t\u0010$\u001a\u00020\rHÖ\u0001J\u0016\u0010%\u001a\u00020��H\u0087\nø\u0001��ø\u0001\u0001¢\u0006\u0004\b&\u0010\u0005J\u0016\u0010'\u001a\u00020��H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b(\u0010\u0005J\u001b\u0010)\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\nø\u0001��¢\u0006\u0004\b*\u0010\u0010J\u001b\u0010)\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\b+\u0010\u0013J\u001b\u0010)\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001��¢\u0006\u0004\b,\u0010\u001fJ\u001b\u0010)\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b-\u0010\u0018J\u001b\u0010.\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\b/\u0010\u000bJ\u001b\u00100\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\nø\u0001��¢\u0006\u0004\b1\u0010\u0010J\u001b\u00100\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\b2\u0010\u0013J\u001b\u00100\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001��¢\u0006\u0004\b3\u0010\u001fJ\u001b\u00100\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b4\u0010\u0018J\u001b\u00105\u001a\u0002062\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b7\u00108J\u001b\u00109\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\nø\u0001��¢\u0006\u0004\b:\u0010\u0010J\u001b\u00109\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\b;\u0010\u0013J\u001b\u00109\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001��¢\u0006\u0004\b<\u0010\u001fJ\u001b\u00109\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\b=\u0010\u0018J\u001b\u0010>\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u000eH\u0087\nø\u0001��¢\u0006\u0004\b?\u0010\u0010J\u001b\u0010>\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0011H\u0087\nø\u0001��¢\u0006\u0004\b@\u0010\u0013J\u001b\u0010>\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0014H\u0087\nø\u0001��¢\u0006\u0004\bA\u0010\u001fJ\u001b\u0010>\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020��H\u0087\nø\u0001��¢\u0006\u0004\bB\u0010\u0018J\u0010\u0010C\u001a\u00020DH\u0087\b¢\u0006\u0004\bE\u0010FJ\u0010\u0010G\u001a\u00020HH\u0087\b¢\u0006\u0004\bI\u0010JJ\u0010\u0010K\u001a\u00020LH\u0087\b¢\u0006\u0004\bM\u0010NJ\u0010\u0010O\u001a\u00020\rH\u0087\b¢\u0006\u0004\bP\u0010QJ\u0010\u0010R\u001a\u00020SH\u0087\b¢\u0006\u0004\bT\u0010UJ\u0010\u0010V\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\bW\u0010\u0005J\u000f\u0010X\u001a\u00020YH\u0016¢\u0006\u0004\bZ\u0010[J\u0016\u0010\\\u001a\u00020\u000eH\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b]\u0010FJ\u0016\u0010^\u001a\u00020\u0011H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\b_\u0010QJ\u0016\u0010`\u001a\u00020\u0014H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\ba\u0010UJ\u0016\u0010b\u001a\u00020��H\u0087\bø\u0001��ø\u0001\u0001¢\u0006\u0004\bc\u0010\u0005J\u001b\u0010d\u001a\u00020��2\u0006\u0010\t\u001a\u00020��H\u0087\fø\u0001��¢\u0006\u0004\be\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038��X\u0081\u0004¢\u0006\b\n��\u0012\u0004\b\u0006\u0010\u0007ø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006g"}, m400d2 = {"Lkotlin/UShort;", "", "data", "", "constructor-impl", "(S)S", "getData$annotations", "()V", "and", "other", "and-xj2QHRw", "(SS)S", "compareTo", "", "Lkotlin/UByte;", "compareTo-7apg3OU", "(SB)I", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(SI)I", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(SJ)I", "compareTo-xj2QHRw", "(SS)I", "dec", "dec-Mh2AYeg", "div", "div-7apg3OU", "div-WZ4Q5Ns", "div-VKZWuLQ", "(SJ)J", "div-xj2QHRw", "equals", "", "", "hashCode", "inc", "inc-Mh2AYeg", "inv", "inv-Mh2AYeg", "minus", "minus-7apg3OU", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "minus-xj2QHRw", "or", "or-xj2QHRw", "plus", "plus-7apg3OU", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "plus-xj2QHRw", "rangeTo", "Lkotlin/ranges/UIntRange;", "rangeTo-xj2QHRw", "(SS)Lkotlin/ranges/UIntRange;", "rem", "rem-7apg3OU", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "rem-xj2QHRw", "times", "times-7apg3OU", "times-WZ4Q5Ns", "times-VKZWuLQ", "times-xj2QHRw", "toByte", "", "toByte-impl", "(S)B", "toDouble", "", "toDouble-impl", "(S)D", "toFloat", "", "toFloat-impl", "(S)F", "toInt", "toInt-impl", "(S)I", "toLong", "", "toLong-impl", "(S)J", "toShort", "toShort-impl", "toString", "", "toString-impl", "(S)Ljava/lang/String;", "toUByte", "toUByte-w2LRezQ", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toUShort", "toUShort-Mh2AYeg", "xor", "xor-xj2QHRw", "Companion", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes2-dex2jar.jar:kotlin/UShort.class */
public final class UShort implements Comparable<UShort> {
    public static final Companion Companion = new Companion(null);
    public static final short MAX_VALUE = -1;
    public static final short MIN_VALUE = 0;
    public static final int SIZE_BITS = 16;
    public static final int SIZE_BYTES = 2;
    private final short data;

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u00020\u0004X\u0086Tø\u0001��ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\u0005R\u0016\u0010\u0006\u001a\u00020\u0004X\u0086Tø\u0001��ø\u0001\u0001¢\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\bX\u0086T¢\u0006\u0002\n��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\n"}, m400d2 = {"Lkotlin/UShort$Companion;", "", "()V", "MAX_VALUE", "Lkotlin/UShort;", ExifInterface.LATITUDE_SOUTH, "MIN_VALUE", "SIZE_BITS", "", "SIZE_BYTES", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
    /* loaded from: classes2-dex2jar.jar:kotlin/UShort$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private /* synthetic */ UShort(short s) {
        this.data = s;
    }

    /* renamed from: and-xj2QHRw */
    private static final short m4421andxj2QHRw(short s, short s2) {
        return m4428constructorimpl((short) (s & s2));
    }

    /* renamed from: box-impl */
    public static final /* synthetic */ UShort m4422boximpl(short s) {
        return new UShort(s);
    }

    /* renamed from: compareTo-7apg3OU */
    private static final int m4423compareTo7apg3OU(short s, byte b) {
        return Intrinsics.compare(s & 65535, b & 255);
    }

    /* renamed from: compareTo-VKZWuLQ */
    private static final int m4424compareToVKZWuLQ(short s, long j) {
        return UnsignedKt.ulongCompare(ULong.m4328constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX), j);
    }

    /* renamed from: compareTo-WZ4Q5Ns */
    private static final int m4425compareToWZ4Q5Ns(short s, int i) {
        return UnsignedKt.uintCompare(UInt.m4257constructorimpl(s & 65535), i);
    }

    /* renamed from: compareTo-xj2QHRw */
    private int m4426compareToxj2QHRw(short s) {
        return m4427compareToxj2QHRw(this.data, s);
    }

    /* renamed from: compareTo-xj2QHRw */
    private static int m4427compareToxj2QHRw(short s, short s2) {
        return Intrinsics.compare(s & 65535, s2 & 65535);
    }

    /* renamed from: constructor-impl */
    public static short m4428constructorimpl(short s) {
        return s;
    }

    /* renamed from: dec-Mh2AYeg */
    private static final short m4429decMh2AYeg(short s) {
        return m4428constructorimpl((short) (s - 1));
    }

    /* renamed from: div-7apg3OU */
    private static final int m4430div7apg3OU(short s, byte b) {
        return UnsignedKt.m4490uintDivideJ1ME1BU(UInt.m4257constructorimpl(s & 65535), UInt.m4257constructorimpl(b & 255));
    }

    /* renamed from: div-VKZWuLQ */
    private static final long m4431divVKZWuLQ(short s, long j) {
        return UnsignedKt.m4492ulongDivideeb3DHEI(ULong.m4328constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX), j);
    }

    /* renamed from: div-WZ4Q5Ns */
    private static final int m4432divWZ4Q5Ns(short s, int i) {
        return UnsignedKt.m4490uintDivideJ1ME1BU(UInt.m4257constructorimpl(s & 65535), i);
    }

    /* renamed from: div-xj2QHRw */
    private static final int m4433divxj2QHRw(short s, short s2) {
        return UnsignedKt.m4490uintDivideJ1ME1BU(UInt.m4257constructorimpl(s & 65535), UInt.m4257constructorimpl(s2 & 65535));
    }

    /* renamed from: equals-impl */
    public static boolean m4434equalsimpl(short s, Object obj) {
        return (obj instanceof UShort) && s == ((UShort) obj).m4469unboximpl();
    }

    /* renamed from: equals-impl0 */
    public static final boolean m4435equalsimpl0(short s, short s2) {
        return s == s2;
    }

    public static /* synthetic */ void getData$annotations() {
    }

    /* renamed from: hashCode-impl */
    public static int m4436hashCodeimpl(short s) {
        return s;
    }

    /* renamed from: inc-Mh2AYeg */
    private static final short m4437incMh2AYeg(short s) {
        return m4428constructorimpl((short) (s + 1));
    }

    /* renamed from: inv-Mh2AYeg */
    private static final short m4438invMh2AYeg(short s) {
        return m4428constructorimpl((short) (s ^ (-1)));
    }

    /* renamed from: minus-7apg3OU */
    private static final int m4439minus7apg3OU(short s, byte b) {
        return UInt.m4257constructorimpl(UInt.m4257constructorimpl(s & 65535) - UInt.m4257constructorimpl(b & 255));
    }

    /* renamed from: minus-VKZWuLQ */
    private static final long m4440minusVKZWuLQ(short s, long j) {
        return ULong.m4328constructorimpl(ULong.m4328constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX) - j);
    }

    /* renamed from: minus-WZ4Q5Ns */
    private static final int m4441minusWZ4Q5Ns(short s, int i) {
        return UInt.m4257constructorimpl(UInt.m4257constructorimpl(s & 65535) - i);
    }

    /* renamed from: minus-xj2QHRw */
    private static final int m4442minusxj2QHRw(short s, short s2) {
        return UInt.m4257constructorimpl(UInt.m4257constructorimpl(s & 65535) - UInt.m4257constructorimpl(s2 & 65535));
    }

    /* renamed from: or-xj2QHRw */
    private static final short m4443orxj2QHRw(short s, short s2) {
        return m4428constructorimpl((short) (s | s2));
    }

    /* renamed from: plus-7apg3OU */
    private static final int m4444plus7apg3OU(short s, byte b) {
        return UInt.m4257constructorimpl(UInt.m4257constructorimpl(s & 65535) + UInt.m4257constructorimpl(b & 255));
    }

    /* renamed from: plus-VKZWuLQ */
    private static final long m4445plusVKZWuLQ(short s, long j) {
        return ULong.m4328constructorimpl(ULong.m4328constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX) + j);
    }

    /* renamed from: plus-WZ4Q5Ns */
    private static final int m4446plusWZ4Q5Ns(short s, int i) {
        return UInt.m4257constructorimpl(UInt.m4257constructorimpl(s & 65535) + i);
    }

    /* renamed from: plus-xj2QHRw */
    private static final int m4447plusxj2QHRw(short s, short s2) {
        return UInt.m4257constructorimpl(UInt.m4257constructorimpl(s & 65535) + UInt.m4257constructorimpl(s2 & 65535));
    }

    /* renamed from: rangeTo-xj2QHRw */
    private static final UIntRange m4448rangeToxj2QHRw(short s, short s2) {
        return new UIntRange(UInt.m4257constructorimpl(s & 65535), UInt.m4257constructorimpl(s2 & 65535), null);
    }

    /* renamed from: rem-7apg3OU */
    private static final int m4449rem7apg3OU(short s, byte b) {
        return UnsignedKt.m4491uintRemainderJ1ME1BU(UInt.m4257constructorimpl(s & 65535), UInt.m4257constructorimpl(b & 255));
    }

    /* renamed from: rem-VKZWuLQ */
    private static final long m4450remVKZWuLQ(short s, long j) {
        return UnsignedKt.m4493ulongRemaindereb3DHEI(ULong.m4328constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX), j);
    }

    /* renamed from: rem-WZ4Q5Ns */
    private static final int m4451remWZ4Q5Ns(short s, int i) {
        return UnsignedKt.m4491uintRemainderJ1ME1BU(UInt.m4257constructorimpl(s & 65535), i);
    }

    /* renamed from: rem-xj2QHRw */
    private static final int m4452remxj2QHRw(short s, short s2) {
        return UnsignedKt.m4491uintRemainderJ1ME1BU(UInt.m4257constructorimpl(s & 65535), UInt.m4257constructorimpl(s2 & 65535));
    }

    /* renamed from: times-7apg3OU */
    private static final int m4453times7apg3OU(short s, byte b) {
        return UInt.m4257constructorimpl(UInt.m4257constructorimpl(s & 65535) * UInt.m4257constructorimpl(b & 255));
    }

    /* renamed from: times-VKZWuLQ */
    private static final long m4454timesVKZWuLQ(short s, long j) {
        return ULong.m4328constructorimpl(ULong.m4328constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX) * j);
    }

    /* renamed from: times-WZ4Q5Ns */
    private static final int m4455timesWZ4Q5Ns(short s, int i) {
        return UInt.m4257constructorimpl(UInt.m4257constructorimpl(s & 65535) * i);
    }

    /* renamed from: times-xj2QHRw */
    private static final int m4456timesxj2QHRw(short s, short s2) {
        return UInt.m4257constructorimpl(UInt.m4257constructorimpl(s & 65535) * UInt.m4257constructorimpl(s2 & 65535));
    }

    /* renamed from: toByte-impl */
    private static final byte m4457toByteimpl(short s) {
        return (byte) s;
    }

    /* renamed from: toDouble-impl */
    private static final double m4458toDoubleimpl(short s) {
        return s & 65535;
    }

    /* renamed from: toFloat-impl */
    private static final float m4459toFloatimpl(short s) {
        return s & 65535;
    }

    /* renamed from: toInt-impl */
    private static final int m4460toIntimpl(short s) {
        return s & 65535;
    }

    /* renamed from: toLong-impl */
    private static final long m4461toLongimpl(short s) {
        return s & WebSocketProtocol.PAYLOAD_SHORT_MAX;
    }

    /* renamed from: toShort-impl */
    private static final short m4462toShortimpl(short s) {
        return s;
    }

    /* renamed from: toString-impl */
    public static String m4463toStringimpl(short s) {
        return String.valueOf(s & 65535);
    }

    /* renamed from: toUByte-w2LRezQ */
    private static final byte m4464toUBytew2LRezQ(short s) {
        return UByte.m4188constructorimpl((byte) s);
    }

    /* renamed from: toUInt-pVg5ArA */
    private static final int m4465toUIntpVg5ArA(short s) {
        return UInt.m4257constructorimpl(s & 65535);
    }

    /* renamed from: toULong-s-VKNKU */
    private static final long m4466toULongsVKNKU(short s) {
        return ULong.m4328constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX);
    }

    /* renamed from: toUShort-Mh2AYeg */
    private static final short m4467toUShortMh2AYeg(short s) {
        return s;
    }

    /* renamed from: xor-xj2QHRw */
    private static final short m4468xorxj2QHRw(short s, short s2) {
        return m4428constructorimpl((short) (s ^ s2));
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UShort uShort) {
        return m4426compareToxj2QHRw(uShort.m4469unboximpl());
    }

    public boolean equals(Object obj) {
        return m4434equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m4436hashCodeimpl(this.data);
    }

    public String toString() {
        return m4463toStringimpl(this.data);
    }

    /* renamed from: unbox-impl */
    public final /* synthetic */ short m4469unboximpl() {
        return this.data;
    }
}
