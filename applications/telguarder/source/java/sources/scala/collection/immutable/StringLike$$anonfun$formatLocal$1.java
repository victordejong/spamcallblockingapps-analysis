package scala.collection.immutable;

import java.util.Objects;
import scala.Serializable;
import scala.collection.immutable.StringLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StringLike$$anonfun$formatLocal$1.class */
public final class StringLike$$anonfun$formatLocal$1 extends AbstractFunction1<Object, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ StringLike $outer;

    public StringLike$$anonfun$formatLocal$1(StringLike<Repr> stringLike) {
        Objects.requireNonNull(stringLike);
        this.$outer = stringLike;
    }

    @Override // scala.Function1
    public final Object apply(Object obj) {
        return StringLike.Cclass.scala$collection$immutable$StringLike$$unwrapArg(this.$outer, obj);
    }
}
