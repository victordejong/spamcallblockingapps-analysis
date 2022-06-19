package scala.collection.immutable;

import java.util.Objects;
import scala.Function2;
import scala.Tuple2;
import scala.collection.immutable.HashMap;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashMap$$anon$2.class */
public final class HashMap$$anon$2 extends HashMap.Merger<A1, B1> {
    private final HashMap.Merger<A1, B1> invert = new HashMap.Merger<A1, B1>(this) { // from class: scala.collection.immutable.HashMap$$anon$2$$anon$3
        private final /* synthetic */ HashMap$$anon$2 $outer;

        {
            Objects.requireNonNull(this);
            this.$outer = this;
        }

        @Override // scala.collection.immutable.HashMap.Merger
        public Tuple2<A1, B1> apply(Tuple2<A1, B1> tuple2, Tuple2<A1, B1> tuple22) {
            return (Tuple2) this.$outer.mergef$1.apply(tuple22, tuple2);
        }

        @Override // scala.collection.immutable.HashMap.Merger
        public HashMap.Merger<A1, B1> invert() {
            return this.$outer;
        }
    };
    public final Function2 mergef$1;

    public HashMap$$anon$2(Function2 function2) {
        this.mergef$1 = function2;
    }

    @Override // scala.collection.immutable.HashMap.Merger
    public Tuple2<A1, B1> apply(Tuple2<A1, B1> tuple2, Tuple2<A1, B1> tuple22) {
        return (Tuple2) this.mergef$1.apply(tuple2, tuple22);
    }

    @Override // scala.collection.immutable.HashMap.Merger
    public HashMap.Merger<A1, B1> invert() {
        return this.invert;
    }
}
