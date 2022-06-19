package scala.collection.parallel.mutable;

import java.util.Objects;
import scala.Array$;
import scala.Function1;
import scala.Predef$;
import scala.Serializable;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.mutable.ParHashTable;
import scala.reflect.ClassTag$;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashTable$EntryIterator$$anonfun$debugInformation$1.class */
public final class ParHashTable$EntryIterator$$anonfun$debugInformation$1 extends AbstractFunction1<Function1<String, BoxedUnit>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParHashTable.EntryIterator $outer;

    public ParHashTable$EntryIterator$$anonfun$debugInformation$1(ParHashTable<K, Entry>.EntryIterator<T, IterRepr> entryIterator) {
        Objects.requireNonNull(entryIterator);
        this.$outer = entryIterator;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Function1) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(Function1<String, BoxedUnit> function1) {
        function1.apply("/--------------------\\");
        function1.apply("Parallel hash table entry iterator");
        function1.apply(new StringBuilder().append((Object) "total hash table elements: ").append(BoxesRunTime.boxToInteger(this.$outer.m77xa6134c45().tableSize())).toString());
        function1.apply(new StringBuilder().append((Object) "pos: ").append(BoxesRunTime.boxToInteger(this.$outer.m75x67c3880f())).toString());
        function1.apply(new StringBuilder().append((Object) "until: ").append(BoxesRunTime.boxToInteger(this.$outer.m69x85af6430())).toString());
        function1.apply(new StringBuilder().append((Object) "traversed: ").append(BoxesRunTime.boxToInteger(this.$outer.m71xce2d9504())).toString());
        function1.apply(new StringBuilder().append((Object) "totalsize: ").append(BoxesRunTime.boxToInteger(this.$outer.m72x602da517())).toString());
        function1.apply(new StringBuilder().append((Object) "current entry: ").append(this.$outer.scala$collection$parallel$mutable$ParHashTable$EntryIterator$$es()).toString());
        function1.apply(new StringBuilder().append((Object) "underlying from ").append(BoxesRunTime.boxToInteger(this.$outer.m75x67c3880f())).append((Object) " until ").append(BoxesRunTime.boxToInteger(this.$outer.m69x85af6430())).toString());
        function1.apply(Predef$.MODULE$.refArrayOps((Object[]) Predef$.MODULE$.refArrayOps((Object[]) Predef$.MODULE$.refArrayOps(this.$outer.m73xc901b88()).slice(this.$outer.m75x67c3880f(), this.$outer.m69x85af6430())).map(new C2590x76e0a0b8(this), Array$.MODULE$.canBuildFrom(ClassTag$.MODULE$.apply(String.class)))).mkString(" | "));
        function1.apply("\\--------------------/");
    }
}
