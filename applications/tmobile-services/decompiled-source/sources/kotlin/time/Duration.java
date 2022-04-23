package kotlin.time;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0010��\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b4\b\u0087@\u0018�� v2\u00020\u0001:\u0001vB\u0014\b��\u0012\u0006\u0010!\u001a\u00020\u0007ø\u0001��¢\u0006\u0004\bu\u0010TJ\u001b\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020��H\u0096\u0002ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005J\u001e\u0010\u000b\u001a\u00020��2\u0006\u0010\b\u001a\u00020\u0007H\u0086\u0002ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\t\u0010\nJ\u001e\u0010\u000b\u001a\u00020��2\u0006\u0010\b\u001a\u00020\u0003H\u0086\u0002ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\t\u0010\fJ\u001b\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020��H\u0086\u0002ø\u0001��¢\u0006\u0004\b\r\u0010\nJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0002\u001a\u0004\u0018\u00010\u000eHÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0016\u001a\u00020\u000f¢\u0006\u0004\b\u0014\u0010\u0015J\r\u0010\u0018\u001a\u00020\u000f¢\u0006\u0004\b\u0017\u0010\u0015J\r\u0010\u001a\u001a\u00020\u000f¢\u0006\u0004\b\u0019\u0010\u0015J\r\u0010\u001c\u001a\u00020\u000f¢\u0006\u0004\b\u001b\u0010\u0015J\u001b\u0010\u001e\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0086\u0002ø\u0001��¢\u0006\u0004\b\u001d\u0010\nJ\u001b\u0010 \u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0086\u0002ø\u0001��¢\u0006\u0004\b\u001f\u0010\nJ\u0017\u0010#\u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\"\u0010\u0005J\u001e\u0010%\u001a\u00020��2\u0006\u0010\b\u001a\u00020\u0007H\u0086\u0002ø\u0001��ø\u0001\u0001¢\u0006\u0004\b$\u0010\nJ\u001e\u0010%\u001a\u00020��2\u0006\u0010\b\u001a\u00020\u0003H\u0086\u0002ø\u0001��ø\u0001\u0001¢\u0006\u0004\b$\u0010\fJ\u009d\u0001\u00102\u001a\u00028��\"\u0004\b��\u0010&2u\u0010/\u001aq\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(*\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(+\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(,\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(-\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(.\u0012\u0004\u0012\u00028��0'H\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b0\u00101J\u0088\u0001\u00102\u001a\u00028��\"\u0004\b��\u0010&2`\u0010/\u001a\\\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(+\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(,\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(-\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(.\u0012\u0004\u0012\u00028��03H\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b0\u00104Js\u00102\u001a\u00028��\"\u0004\b��\u0010&2K\u0010/\u001aG\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(,\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(-\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(.\u0012\u0004\u0012\u00028��05H\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b0\u00106J^\u00102\u001a\u00028��\"\u0004\b��\u0010&26\u0010/\u001a2\u0012\u0013\u0012\u001108¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(-\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(.\u0012\u0004\u0012\u00028��07H\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b0\u00109J\u0019\u0010?\u001a\u00020\u00072\n\u0010<\u001a\u00060:j\u0002`;¢\u0006\u0004\b=\u0010>J\u0019\u0010B\u001a\u00020\u00032\n\u0010<\u001a\u00060:j\u0002`;¢\u0006\u0004\b@\u0010AJ\r\u0010F\u001a\u00020C¢\u0006\u0004\bD\u0010EJ\u0019\u0010I\u001a\u0002082\n\u0010<\u001a\u00060:j\u0002`;¢\u0006\u0004\bG\u0010HJ\r\u0010L\u001a\u000208¢\u0006\u0004\bJ\u0010KJ\r\u0010N\u001a\u000208¢\u0006\u0004\bM\u0010KJ\u000f\u0010P\u001a\u00020CH\u0016¢\u0006\u0004\bO\u0010EJ#\u0010P\u001a\u00020C2\n\u0010<\u001a\u00060:j\u0002`;2\b\b\u0002\u0010Q\u001a\u00020\u0003¢\u0006\u0004\bO\u0010RJ\u0016\u0010U\u001a\u00020��H\u0086\u0002ø\u0001��ø\u0001\u0001¢\u0006\u0004\bS\u0010TR\u0019\u0010W\u001a\u00020��8F@\u0006ø\u0001��ø\u0001\u0001¢\u0006\u0006\u001a\u0004\bV\u0010TR\u001c\u0010\\\u001a\u00020\u00038@@\u0001X\u0081\u0004¢\u0006\f\u0012\u0004\bZ\u0010[\u001a\u0004\bX\u0010YR\u0013\u0010^\u001a\u00020\u00078F@\u0006¢\u0006\u0006\u001a\u0004\b]\u0010TR\u0013\u0010`\u001a\u00020\u00078F@\u0006¢\u0006\u0006\u001a\u0004\b_\u0010TR\u0013\u0010b\u001a\u00020\u00078F@\u0006¢\u0006\u0006\u001a\u0004\ba\u0010TR\u0013\u0010d\u001a\u00020\u00078F@\u0006¢\u0006\u0006\u001a\u0004\bc\u0010TR\u0013\u0010f\u001a\u00020\u00078F@\u0006¢\u0006\u0006\u001a\u0004\be\u0010TR\u0013\u0010h\u001a\u00020\u00078F@\u0006¢\u0006\u0006\u001a\u0004\bg\u0010TR\u0013\u0010j\u001a\u00020\u00078F@\u0006¢\u0006\u0006\u001a\u0004\bi\u0010TR\u001c\u0010m\u001a\u00020\u00038@@\u0001X\u0081\u0004¢\u0006\f\u0012\u0004\bl\u0010[\u001a\u0004\bk\u0010YR\u001c\u0010p\u001a\u00020\u00038@@\u0001X\u0081\u0004¢\u0006\f\u0012\u0004\bo\u0010[\u001a\u0004\bn\u0010YR\u001c\u0010s\u001a\u00020\u00038@@\u0001X\u0081\u0004¢\u0006\f\u0012\u0004\br\u0010[\u001a\u0004\bq\u0010YR\u0016\u0010!\u001a\u00020\u00078��@��X\u0080\u0004¢\u0006\u0006\n\u0004\b!\u0010tø\u0001��\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b\u009920\u0001¨\u0006w"}, d2 = {"Lkotlin/time/Duration;", "Ljava/lang/Comparable;", "other", "", "compareTo-LRDsOJo", "(DD)I", "compareTo", "", "scale", "div-UwyO8pc", "(DD)D", "div", "(DI)D", "div-LRDsOJo", "", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "isFinite-impl", "(D)Z", "isFinite", "isInfinite-impl", "isInfinite", "isNegative-impl", "isNegative", "isPositive-impl", "isPositive", "minus-LRDsOJo", "minus", "plus-LRDsOJo", "plus", FirebaseAnalytics.Param.VALUE, "precision-impl", "precision", "times-UwyO8pc", "times", "T", "Lkotlin/Function5;", "Lkotlin/ParameterName;", "name", "days", "hours", "minutes", "seconds", "nanoseconds", "action", "toComponents-impl", "(DLkotlin/jvm/functions/Function5;)Ljava/lang/Object;", "toComponents", "Lkotlin/Function4;", "(DLkotlin/jvm/functions/Function4;)Ljava/lang/Object;", "Lkotlin/Function3;", "(DLkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "Lkotlin/Function2;", "", "(DLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "unit", "toDouble-impl", "(DLjava/util/concurrent/TimeUnit;)D", "toDouble", "toInt-impl", "(DLjava/util/concurrent/TimeUnit;)I", "toInt", "", "toIsoString-impl", "(D)Ljava/lang/String;", "toIsoString", "toLong-impl", "(DLjava/util/concurrent/TimeUnit;)J", "toLong", "toLongMilliseconds-impl", "(D)J", "toLongMilliseconds", "toLongNanoseconds-impl", "toLongNanoseconds", "toString-impl", "toString", "decimals", "(DLjava/util/concurrent/TimeUnit;I)Ljava/lang/String;", "unaryMinus-UwyO8pc", "(D)D", "unaryMinus", "getAbsoluteValue-UwyO8pc", "absoluteValue", "getHoursComponent-impl", "(D)I", "getHoursComponent$annotations", "()V", "hoursComponent", "getInDays-impl", "inDays", "getInHours-impl", "inHours", "getInMicroseconds-impl", "inMicroseconds", "getInMilliseconds-impl", "inMilliseconds", "getInMinutes-impl", "inMinutes", "getInNanoseconds-impl", "inNanoseconds", "getInSeconds-impl", "inSeconds", "getMinutesComponent-impl", "getMinutesComponent$annotations", "minutesComponent", "getNanosecondsComponent-impl", "getNanosecondsComponent$annotations", "nanosecondsComponent", "getSecondsComponent-impl", "getSecondsComponent$annotations", "secondsComponent", "D", "constructor-impl", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalTime
/* loaded from: classes2-dex2jar.jar:kotlin/time/Duration.class */
public final class Duration implements Comparable<Duration> {

