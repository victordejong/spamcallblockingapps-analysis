package scala.collection.immutable;

import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Queue$EmptyQueue$.class */
public class Queue$EmptyQueue$ extends Queue<Nothing$> {
    public static final Queue$EmptyQueue$ MODULE$ = null;

    static {
        new Queue$EmptyQueue$();
    }

    public Queue$EmptyQueue$() {
        super(Nil$.MODULE$, Nil$.MODULE$);
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }
}
