package scala;
/* loaded from: classes3-dex2jar.jar:scala/Some$.class */
public final class Some$ implements Serializable {
    public static final Some$ MODULE$ = null;

    static {
        new Some$();
    }

    private Some$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> Some<A> apply(A a) {
        return new Some<>(a);
    }

    public final String toString() {
        return "Some";
    }

    public <A> Option<A> unapply(Some<A> some) {
        return some == null ? None$.MODULE$ : new Some(some.m362x());
    }
}
