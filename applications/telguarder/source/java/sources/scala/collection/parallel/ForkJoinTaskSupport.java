package scala.collection.parallel;

import scala.Function0;
import scala.collection.immutable.Nil$;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.ArrayBuffer$;
import scala.collection.parallel.AdaptiveWorkStealingForkJoinTasks;
import scala.collection.parallel.AdaptiveWorkStealingTasks;
import scala.collection.parallel.ForkJoinTasks;
import scala.collection.parallel.Tasks;
import scala.concurrent.forkjoin.ForkJoinPool;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001m2A!\u0001\u0002\u0001\u0013\t\u0019bi\u001c:l\u0015>Lg\u000eV1tWN+\b\u000f]8si*\u00111\u0001B\u0001\ta\u0006\u0014\u0018\r\u001c7fY*\u0011QAB\u0001\u000bG>dG.Z2uS>t'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001M!\u0001A\u0003\b\u0013!\tYA\"D\u0001\u0007\u0013\tiaA\u0001\u0004B]f\u0014VM\u001a\t\u0003\u001fAi\u0011AA\u0005\u0003#\t\u00111\u0002V1tWN+\b\u000f]8siB\u0011qbE\u0005\u0003)\t\u0011\u0011%\u00113baRLg/Z,pe.\u001cF/Z1mS:<gi\u001c:l\u0015>Lg\u000eV1tWND\u0001B\u0006\u0001\u0003\u0006\u0004%\taF\u0001\fK:4\u0018N]8o[\u0016tG/F\u0001\u0019!\tIb$D\u0001\u001b\u0015\tYB$\u0001\u0005g_J\\'n\\5o\u0015\tib!\u0001\u0006d_:\u001cWO\u001d:f]RL!a\b\u000e\u0003\u0019\u0019{'o\u001b&pS:\u0004vn\u001c7\t\u0011\u0005\u0002!\u0011!Q\u0001\na\tA\"\u001a8wSJ|g.\\3oi\u0002BQa\t\u0001\u0005\u0002\u0011\na\u0001P5oSRtDCA\u0013'!\ty\u0001\u0001C\u0004\u0017EA\u0005\t\u0019\u0001\r\b\u000f!\u0012\u0011\u0011!E\u0001S\u0005\u0019bi\u001c:l\u0015>Lg\u000eV1tWN+\b\u000f]8siB\u0011qB\u000b\u0004\b\u0003\t\t\t\u0011#\u0001,'\tQ#\u0002C\u0003$U\u0011\u0005Q\u0006F\u0001*\u0011\u001dy#&%A\u0005\u0002A\n1\u0004\n7fgNLg.\u001b;%OJ,\u0017\r^3sI\u0011,g-Y;mi\u0012\nT#A\u0019+\u0005a\u00114&A\u001a\u0011\u0005QJT\"A\u001b\u000b\u0005Y:\u0014!C;oG\",7m[3e\u0015\tAd!\u0001\u0006b]:|G/\u0019;j_:L!AO\u001b\u0003#Ut7\r[3dW\u0016$g+\u0019:jC:\u001cW\r")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ForkJoinTaskSupport.class */
public class ForkJoinTaskSupport implements TaskSupport, AdaptiveWorkStealingForkJoinTasks {
    private final ArrayBuffer<String> debugMessages;
    private final ForkJoinPool environment;

    public ForkJoinTaskSupport(ForkJoinPool forkJoinPool) {
        this.environment = forkJoinPool;
        scala$collection$parallel$Tasks$_setter_$debugMessages_$eq((ArrayBuffer) ArrayBuffer$.MODULE$.apply(Nil$.MODULE$));
        ForkJoinTasks.Cclass.$init$(this);
        AdaptiveWorkStealingTasks.Cclass.$init$(this);
        AdaptiveWorkStealingForkJoinTasks.Cclass.$init$(this);
    }

    @Override // scala.collection.parallel.Tasks
    public ArrayBuffer<String> debugMessages() {
        return this.debugMessages;
    }

    @Override // scala.collection.parallel.Tasks
    public ArrayBuffer<String> debuglog(String str) {
        return Tasks.Cclass.debuglog(this, str);
    }

    @Override // scala.collection.parallel.Tasks, scala.collection.parallel.ExecutionContextTasks
    public ForkJoinPool environment() {
        return this.environment;
    }

    @Override // scala.collection.parallel.Tasks, scala.collection.parallel.ExecutionContextTasks
    public <R, Tp> Function0<R> execute(Task<R, Tp> task) {
        return ForkJoinTasks.Cclass.execute(this, task);
    }

    @Override // scala.collection.parallel.Tasks, scala.collection.parallel.ExecutionContextTasks
    public <R, Tp> R executeAndWaitResult(Task<R, Tp> task) {
        return (R) ForkJoinTasks.Cclass.executeAndWaitResult(this, task);
    }

    @Override // scala.collection.parallel.ForkJoinTasks, scala.collection.parallel.HavingForkJoinPool
    public ForkJoinPool forkJoinPool() {
        return ForkJoinTasks.Cclass.forkJoinPool(this);
    }

    @Override // scala.collection.parallel.AdaptiveWorkStealingForkJoinTasks, scala.collection.parallel.ForkJoinTasks, scala.collection.parallel.AdaptiveWorkStealingTasks
    public <R, Tp> AdaptiveWorkStealingForkJoinTasks.WrappedTask<R, Tp> newWrappedTask(Task<R, Tp> task) {
        return AdaptiveWorkStealingForkJoinTasks.Cclass.newWrappedTask(this, task);
    }

    @Override // scala.collection.parallel.Tasks, scala.collection.parallel.ExecutionContextTasks
    public int parallelismLevel() {
        return ForkJoinTasks.Cclass.parallelismLevel(this);
    }

    @Override // scala.collection.parallel.Tasks
    public void scala$collection$parallel$Tasks$_setter_$debugMessages_$eq(ArrayBuffer arrayBuffer) {
        this.debugMessages = arrayBuffer;
    }
}
