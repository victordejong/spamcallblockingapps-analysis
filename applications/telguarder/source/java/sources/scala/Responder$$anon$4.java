package scala;

import java.util.Objects;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/Responder$$anon$4.class */
public final class Responder$$anon$4 extends Responder<A> {
    private final /* synthetic */ Responder $outer;
    public final Function1 p$1;

    /* JADX WARN: Multi-variable type inference failed */
    public Responder$$anon$4(Responder responder, Responder<A> responder2) {
        Objects.requireNonNull(responder);
        this.$outer = responder;
        this.p$1 = responder2;
    }

    @Override // scala.Responder
    public void respond(Function1<A, BoxedUnit> function1) {
        this.$outer.respond(new Responder$$anon$4$$anonfun$respond$3(this, function1));
    }
}
