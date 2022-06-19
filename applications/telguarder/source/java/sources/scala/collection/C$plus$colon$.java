package scala.collection;

import scala.None$;
import scala.Option;
import scala.Predef$;
import scala.Predef$ArrowAssoc$;
import scala.Some;
import scala.Tuple2;
/* renamed from: scala.collection.$plus$colon$ */
/* loaded from: classes3-dex2jar.jar:scala/collection/$plus$colon$.class */
public final class C$plus$colon$ {
    public static final C$plus$colon$ MODULE$ = null;

    static {
        new C$plus$colon$();
    }

    private C$plus$colon$() {
        MODULE$ = this;
    }

    public <T, Coll extends SeqLike<T, Coll>> Option<Tuple2<T, Coll>> unapply(Coll coll) {
        None$ none$;
        if (coll.isEmpty()) {
            none$ = None$.MODULE$;
        } else {
            Predef$ArrowAssoc$ predef$ArrowAssoc$ = Predef$ArrowAssoc$.MODULE$;
            none$ = new Some(new Tuple2(Predef$.MODULE$.ArrowAssoc(coll.head()), coll.tail()));
        }
        return none$;
    }
}
