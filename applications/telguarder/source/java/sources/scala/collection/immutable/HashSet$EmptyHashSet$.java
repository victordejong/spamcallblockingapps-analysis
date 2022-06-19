package scala.collection.immutable;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/HashSet$EmptyHashSet$.class */
public class HashSet$EmptyHashSet$ extends HashSet<Object> {
    public static final HashSet$EmptyHashSet$ MODULE$ = null;

    static {
        new HashSet$EmptyHashSet$();
    }

    public HashSet$EmptyHashSet$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }
}
