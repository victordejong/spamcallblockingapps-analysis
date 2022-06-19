package scala.math;

import java.math.RoundingMode;
import scala.Enumeration;
/* loaded from: classes3-dex2jar.jar:scala/math/BigDecimal$RoundingMode$.class */
public class BigDecimal$RoundingMode$ extends Enumeration {
    public static final BigDecimal$RoundingMode$ MODULE$ = null;

    /* renamed from: UP */
    private final Enumeration.Value f1625UP = Value(RoundingMode.UP.ordinal());
    private final Enumeration.Value DOWN = Value(RoundingMode.DOWN.ordinal());
    private final Enumeration.Value CEILING = Value(RoundingMode.CEILING.ordinal());
    private final Enumeration.Value FLOOR = Value(RoundingMode.FLOOR.ordinal());
    private final Enumeration.Value HALF_UP = Value(RoundingMode.HALF_UP.ordinal());
    private final Enumeration.Value HALF_DOWN = Value(RoundingMode.HALF_DOWN.ordinal());
    private final Enumeration.Value HALF_EVEN = Value(RoundingMode.HALF_EVEN.ordinal());
    private final Enumeration.Value UNNECESSARY = Value(RoundingMode.UNNECESSARY.ordinal());

    static {
        new BigDecimal$RoundingMode$();
    }

    public BigDecimal$RoundingMode$() {
        MODULE$ = this;
    }

    public Enumeration.Value CEILING() {
        return this.CEILING;
    }

    public Enumeration.Value DOWN() {
        return this.DOWN;
    }

    public Enumeration.Value FLOOR() {
        return this.FLOOR;
    }

    public Enumeration.Value HALF_DOWN() {
        return this.HALF_DOWN;
    }

    public Enumeration.Value HALF_EVEN() {
        return this.HALF_EVEN;
    }

    public Enumeration.Value HALF_UP() {
        return this.HALF_UP;
    }

    public Enumeration.Value UNNECESSARY() {
        return this.UNNECESSARY;
    }

    /* renamed from: UP */
    public Enumeration.Value m53UP() {
        return this.f1625UP;
    }
}
