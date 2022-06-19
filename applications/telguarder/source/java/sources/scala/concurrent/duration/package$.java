package scala.concurrent.duration;

import java.util.concurrent.TimeUnit;
import scala.Tuple2;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/duration/package$.class */
public final class package$ {
    public static final package$ MODULE$ = null;
    private final TimeUnit DAYS;
    private final TimeUnit HOURS;
    private final TimeUnit MICROSECONDS;
    private final TimeUnit MILLISECONDS;
    private final TimeUnit MINUTES;
    private final TimeUnit NANOSECONDS;
    private final TimeUnit SECONDS;

    static {
        new package$();
    }

    private package$() {
        MODULE$ = this;
    }

    public final TimeUnit DAYS() {
        return TimeUnit.DAYS;
    }

    public double DoubleMult(double d) {
        return d;
    }

    public double DurationDouble(double d) {
        return d;
    }

    public int DurationInt(int i) {
        return i;
    }

    public long DurationLong(long j) {
        return j;
    }

    public final TimeUnit HOURS() {
        return TimeUnit.HOURS;
    }

    public int IntMult(int i) {
        return i;
    }

    public long LongMult(long j) {
        return j;
    }

    public final TimeUnit MICROSECONDS() {
        return TimeUnit.MICROSECONDS;
    }

    public final TimeUnit MILLISECONDS() {
        return TimeUnit.MILLISECONDS;
    }

    public final TimeUnit MINUTES() {
        return TimeUnit.MINUTES;
    }

    public final TimeUnit NANOSECONDS() {
        return TimeUnit.NANOSECONDS;
    }

    public final TimeUnit SECONDS() {
        return TimeUnit.SECONDS;
    }

    public Tuple2<Object, TimeUnit> durationToPair(Duration duration) {
        return new Tuple2<>(BoxesRunTime.boxToLong(duration.length()), duration.unit());
    }

    public Duration pairIntToDuration(Tuple2<Object, TimeUnit> tuple2) {
        return Duration$.MODULE$.apply(tuple2._1$mcI$sp(), tuple2.mo268_2());
    }

    public FiniteDuration pairLongToDuration(Tuple2<Object, TimeUnit> tuple2) {
        return Duration$.MODULE$.apply(tuple2._1$mcJ$sp(), tuple2.mo268_2());
    }
}
