package scala.collection.immutable;

import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/ListMap$EmptyListMap$.class */
public class ListMap$EmptyListMap$ extends ListMap<Object, Nothing$> {
    public static final ListMap$EmptyListMap$ MODULE$ = null;

    static {
        new ListMap$EmptyListMap$();
    }

    public ListMap$EmptyListMap$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }
}
