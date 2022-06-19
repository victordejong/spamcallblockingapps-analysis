package scala.collection.convert;

import java.util.Objects;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.convert.Wrappers;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/convert/Wrappers$JDictionaryWrapper$$anonfun$iterator$1.class */
public final class Wrappers$JDictionaryWrapper$$anonfun$iterator$1 extends AbstractFunction1<A, Tuple2<A, B>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Wrappers.JDictionaryWrapper $outer;

    public Wrappers$JDictionaryWrapper$$anonfun$iterator$1(Wrappers.JDictionaryWrapper<A, B> jDictionaryWrapper) {
        Objects.requireNonNull(jDictionaryWrapper);
        this.$outer = jDictionaryWrapper;
    }

    @Override // scala.Function1
    public final Tuple2<A, B> apply(A a) {
        return new Tuple2<>(a, this.$outer.underlying().get(a));
    }
}
