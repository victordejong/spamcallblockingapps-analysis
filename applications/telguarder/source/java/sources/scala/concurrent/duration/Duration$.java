package scala.concurrent.duration;

import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.LongCompanionObject;
import scala.Function1;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.Predef$;
import scala.Predef$ArrowAssoc$;
import scala.Serializable;
import scala.Some;
import scala.Tuple2;
import scala.collection.Seq;
import scala.collection.TraversableOnce;
import scala.collection.immutable.C$colon$colon;
import scala.collection.immutable.List;
import scala.collection.immutable.List$;
import scala.collection.immutable.Map;
import scala.collection.mutable.StringBuilder;
import scala.concurrent.duration.Duration;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/duration/Duration$.class */
public final class Duration$ implements Serializable {
    public static final Duration$ MODULE$ = null;
    private final long d_per_ns;
    private final long h_per_ns;
    private final double maxPreciseDouble;
    private final long min_per_ns;
    private final long ms_per_ns;
    private final long s_per_ns;
    private final Map<String, TimeUnit> timeUnit;
    private final List<Tuple2<TimeUnit, String>> timeUnitLabels;
    private final Map<TimeUnit, String> timeUnitName;

    /* renamed from: µs_per_ns */
    private final long f1656s_per_ns;
    private final FiniteDuration Zero = new FiniteDuration(0, TimeUnit.DAYS);
    private final Duration.Infinite Undefined = new Duration.Infinite() { // from class: scala.concurrent.duration.Duration$$anon$1
        private Object readResolve() {
            return Duration$.MODULE$.Undefined();
        }

        @Override // scala.concurrent.duration.Duration.Infinite, scala.concurrent.duration.Duration
        public double $div(Duration duration) {
            return Double.NaN;
        }

        @Override // scala.concurrent.duration.Duration.Infinite, scala.concurrent.duration.Duration
        public Duration $div(double d) {
            return this;
        }

        @Override // scala.concurrent.duration.Duration.Infinite, scala.concurrent.duration.Duration
        public Duration $minus(Duration duration) {
            return this;
        }

        @Override // scala.concurrent.duration.Duration.Infinite, scala.concurrent.duration.Duration
        public Duration $plus(Duration duration) {
            return this;
        }

        @Override // scala.concurrent.duration.Duration.Infinite, scala.concurrent.duration.Duration
        public Duration $times(double d) {
            return this;
        }

        public int compare(Duration duration) {
            return duration == this ? 0 : 1;
        }

        public boolean equals(Object obj) {
            return false;
        }

        public String toString() {
            return "Duration.Undefined";
        }

        @Override // scala.concurrent.duration.Duration
        public double toUnit(TimeUnit timeUnit) {
            return Double.NaN;
        }

        @Override // scala.concurrent.duration.Duration
        public Duration unary_$minus() {
            return this;
        }
    };
    private final Duration.Infinite Inf = new Duration.Infinite() { // from class: scala.concurrent.duration.Duration$$anon$2
        private Object readResolve() {
            return Duration$.MODULE$.Inf();
        }

        public int compare(Duration duration) {
            return duration == Duration$.MODULE$.Undefined() ? -1 : duration == this ? 0 : 1;
        }

        public String toString() {
            return "Duration.Inf";
        }

        @Override // scala.concurrent.duration.Duration
        public double toUnit(TimeUnit timeUnit) {
            return Double.POSITIVE_INFINITY;
        }

        @Override // scala.concurrent.duration.Duration
        public Duration unary_$minus() {
            return Duration$.MODULE$.MinusInf();
        }
    };
    private final Duration.Infinite MinusInf = new Duration.Infinite() { // from class: scala.concurrent.duration.Duration$$anon$3
        private Object readResolve() {
            return Duration$.MODULE$.MinusInf();
        }

        public int compare(Duration duration) {
            return duration == this ? 0 : -1;
        }

        public String toString() {
            return "Duration.MinusInf";
        }

        @Override // scala.concurrent.duration.Duration
        public double toUnit(TimeUnit timeUnit) {
            return Double.NEGATIVE_INFINITY;
        }

        @Override // scala.concurrent.duration.Duration
        public Duration unary_$minus() {
            return Duration$.MODULE$.Inf();
        }
    };

    static {
        new Duration$();
    }

    private Duration$() {
        MODULE$ = this;
        List$ list$ = List$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        Predef$ArrowAssoc$ predef$ArrowAssoc$ = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple2 = new Tuple2(Predef$.MODULE$.ArrowAssoc(TimeUnit.DAYS), "d day");
        Predef$ArrowAssoc$ predef$ArrowAssoc$2 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple22 = new Tuple2(Predef$.MODULE$.ArrowAssoc(TimeUnit.HOURS), "h hour");
        Predef$ArrowAssoc$ predef$ArrowAssoc$3 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple23 = new Tuple2(Predef$.MODULE$.ArrowAssoc(TimeUnit.MINUTES), "min minute");
        Predef$ArrowAssoc$ predef$ArrowAssoc$4 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple24 = new Tuple2(Predef$.MODULE$.ArrowAssoc(TimeUnit.SECONDS), "s sec second");
        Predef$ArrowAssoc$ predef$ArrowAssoc$5 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple25 = new Tuple2(Predef$.MODULE$.ArrowAssoc(TimeUnit.MILLISECONDS), "ms milli millisecond");
        Predef$ArrowAssoc$ predef$ArrowAssoc$6 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple26 = new Tuple2(Predef$.MODULE$.ArrowAssoc(TimeUnit.MICROSECONDS), "µs micro microsecond");
        Predef$ArrowAssoc$ predef$ArrowAssoc$7 = Predef$ArrowAssoc$.MODULE$;
        List<Tuple2<TimeUnit, String>> apply = list$.apply((Seq) predef$.wrapRefArray(new Tuple2[]{tuple2, tuple22, tuple23, tuple24, tuple25, tuple26, new Tuple2(Predef$.MODULE$.ArrowAssoc(TimeUnit.NANOSECONDS), "ns nano nanosecond")}));
        this.timeUnitLabels = apply;
        this.timeUnitName = apply.toMap(Predef$.MODULE$.$conforms()).mapValues((Function1) new Duration$$anonfun$3()).toMap(Predef$.MODULE$.$conforms());
        this.timeUnit = ((TraversableOnce) apply.flatMap(new Duration$$anonfun$4(), List$.MODULE$.canBuildFrom())).toMap(Predef$.MODULE$.$conforms());
    }

