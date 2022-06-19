package scala;

import java.util.Objects;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/Responder$$anon$2.class */
public final class Responder$$anon$2 extends Responder<B> {
    private final /* synthetic */ Responder $outer;
    public final Function1 f$1;

    /* JADX WARN: Multi-variable type inference failed */
    public Responder$$anon$2(Responder responder, Responder<A> responder2) {
        Objects.requireNonNull(responder);
        this.$outer = responder;
        this.f$1 = responder2;
    }

    @Override // scala.Responder
    public void respond(Function1<B, BoxedUnit> function1) {
        this.$outer.respond(new Responder$$anon$2$$anonfun$respond$2(this, function1));
    }
}
