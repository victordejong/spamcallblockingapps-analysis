package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0$mcV$sp;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/Task$$anonfun$tryLeaf$2.class */
public final class Task$$anonfun$tryLeaf$2 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ Task $outer;

    public Task$$anonfun$tryLeaf$2(Task<R, Tp> task) {
        Objects.requireNonNull(task);
        this.$outer = task;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        this.$outer.signalAbort();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.$outer.signalAbort();
    }
}
