package scala.collection.immutable;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.collection.immutable.Stream;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$StreamWithFilter$$anonfun$withFilter$1.class */
public final class Stream$StreamWithFilter$$anonfun$withFilter$1 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Stream.StreamWithFilter $outer;
    private final Function1 q$1;

    /* JADX WARN: Multi-variable type inference failed */
    public Stream$StreamWithFilter$$anonfun$withFilter$1(Stream.StreamWithFilter streamWithFilter, Stream<A>.StreamWithFilter streamWithFilter2) {
        Objects.requireNonNull(streamWithFilter);
        this.$outer = streamWithFilter;
        this.q$1 = streamWithFilter2;
    }

    @Override // scala.Function1
    public final boolean apply(A a) {
        return BoxesRunTime.unboxToBoolean(this.$outer.scala$collection$immutable$Stream$StreamWithFilter$$p.apply(a)) && BoxesRunTime.unboxToBoolean(this.q$1.apply(a));
    }
}
