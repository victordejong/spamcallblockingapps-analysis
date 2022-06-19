package scala.collection.immutable;

import scala.Predef$;
import scala.Predef$ArrowAssoc$;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.immutable.NumericRange;
import scala.math.Integral;
import scala.math.Numeric;
import scala.math.Numeric$BigDecimalAsIfIntegral$;
import scala.math.Numeric$BigIntIsIntegral$;
import scala.math.Numeric$ByteIsIntegral$;
import scala.math.Numeric$CharIsIntegral$;
import scala.math.Numeric$DoubleAsIfIntegral$;
import scala.math.Numeric$FloatAsIfIntegral$;
import scala.math.Numeric$IntIsIntegral$;
import scala.math.Numeric$LongIsIntegral$;
import scala.math.Numeric$ShortIsIntegral$;
import scala.math.Ordering;
import scala.math.Ordering$BigDecimal$;
import scala.math.Ordering$BigInt$;
import scala.math.Ordering$Byte$;
import scala.math.Ordering$Char$;
import scala.math.Ordering$Double$;
import scala.math.Ordering$Float$;
import scala.math.Ordering$Int$;
import scala.math.Ordering$Long$;
import scala.math.Ordering$Short$;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/NumericRange$.class */
public final class NumericRange$ implements Serializable {
    public static final NumericRange$ MODULE$ = null;
    private final Map<Numeric<?>, Ordering<?>> defaultOrdering;

    static {
        new NumericRange$();
    }

    private NumericRange$() {
        MODULE$ = this;
        Map$ map$ = Map$.MODULE$;
        Predef$ predef$ = Predef$.MODULE$;
        Predef$ArrowAssoc$ predef$ArrowAssoc$ = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple2 = new Tuple2(Predef$.MODULE$.ArrowAssoc(Numeric$BigIntIsIntegral$.MODULE$), Ordering$BigInt$.MODULE$);
        Predef$ArrowAssoc$ predef$ArrowAssoc$2 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple22 = new Tuple2(Predef$.MODULE$.ArrowAssoc(Numeric$IntIsIntegral$.MODULE$), Ordering$Int$.MODULE$);
        Predef$ArrowAssoc$ predef$ArrowAssoc$3 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple23 = new Tuple2(Predef$.MODULE$.ArrowAssoc(Numeric$ShortIsIntegral$.MODULE$), Ordering$Short$.MODULE$);
        Predef$ArrowAssoc$ predef$ArrowAssoc$4 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple24 = new Tuple2(Predef$.MODULE$.ArrowAssoc(Numeric$ByteIsIntegral$.MODULE$), Ordering$Byte$.MODULE$);
        Predef$ArrowAssoc$ predef$ArrowAssoc$5 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple25 = new Tuple2(Predef$.MODULE$.ArrowAssoc(Numeric$CharIsIntegral$.MODULE$), Ordering$Char$.MODULE$);
        Predef$ArrowAssoc$ predef$ArrowAssoc$6 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple26 = new Tuple2(Predef$.MODULE$.ArrowAssoc(Numeric$LongIsIntegral$.MODULE$), Ordering$Long$.MODULE$);
        Predef$ArrowAssoc$ predef$ArrowAssoc$7 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple27 = new Tuple2(Predef$.MODULE$.ArrowAssoc(Numeric$FloatAsIfIntegral$.MODULE$), Ordering$Float$.MODULE$);
        Predef$ArrowAssoc$ predef$ArrowAssoc$8 = Predef$ArrowAssoc$.MODULE$;
        Tuple2 tuple28 = new Tuple2(Predef$.MODULE$.ArrowAssoc(Numeric$DoubleAsIfIntegral$.MODULE$), Ordering$Double$.MODULE$);
        Predef$ArrowAssoc$ predef$ArrowAssoc$9 = Predef$ArrowAssoc$.MODULE$;
        this.defaultOrdering = (Map) map$.apply(predef$.wrapRefArray(new Tuple2[]{tuple2, tuple22, tuple23, tuple24, tuple25, tuple26, tuple27, tuple28, new Tuple2(Predef$.MODULE$.ArrowAssoc(Numeric$BigDecimalAsIfIntegral$.MODULE$), Ordering$BigDecimal$.MODULE$)}));
    }

    private final Object check$1(Object obj, Integral integral, Object obj2) {
        if (!integral.mo37gt(obj, obj2)) {
            return obj;
        }
        throw new IllegalArgumentException("More than Int.MaxValue elements.");
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T> NumericRange.Exclusive<T> apply(T t, T t2, T t3, Integral<T> integral) {
        return new NumericRange.Exclusive<>(t, t2, t3, integral);
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x02d3, code lost:
        if ((r0 == r0 ? true : r0 == null ? false : r0 instanceof java.lang.Number ? scala.runtime.BoxesRunTime.equalsNumObject((java.lang.Number) r0, r0) : r0 instanceof java.lang.Character ? scala.runtime.BoxesRunTime.equalsCharObject((java.lang.Character) r0, r0) : r0.equals(r0)) != false) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x04e7, code lost:
        if ((r7 == r8 ? true : r7 == null ? false : r7 instanceof java.lang.Number ? scala.runtime.BoxesRunTime.equalsNumObject((java.lang.Number) r7, r8) : r7 instanceof java.lang.Character ? scala.runtime.BoxesRunTime.equalsCharObject((java.lang.Character) r7, r8) : r7.equals(r8)) != false) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c4, code lost:
        if (r10 != false) goto L185;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> int count(T r7, T r8, T r9, boolean r10, scala.math.Integral<T> r11) {
        /*
            Method dump skipped, instructions count: 1325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.immutable.NumericRange$.count(java.lang.Object, java.lang.Object, java.lang.Object, boolean, scala.math.Integral):int");
    }

    public Map<Numeric<?>, Ordering<?>> defaultOrdering() {
        return this.defaultOrdering;
    }

    public <T> NumericRange.Inclusive<T> inclusive(T t, T t2, T t3, Integral<T> integral) {
        return new NumericRange.Inclusive<>(t, t2, t3, integral);
    }
}
