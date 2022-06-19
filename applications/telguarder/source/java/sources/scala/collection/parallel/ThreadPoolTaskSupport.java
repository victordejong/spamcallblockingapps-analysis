package scala.collection.parallel;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import scala.Function0;
import scala.collection.immutable.Nil$;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.ArrayBuffer$;
import scala.collection.parallel.AdaptiveWorkStealingTasks;
import scala.collection.parallel.AdaptiveWorkStealingThreadPoolTasks;
import scala.collection.parallel.Tasks;
import scala.collection.parallel.ThreadPoolTasks;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u00193A!\u0001\u0002\u0001\u0013\t)B\u000b\u001b:fC\u0012\u0004vn\u001c7UCN\\7+\u001e9q_J$(BA\u0002\u0005\u0003!\u0001\u0018M]1mY\u0016d'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u00011\u0003\u0002\u0001\u000b\u001dI\u0001\"a\u0003\u0007\u000e\u0003\u0019I!!\u0004\u0004\u0003\r\u0005s\u0017PU3g!\ty\u0001#D\u0001\u0003\u0013\t\t\"AA\u0006UCN\\7+\u001e9q_J$\bCA\b\u0014\u0013\t!\"AA\u0012BI\u0006\u0004H/\u001b<f/>\u00148n\u0015;fC2Lgn\u001a+ie\u0016\fG\rU8pYR\u000b7o[:\t\u0011Y\u0001!Q1A\u0005\u0002]\t1\"\u001a8wSJ|g.\\3oiV\t\u0001\u0004\u0005\u0002\u001aA5\t!D\u0003\u0002\u001c9\u0005Q1m\u001c8dkJ\u0014XM\u001c;\u000b\u0005uq\u0012\u0001B;uS2T\u0011aH\u0001\u0005U\u00064\u0018-\u0003\u0002\"5\t\u0011B\u000b\u001b:fC\u0012\u0004vn\u001c7Fq\u0016\u001cW\u000f^8s\u0011!\u0019\u0003A!A!\u0002\u0013A\u0012\u0001D3om&\u0014xN\\7f]R\u0004\u0003\"B\u0013\u0001\t\u00031\u0013A\u0002\u001fj]&$h\b\u0006\u0002(QA\u0011q\u0002\u0001\u0005\b-\u0011\u0002\n\u00111\u0001\u0019Q\u0011\u0001!&L\u0018\u0011\u0005-Y\u0013B\u0001\u0017\u0007\u0005)!W\r\u001d:fG\u0006$X\rZ\u0011\u0002]\u0005\u0011Sk]3!A\u001a{'o\u001b&pS:$\u0016m]6TkB\u0004xN\u001d;aA%t7\u000f^3bI:\n\u0013\u0001M\u0001\u0007e9\n\u0014G\f\u0019\b\u000fI\u0012\u0011\u0011!E\u0001g\u0005)B\u000b\u001b:fC\u0012\u0004vn\u001c7UCN\\7+\u001e9q_J$\bCA\b5\r\u001d\t!!!A\t\u0002U\u001a\"\u0001\u000e\u0006\t\u000b\u0015\"D\u0011A\u001c\u0015\u0003MBq!\u000f\u001b\u0012\u0002\u0013\u0005!(A\u000e%Y\u0016\u001c8/\u001b8ji\u0012:'/Z1uKJ$C-\u001a4bk2$H%M\u000b\u0002w)\u0012\u0001\u0004P\u0016\u0002{A\u0011ahQ\u0007\u0002\u007f)\u0011\u0001)Q\u0001\nk:\u001c\u0007.Z2lK\u0012T!A\u0011\u0004\u0002\u0015\u0005tgn\u001c;bi&|g.\u0003\u0002E\u007f\t\tRO\\2iK\u000e\\W\r\u001a,be&\fgnY3)\tQRSf\f")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ThreadPoolTaskSupport.class */
public class ThreadPoolTaskSupport implements TaskSupport, AdaptiveWorkStealingThreadPoolTasks {
    private final ArrayBuffer<String> debugMessages;
    private final ThreadPoolExecutor environment;
    private volatile int totaltasks;

    public ThreadPoolTaskSupport(ThreadPoolExecutor threadPoolExecutor) {
        this.environment = threadPoolExecutor;
        scala$collection$parallel$Tasks$_setter_$debugMessages_$eq((ArrayBuffer) ArrayBuffer$.MODULE$.apply(Nil$.MODULE$));
        totaltasks_$eq(0);
        AdaptiveWorkStealingTasks.Cclass.$init$(this);
        AdaptiveWorkStealingThreadPoolTasks.Cclass.$init$(this);
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
    public ThreadPoolExecutor environment() {
        return this.environment;
    }

    @Override // scala.collection.parallel.Tasks, scala.collection.parallel.ExecutionContextTasks
    public <R, Tp> Function0<R> execute(Task<R, Tp> task) {
        return ThreadPoolTasks.Cclass.execute(this, task);
    }

    @Override // scala.collection.parallel.Tasks, scala.collection.parallel.ExecutionContextTasks
    public <R, Tp> R executeAndWaitResult(Task<R, Tp> task) {
        return (R) ThreadPoolTasks.Cclass.executeAndWaitResult(this, task);
    }

    @Override // scala.collection.parallel.ThreadPoolTasks
    public ThreadPoolExecutor executor() {
        return ThreadPoolTasks.Cclass.executor(this);
    }

    @Override // scala.collection.parallel.AdaptiveWorkStealingThreadPoolTasks, scala.collection.parallel.ThreadPoolTasks, scala.collection.parallel.AdaptiveWorkStealingTasks
    public <R, Tp> AdaptiveWorkStealingThreadPoolTasks.WrappedTask<R, Tp> newWrappedTask(Task<R, Tp> task) {
        return AdaptiveWorkStealingThreadPoolTasks.Cclass.newWrappedTask(this, task);
    }

    @Override // scala.collection.parallel.Tasks, scala.collection.parallel.ExecutionContextTasks
    public int parallelismLevel() {
        return ThreadPoolTasks.Cclass.parallelismLevel(this);
    }

    @Override // scala.collection.parallel.ThreadPoolTasks
    public LinkedBlockingQueue<Runnable> queue() {
        return ThreadPoolTasks.Cclass.queue(this);
    }

    @Override // scala.collection.parallel.Tasks
    public void scala$collection$parallel$Tasks$_setter_$debugMessages_$eq(ArrayBuffer arrayBuffer) {
        this.debugMessages = arrayBuffer;
    }

    @Override // scala.collection.parallel.ThreadPoolTasks
    public int totaltasks() {
        return this.totaltasks;
    }

    @Override // scala.collection.parallel.ThreadPoolTasks
    public void totaltasks_$eq(int i) {
        this.totaltasks = i;
    }
}
