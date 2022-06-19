package scala.concurrent.duration;

import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.LongCompanionObject;
import scala.MatchError;
import scala.Predef$;
import scala.collection.mutable.StringBuilder;
import scala.concurrent.duration.Duration;
import scala.math.package$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.RichLong;
@ScalaSignature(bytes = "\u0006\u0001\t\u0015t!B\u0001\u0003\u0011\u0003I\u0011A\u0004$j]&$X\rR;sCRLwN\u001c\u0006\u0003\u0007\u0011\t\u0001\u0002Z;sCRLwN\u001c\u0006\u0003\u000b\u0019\t!bY8oGV\u0014(/\u001a8u\u0015\u00059\u0011!B:dC2\f7\u0001\u0001\t\u0003\u0015-i\u0011A\u0001\u0004\u0006\u0019\tA\t!\u0004\u0002\u000f\r&t\u0017\u000e^3EkJ\fG/[8o'\rYaB\u0005\t\u0003\u001fAi\u0011AB\u0005\u0003#\u0019\u0011a!\u00118z%\u00164\u0007CA\b\u0014\u0013\t!bA\u0001\u0007TKJL\u0017\r\\5{C\ndW\rC\u0003\u0017\u0017\u0011\u0005q#\u0001\u0004=S:LGO\u0010\u000b\u0002\u0013\u001d)\u0011d\u0003E\u00025\u00059b)\u001b8ji\u0016$UO]1uS>t\u0017j](sI\u0016\u0014X\r\u001a\t\u00037qi\u0011a\u0003\u0004\u0006;-A\tA\b\u0002\u0018\r&t\u0017\u000e^3EkJ\fG/[8o\u0013N|%\u000fZ3sK\u0012\u001c2\u0001H\u0010(!\t\u0001S%D\u0001\"\u0015\t\u00113%\u0001\u0003mC:<'\"\u0001\u0013\u0002\t)\fg/Y\u0005\u0003M\u0005\u0012aa\u00142kK\u000e$\bc\u0001\u00151g9\u0011\u0011F\f\b\u0003U5j\u0011a\u000b\u0006\u0003Y!\ta\u0001\u0010:p_Rt\u0014\"A\u0004\n\u0005=2\u0011a\u00029bG.\fw-Z\u0005\u0003cI\u0012\u0001b\u0014:eKJLgn\u001a\u0006\u0003_\u0019\u0001\"A\u0003\u001b\u0007\t1\u0011!!N\n\u0003iY\u0002\"AC\u001c\n\u0005a\u0012!\u0001\u0003#ve\u0006$\u0018n\u001c8\t\u0011i\"$Q1A\u0005\u0002m\na\u0001\\3oORDW#\u0001\u001f\u0011\u0005=i\u0014B\u0001 \u0007\u0005\u0011auN\\4\t\u0011\u0001#$\u0011!Q\u0001\nq\nq\u0001\\3oORD\u0007\u0005\u0003\u0005Ci\t\u0015\r\u0011\"\u0001D\u0003\u0011)h.\u001b;\u0016\u0003\u0011\u0003\"!R$\u000f\u0005)1\u0015BA\u0018\u0003\u0013\tA\u0015J\u0001\u0005US6,WK\\5u\u0015\ty#\u0001\u0003\u0005Li\t\u0005\t\u0015!\u0003E\u0003\u0015)h.\u001b;!\u0011\u00151B\u0007\"\u0001N)\r\u0019dj\u0014\u0005\u0006u1\u0003\r\u0001\u0010\u0005\u0006\u00052\u0003\r\u0001\u0012\u0005\u0007#R\u0002K\u0011\u0002*\u0002\u000f\t|WO\u001c3fIR\u00111K\u0016\t\u0003\u001fQK!!\u0016\u0004\u0003\u000f\t{w\u000e\\3b]\")q\u000b\u0015a\u0001y\u0005\u0019Q.\u0019=\t\u000be#D\u0011A\u001e\u0002\u000fQ|g*\u00198pg\")1\f\u000eC\u0001w\u0005AAo\\'jGJ|7\u000fC\u0003^i\u0011\u00051(\u0001\u0005u_6KG\u000e\\5t\u0011\u0015yF\u0007\"\u0001<\u0003%!xnU3d_:$7\u000fC\u0003bi\u0011\u00051(A\u0005u_6Kg.\u001e;fg\")1\r\u000eC\u0001w\u00059Ao\u001c%pkJ\u001c\b\"B35\t\u0003Y\u0014A\u0002;p\t\u0006L8\u000fC\u0003hi\u0011\u0005\u0001.\u0001\u0004u_Vs\u0017\u000e\u001e\u000b\u0003S2\u0004\"a\u00046\n\u0005-4!A\u0002#pk\ndW\rC\u0003nM\u0002\u0007A)A\u0001v\u0011\u0015yG\u0007\"\u0001q\u0003\u001d1'o\\7O_^,\u0012!\u001d\t\u0003\u0015IL!a\u001d\u0002\u0003\u0011\u0011+\u0017\r\u001a7j]\u0016Da!\u001e\u001b!\n\u00131\u0018AC;oSR\u001cFO]5oOV\tq\u000f\u0005\u0002!q&\u0011\u00110\t\u0002\u0007'R\u0014\u0018N\\4\t\u000bm$D\u0011\t?\u0002\u0011Q|7\u000b\u001e:j]\u001e$\u0012a\u001e\u0005\u0006}R\"\ta`\u0001\bG>l\u0007/\u0019:f)\u0011\t\t!a\u0002\u0011\u0007=\t\u0019!C\u0002\u0002\u0006\u0019\u00111!\u00138u\u0011\u0019\tI! a\u0001m\u0005)q\u000e\u001e5fe\"A\u0011Q\u0002\u001b!\n\u0013\ty!A\u0004tC\u001a,\u0017\t\u001a3\u0015\u000bq\n\t\"!\u0006\t\u000f\u0005M\u00111\u0002a\u0001y\u0005\t\u0011\rC\u0004\u0002\u0018\u0005-\u0001\u0019\u0001\u001f\u0002\u0003\tD\u0001\"a\u00075A\u0013%\u0011QD\u0001\u0004C\u0012$G#B\u001a\u0002 \u0005\r\u0002bBA\u0011\u00033\u0001\r\u0001P\u0001\f_RDWM\u001d'f]\u001e$\b\u000eC\u0004\u0002&\u0005e\u0001\u0019\u0001#\u0002\u0013=$\b.\u001a:V]&$\bbBA\u0015i\u0011\u0005\u00111F\u0001\u0006IAdWo\u001d\u000b\u0004m\u00055\u0002bBA\u0005\u0003O\u0001\rA\u000e\u0005\b\u0003c!D\u0011AA\u001a\u0003\u0019!S.\u001b8vgR\u0019a'!\u000e\t\u000f\u0005%\u0011q\u0006a\u0001m!9\u0011\u0011\b\u001b\u0005\u0002\u0005m\u0012A\u0002\u0013uS6,7\u000fF\u00027\u0003{Aq!a\u0010\u00028\u0001\u0007\u0011.\u0001\u0004gC\u000e$xN\u001d\u0005\b\u0003\u0007\"D\u0011AA#\u0003\u0011!C-\u001b<\u0015\u0007Y\n9\u0005C\u0004\u0002J\u0005\u0005\u0003\u0019A5\u0002\u000f\u0011Lg/[:pe\"A\u0011Q\n\u001b!\n\u0013\ty%A\u0005nS:,8OW3s_V\t\u0011\u000eC\u0004\u0002DQ\"\t!a\u0015\u0015\u0007%\f)\u0006C\u0004\u0002J\u0005E\u0003\u0019\u0001\u001c\t\u000f\u0005%B\u0007\"\u0001\u0002ZQ\u00191'a\u0017\t\u000f\u0005%\u0011q\u000ba\u0001g!9\u0011\u0011\u0007\u001b\u0005\u0002\u0005}CcA\u001a\u0002b!9\u0011\u0011BA/\u0001\u0004\u0019\u0004bBA3i\u0011\u0005\u0011qM\u0001\u0005a2,8\u000fF\u00024\u0003SBq!!\u0003\u0002d\u0001\u00071\u0007C\u0004\u0002nQ\"\t!a\u001c\u0002\u000b5Lg.^:\u0015\u0007M\n\t\bC\u0004\u0002\n\u0005-\u0004\u0019A\u001a\t\u000f\u0005UD\u0007\"\u0001\u0002x\u0005\u0019Q.\u001b8\u0015\u0007M\nI\bC\u0004\u0002\n\u0005M\u0004\u0019A\u001a\t\r]#D\u0011AA?)\r\u0019\u0014q\u0010\u0005\b\u0003\u0013\tY\b1\u00014\u0011\u001d\t\u0019\u0005\u000eC\u0001\u0003\u0007#2aMAC\u0011\u001d\tI%!!A\u0002qBq!!\u000f5\t\u0003\tI\tF\u00024\u0003\u0017Cq!a\u0010\u0002\b\u0002\u0007A\bC\u0004\u0002\u0010R\"I!!%\u0002\u000fM\fg-Z'vYR)A(a%\u0002\u0018\"9\u0011QSAG\u0001\u0004a\u0014AA0b\u0011\u001d\tI*!$A\u0002q\n!a\u00182\t\u000f\u0005uE\u0007\"\u0001\u0002 \u0006\u0019A-\u001b<\u0015\u0007M\n\t\u000bC\u0004\u0002J\u0005m\u0005\u0019\u0001\u001f\t\u000f\u0005\u0015F\u0007\"\u0001\u0002(\u0006\u0019Q.\u001e7\u0015\u0007M\nI\u000bC\u0004\u0002@\u0005\r\u0006\u0019\u0001\u001f\t\u000f\u00055F\u0007\"\u0001\u00020\u0006aQO\\1ss~#S.\u001b8vgV\t1\u0007C\u0004\u00024R\")!!.\u0002\u0011%\u001ch)\u001b8ji\u0016$\u0012a\u0015\u0005\b\u0003s#DQAA^\u0003)!xnQ8beN,7\u000f^\u000b\u0002m!9\u0011q\u0018\u001b\u0005B\u0005\u0005\u0017AB3rk\u0006d7\u000fF\u0002T\u0003\u0007D\u0001\"!\u0003\u0002>\u0002\u0007\u0011Q\u0019\t\u0004\u001f\u0005\u001d\u0017bAAe\r\t\u0019\u0011I\\=\t\u000f\u00055G\u0007\"\u0011\u0002P\u0006A\u0001.Y:i\u0007>$W\r\u0006\u0002\u0002\u0002!1a\u0003\bC\u0001\u0003'$\u0012A\u0007\u0005\u0007}r!\t!a6\u0015\r\u0005\u0005\u0011\u0011\\An\u0011\u001d\t\u0019\"!6A\u0002MBq!a\u0006\u0002V\u0002\u00071\u0007C\u0005\u0002`r\t\t\u0011\"\u0003\u0002b\u0006Y!/Z1e%\u0016\u001cx\u000e\u001c<f)\u0005y\u0002bBAs\u0017\u0011\u0005\u0011q]\u0001\u0006CB\u0004H.\u001f\u000b\u0006g\u0005%\u00181\u001e\u0005\u0007u\u0005\r\b\u0019\u0001\u001f\t\r\t\u000b\u0019\u000f1\u0001E\u0011\u001d\t)o\u0003C\u0001\u0003_$RaMAy\u0003gDaAOAw\u0001\u0004a\u0004b\u0002\"\u0002n\u0002\u0007\u0011Q\u001f\t\u0005\u0003o\fiPD\u0002\u0010\u0003sL1!a?\u0007\u0003\u0019\u0001&/\u001a3fM&\u0019\u00110a@\u000b\u0007\u0005mh\u0001C\u0005\u0003\u0004-\u0011\r\u0011\"\u0004\u0003\u0006\u00051Q.\u0019=`]N,\"Aa\u0002\u0010\u0005\t%a\u0004C@����������������\t\u0011\t51\u0002)A\u0007\u0005\u000f\tq!\\1y?:\u001c\b\u0005C\u0005\u0003\u0012-\u0011\r\u0011\"\u0004\u0003\u0014\u00059Q.\u0019=`\u0005X\u001eXC\u0001B\u000b\u001f\t\u00119BH\u0004!\tp-;}U|\t\u0011\tm1\u0002)A\u0007\u0005+\t\u0001\"\\1y?\n/<\u000f\t\u0005\n\u0005?Y!\u0019!C\u0007\u0005C\ta!\\1y?6\u001cXC\u0001B\u0012\u001f\t\u0011)C\b\u0004\tGn\u0004.L>\u0005\t\u0005SY\u0001\u0015!\u0004\u0003$\u00059Q.\u0019=`[N\u0004\u0003\"\u0003B\u0017\u0017\t\u0007IQ\u0002B\u0018\u0003\u0015i\u0017\r_0t+\t\u0011\td\u0004\u0002\u00034y)!!Ja~\t!A!qG\u0006!\u0002\u001b\u0011\t$\u0001\u0004nCb|6\u000f\t\u0005\n\u0005wY!\u0019!C\u0007\u0005{\tq!\\1y?6Lg.\u0006\u0002\u0003@=\u0011!\u0011\t\u0010\u0005\u0013%z:\u001f\u0003\u0005\u0003F-\u0001\u000bQ\u0002B \u0003!i\u0017\r_0nS:\u0004\u0003\"\u0003B%\u0017\t\u0007IQ\u0002B&\u0003\u0015i\u0017\r_0i+\t\u0011ie\u0004\u0002\u0003Py\u0019qeF��\t\u0011\tM3\u0002)A\u0007\u0005\u001b\na!\\1y?\"\u0004\u0003\"\u0003B,\u0017\t\u0007IQ\u0002B-\u0003\u0015i\u0017\r_0e+\t\u0011Yf\u0004\u0002\u0003^y\u0019\u0011\u0001i��\t\u0011\t\u00054\u0002)A\u0007\u00057\na!\\1y?\u0012\u0004\u0003\"CAp\u0017\u0005\u0005I\u0011BAq\u0001")
/* loaded from: classes3-dex2jar.jar:scala/concurrent/duration/FiniteDuration.class */
public final class FiniteDuration extends Duration {
    private final long length;
    private final TimeUnit unit;

