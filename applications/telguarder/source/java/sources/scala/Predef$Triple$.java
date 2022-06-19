package scala;
/* loaded from: classes3-dex2jar.jar:scala/Predef$Triple$.class */
public class Predef$Triple$ {
    public static final Predef$Triple$ MODULE$ = null;

    static {
        new Predef$Triple$();
    }

    public Predef$Triple$() {
        MODULE$ = this;
    }

    public <A, B, C> Tuple3<A, B, C> apply(A a, B b, C c) {
        return new Tuple3<>(a, b, c);
    }

    public <A, B, C> Option<Tuple3<A, B, C>> unapply(Tuple3<A, B, C> tuple3) {
        return new Some(tuple3);
    }
}
