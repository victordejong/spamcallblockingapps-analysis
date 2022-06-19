package scala.collection.generic;

import scala.Function1;
import scala.Predef$;
import scala.collection.SeqLike;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/IsSeqLike$.class */
public final class IsSeqLike$ {
    public static final IsSeqLike$ MODULE$ = null;
    private final IsSeqLike<String> stringRepr = new IsSeqLike<String>() { // from class: scala.collection.generic.IsSeqLike$$anon$1
        private final Function1<String, SeqLike<Object, String>> conversion = new IsSeqLike$$anon$1$$anonfun$1(this);

        {
            Predef$ predef$ = Predef$.MODULE$;
        }

        @Override // scala.collection.generic.IsSeqLike
        public Function1<String, SeqLike<Object, String>> conversion() {
            return this.conversion;
        }
    };

    static {
        new IsSeqLike$();
    }

    private IsSeqLike$() {
        MODULE$ = this;
    }

    public <C, A0> IsSeqLike<C> seqLikeRepr(Function1<C, SeqLike<A0, C>> function1) {
        return new IsSeqLike<C>(function1) { // from class: scala.collection.generic.IsSeqLike$$anon$2
            private final Function1<C, SeqLike<A0, C>> conversion;

            {
                this.conversion = function1;
            }

            @Override // scala.collection.generic.IsSeqLike
            public Function1<C, SeqLike<A0, C>> conversion() {
                return this.conversion;
            }
        };
    }

    public IsSeqLike<String> stringRepr() {
        return this.stringRepr;
    }
}
