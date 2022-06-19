package scala.collection.immutable;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/StringLike$$anonfun$linesIterator$1.class */
public final class StringLike$$anonfun$linesIterator$1 extends AbstractFunction1<String, String> implements Serializable {
    public static final long serialVersionUID = 0;

    public StringLike$$anonfun$linesIterator$1(StringLike<Repr> stringLike) {
    }

    public final String apply(String str) {
        return new WrappedString(str).stripLineEnd();
    }
}
