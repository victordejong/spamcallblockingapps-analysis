package scala;

import scala.runtime.BoxedUnit;
import scala.runtime.Nothing$;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/Responder$.class */
public final class Responder$ implements Serializable {
    public static final Responder$ MODULE$ = null;

    static {
        new Responder$();
    }

    private Responder$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> Responder<A> constant(A a) {
        return new Responder<A>(a) { // from class: scala.Responder$$anon$1
            private final Object x$1;

            {
                this.x$1 = a;
            }

            @Override // scala.Responder
            public void respond(Function1<A, BoxedUnit> function1) {
                function1.apply(this.x$1);
            }
        };
    }

    public <A> boolean exec(Function0<BoxedUnit> function0) {
        function0.apply$mcV$sp();
        return true;
    }

    public <A> Responder<Nothing$> loop(Responder<BoxedUnit> responder) {
        return responder.flatMap(new Responder$$anonfun$loop$1(responder));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [scala.Responder$] */
    public <A> Responder<BoxedUnit> loopWhile(Function0<Object> function0, Responder<BoxedUnit> responder) {
        return function0.apply$mcZ$sp() ? responder.flatMap(new Responder$$anonfun$loopWhile$1(function0, responder)) : constant(BoxedUnit.UNIT);
    }

    public <A> Option<A> run(Responder<A> responder) {
        ObjectRef create = ObjectRef.create(None$.MODULE$);
        responder.foreach(new Responder$$anonfun$run$1(create));
        return (Option) create.elem;
    }
}
