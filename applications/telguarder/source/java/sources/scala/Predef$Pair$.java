package scala;
/* loaded from: classes3-dex2jar.jar:scala/Predef$Pair$.class */
public class Predef$Pair$ {
    public static final Predef$Pair$ MODULE$ = null;

    static {
        new Predef$Pair$();
    }

    public Predef$Pair$() {
        MODULE$ = this;
    }

    public <A, B> Tuple2<A, B> apply(A a, B b) {
        return new Tuple2<>(a, b);
    }

    public <A, B> Option<Tuple2<A, B>> unapply(Tuple2<A, B> tuple2) {
        return new Some(tuple2);
    }
}
