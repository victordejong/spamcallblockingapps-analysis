package scala.collection.immutable;

import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashMap$EmptyHashMap$.class */
public class HashMap$EmptyHashMap$ extends HashMap<Object, Nothing$> {
    public static final HashMap$EmptyHashMap$ MODULE$ = null;

    static {
        new HashMap$EmptyHashMap$();
    }

    public HashMap$EmptyHashMap$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }
}
