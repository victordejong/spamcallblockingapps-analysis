package scala.collection;

import scala.Tuple2;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenMapFactory;
import scala.collection.immutable.Map$;
/* loaded from: classes3-dex2jar.jar:scala/collection/GenMap$.class */
public final class GenMap$ extends GenMapFactory<GenMap> {
    public static final GenMap$ MODULE$ = null;

    static {
        new GenMap$();
    }

    private GenMap$() {
        MODULE$ = this;
    }

    public <A, B> CanBuildFrom<GenMap<?, ?>, Tuple2<A, B>, GenMap<A, B>> canBuildFrom() {
        return new GenMapFactory.MapCanBuildFrom(this);
    }

    @Override // scala.collection.generic.GenMapFactory
    public <A, B> GenMap empty() {
        return Map$.MODULE$.empty();
    }
}
