package scala.collection.script;

import scala.None$;
import scala.Option;
import scala.Serializable;
import scala.Some;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/script/Index$.class */
public final class Index$ extends AbstractFunction1<Object, Index> implements Serializable {
    public static final Index$ MODULE$ = null;

    static {
        new Index$();
    }

    private Index$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    public Index apply(int i) {
        return new Index(i);
    }

    @Override // scala.runtime.AbstractFunction1, scala.Function1
    public final String toString() {
        return "Index";
    }

    public Option<Object> unapply(Index index) {
        return index == null ? None$.MODULE$ : new Some(BoxesRunTime.boxToInteger(index.m64n()));
    }
}
