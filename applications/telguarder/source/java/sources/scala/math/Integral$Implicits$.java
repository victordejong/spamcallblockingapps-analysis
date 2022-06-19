package scala.math;

import scala.math.Integral;
/* loaded from: classes3-dex2jar.jar:scala/math/Integral$Implicits$.class */
public class Integral$Implicits$ implements Integral.ExtraImplicits {
    public static final Integral$Implicits$ MODULE$ = null;

    static {
        new Integral$Implicits$();
    }

    public Integral$Implicits$() {
        MODULE$ = this;
        Integral.ExtraImplicits.Cclass.$init$(this);
    }

    @Override // scala.math.Integral.ExtraImplicits
    public <T> Integral<T>.IntegralOps infixIntegralOps(T t, Integral<T> integral) {
        return Integral.ExtraImplicits.Cclass.infixIntegralOps(this, t, integral);
    }
}
