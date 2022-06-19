package scala.collection.mutable;

import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenTraversableFactory;
import scala.collection.generic.TraversableFactory;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Traversable$.class */
public final class Traversable$ extends GenTraversableFactory<Traversable> implements TraversableFactory<Traversable> {
    public static final Traversable$ MODULE$ = null;

    static {
        new Traversable$();
    }

    private Traversable$() {
        MODULE$ = this;
    }

    public <A> CanBuildFrom<Traversable<?>, A, Traversable<A>> canBuildFrom() {
        return ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, Traversable<A>> newBuilder() {
        return new ArrayBuffer();
    }
}
