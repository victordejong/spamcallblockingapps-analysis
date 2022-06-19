package scala.collection.immutable;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/ListSet$EmptyListSet$.class */
public class ListSet$EmptyListSet$ extends ListSet<Object> {
    public static final ListSet$EmptyListSet$ MODULE$ = null;

    static {
        new ListSet$EmptyListSet$();
    }

    public ListSet$EmptyListSet$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }
}
