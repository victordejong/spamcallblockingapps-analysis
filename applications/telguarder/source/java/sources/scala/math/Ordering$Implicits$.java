package scala.math;

import scala.collection.Seq;
import scala.math.Ordering;
/* loaded from: classes3-dex2jar.jar:scala/math/Ordering$Implicits$.class */
public class Ordering$Implicits$ implements Ordering.ExtraImplicits {
    public static final Ordering$Implicits$ MODULE$ = null;

    static {
        new Ordering$Implicits$();
    }

    public Ordering$Implicits$() {
        MODULE$ = this;
        Ordering.ExtraImplicits.Cclass.$init$(this);
    }

    @Override // scala.math.Ordering.ExtraImplicits
    public <T> Ordering<T>.Ops infixOrderingOps(T t, Ordering<T> ordering) {
        return Ordering.ExtraImplicits.Cclass.infixOrderingOps(this, t, ordering);
    }

    @Override // scala.math.Ordering.ExtraImplicits
    public <CC extends Seq<Object>, T> Ordering<CC> seqDerivedOrdering(Ordering<T> ordering) {
        return Ordering.ExtraImplicits.Cclass.seqDerivedOrdering(this, ordering);
    }
}
