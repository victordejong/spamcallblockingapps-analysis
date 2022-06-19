package scala.collection.immutable;

import scala.collection.immutable.NumericRange;
import scala.math.BigInt;
import scala.math.Numeric$BigIntIsIntegral$;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Range$BigInt$.class */
public class Range$BigInt$ {
    public static final Range$BigInt$ MODULE$ = null;

    static {
        new Range$BigInt$();
    }

    public Range$BigInt$() {
        MODULE$ = this;
    }

    public NumericRange.Exclusive<BigInt> apply(BigInt bigInt, BigInt bigInt2, BigInt bigInt3) {
        return NumericRange$.MODULE$.apply(bigInt, bigInt2, bigInt3, Numeric$BigIntIsIntegral$.MODULE$);
    }

    public NumericRange.Inclusive<BigInt> inclusive(BigInt bigInt, BigInt bigInt2, BigInt bigInt3) {
        return NumericRange$.MODULE$.inclusive(bigInt, bigInt2, bigInt3, Numeric$BigIntIsIntegral$.MODULE$);
    }
}
