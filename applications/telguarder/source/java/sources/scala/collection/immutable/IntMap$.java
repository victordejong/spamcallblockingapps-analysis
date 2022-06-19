package scala.collection.immutable;

import scala.Tuple2;
import scala.collection.Seq;
import scala.collection.generic.CanBuildFrom;
import scala.collection.immutable.IntMap;
import scala.collection.mutable.Builder;
import scala.collection.mutable.MapBuilder;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/IntMap$.class */
public final class IntMap$ {
    public static final IntMap$ MODULE$ = null;

    static {
        new IntMap$();
    }

    private IntMap$() {
        MODULE$ = this;
    }

    public <T> IntMap<T> apply(Seq<Tuple2<Object, T>> seq) {
        return (IntMap) seq.foldLeft(empty(), new IntMap$$anonfun$apply$1());
    }

    public <A, B> Object canBuildFrom() {
        return new CanBuildFrom<IntMap<A>, Tuple2<Object, B>, IntMap<B>>() { // from class: scala.collection.immutable.IntMap$$anon$1
            @Override // scala.collection.generic.CanBuildFrom
            public Builder<Tuple2<Object, B>, IntMap<B>> apply() {
                return new MapBuilder(IntMap$.MODULE$.empty());
            }

            public Builder<Tuple2<Object, B>, IntMap<B>> apply(IntMap<A> intMap) {
                return apply();
            }
        };
    }

    public <T> IntMap<T> empty() {
        return IntMap$Nil$.MODULE$;
    }

    public <T> IntMap<T> singleton(int i, T t) {
        return new IntMap.Tip(i, t);
    }
}