    /* renamed from: f */
    private final double f21064f;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011J-\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u00042\n\u0010\u0006\u001a\u00060\u0003j\u0002`\u0004¢\u0006\u0004\b\u0007\u0010\bR\u001f\u0010\n\u001a\u00020\t8\u0006@\u0006ø\u0001��ø\u0001\u0001¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001f\u0010\u000e\u001a\u00020\t8\u0006@\u0006ø\u0001��ø\u0001\u0001¢\u0006\f\n\u0004\b\u000e\u0010\u000b\u001a\u0004\b\u000f\u0010\r\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0012"}, d2 = {"Lkotlin/time/Duration$Companion;", "", FirebaseAnalytics.Param.VALUE, "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "sourceUnit", "targetUnit", "convert", "(DLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)D", "Lkotlin/time/Duration;", "INFINITE", "D", "getINFINITE-UwyO8pc", "()D", "ZERO", "getZERO-UwyO8pc", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/time/Duration$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    static {
        m1407e(0.0d);
        m1407e(Double.POSITIVE_INFINITY);
    }

    /* renamed from: b */
    public static int m1408b(double d, double d2) {
        return Double.compare(d, d2);
    }

    /* renamed from: e */
    public static double m1407e(double d) {
        return d;
    }

    /* renamed from: g */
    public static boolean m1406g(double d, @Nullable Object obj) {
        return (obj instanceof Duration) && Double.compare(d, ((Duration) obj).m1396w()) == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [double] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [double] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final double m1405h(double r3) {
        /*
            r0 = r3
            r5 = r0
            r0 = r3
            boolean r0 = m1401m(r0)
            if (r0 == 0) goto L_0x000e
            r0 = r3
            double r0 = m1397t(r0)
            r5 = r0
        L_0x000e:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.time.Duration.m1405h(double):double");
    }

    /* renamed from: i */
    public static final double m1404i(double d) {
        return m1399p(d, TimeUnit.NANOSECONDS);
    }

    /* renamed from: k */
    public static int m1403k(double d) {
        long doubleToLongBits = Double.doubleToLongBits(d);
        return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
    }

    /* renamed from: l */
    public static final boolean m1402l(double d) {
        return Double.isInfinite(d);
    }

    /* renamed from: m */
    public static final boolean m1401m(double d) {
        boolean z = false;
        if (d < 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: o */
    private static final int m1400o(double d, double d2) {
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

    /* renamed from: p */
    public static final double m1399p(double d, @NotNull TimeUnit unit) {
        TimeUnit b;
        Intrinsics.m1830e(unit, "unit");
        b = DurationKt.m1394b();
        return DurationUnitKt__DurationUnitJvmKt.m1393a(d, b, unit);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00dd  */
    @org.jetbrains.annotations.NotNull
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m1398q(double r7) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.time.Duration.m1398q(double):java.lang.String");
    }

    /* renamed from: t */
    public static final double m1397t(double d) {
        double d2 = -d;
        m1407e(d2);
        return d2;
    }

    /* renamed from: a */
    public int m1409a(double d) {
        return m1408b(this.f21064f, d);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Duration duration) {
        return m1409a(duration.m1396w());
    }

    public boolean equals(Object obj) {
        return m1406g(this.f21064f, obj);
    }

    public int hashCode() {
        return m1403k(this.f21064f);
    }

    @NotNull
    public String toString() {
        return m1398q(this.f21064f);
    }

    /* renamed from: w */
    public final /* synthetic */ double m1396w() {
        return this.f21064f;
    }
}
