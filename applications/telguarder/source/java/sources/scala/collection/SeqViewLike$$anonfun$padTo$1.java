package scala.collection;

import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$$anonfun$padTo$1.class */
public final class SeqViewLike$$anonfun$padTo$1 extends AbstractFunction0<B> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Object elem$2;

    public SeqViewLike$$anonfun$padTo$1(SeqViewLike seqViewLike, SeqViewLike<A, Coll, This> seqViewLike2) {
        this.elem$2 = seqViewLike2;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [B, java.lang.Object] */
    @Override // scala.Function0
    public final B apply() {
        return this.elem$2;
    }
}
