package scala.collection.generic;

import scala.Function1;
import scala.Predef$;
import scala.collection.GenTraversableLike;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/IsTraversableLike$.class */
public final class IsTraversableLike$ {
    public static final IsTraversableLike$ MODULE$ = null;
    private final IsTraversableLike<String> stringRepr = new IsTraversableLike<String>() { // from class: scala.collection.generic.IsTraversableLike$$anon$1
        private final Function1<String, GenTraversableLike<Object, String>> conversion = new IsTraversableLike$$anon$1$$anonfun$1(this);

        {
            Predef$ predef$ = Predef$.MODULE$;
        }

        @Override // scala.collection.generic.IsTraversableLike
        public Function1<String, GenTraversableLike<Object, String>> conversion() {
            return this.conversion;
        }
    };

    static {
        new IsTraversableLike$();
    }

    private IsTraversableLike$() {
        MODULE$ = this;
    }

    public <C, A0> IsTraversableLike<C> genTraversableLikeRepr(Function1<C, GenTraversableLike<A0, C>> function1) {
        return new IsTraversableLike<C>(function1) { // from class: scala.collection.generic.IsTraversableLike$$anon$2
            private final Function1<C, GenTraversableLike<A0, C>> conversion;

            {
                this.conversion = function1;
            }

            @Override // scala.collection.generic.IsTraversableLike
            public Function1<C, GenTraversableLike<A0, C>> conversion() {
                return this.conversion;
            }
        };
    }

    public IsTraversableLike<String> stringRepr() {
        return this.stringRepr;
    }
}
