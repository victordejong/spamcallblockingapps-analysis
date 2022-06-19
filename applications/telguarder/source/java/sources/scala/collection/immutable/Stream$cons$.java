package scala.collection.immutable;

import scala.Function0;
import scala.Option;
import scala.Tuple2;
import scala.collection.immutable.Stream;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$cons$.class */
public class Stream$cons$ {
    public static final Stream$cons$ MODULE$ = null;

    static {
        new Stream$cons$();
    }

    public Stream$cons$() {
        MODULE$ = this;
    }

    public <A> Stream.Cons<A> apply(A a, Function0<Stream<A>> function0) {
        return new Stream.Cons<>(a, function0);
    }

    public <A> Option<Tuple2<A, Stream<A>>> unapply(Stream<A> stream) {
        return Stream$$hash$colon$colon$.MODULE$.unapply(stream);
    }
}
