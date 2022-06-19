package scala.collection.mutable;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Publisher$$anonfun$publish$1.class */
public final class Publisher$$anonfun$publish$1 extends AbstractFunction1<Subscriber<Evt, Publisher>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Publisher $outer;
    public final Object event$1;

    public Publisher$$anonfun$publish$1(Publisher publisher, Publisher<Evt> publisher2) {
        Objects.requireNonNull(publisher);
        this.$outer = publisher;
        this.event$1 = publisher2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Subscriber) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(Subscriber<Evt, Publisher> subscriber) {
        if (this.$outer.scala$collection$mutable$Publisher$$suspended().contains(subscriber) || !((MultiMap) this.$outer.scala$collection$mutable$Publisher$$filters()).entryExists(subscriber, new Publisher$$anonfun$publish$1$$anonfun$apply$1(this))) {
            return;
        }
        subscriber.notify(this.$outer.self(), this.event$1);
    }
}
