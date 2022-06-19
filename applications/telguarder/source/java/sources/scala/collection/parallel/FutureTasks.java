package scala.collection.parallel;

import scala.Function0;
import scala.collection.immutable.Nil$;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.ArrayBuffer$;
import scala.collection.parallel.Tasks;
import scala.concurrent.ExecutionContext;
import scala.concurrent.Future;
import scala.concurrent.Future$;
import scala.concurrent.impl.Future;
import scala.concurrent.impl.Promise;
import scala.math.package$;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u00014Q!\u0001\u0002\u0003\u0005!\u00111BR;ukJ,G+Y:lg*\u00111\u0001B\u0001\ta\u0006\u0014\u0018\r\u001c7fY*\u0011QAB\u0001\u000bG>dG.Z2uS>t'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0014\u0007\u0001IQ\u0002\u0005\u0002\u000b\u00175\ta!\u0003\u0002\r\r\t1\u0011I\\=SK\u001a\u0004\"AD\b\u000e\u0003\tI!\u0001\u0005\u0002\u0003\u000bQ\u000b7o[:\t\u0011I\u0001!\u0011!Q\u0001\nQ\t\u0001\"\u001a=fGV$xN]\u0002\u0001!\t)\u0002$D\u0001\u0017\u0015\t9b!\u0001\u0006d_:\u001cWO\u001d:f]RL!!\u0007\f\u0003!\u0015CXmY;uS>t7i\u001c8uKb$\b\"B\u000e\u0001\t\u0003a\u0012A\u0002\u001fj]&$h\b\u0006\u0002\u001e=A\u0011a\u0002\u0001\u0005\u0006%i\u0001\r\u0001\u0006\u0005\bA\u0001\u0011\r\u0011\"\u0003\"\u0003!i\u0017\r\u001f3faRDW#\u0001\u0012\u0011\u0005)\u0019\u0013B\u0001\u0013\u0007\u0005\rIe\u000e\u001e\u0005\u0007M\u0001\u0001\u000b\u0011\u0002\u0012\u0002\u00135\f\u0007\u0010Z3qi\"\u0004\u0003b\u0002\u0015\u0001\u0005\u0004%\t!K\u0001\fK:4\u0018N]8o[\u0016tG/F\u0001\u0015\u0011\u0019Y\u0003\u0001)A\u0005)\u0005aQM\u001c<je>tW.\u001a8uA!)Q\u0006\u0001C\u0005]\u0005!Q\r_3d+\ryS\u0007\u0012\u000b\u0003ay\u00022!F\u00194\u0013\t\u0011dC\u0001\u0004GkR,(/\u001a\t\u0003iUb\u0001\u0001B\u00037Y\t\u0007qGA\u0001S#\tA4\b\u0005\u0002\u000bs%\u0011!H\u0002\u0002\b\u001d>$\b.\u001b8h!\tQA(\u0003\u0002>\r\t\u0019\u0011I\\=\t\u000b}b\u0003\u0019\u0001!\u0002\u0019Q|\u0007\u000fT3wK2$\u0016m]6\u0011\t9\t5gQ\u0005\u0003\u0005\n\u0011A\u0001V1tWB\u0011A\u0007\u0012\u0003\u0006\u000b2\u0012\ra\u000e\u0002\u0003)BDQa\u0012\u0001\u0005\u0002!\u000bq!\u001a=fGV$X-F\u0002J\u001dN#\"AS(\u0011\u0007)YU*\u0003\u0002M\r\tIa)\u001e8di&|g\u000e\r\t\u0003i9#QA\u000e$C\u0002]BQ\u0001\u0015$A\u0002E\u000bA\u0001^1tWB!a\"Q'S!\t!4\u000bB\u0003F\r\n\u0007q\u0007C\u0003V\u0001\u0011\u0005a+\u0001\u000bfq\u0016\u001cW\u000f^3B]\u0012<\u0016-\u001b;SKN,H\u000e^\u000b\u0004/fkFC\u0001-[!\t!\u0014\fB\u00037)\n\u0007q\u0007C\u0003Q)\u0002\u00071\f\u0005\u0003\u000f\u0003bc\u0006C\u0001\u001b^\t\u0015)EK1\u00018\u0011\u0015y\u0006\u0001\"\u0001\"\u0003A\u0001\u0018M]1mY\u0016d\u0017n]7MKZ,G\u000e")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/FutureTasks.class */
public final class FutureTasks implements Tasks {
    private final ArrayBuffer<String> debugMessages;
    private final ExecutionContext environment;
    private final int maxdepth = (int) ((package$.MODULE$.log(parallelismLevel()) / package$.MODULE$.log(2.0d)) + 1);

    public FutureTasks(ExecutionContext executionContext) {
        scala$collection$parallel$Tasks$_setter_$debugMessages_$eq((ArrayBuffer) ArrayBuffer$.MODULE$.apply(Nil$.MODULE$));
        this.environment = executionContext;
    }

    private <R, Tp> Future<R> exec(Task<R, Tp> task) {
        ExecutionContext environment = environment();
        return scala$collection$parallel$FutureTasks$$compute$1(task, 0, environment).map(new FutureTasks$$anonfun$exec$1(this), environment);
    }

    private int maxdepth() {
        return this.maxdepth;
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
    public ExecutionContext environment() {
        return this.environment;
    }

    @Override // scala.collection.parallel.Tasks, scala.collection.parallel.ExecutionContextTasks
    public <R, Tp> Function0<R> execute(Task<R, Tp> task) {
        return new FutureTasks$$anonfun$2(this, exec(task));
    }

    @Override // scala.collection.parallel.Tasks, scala.collection.parallel.ExecutionContextTasks
    public <R, Tp> R executeAndWaitResult(Task<R, Tp> task) {
        return execute(task).apply();
    }

    @Override // scala.collection.parallel.Tasks, scala.collection.parallel.ExecutionContextTasks
    public int parallelismLevel() {
        return Runtime.getRuntime().availableProcessors();
    }

    public final Future scala$collection$parallel$FutureTasks$$compute$1(Task task, int i, ExecutionContext executionContext) {
        Promise promise;
        if (!task.shouldSplitFurther() || i >= maxdepth()) {
            Future$ future$ = Future$.MODULE$;
            C2584x16c53519 c2584x16c53519 = new C2584x16c53519(this, task);
            scala.concurrent.impl.Future$ future$2 = scala.concurrent.impl.Future$.MODULE$;
            Future.PromiseCompletingRunnable promiseCompletingRunnable = new Future.PromiseCompletingRunnable(c2584x16c53519);
            executionContext.prepare().execute(promiseCompletingRunnable);
            promise = promiseCompletingRunnable.promise().future();
        } else {
            promise = ((scala.concurrent.Future) task.split().iterator().map(new FutureTasks$$anonfun$1(this, executionContext, i)).reduceLeft(new C2583x16c53518(this, executionContext))).andThen(new C2582x16c53517(this, task), executionContext);
        }
        return promise;
    }

    @Override // scala.collection.parallel.Tasks
    public void scala$collection$parallel$Tasks$_setter_$debugMessages_$eq(ArrayBuffer arrayBuffer) {
        this.debugMessages = arrayBuffer;
    }
}
