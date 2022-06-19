package scala.collection.immutable;

import scala.Tuple2;
import scala.collection.Seq;
import scala.collection.generic.CanBuildFrom;
import scala.collection.immutable.LongMap;
import scala.collection.mutable.Builder;
import scala.collection.mutable.MapBuilder;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/LongMap$.class */
public final class LongMap$ {
    public static final LongMap$ MODULE$ = null;

    static {
        new LongMap$();
    }

    private LongMap$() {
        MODULE$ = this;
    }

    public <T> LongMap<T> apply(Seq<Tuple2<Object, T>> seq) {
        return (LongMap) seq.foldLeft(empty(), new LongMap$$anonfun$apply$1());
    }

    public <A, B> Object canBuildFrom() {
        return new CanBuildFrom<LongMap<A>, Tuple2<Object, B>, LongMap<B>>() { // from class: scala.collection.immutable.LongMap$$anon$1
            @Override // scala.collection.generic.CanBuildFrom
            public Builder<Tuple2<Object, B>, LongMap<B>> apply() {
                return new MapBuilder(LongMap$.MODULE$.empty());
            }

            public Builder<Tuple2<Object, B>, LongMap<B>> apply(LongMap<A> longMap) {
                return apply();
            }
        };
    }

    public <T> LongMap<T> empty() {
        return LongMap$Nil$.MODULE$;
    }

    public <T> LongMap<T> singleton(long j, T t) {
        return new LongMap.Tip(j, t);
    }
}
