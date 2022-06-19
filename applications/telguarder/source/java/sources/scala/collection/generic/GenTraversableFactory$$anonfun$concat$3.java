package scala.collection.generic;

import scala.Serializable;
import scala.collection.Traversable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenTraversableFactory$$anonfun$concat$3.class */
public final class GenTraversableFactory$$anonfun$concat$3 extends AbstractFunction1<Traversable<A>, Builder<A, CC>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder b$1;

    /* JADX WARN: Multi-variable type inference failed */
    public GenTraversableFactory$$anonfun$concat$3(GenTraversableFactory genTraversableFactory, GenTraversableFactory<CC> genTraversableFactory2) {
        this.b$1 = genTraversableFactory2;
    }

    public final Builder<A, CC> apply(Traversable<A> traversable) {
        return (Builder) this.b$1.$plus$plus$eq(traversable);
    }
}
