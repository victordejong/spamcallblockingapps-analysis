package scala;

import scala.Specializable;
/* loaded from: classes3-dex2jar.jar:scala/Specializable$.class */
public final class Specializable$ {
    public static final Specializable$ MODULE$ = null;
    private final Specializable.Group<Tuple9<Byte$, Short$, Int$, Long$, Char$, Float$, Double$, Boolean$, Unit$>> Primitives = new Specializable.Group<>(new Tuple9(Byte$.MODULE$, Short$.MODULE$, Int$.MODULE$, Long$.MODULE$, Char$.MODULE$, Float$.MODULE$, Double$.MODULE$, Boolean$.MODULE$, Unit$.MODULE$));
    private final Specializable.Group<Tuple10<Byte$, Short$, Int$, Long$, Char$, Float$, Double$, Boolean$, Unit$, Object>> Everything = new Specializable.Group<>(new Tuple10(Byte$.MODULE$, Short$.MODULE$, Int$.MODULE$, Long$.MODULE$, Char$.MODULE$, Float$.MODULE$, Double$.MODULE$, Boolean$.MODULE$, Unit$.MODULE$, package$.MODULE$.AnyRef()));
    private final Specializable.Group<Tuple4<Int$, Long$, Float$, Double$>> Bits32AndUp = new Specializable.Group<>(new Tuple4(Int$.MODULE$, Long$.MODULE$, Float$.MODULE$, Double$.MODULE$));
    private final Specializable.Group<Tuple5<Byte$, Short$, Int$, Long$, Char$>> Integral = new Specializable.Group<>(new Tuple5(Byte$.MODULE$, Short$.MODULE$, Int$.MODULE$, Long$.MODULE$, Char$.MODULE$));
    private final Specializable.Group<Tuple7<Byte$, Short$, Int$, Long$, Char$, Float$, Double$>> AllNumeric = new Specializable.Group<>(new Tuple7(Byte$.MODULE$, Short$.MODULE$, Int$.MODULE$, Long$.MODULE$, Char$.MODULE$, Float$.MODULE$, Double$.MODULE$));
    private final Specializable.Group<Tuple5<Int$, Double$, Boolean$, Unit$, Object>> BestOfBreed = new Specializable.Group<>(new Tuple5(Int$.MODULE$, Double$.MODULE$, Boolean$.MODULE$, Unit$.MODULE$, package$.MODULE$.AnyRef()));

    static {
        new Specializable$();
    }

    private Specializable$() {
        MODULE$ = this;
    }

    public final Specializable.Group<Tuple7<Byte$, Short$, Int$, Long$, Char$, Float$, Double$>> AllNumeric() {
        return this.AllNumeric;
    }

    public final Specializable.Group<Tuple5<Int$, Double$, Boolean$, Unit$, Object>> BestOfBreed() {
        return this.BestOfBreed;
    }

    public final Specializable.Group<Tuple4<Int$, Long$, Float$, Double$>> Bits32AndUp() {
        return this.Bits32AndUp;
    }

    public final Specializable.Group<Tuple10<Byte$, Short$, Int$, Long$, Char$, Float$, Double$, Boolean$, Unit$, Object>> Everything() {
        return this.Everything;
    }

    public final Specializable.Group<Tuple5<Byte$, Short$, Int$, Long$, Char$>> Integral() {
        return this.Integral;
    }

    public final Specializable.Group<Tuple9<Byte$, Short$, Int$, Long$, Char$, Float$, Double$, Boolean$, Unit$>> Primitives() {
        return this.Primitives;
    }
}
