package scala.collection.immutable;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/WrappedString$$anonfun$newBuilder$1.class */
public final class WrappedString$$anonfun$newBuilder$1 extends AbstractFunction1<String, WrappedString> implements Serializable {
    public static final long serialVersionUID = 0;

    public final WrappedString apply(String str) {
        return new WrappedString(str);
    }
}
