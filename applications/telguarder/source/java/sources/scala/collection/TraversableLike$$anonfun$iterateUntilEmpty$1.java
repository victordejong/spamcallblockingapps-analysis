package scala.collection;

import scala.Predef$;
import scala.Serializable;
import scala.collection.immutable.Nil$;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$iterateUntilEmpty$1.class */
public final class TraversableLike$$anonfun$iterateUntilEmpty$1 extends AbstractFunction0<Iterator<Nil$>> implements Serializable {
    public static final long serialVersionUID = 0;

    public TraversableLike$$anonfun$iterateUntilEmpty$1(TraversableLike traversableLike) {
    }

    @Override // scala.Function0
    public final Iterator<Nil$> apply() {
        return Iterator$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new Nil$[]{Nil$.MODULE$}));
    }
}
