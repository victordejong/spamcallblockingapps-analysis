package scala.collection.immutable;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.collection.GenTraversableOnce;
import scala.collection.TraversableLike;
import scala.collection.generic.CanBuildFrom;
import scala.collection.immutable.Stream;
import scala.runtime.AbstractFunction0;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$flatMap$1.class */
public final class Stream$$anonfun$flatMap$1 extends AbstractFunction0<Stream<B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Stream $outer;
    private final Function1 f$2;
    private final ObjectRef nonEmptyPrefix$1;

    public Stream$$anonfun$flatMap$1(Stream stream, Function1 function1, ObjectRef objectRef) {
        Objects.requireNonNull(stream);
        this.$outer = stream;
        this.f$2 = function1;
        this.nonEmptyPrefix$1 = objectRef;
    }

    /* JADX WARN: Type inference failed for: r1v12, types: [T, scala.collection.immutable.Stream] */
    @Override // scala.Function0
    public final Stream<B> apply() {
        Stream$Empty$ stream$Empty$;
        Stream stream;
        Stream stream2 = (Stream) ((Stream) this.nonEmptyPrefix$1.elem).tail();
        Function1 function1 = this.f$2;
        CanBuildFrom canBuildFrom = Stream$.MODULE$.canBuildFrom();
        if (!(canBuildFrom.apply(stream2.repr()) instanceof Stream.StreamBuilder)) {
            stream$Empty$ = TraversableLike.Cclass.flatMap(stream2, function1, canBuildFrom);
        } else if (stream2.isEmpty()) {
            stream$Empty$ = Stream$Empty$.MODULE$;
        } else {
            ObjectRef create = ObjectRef.create(stream2);
            loop0: while (true) {
                stream = ((GenTraversableOnce) function1.apply(((Stream) create.elem).head())).toStream();
                while (!((Stream) create.elem).isEmpty() && stream.isEmpty()) {
                    create.elem = (Stream) ((Stream) create.elem).tail();
                    if (!((Stream) create.elem).isEmpty()) {
                        break;
                    }
                }
            }
            stream$Empty$ = ((Stream) create.elem).isEmpty() ? Stream$.MODULE$.empty() : stream.append(new Stream$$anonfun$flatMap$1(stream2, function1, create));
        }
        return (Stream) stream$Empty$;
    }
}
