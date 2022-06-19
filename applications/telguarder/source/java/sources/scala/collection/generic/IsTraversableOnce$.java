package scala.collection.generic;

import scala.Function1;
import scala.Predef$;
import scala.collection.GenTraversableOnce;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/IsTraversableOnce$.class */
public final class IsTraversableOnce$ {
    public static final IsTraversableOnce$ MODULE$ = null;
    private final IsTraversableOnce<String> stringRepr = new IsTraversableOnce<String>() { // from class: scala.collection.generic.IsTraversableOnce$$anon$1
        private final Function1<String, GenTraversableOnce<Object>> conversion = new IsTraversableOnce$$anon$1$$anonfun$1(this);

        {
            Predef$ predef$ = Predef$.MODULE$;
        }

        @Override // scala.collection.generic.IsTraversableOnce
        public Function1<String, GenTraversableOnce<Object>> conversion() {
            return this.conversion;
        }
    };

    static {
        new IsTraversableOnce$();
    }

    private IsTraversableOnce$() {
        MODULE$ = this;
    }

    public <C, A0> IsTraversableOnce<C> genTraversableLikeRepr(Function1<C, GenTraversableOnce<A0>> function1) {
        return new IsTraversableOnce<C>(function1) { // from class: scala.collection.generic.IsTraversableOnce$$anon$2
            private final Function1<C, GenTraversableOnce<A0>> conversion;

            {
                this.conversion = function1;
            }

            @Override // scala.collection.generic.IsTraversableOnce
            public Function1<C, GenTraversableOnce<A0>> conversion() {
                return this.conversion;
            }
        };
    }

    public IsTraversableOnce<String> stringRepr() {
        return this.stringRepr;
    }
}
