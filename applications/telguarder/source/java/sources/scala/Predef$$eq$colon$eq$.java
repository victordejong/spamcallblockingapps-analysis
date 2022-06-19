package scala;
/* loaded from: classes3-dex2jar.jar:scala/Predef$$eq$colon$eq$.class */
public class Predef$$eq$colon$eq$ implements Serializable {
    public static final Predef$$eq$colon$eq$ MODULE$ = null;

    static {
        new Predef$$eq$colon$eq$();
    }

    public Predef$$eq$colon$eq$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> Predef$$eq$colon$eq<A, A> tpEquals() {
        return (Predef$$eq$colon$eq<A, A>) Predef$.MODULE$.scala$Predef$$singleton_$eq$colon$eq;
    }
}
