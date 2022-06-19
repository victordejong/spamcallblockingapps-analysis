package scala.math;

import scala.math.Fractional;
/* loaded from: classes3-dex2jar.jar:scala/math/Fractional$Implicits$.class */
public class Fractional$Implicits$ implements Fractional.ExtraImplicits {
    public static final Fractional$Implicits$ MODULE$ = null;

    static {
        new Fractional$Implicits$();
    }

    public Fractional$Implicits$() {
        MODULE$ = this;
        Fractional.ExtraImplicits.Cclass.$init$(this);
    }

    @Override // scala.math.Fractional.ExtraImplicits
    public <T> Fractional<T>.FractionalOps infixFractionalOps(T t, Fractional<T> fractional) {
        return Fractional.ExtraImplicits.Cclass.infixFractionalOps(this, t, fractional);
    }
}
