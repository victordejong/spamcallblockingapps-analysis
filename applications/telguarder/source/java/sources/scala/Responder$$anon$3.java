package scala;

import java.util.Objects;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/Responder$$anon$3.class */
public final class Responder$$anon$3 extends Responder<B> {
    private final /* synthetic */ Responder $outer;
    public final Function1 f$2;

    /* JADX WARN: Multi-variable type inference failed */
    public Responder$$anon$3(Responder responder, Responder<A> responder2) {
        Objects.requireNonNull(responder);
        this.$outer = responder;
        this.f$2 = responder2;
    }

    @Override // scala.Responder
    public void respond(Function1<B, BoxedUnit> function1) {
        this.$outer.respond(new Responder$$anon$3$$anonfun$respond$1(this, function1));
    }
}
