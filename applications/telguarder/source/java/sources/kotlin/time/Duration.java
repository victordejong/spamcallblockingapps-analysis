package kotlin.time;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b&\n\u0002\u0010\u000b\n\u0002\u0010��\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0087@\u0018�� s2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001sB\u0014\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010%\u001a\u00020\t2\u0006\u0010&\u001a\u00020��H\u0096\u0002ø\u0001��¢\u0006\u0004\b'\u0010(J\u001e\u0010)\u001a\u00020��2\u0006\u0010*\u001a\u00020\u0003H\u0086\u0002ø\u0001��ø\u0001\u0001¢\u0006\u0004\b+\u0010,J\u001e\u0010)\u001a\u00020��2\u0006\u0010*\u001a\u00020\tH\u0086\u0002ø\u0001��ø\u0001\u0001¢\u0006\u0004\b+\u0010-J\u001b\u0010)\u001a\u00020\u00032\u0006\u0010&\u001a\u00020��H\u0086\u0002ø\u0001��¢\u0006\u0004\b.\u0010,J\u0013\u0010/\u001a\u0002002\b\u0010&\u001a\u0004\u0018\u000101HÖ\u0003J\t\u00102\u001a\u00020\tHÖ\u0001J\r\u00103\u001a\u000200¢\u0006\u0004\b4\u00105J\r\u00106\u001a\u000200¢\u0006\u0004\b7\u00105J\r\u00108\u001a\u000200¢\u0006\u0004\b9\u00105J\r\u0010:\u001a\u000200¢\u0006\u0004\b;\u00105J\u001b\u0010<\u001a\u00020��2\u0006\u0010&\u001a\u00020��H\u0086\u0002ø\u0001��¢\u0006\u0004\b=\u0010,J\u001b\u0010>\u001a\u00020��2\u0006\u0010&\u001a\u00020��H\u0086\u0002ø\u0001��¢\u0006\u0004\b?\u0010,J\u0017\u0010@\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002¢\u0006\u0004\bA\u0010(J\u001e\u0010B\u001a\u00020��2\u0006\u0010*\u001a\u00020\u0003H\u0086\u0002ø\u0001��ø\u0001\u0001¢\u0006\u0004\bC\u0010,J\u001e\u0010B\u001a\u00020��2\u0006\u0010*\u001a\u00020\tH\u0086\u0002ø\u0001��ø\u0001\u0001¢\u0006\u0004\bC\u0010-J\u009d\u0001\u0010D\u001a\u0002HE\"\u0004\b��\u0010E2u\u0010F\u001aq\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(J\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(K\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(L\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(M\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(N\u0012\u0004\u0012\u0002HE0GH\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bO\u0010PJ\u0088\u0001\u0010D\u001a\u0002HE\"\u0004\b��\u0010E2`\u0010F\u001a\\\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(K\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(L\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(M\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(N\u0012\u0004\u0012\u0002HE0QH\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bO\u0010RJs\u0010D\u001a\u0002HE\"\u0004\b��\u0010E2K\u0010F\u001aG\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(L\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(M\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(N\u0012\u0004\u0012\u0002HE0SH\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bO\u0010TJ^\u0010D\u001a\u0002HE\"\u0004\b��\u0010E26\u0010F\u001a2\u0012\u0013\u0012\u00110V¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(M\u0012\u0013\u0012\u00110\t¢\u0006\f\bH\u0012\b\bI\u0012\u0004\b\b(N\u0012\u0004\u0012\u0002HE0UH\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bO\u0010WJ\u0019\u0010X\u001a\u00020\u00032\n\u0010Y\u001a\u00060Zj\u0002`[¢\u0006\u0004\b\\\u0010]J\u0019\u0010^\u001a\u00020\t2\n\u0010Y\u001a\u00060Zj\u0002`[¢\u0006\u0004\b_\u0010`J\r\u0010a\u001a\u00020b¢\u0006\u0004\bc\u0010dJ\u0019\u0010e\u001a\u00020V2\n\u0010Y\u001a\u00060Zj\u0002`[¢\u0006\u0004\bf\u0010gJ\r\u0010h\u001a\u00020V¢\u0006\u0004\bi\u0010jJ\r\u0010k\u001a\u00020V¢\u0006\u0004\bl\u0010jJ\u000f\u0010m\u001a\u00020bH\u0016¢\u0006\u0004\bn\u0010dJ#\u0010m\u001a\u00020b2\n\u0010Y\u001a\u00060Zj\u0002`[2\b\b\u0002\u0010o\u001a\u00020\t¢\u0006\u0004\bn\u0010pJ\u0016\u0010q\u001a\u00020��H\u0086\u0002ø\u0001��ø\u0001\u0001¢\u0006\u0004\br\u0010\u0005R\u0017\u0010\u0006\u001a\u00020��8Fø\u0001��ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005R\u001a\u0010\b\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0005R\u0011\u0010\u0010\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0005R\u0011\u0010\u0012\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0005R\u0011\u0010\u0014\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0005R\u0011\u0010\u0016\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0005R\u0011\u0010\u0018\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0005R\u0011\u0010\u001a\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0005R\u001a\u0010\u001c\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b\u001d\u0010\u000b\u001a\u0004\b\u001e\u0010\rR\u001a\u0010\u001f\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b \u0010\u000b\u001a\u0004\b!\u0010\rR\u001a\u0010\"\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b#\u0010\u000b\u001a\u0004\b$\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\u0002\n��ø\u0001��\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b\u009920\u0001¨\u0006t"}, m400d2 = {"Lkotlin/time/Duration;", "", "value", "", "constructor-impl", "(D)D", "absoluteValue", "getAbsoluteValue-UwyO8pc", "hoursComponent", "", "getHoursComponent$annotations", "()V", "getHoursComponent-impl", "(D)I", "inDays", "getInDays-impl", "inHours", "getInHours-impl", "inMicroseconds", "getInMicroseconds-impl", "inMilliseconds", "getInMilliseconds-impl", "inMinutes", "getInMinutes-impl", "inNanoseconds", "getInNanoseconds-impl", "inSeconds", "getInSeconds-impl", "minutesComponent", "getMinutesComponent$annotations", "getMinutesComponent-impl", "nanosecondsComponent", "getNanosecondsComponent$annotations", "getNanosecondsComponent-impl", "secondsComponent", "getSecondsComponent$annotations", "getSecondsComponent-impl", "compareTo", "other", "compareTo-LRDsOJo", "(DD)I", "div", "scale", "div-UwyO8pc", "(DD)D", "(DI)D", "div-LRDsOJo", "equals", "", "", "hashCode", "isFinite", "isFinite-impl", "(D)Z", "isInfinite", "isInfinite-impl", "isNegative", "isNegative-impl", "isPositive", "isPositive-impl", "minus", "minus-LRDsOJo", "plus", "plus-LRDsOJo", "precision", "precision-impl", "times", "times-UwyO8pc", "toComponents", "T", "action", "Lkotlin/Function5;", "Lkotlin/ParameterName;", "name", "days", "hours", "minutes", "seconds", "nanoseconds", "toComponents-impl", "(DLkotlin/jvm/functions/Function5;)Ljava/lang/Object;", "Lkotlin/Function4;", "(DLkotlin/jvm/functions/Function4;)Ljava/lang/Object;", "Lkotlin/Function3;", "(DLkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "Lkotlin/Function2;", "", "(DLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "toDouble", "unit", "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "toDouble-impl", "(DLjava/util/concurrent/TimeUnit;)D", "toInt", "toInt-impl", "(DLjava/util/concurrent/TimeUnit;)I", "toIsoString", "", "toIsoString-impl", "(D)Ljava/lang/String;", "toLong", "toLong-impl", "(DLjava/util/concurrent/TimeUnit;)J", "toLongMilliseconds", "toLongMilliseconds-impl", "(D)J", "toLongNanoseconds", "toLongNanoseconds-impl", "toString", "toString-impl", "decimals", "(DLjava/util/concurrent/TimeUnit;I)Ljava/lang/String;", "unaryMinus", "unaryMinus-UwyO8pc", "Companion", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/time/Duration.class */
public final class Duration implements Comparable<Duration> {
    private final double value;
    public static final Companion Companion = new Companion(null);
    private static final double ZERO = m5539constructorimpl(0.0d);
    private static final double INFINITE = m5539constructorimpl(Double.POSITIVE_INFINITY);

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\n\u0010\r\u001a\u00060\u000ej\u0002`\u000f2\n\u0010\u0010\u001a\u00060\u000ej\u0002`\u000fR\u0019\u0010\u0003\u001a\u00020\u0004ø\u0001��ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u0004ø\u0001��ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0011"}, m400d2 = {"Lkotlin/time/Duration$Companion;", "", "()V", "INFINITE", "Lkotlin/time/Duration;", "getINFINITE-UwyO8pc", "()D", "D", "ZERO", "getZERO-UwyO8pc", "convert", "", "value", "sourceUnit", "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "targetUnit", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:kotlin/time/Duration$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final double convert(double d, TimeUnit sourceUnit, TimeUnit targetUnit) {
            Intrinsics.checkNotNullParameter(sourceUnit, "sourceUnit");
            Intrinsics.checkNotNullParameter(targetUnit, "targetUnit");
            return DurationUnitKt.convertDurationUnit(d, sourceUnit, targetUnit);
        }

