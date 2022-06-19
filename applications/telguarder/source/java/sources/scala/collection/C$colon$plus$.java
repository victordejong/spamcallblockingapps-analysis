package scala.collection;

import scala.None$;
import scala.Option;
import scala.Predef$;
import scala.Predef$ArrowAssoc$;
import scala.Some;
import scala.Tuple2;
/* renamed from: scala.collection.$colon$plus$ */
/* loaded from: classes3-dex2jar.jar:scala/collection/$colon$plus$.class */
public final class C$colon$plus$ {
    public static final C$colon$plus$ MODULE$ = null;

    static {
        new C$colon$plus$();
    }

    private C$colon$plus$() {
        MODULE$ = this;
    }

    public <T, Coll extends SeqLike<T, Coll>> Option<Tuple2<Coll, T>> unapply(Coll coll) {
        None$ none$;
        if (coll.isEmpty()) {
            none$ = None$.MODULE$;
        } else {
            Predef$ArrowAssoc$ predef$ArrowAssoc$ = Predef$ArrowAssoc$.MODULE$;
            none$ = new Some(new Tuple2(Predef$.MODULE$.ArrowAssoc(coll.init()), coll.last()));
        }
        return none$;
    }
}
