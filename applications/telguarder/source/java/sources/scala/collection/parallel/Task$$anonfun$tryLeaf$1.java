package scala.collection.parallel;

import java.util.Objects;
import scala.Option;
import scala.Serializable;
import scala.runtime.AbstractFunction0$mcV$sp;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/Task$$anonfun$tryLeaf$1.class */
public final class Task$$anonfun$tryLeaf$1 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Task $outer;
    private final Option lastres$1;

    /* JADX WARN: Multi-variable type inference failed */
    public Task$$anonfun$tryLeaf$1(Task task, Task<R, Tp> task2) {
        Objects.requireNonNull(task);
        this.$outer = task;
        this.lastres$1 = task2;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        apply$mcV$sp();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        this.$outer.leaf(this.lastres$1);
        Task task = this.$outer;
        task.result_$eq(task.result());
    }
}