        /* renamed from: getINFINITE-UwyO8pc */
        public final double m5583getINFINITEUwyO8pc() {
            return Duration.INFINITE;
        }

        /* renamed from: getZERO-UwyO8pc */
        public final double m5584getZEROUwyO8pc() {
            return Duration.ZERO;
        }
    }

    private /* synthetic */ Duration(double d) {
        this.value = d;
    }

    /* renamed from: box-impl */
    public static final /* synthetic */ Duration m5537boximpl(double d) {
        return new Duration(d);
    }

    /* renamed from: compareTo-LRDsOJo */
    public static int m5538compareToLRDsOJo(double d, double d2) {
        return Double.compare(d, d2);
    }

    /* renamed from: constructor-impl */
    public static double m5539constructorimpl(double d) {
        return d;
    }

    /* renamed from: div-LRDsOJo */
    public static final double m5540divLRDsOJo(double d, double d2) {
        return d / d2;
    }

    /* renamed from: div-UwyO8pc */
    public static final double m5541divUwyO8pc(double d, double d2) {
        return m5539constructorimpl(d / d2);
    }

    /* renamed from: div-UwyO8pc */
    public static final double m5542divUwyO8pc(double d, int i) {
        return m5539constructorimpl(d / i);
    }

    /* renamed from: equals-impl */
    public static boolean m5543equalsimpl(double d, Object obj) {
        return (obj instanceof Duration) && Double.compare(d, ((Duration) obj).m5582unboximpl()) == 0;
    }

    /* renamed from: equals-impl0 */
    public static final boolean m5544equalsimpl0(double d, double d2) {
        return Double.compare(d, d2) == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [double] */
    /* renamed from: getAbsoluteValue-UwyO8pc */
    public static final double m5545getAbsoluteValueUwyO8pc(double d) {
        char c = d;
        if (m5560isNegativeimpl(d)) {
            c = m5580unaryMinusUwyO8pc(d);
        }
        return c;
    }

    public static /* synthetic */ void getHoursComponent$annotations() {
    }

    /* renamed from: getHoursComponent-impl */
    public static final int m5546getHoursComponentimpl(double d) {
        return (int) (m5548getInHoursimpl(d) % 24);
    }

    /* renamed from: getInDays-impl */
    public static final double m5547getInDaysimpl(double d) {
        return m5571toDoubleimpl(d, TimeUnit.DAYS);
    }

    /* renamed from: getInHours-impl */
    public static final double m5548getInHoursimpl(double d) {
        return m5571toDoubleimpl(d, TimeUnit.HOURS);
    }

    /* renamed from: getInMicroseconds-impl */
    public static final double m5549getInMicrosecondsimpl(double d) {
        return m5571toDoubleimpl(d, TimeUnit.MICROSECONDS);
    }

    /* renamed from: getInMilliseconds-impl */
    public static final double m5550getInMillisecondsimpl(double d) {
        return m5571toDoubleimpl(d, TimeUnit.MILLISECONDS);
    }

    /* renamed from: getInMinutes-impl */
    public static final double m5551getInMinutesimpl(double d) {
        return m5571toDoubleimpl(d, TimeUnit.MINUTES);
    }

    /* renamed from: getInNanoseconds-impl */
    public static final double m5552getInNanosecondsimpl(double d) {
        return m5571toDoubleimpl(d, TimeUnit.NANOSECONDS);
    }

    /* renamed from: getInSeconds-impl */
    public static final double m5553getInSecondsimpl(double d) {
        return m5571toDoubleimpl(d, TimeUnit.SECONDS);
    }

    public static /* synthetic */ void getMinutesComponent$annotations() {
    }

    /* renamed from: getMinutesComponent-impl */
    public static final int m5554getMinutesComponentimpl(double d) {
        return (int) (m5551getInMinutesimpl(d) % 60);
    }

    public static /* synthetic */ void getNanosecondsComponent$annotations() {
    }

    /* renamed from: getNanosecondsComponent-impl */
    public static final int m5555getNanosecondsComponentimpl(double d) {
        return (int) (m5552getInNanosecondsimpl(d) % 1.0E9d);
    }

    public static /* synthetic */ void getSecondsComponent$annotations() {
    }

    /* renamed from: getSecondsComponent-impl */
    public static final int m5556getSecondsComponentimpl(double d) {
        return (int) (m5553getInSecondsimpl(d) % 60);
    }

    /* renamed from: hashCode-impl */
    public static int m5557hashCodeimpl(double d) {
        long doubleToLongBits = Double.doubleToLongBits(d);
        return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
    }

    /* renamed from: isFinite-impl */
    public static final boolean m5558isFiniteimpl(double d) {
        return !Double.isInfinite(d) && !Double.isNaN(d);
    }

    /* renamed from: isInfinite-impl */
    public static final boolean m5559isInfiniteimpl(double d) {
        return Double.isInfinite(d);
    }

    /* renamed from: isNegative-impl */
    public static final boolean m5560isNegativeimpl(double d) {
        boolean z = false;
        if (d < 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: isPositive-impl */
    public static final boolean m5561isPositiveimpl(double d) {
        boolean z = false;
        if (d > 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: minus-LRDsOJo */
    public static final double m5562minusLRDsOJo(double d, double d2) {
        return m5539constructorimpl(d - d2);
    }

    /* renamed from: plus-LRDsOJo */
    public static final double m5563plusLRDsOJo(double d, double d2) {
        return m5539constructorimpl(d + d2);
    }

    /* renamed from: precision-impl */
    private static final int m5564precisionimpl(double d, double d2) {
        int i = 1;
        if (d2 < 1) {
            i = 3;
        } else if (d2 < 10) {
            i = 2;
        } else if (d2 >= 100) {
            i = 0;
        }
        return i;
    }

    /* renamed from: times-UwyO8pc */
    public static final double m5565timesUwyO8pc(double d, double d2) {
        return m5539constructorimpl(d * d2);
    }

    /* renamed from: times-UwyO8pc */
    public static final double m5566timesUwyO8pc(double d, int i) {
        return m5539constructorimpl(d * i);
    }

    /* renamed from: toComponents-impl */
    public static final <T> T m5567toComponentsimpl(double d, Function2<? super Long, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf((long) m5553getInSecondsimpl(d)), Integer.valueOf(m5555getNanosecondsComponentimpl(d)));
    }

    /* renamed from: toComponents-impl */
    public static final <T> T m5568toComponentsimpl(double d, Function3<? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Integer.valueOf((int) m5551getInMinutesimpl(d)), Integer.valueOf(m5556getSecondsComponentimpl(d)), Integer.valueOf(m5555getNanosecondsComponentimpl(d)));
    }

    /* renamed from: toComponents-impl */
    public static final <T> T m5569toComponentsimpl(double d, Function4<? super Integer, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Integer.valueOf((int) m5548getInHoursimpl(d)), Integer.valueOf(m5554getMinutesComponentimpl(d)), Integer.valueOf(m5556getSecondsComponentimpl(d)), Integer.valueOf(m5555getNanosecondsComponentimpl(d)));
    }

    /* renamed from: toComponents-impl */
    public static final <T> T m5570toComponentsimpl(double d, Function5<? super Integer, ? super Integer, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Integer.valueOf((int) m5547getInDaysimpl(d)), Integer.valueOf(m5546getHoursComponentimpl(d)), Integer.valueOf(m5554getMinutesComponentimpl(d)), Integer.valueOf(m5556getSecondsComponentimpl(d)), Integer.valueOf(m5555getNanosecondsComponentimpl(d)));
    }

    /* renamed from: toDouble-impl */
    public static final double m5571toDoubleimpl(double d, TimeUnit unit) {
        TimeUnit storageUnit;
        Intrinsics.checkNotNullParameter(unit, "unit");
        storageUnit = DurationKt.getStorageUnit();
        return DurationUnitKt.convertDurationUnit(d, storageUnit, unit);
    }

    /* renamed from: toInt-impl */
    public static final int m5572toIntimpl(double d, TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        return (int) m5571toDoubleimpl(d, unit);
    }

    /* renamed from: toIsoString-impl */
    public static final String m5573toIsoStringimpl(double d) {
        StringBuilder sb = new StringBuilder();
        if (m5560isNegativeimpl(d)) {
            sb.append('-');
        }
        sb.append("PT");
        double m5545getAbsoluteValueUwyO8pc = m5545getAbsoluteValueUwyO8pc(d);
        int m5548getInHoursimpl = (int) m5548getInHoursimpl(m5545getAbsoluteValueUwyO8pc);
        int m5554getMinutesComponentimpl = m5554getMinutesComponentimpl(m5545getAbsoluteValueUwyO8pc);
        int m5556getSecondsComponentimpl = m5556getSecondsComponentimpl(m5545getAbsoluteValueUwyO8pc);
        int m5555getNanosecondsComponentimpl = m5555getNanosecondsComponentimpl(m5545getAbsoluteValueUwyO8pc);
        boolean z = m5548getInHoursimpl != 0;
        boolean z2 = (m5556getSecondsComponentimpl == 0 && m5555getNanosecondsComponentimpl == 0) ? false : true;
        boolean z3 = true;
        if (m5554getMinutesComponentimpl == 0) {
            z3 = z2 && z;
        }
        if (z) {
            sb.append(m5548getInHoursimpl);
            sb.append('H');
        }
        if (z3) {
            sb.append(m5554getMinutesComponentimpl);
            sb.append('M');
        }
        if (z2 || (!z && !z3)) {
            sb.append(m5556getSecondsComponentimpl);
            if (m5555getNanosecondsComponentimpl != 0) {
                sb.append('.');
                String padStart = StringsKt.padStart(String.valueOf(m5555getNanosecondsComponentimpl), 9, '0');
                if (m5555getNanosecondsComponentimpl % 1000000 == 0) {
                    sb.append((CharSequence) padStart, 0, 3);
                    Intrinsics.checkNotNullExpressionValue(sb, "this.append(value, startIndex, endIndex)");
                } else if (m5555getNanosecondsComponentimpl % 1000 == 0) {
                    sb.append((CharSequence) padStart, 0, 6);
                    Intrinsics.checkNotNullExpressionValue(sb, "this.append(value, startIndex, endIndex)");
                } else {
                    sb.append(padStart);
                }
            }
            sb.append('S');
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    /* renamed from: toLong-impl */
    public static final long m5574toLongimpl(double d, TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        return (long) m5571toDoubleimpl(d, unit);
    }

    /* renamed from: toLongMilliseconds-impl */
    public static final long m5575toLongMillisecondsimpl(double d) {
        return m5574toLongimpl(d, TimeUnit.MILLISECONDS);
    }

    /* renamed from: toLongNanoseconds-impl */
    public static final long m5576toLongNanosecondsimpl(double d) {
        return m5574toLongimpl(d, TimeUnit.NANOSECONDS);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00de  */
    /* renamed from: toString-impl */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m5577toStringimpl(double r7) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.time.Duration.m5577toStringimpl(double):java.lang.String");
    }

    /* renamed from: toString-impl */
    public static final String m5578toStringimpl(double d, TimeUnit unit, int i) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("decimals must be not negative, but was " + i).toString());
        } else if (m5559isInfiniteimpl(d)) {
            return String.valueOf(d);
        } else {
            double m5571toDoubleimpl = m5571toDoubleimpl(d, unit);
            StringBuilder sb = new StringBuilder();
            sb.append(Math.abs(m5571toDoubleimpl) < 1.0E14d ? FormatToDecimalsKt.formatToExactDecimals(m5571toDoubleimpl, RangesKt.coerceAtMost(i, 12)) : FormatToDecimalsKt.formatScientific(m5571toDoubleimpl));
            sb.append(DurationUnitKt.shortName(unit));
            return sb.toString();
        }
    }

    /* renamed from: toString-impl$default */
    public static /* synthetic */ String m5579toStringimpl$default(double d, TimeUnit timeUnit, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return m5578toStringimpl(d, timeUnit, i);
    }

    /* renamed from: unaryMinus-UwyO8pc */
    public static final double m5580unaryMinusUwyO8pc(double d) {
        return m5539constructorimpl(-d);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Duration duration) {
        return m5581compareToLRDsOJo(duration.m5582unboximpl());
    }

    /* renamed from: compareTo-LRDsOJo */
    public int m5581compareToLRDsOJo(double d) {
        return m5538compareToLRDsOJo(this.value, d);
    }

    public boolean equals(Object obj) {
        return m5543equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m5557hashCodeimpl(this.value);
    }

    public String toString() {
        return m5577toStringimpl(this.value);
    }

    /* renamed from: unbox-impl */
    public final /* synthetic */ double m5582unboximpl() {
        return this.value;
    }
}
