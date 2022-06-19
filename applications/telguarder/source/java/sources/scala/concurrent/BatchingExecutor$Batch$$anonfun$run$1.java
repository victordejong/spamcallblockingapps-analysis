package scala.concurrent;

import java.util.Objects;
import scala.MatchError;
import scala.Serializable;
import scala.collection.immutable.C$colon$colon;
import scala.collection.immutable.List;
import scala.collection.immutable.Nil$;
import scala.concurrent.BatchingExecutor;
import scala.runtime.AbstractFunction0$mcV$sp;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/BatchingExecutor$Batch$$anonfun$run$1.class */
public final class BatchingExecutor$Batch$$anonfun$run$1 extends AbstractFunction0$mcV$sp implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ BatchingExecutor.Batch $outer;
    private final BlockContext prevBlockContext$1;

    public BatchingExecutor$Batch$$anonfun$run$1(BatchingExecutor.Batch batch, BlockContext blockContext) {
        Objects.requireNonNull(batch);
        this.$outer = batch;
        this.prevBlockContext$1 = blockContext;
    }

    private final void processBatch$1(List list) {
        while (!Nil$.MODULE$.equals(list)) {
            if (!(list instanceof C$colon$colon)) {
                throw new MatchError(list);
            }
            C$colon$colon c$colon$colon = (C$colon$colon) list;
            this.$outer.scala$concurrent$BatchingExecutor$Batch$$$outer().scala$concurrent$BatchingExecutor$$_tasksLocal().set(c$colon$colon.tl$1());
            try {
                ((Runnable) c$colon$colon.head()).run();
                list = this.$outer.scala$concurrent$BatchingExecutor$Batch$$$outer().scala$concurrent$BatchingExecutor$$_tasksLocal().get();
            } catch (Throwable th) {
                List<Runnable> list2 = this.$outer.scala$concurrent$BatchingExecutor$Batch$$$outer().scala$concurrent$BatchingExecutor$$_tasksLocal().get();
                this.$outer.scala$concurrent$BatchingExecutor$Batch$$$outer().scala$concurrent$BatchingExecutor$$_tasksLocal().set(Nil$.MODULE$);
                this.$outer.scala$concurrent$BatchingExecutor$Batch$$$outer().unbatchedExecute(new BatchingExecutor.Batch(this.$outer.scala$concurrent$BatchingExecutor$Batch$$$outer(), list2));
                throw th;
            }
        }
        BoxedUnit boxedUnit = BoxedUnit.UNIT;
        BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
    }

    @Override // scala.Function0
    /* renamed from: apply */
    public final void apply2() {
        apply$mcV$sp();
    }

    @Override // scala.runtime.AbstractFunction0, scala.Function0
    public void apply$mcV$sp() {
        try {
            this.$outer.scala$concurrent$BatchingExecutor$Batch$$parentBlockContext_$eq(this.prevBlockContext$1);
            processBatch$1(this.$outer.initial());
        } finally {
            this.$outer.scala$concurrent$BatchingExecutor$Batch$$$outer().scala$concurrent$BatchingExecutor$$_tasksLocal().remove();
            this.$outer.scala$concurrent$BatchingExecutor$Batch$$parentBlockContext_$eq(null);
        }
    }
}
