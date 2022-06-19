package scala.collection.immutable;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.collection.TraversableLike;
import scala.collection.generic.CanBuildFrom;
import scala.collection.immutable.Stream;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$map$1.class */
public final class Stream$$anonfun$map$1 extends AbstractFunction0<Stream<B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Stream $outer;
    private final Function1 f$1;

    public Stream$$anonfun$map$1(Stream stream, Stream<A> stream2) {
        Objects.requireNonNull(stream);
        this.$outer = stream;
        this.f$1 = stream2;
    }

    @Override // scala.Function0
    public final Stream<B> apply() {
        Stream stream = (Stream) this.$outer.tail();
        Function1 function1 = this.f$1;
        CanBuildFrom canBuildFrom = Stream$.MODULE$.canBuildFrom();
        return (Stream) (canBuildFrom.apply(stream.repr()) instanceof Stream.StreamBuilder ? stream.isEmpty() ? Stream$Empty$.MODULE$ : Stream$cons$.MODULE$.apply(function1.apply(stream.head()), new Stream$$anonfun$map$1(stream, function1)) : TraversableLike.Cclass.map(stream, function1, canBuildFrom));
    }
}