    public FiniteDuration(long j, TimeUnit timeUnit) {
        boolean z;
        this.length = j;
        this.unit = timeUnit;
        Predef$ predef$ = Predef$.MODULE$;
        if (TimeUnit.NANOSECONDS.equals(timeUnit)) {
            z = bounded(LongCompanionObject.MAX_VALUE);
        } else if (TimeUnit.MICROSECONDS.equals(timeUnit)) {
            z = bounded(9223372036854775L);
        } else if (TimeUnit.MILLISECONDS.equals(timeUnit)) {
            z = bounded(9223372036854L);
        } else if (TimeUnit.SECONDS.equals(timeUnit)) {
            z = bounded(9223372036L);
        } else if (TimeUnit.MINUTES.equals(timeUnit)) {
            z = bounded(153722867L);
        } else if (TimeUnit.HOURS.equals(timeUnit)) {
            z = bounded(2562047L);
        } else if (TimeUnit.DAYS.equals(timeUnit)) {
            z = bounded(106751L);
        } else {
            long convert = TimeUnit.DAYS.convert(j, timeUnit);
            z = -106751 <= convert && convert <= 106751;
        }
        if (z) {
            return;
        }
        throw new IllegalArgumentException(new StringBuilder().append((Object) "requirement failed: ").append((Object) "Duration is limited to +-(2^63-1)ns (ca. 292 years)").toString());
    }

