package scala.collection.generic;

import scala.Predef$;
import scala.Serializable;
import scala.collection.immutable.StringOps;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/IsSeqLike$$anon$1$$anonfun$1.class */
public final class IsSeqLike$$anon$1$$anonfun$1 extends AbstractFunction1<String, String> implements Serializable {
    public static final long serialVersionUID = 0;

    public IsSeqLike$$anon$1$$anonfun$1(IsSeqLike$$anon$1 isSeqLike$$anon$1) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return new StringOps(apply((String) obj));
    }

    public final String apply(String str) {
        Predef$ predef$ = Predef$.MODULE$;
        return str;
    }
}
