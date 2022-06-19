package scala.math;

import scala.math.Numeric;
/* loaded from: classes3-dex2jar.jar:scala/math/Numeric$Implicits$.class */
public class Numeric$Implicits$ implements Numeric.ExtraImplicits {
    public static final Numeric$Implicits$ MODULE$ = null;

    static {
        new Numeric$Implicits$();
    }

    public Numeric$Implicits$() {
        MODULE$ = this;
        Numeric.ExtraImplicits.Cclass.$init$(this);
    }

    @Override // scala.math.Numeric.ExtraImplicits
    public <T> Numeric<T>.Ops infixNumericOps(T t, Numeric<T> numeric) {
        return Numeric.ExtraImplicits.Cclass.infixNumericOps(this, t, numeric);
    }
}