    private FiniteDuration add(long j, TimeUnit timeUnit) {
        TimeUnit unit = timeUnit.convert(1L, unit()) == 0 ? unit() : timeUnit;
        return new FiniteDuration(safeAdd(unit.convert(length(), unit()), unit.convert(j, timeUnit)), unit);
    }

    public static FiniteDuration apply(long j, String str) {
        return FiniteDuration$.MODULE$.apply(j, str);
    }

    public static FiniteDuration apply(long j, TimeUnit timeUnit) {
        return FiniteDuration$.MODULE$.apply(j, timeUnit);
    }

    private boolean bounded(long j) {
        return (-j) <= length() && length() <= j;
    }

    private final FiniteDuration coarserOrThis$1(TimeUnit timeUnit, int i, long j, TimeUnit timeUnit2) {
        FiniteDuration finiteDuration;
        long j2 = i;
        if (j % j2 == 0) {
            finiteDuration = loop$1(j / j2, timeUnit);
        } else {
            TimeUnit unit = unit();
            finiteDuration = (timeUnit2 != null ? !timeUnit2.equals(unit) : unit != null) ? FiniteDuration$.MODULE$.apply(j, timeUnit2) : this;
        }
        return finiteDuration;
    }

    private final FiniteDuration loop$1(long j, TimeUnit timeUnit) {
        FiniteDuration finiteDuration;
        if (TimeUnit.DAYS.equals(timeUnit)) {
            finiteDuration = FiniteDuration$.MODULE$.apply(j, timeUnit);
        } else if (TimeUnit.HOURS.equals(timeUnit)) {
            finiteDuration = coarserOrThis$1(TimeUnit.DAYS, 24, j, timeUnit);
        } else if (TimeUnit.MINUTES.equals(timeUnit)) {
            finiteDuration = coarserOrThis$1(TimeUnit.HOURS, 60, j, timeUnit);
        } else if (TimeUnit.SECONDS.equals(timeUnit)) {
            finiteDuration = coarserOrThis$1(TimeUnit.MINUTES, 60, j, timeUnit);
        } else if (TimeUnit.MILLISECONDS.equals(timeUnit)) {
            finiteDuration = coarserOrThis$1(TimeUnit.SECONDS, 1000, j, timeUnit);
        } else if (TimeUnit.MICROSECONDS.equals(timeUnit)) {
            finiteDuration = coarserOrThis$1(TimeUnit.MILLISECONDS, 1000, j, timeUnit);
        } else if (!TimeUnit.NANOSECONDS.equals(timeUnit)) {
            throw new MatchError(timeUnit);
        } else {
            finiteDuration = coarserOrThis$1(TimeUnit.MICROSECONDS, 1000, j, timeUnit);
        }
        return finiteDuration;
    }

