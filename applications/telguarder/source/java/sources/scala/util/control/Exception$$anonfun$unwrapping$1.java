package scala.util.control;

import scala.Serializable;
import scala.collection.Seq;
import scala.runtime.AbstractFunction1;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/util/control/Exception$$anonfun$unwrapping$1.class */
public final class Exception$$anonfun$unwrapping$1 extends AbstractFunction1<Throwable, Nothing$> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Seq exceptions$3;

    public Exception$$anonfun$unwrapping$1(Seq seq) {
        this.exceptions$3 = seq;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        throw apply((Throwable) obj);
    }

    public final Nothing$ apply(Throwable th) {
        throw Exception$.MODULE$.scala$util$control$Exception$$unwrap$1(th, this.exceptions$3);
    }
}
