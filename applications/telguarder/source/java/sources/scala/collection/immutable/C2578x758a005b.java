package scala.collection.immutable;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.collection.immutable.Stream;
import scala.runtime.AbstractFunction0;
import scala.runtime.ObjectRef;
/* renamed from: scala.collection.immutable.Stream$StreamWithFilter$$anonfun$scala$collection$immutable$Stream$StreamWithFilter$$tailMap$1$1 */
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$StreamWithFilter$$anonfun$scala$collection$immutable$Stream$StreamWithFilter$$tailMap$1$1.class */
public final class C2578x758a005b extends AbstractFunction0<Stream<B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Stream.StreamWithFilter $outer;
    private final Function1 f$3;
    private final ObjectRef tail$1;

    public C2578x758a005b(Stream.StreamWithFilter streamWithFilter, Function1 function1, ObjectRef objectRef) {
        Objects.requireNonNull(streamWithFilter);
        this.$outer = streamWithFilter;
        this.f$3 = function1;
        this.tail$1 = objectRef;
    }

    @Override // scala.Function0
    public final Stream<B> apply() {
        return this.$outer.scala$collection$immutable$Stream$StreamWithFilter$$tailMap$1((Stream) this.tail$1.elem, this.f$3);
    }
}