    private double minusZero() {
        return 0.0d;
    }

    private long safeAdd(long j, long j2) {
        int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
        if ((i <= 0 || j <= LongCompanionObject.MAX_VALUE - j2) && (i >= 0 || j >= Long.MIN_VALUE - j2)) {
            return j + j2;
        }
        throw new IllegalArgumentException("integer overflow");
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    private long safeMul(long j, long j2) {
        long abs = package$.MODULE$.abs(j);
        long abs2 = package$.MODULE$.abs(j2);
        if (Long.numberOfLeadingZeros(abs) + Long.numberOfLeadingZeros(abs2) >= 64) {
            ?? r0 = abs * abs2;
            if (r0 < 0) {
                throw new IllegalArgumentException("multiplication overflow");
            }
            boolean z = true;
            boolean z2 = abs == j;
            if (abs2 != j2) {
                z = false;
            }
            char c = r0;
            if (z2 ^ z) {
                c = -r0;
            }
            return c;
        }
        throw new IllegalArgumentException("multiplication overflow");
    }

    private String unitString() {
        return new StringBuilder().append((Object) Duration$.MODULE$.timeUnitName().apply(unit())).append(length() == 1 ? "" : "s").toString();
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [double] */
    /* JADX WARN: Type inference failed for: r0v19, types: [double] */
    @Override // scala.concurrent.duration.Duration
    public double $div(Duration duration) {
        char c;
        if (duration.isFinite()) {
            c = toNanos() / duration.toNanos();
        } else if (duration == Duration$.MODULE$.Undefined()) {
            c = 0;
        } else {
            c = duration.$greater(Duration$.MODULE$.Zero()) ^ ((length() > 0L ? 1 : (length() == 0L ? 0 : -1)) < 0) ? (char) 0 : minusZero();
        }
        return c;
    }

    @Override // scala.concurrent.duration.Duration
    public Duration $div(double d) {
        return Predef$.MODULE$.double2Double(d).isInfinite() ? Predef$.MODULE$.double2Double(d).isNaN() ? Duration$.MODULE$.Undefined() : Duration$.MODULE$.Zero() : Duration$.MODULE$.fromNanos(toNanos() / d);
    }

    public FiniteDuration $div(long j) {
        return Duration$.MODULE$.fromNanos(toNanos() / j);
    }

    @Override // scala.concurrent.duration.Duration
    public Duration $minus(Duration duration) {
        FiniteDuration finiteDuration;
        if (duration instanceof FiniteDuration) {
            FiniteDuration finiteDuration2 = (FiniteDuration) duration;
            finiteDuration = add(-finiteDuration2.length(), finiteDuration2.unit());
        } else {
            finiteDuration = duration.unary_$minus();
        }
        return finiteDuration;
    }

    public FiniteDuration $minus(FiniteDuration finiteDuration) {
        return add(-finiteDuration.length(), finiteDuration.unit());
    }

    @Override // scala.concurrent.duration.Duration
    public Duration $plus(Duration duration) {
        FiniteDuration finiteDuration = duration;
        if (duration instanceof FiniteDuration) {
            FiniteDuration finiteDuration2 = (FiniteDuration) duration;
            finiteDuration = add(finiteDuration2.length(), finiteDuration2.unit());
        }
        return finiteDuration;
    }

    public FiniteDuration $plus(FiniteDuration finiteDuration) {
        return add(finiteDuration.length(), finiteDuration.unit());
    }

    @Override // scala.concurrent.duration.Duration
    public Duration $times(double d) {
        Duration.Infinite infinite;
        if (!Predef$.MODULE$.double2Double(d).isInfinite()) {
            infinite = Duration$.MODULE$.fromNanos(toNanos() * d);
        } else if (Predef$.MODULE$.double2Double(d).isNaN()) {
            infinite = Duration$.MODULE$.Undefined();
        } else {
            boolean z = false;
            if (d > 0) {
                z = true;
            }
            infinite = $less(Duration$.MODULE$.Zero()) ^ z ? Duration$.MODULE$.Inf() : Duration$.MODULE$.MinusInf();
        }
        return infinite;
    }

    public FiniteDuration $times(long j) {
        return new FiniteDuration(safeMul(length(), j), unit());
    }

    public int compare(Duration duration) {
        int i;
        if (duration instanceof FiniteDuration) {
            Predef$ predef$ = Predef$.MODULE$;
            i = new RichLong(toNanos()).compare(BoxesRunTime.boxToLong(((FiniteDuration) duration).toNanos()));
        } else {
            i = -duration.compare(this);
        }
        return i;
    }

    public FiniteDuration div(long j) {
        return $div(j);
    }

    public boolean equals(Object obj) {
        return obj instanceof FiniteDuration ? toNanos() == ((FiniteDuration) obj).toNanos() : super.equals(obj);
    }

    public Deadline fromNow() {
        return Deadline$.MODULE$.now().$plus(this);
    }

    public int hashCode() {
        return (int) toNanos();
    }

    @Override // scala.concurrent.duration.Duration
    public final boolean isFinite() {
        return true;
    }

    @Override // scala.concurrent.duration.Duration
    public long length() {
        return this.length;
    }

    public FiniteDuration max(FiniteDuration finiteDuration) {
        FiniteDuration finiteDuration2 = finiteDuration;
        if ($greater(finiteDuration)) {
            finiteDuration2 = this;
        }
        return finiteDuration2;
    }

    public FiniteDuration min(FiniteDuration finiteDuration) {
        FiniteDuration finiteDuration2 = finiteDuration;
        if ($less(finiteDuration)) {
            finiteDuration2 = this;
        }
        return finiteDuration2;
    }

    public FiniteDuration minus(FiniteDuration finiteDuration) {
        return $minus(finiteDuration);
    }

    public FiniteDuration mul(long j) {
        return $times(j);
    }

    public FiniteDuration plus(FiniteDuration finiteDuration) {
        return $plus(finiteDuration);
    }

    @Override // scala.concurrent.duration.Duration
    public final Duration toCoarsest() {
        TimeUnit unit = unit();
        return ((unit != null && unit.equals(TimeUnit.DAYS)) || length() == 0) ? this : loop$1(length(), unit());
    }

    @Override // scala.concurrent.duration.Duration
    public long toDays() {
        return unit().toDays(length());
    }

    @Override // scala.concurrent.duration.Duration
    public long toHours() {
        return unit().toHours(length());
    }

    @Override // scala.concurrent.duration.Duration
    public long toMicros() {
        return unit().toMicros(length());
    }

    @Override // scala.concurrent.duration.Duration
    public long toMillis() {
        return unit().toMillis(length());
    }

    @Override // scala.concurrent.duration.Duration
    public long toMinutes() {
        return unit().toMinutes(length());
    }

    @Override // scala.concurrent.duration.Duration
    public long toNanos() {
        return unit().toNanos(length());
    }

    @Override // scala.concurrent.duration.Duration
    public long toSeconds() {
        return unit().toSeconds(length());
    }

    public String toString() {
        return new StringBuilder().append((Object) "").append(BoxesRunTime.boxToLong(length())).append((Object) " ").append((Object) unitString()).toString();
    }

    @Override // scala.concurrent.duration.Duration
    public double toUnit(TimeUnit timeUnit) {
        return toNanos() / TimeUnit.NANOSECONDS.convert(1L, timeUnit);
    }

    @Override // scala.concurrent.duration.Duration
    public FiniteDuration unary_$minus() {
        return Duration$.MODULE$.apply(-length(), unit());
    }

    @Override // scala.concurrent.duration.Duration
    public TimeUnit unit() {
        return this.unit;
    }
}
