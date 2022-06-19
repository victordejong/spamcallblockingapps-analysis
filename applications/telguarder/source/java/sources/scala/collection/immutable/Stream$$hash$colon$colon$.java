package scala.collection.immutable;

import scala.None$;
import scala.Option;
import scala.Some;
import scala.Tuple2;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$hash$colon$colon$.class */
public class Stream$$hash$colon$colon$ {
    public static final Stream$$hash$colon$colon$ MODULE$ = null;

    static {
        new Stream$$hash$colon$colon$();
    }

    public Stream$$hash$colon$colon$() {
        MODULE$ = this;
    }

    public <A> Option<Tuple2<A, Stream<A>>> unapply(Stream<A> stream) {
        return stream.isEmpty() ? None$.MODULE$ : new Some(new Tuple2(stream.head(), stream.tail()));
    }
}
