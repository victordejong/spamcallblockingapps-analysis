package scala.collection.immutable;

import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenTraversableFactory;
import scala.collection.generic.TraversableFactory;
import scala.collection.mutable.Builder;
import scala.collection.mutable.ListBuffer;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Iterable$.class */
public final class Iterable$ extends GenTraversableFactory<Iterable> implements TraversableFactory<Iterable> {
    public static final Iterable$ MODULE$ = null;

    static {
        new Iterable$();
    }

    private Iterable$() {
        MODULE$ = this;
    }

    public <A> CanBuildFrom<Iterable<?>, A, Iterable<A>> canBuildFrom() {
        return ReusableCBF();
    }

    @Override // scala.collection.generic.GenericCompanion
    public <A> Builder<A, Iterable<A>> newBuilder() {
        return new ListBuffer();
    }
}
