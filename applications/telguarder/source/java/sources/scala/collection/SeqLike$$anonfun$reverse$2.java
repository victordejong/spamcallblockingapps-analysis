package scala.collection;

import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$$anonfun$reverse$2.class */
public final class SeqLike$$anonfun$reverse$2 extends AbstractFunction1<A, Builder<A, Repr>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final Builder b$1;

    /* JADX WARN: Multi-variable type inference failed */
    public SeqLike$$anonfun$reverse$2(SeqLike seqLike, SeqLike<A, Repr> seqLike2) {
        this.b$1 = seqLike2;
    }

    @Override // scala.Function1
    public final Builder<A, Repr> apply(A a) {
        return this.b$1.$plus$eq((Builder) a);
    }
}