    private final Option liftedTree1$1(String str) {
        Some some;
        try {
            some = new Some(apply(str));
        } catch (RuntimeException e) {
            some = None$.MODULE$;
        }
        return some;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public Duration.Infinite Inf() {
        return this.Inf;
    }

    public Duration.Infinite MinusInf() {
        return this.MinusInf;
    }

    public Duration.Infinite Undefined() {
        return this.Undefined;
    }

    public FiniteDuration Zero() {
        return this.Zero;
    }

    public Duration apply(double d, TimeUnit timeUnit) {
        return fromNanos(timeUnit.toNanos(1L) * d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x006f, code lost:
        if ("-Inf".equals(r0) != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public scala.concurrent.duration.Duration apply(java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.concurrent.duration.Duration$.apply(java.lang.String):scala.concurrent.duration.Duration");
    }

    public FiniteDuration apply(long j, String str) {
        return new FiniteDuration(j, timeUnit().apply(str));
    }

    public FiniteDuration apply(long j, TimeUnit timeUnit) {
        return new FiniteDuration(j, timeUnit);
    }

    public Duration create(double d, TimeUnit timeUnit) {
        return apply(d, timeUnit);
    }

    public Duration create(String str) {
        return apply(str);
    }

    public FiniteDuration create(long j, String str) {
        return apply(j, str);
    }

    public FiniteDuration create(long j, TimeUnit timeUnit) {
        return apply(j, timeUnit);
    }

    public Duration fromNanos(double d) {
        Duration.Infinite infinite;
        if (Predef$.MODULE$.double2Double(d).isInfinite()) {
            infinite = d > ((double) 0) ? Inf() : MinusInf();
        } else if (Predef$.MODULE$.double2Double(d).isNaN()) {
            infinite = Undefined();
        } else if (d > ((double) LongCompanionObject.MAX_VALUE) || d < Long.MIN_VALUE) {
            throw new IllegalArgumentException(new StringBuilder().append((Object) "trying to construct too large duration with ").append(BoxesRunTime.boxToDouble(d)).append((Object) "ns").toString());
        } else {
            infinite = fromNanos((long) (d + 0.5d));
        }
        return infinite;
    }

    public FiniteDuration fromNanos(long j) {
        return j % 86400000000000L == 0 ? apply(j / 86400000000000L, TimeUnit.DAYS) : j % 3600000000000L == 0 ? apply(j / 3600000000000L, TimeUnit.HOURS) : j % 60000000000L == 0 ? apply(j / 60000000000L, TimeUnit.MINUTES) : j % 1000000000 == 0 ? apply(j / 1000000000, TimeUnit.SECONDS) : j % 1000000 == 0 ? apply(j / 1000000, TimeUnit.MILLISECONDS) : j % 1000 == 0 ? apply(j / 1000, TimeUnit.MICROSECONDS) : apply(j, TimeUnit.NANOSECONDS);
    }

    public List<String> scala$concurrent$duration$Duration$$expandLabels(String str) {
        List<String> scala$concurrent$duration$Duration$$words = scala$concurrent$duration$Duration$$words(str);
        if (scala$concurrent$duration$Duration$$words instanceof C$colon$colon) {
            C$colon$colon c$colon$colon = (C$colon$colon) scala$concurrent$duration$Duration$$words;
            Tuple2 tuple2 = new Tuple2(c$colon$colon.head(), c$colon$colon.tl$1());
            return ((List) ((List) tuple2.mo268_2()).flatMap(new C2591x271d3d00(), List$.MODULE$.canBuildFrom())).$colon$colon((String) tuple2.mo269_1());
        }
        throw new MatchError(scala$concurrent$duration$Duration$$words);
    }

    public List<String> scala$concurrent$duration$Duration$$words(String str) {
        return Predef$.MODULE$.refArrayOps(str.trim().split("\\s+")).toList();
    }

    public Map<String, TimeUnit> timeUnit() {
        return this.timeUnit;
    }

    public Map<TimeUnit, String> timeUnitName() {
        return this.timeUnitName;
    }

    public Option<Tuple2<Object, TimeUnit>> unapply(String str) {
        None$ none$;
        Option liftedTree1$1 = liftedTree1$1(str);
        if (liftedTree1$1.isEmpty()) {
            none$ = None$.MODULE$;
        } else {
            none$ = MODULE$.unapply((Duration) liftedTree1$1.get());
        }
        return none$;
    }

    public Option<Tuple2<Object, TimeUnit>> unapply(Duration duration) {
        return duration.isFinite() ? new Some(new Tuple2(BoxesRunTime.boxToLong(duration.length()), duration.unit())) : None$.MODULE$;
    }
}
