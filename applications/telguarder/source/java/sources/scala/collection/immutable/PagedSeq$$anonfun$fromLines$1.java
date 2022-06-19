package scala.collection.immutable;

import scala.Serializable;
import scala.collection.mutable.StringBuilder;
import scala.runtime.AbstractFunction1;
import scala.runtime.BooleanRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/PagedSeq$$anonfun$fromLines$1.class */
public final class PagedSeq$$anonfun$fromLines$1 extends AbstractFunction1<String, String> implements Serializable {
    public static final long serialVersionUID = 0;
    private final BooleanRef isFirst$1;

    public PagedSeq$$anonfun$fromLines$1(BooleanRef booleanRef) {
        this.isFirst$1 = booleanRef;
    }

    public final String apply(String str) {
        if (this.isFirst$1.elem) {
            this.isFirst$1.elem = false;
        } else {
            str = new StringBuilder().append((Object) "\n").append((Object) str).toString();
        }
        return str;
    }
}
