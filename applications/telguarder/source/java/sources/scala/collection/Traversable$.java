package scala.collection;

import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenTraversableFactory;
import scala.collection.generic.TraversableFactory;
import scala.collection.mutable.Builder;
import scala.util.control.Breaks;
/* loaded from: classes3-dex2jar.jar:scala/collection/Traversable$.class */
public final class Traversable$ extends GenTraversableFactory<Traversable> implements TraversableFactory<Traversable> {
    public static final Traversable$ MODULE$ = null;
    private final Breaks breaks = new Breaks();

    static {
        new Traversable$();
    }

    private Traversable$() {
        MODULE$ = this;
    }

    public Breaks breaks() {
        return this.breaks;
    }

    public <A> CanBuildFrom<Traversable<?>, A, Traversable<A>> canBuildFrom() {
        return ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, Traversable<A>> newBuilder() {
        return scala.collection.immutable.Traversable$.MODULE$.newBuilder();
    }
}
