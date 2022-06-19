package scala.collection.parallel;

import scala.Function0;
import scala.collection.parallel.Tasks;
import scala.concurrent.forkjoin.ForkJoinPool;
import scala.concurrent.forkjoin.ForkJoinTask;
import scala.concurrent.forkjoin.ForkJoinWorkerThread;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
@ScalaSignature(bytes = "\u0006\u0001\u0005\u001daaB\u0001\u0003!\u0003\r\t!\u0003\u0002\u000e\r>\u00148NS8j]R\u000b7o[:\u000b\u0005\r!\u0011\u0001\u00039be\u0006dG.\u001a7\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0014\t\u0001QaB\u0005\t\u0003\u00171i\u0011AB\u0005\u0003\u001b\u0019\u0011a!\u00118z%\u00164\u0007CA\b\u0011\u001b\u0005\u0011\u0011BA\t\u0003\u0005\u0015!\u0016m]6t!\ty1#\u0003\u0002\u0015\u0005\t\u0011\u0002*\u0019<j]\u001e4uN]6K_&t\u0007k\\8m\u0011\u00151\u0002\u0001\"\u0001\u0018\u0003\u0019!\u0013N\\5uIQ\t\u0001\u0004\u0005\u0002\f3%\u0011!D\u0002\u0002\u0005+:LGOB\u0004\u001d\u0001A\u0005\u0019\u0011A\u000f\u0003\u0017]\u0013\u0018\r\u001d9fIR\u000b7o[\u000b\u0004=124cA\u000e OA\u0011\u0001%J\u0007\u0002C)\u0011!eI\u0001\tM>\u00148N[8j]*\u0011AEB\u0001\u000bG>t7-\u001e:sK:$\u0018B\u0001\u0014\"\u0005=\u0011VmY;sg&4X-Q2uS>t\u0007\u0003\u0002\u0015*UUj\u0011\u0001A\u0005\u00039A\u0001\"a\u000b\u0017\r\u0001\u0011)Qf\u0007b\u0001]\t\t!+\u0005\u00020eA\u00111\u0002M\u0005\u0003c\u0019\u0011qAT8uQ&tw\r\u0005\u0002\fg%\u0011AG\u0002\u0002\u0004\u0003:L\bCA\u00167\t\u001994\u0004\"b\u0001]\t\u0011A\u000b\u001d\u0005\u0006-m!\ta\u0006\u0005\u0006um!\taF\u0001\u0006gR\f'\u000f\u001e\u0005\u0006ym!\taF\u0001\u0005gft7\rC\u0003?7\u0011\u0005q(A\u0005uef\u001c\u0015M\\2fYR\t\u0001\t\u0005\u0002\f\u0003&\u0011!I\u0002\u0002\b\u0005>|G.Z1o\u0011\u0015!\u0005A\"\u0005F\u00039qWm^,sCB\u0004X\r\u001a+bg.,2AR%L)\t9E\n\u0005\u0003)7!S\u0005CA\u0016J\t\u0015i3I1\u0001/!\tY3\nB\u00038\u0007\n\u0007a\u0006C\u0003N\u0007\u0002\u0007a*A\u0001c!\u0011yq\n\u0013&\n\u0005A\u0013!\u0001\u0002+bg.DQA\u0015\u0001\u0005\u0002M\u000bABZ8sW*{\u0017N\u001c)p_2,\u0012\u0001\u0016\t\u0003AUK!AV\u0011\u0003\u0019\u0019{'o\u001b&pS:\u0004vn\u001c7\t\u000fa\u0003!\u0019!D\u0001'\u0006YQM\u001c<je>tW.\u001a8u\u0011\u0015Q\u0006\u0001\"\u0001\\\u0003\u001d)\u00070Z2vi\u0016,2\u0001X1g)\ti&\rE\u0002\f=\u0002L!a\u0018\u0004\u0003\u0013\u0019+hn\u0019;j_:\u0004\u0004CA\u0016b\t\u0015i\u0013L1\u0001/\u0011\u0015\u0019\u0017\f1\u0001e\u0003\u0011!\u0018m]6\u0011\t=y\u0005-\u001a\t\u0003W\u0019$QaN-C\u00029BQ\u0001\u001b\u0001\u0005\u0002%\fA#\u001a=fGV$X-\u00118e/\u0006LGOU3tk2$Xc\u00016maR\u00111.\u001c\t\u0003W1$Q!L4C\u00029BQaY4A\u00029\u0004BaD(l_B\u00111\u0006\u001d\u0003\u0006o\u001d\u0014\rA\f\u0005\u0006e\u0002!\ta]\u0001\u0011a\u0006\u0014\u0018\r\u001c7fY&\u001cX\u000eT3wK2,\u0012\u0001\u001e\t\u0003\u0017UL!A\u001e\u0004\u0003\u0007%sGoB\u0003y\u0005!\u0005\u00110A\u0007G_J\\'j\\5o)\u0006\u001c8n\u001d\t\u0003\u001fi4Q!\u0001\u0002\t\u0002m\u001c\"A\u001f\u0006\t\u000buTH\u0011\u0001@\u0002\rqJg.\u001b;?)\u0005I\b\"CA\u0001u\"\u0015\r\u0011\"\u0001T\u0003M!WMZ1vYR4uN]6K_&t\u0007k\\8m\u0011%\t)A\u001fE\u0001B\u0003&A+\u0001\u000beK\u001a\fW\u000f\u001c;G_J\\'j\\5o!>|G\u000e\t")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ForkJoinTasks.class */
public interface ForkJoinTasks extends Tasks, HavingForkJoinPool {

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ForkJoinTasks$WrappedTask.class */
    public interface WrappedTask<R, Tp> extends Tasks.WrappedTask<R, Tp> {

        /* renamed from: scala.collection.parallel.ForkJoinTasks$WrappedTask$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ForkJoinTasks$WrappedTask$class.class */
        public abstract class Cclass {
            public static void $init$(WrappedTask wrappedTask) {
            }

            public static void start(WrappedTask wrappedTask) {
                ((ForkJoinTask) wrappedTask).fork();
            }

            public static void sync(WrappedTask wrappedTask) {
                ((ForkJoinTask) wrappedTask).join();
            }

            public static boolean tryCancel(WrappedTask wrappedTask) {
                return ((ForkJoinTask) wrappedTask).tryUnfork();
            }
        }

        /* synthetic */ ForkJoinTasks scala$collection$parallel$ForkJoinTasks$WrappedTask$$$outer();

        @Override // scala.collection.parallel.Tasks.WrappedTask
        void start();

        @Override // scala.collection.parallel.Tasks.WrappedTask
        void sync();

        @Override // scala.collection.parallel.Tasks.WrappedTask
        boolean tryCancel();
    }

    /* renamed from: scala.collection.parallel.ForkJoinTasks$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ForkJoinTasks$class.class */
    public abstract class Cclass {
        public static void $init$(ForkJoinTasks forkJoinTasks) {
        }

        public static Function0 execute(ForkJoinTasks forkJoinTasks, Task task) {
            WrappedTask newWrappedTask = forkJoinTasks.newWrappedTask(task);
            if (Thread.currentThread() instanceof ForkJoinWorkerThread) {
                ((ForkJoinTask) newWrappedTask).fork();
            } else {
                forkJoinTasks.forkJoinPool().execute((ForkJoinTask) newWrappedTask);
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return new ForkJoinTasks$$anonfun$execute$2(forkJoinTasks, newWrappedTask);
        }

        public static Object executeAndWaitResult(ForkJoinTasks forkJoinTasks, Task task) {
            WrappedTask newWrappedTask = forkJoinTasks.newWrappedTask(task);
            if (Thread.currentThread() instanceof ForkJoinWorkerThread) {
                ((ForkJoinTask) newWrappedTask).fork();
            } else {
                forkJoinTasks.forkJoinPool().execute((ForkJoinTask) newWrappedTask);
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            newWrappedTask.sync();
            newWrappedTask.body().forwardThrowable();
            return newWrappedTask.body().result();
        }

        public static ForkJoinPool forkJoinPool(ForkJoinTasks forkJoinTasks) {
            return forkJoinTasks.environment();
        }

        public static int parallelismLevel(ForkJoinTasks forkJoinTasks) {
            return forkJoinTasks.forkJoinPool().getParallelism();
        }
    }

    @Override // scala.collection.parallel.Tasks, scala.collection.parallel.ExecutionContextTasks
    ForkJoinPool environment();

    @Override // scala.collection.parallel.Tasks, scala.collection.parallel.ExecutionContextTasks
    <R, Tp> Function0<R> execute(Task<R, Tp> task);

    @Override // scala.collection.parallel.Tasks, scala.collection.parallel.ExecutionContextTasks
    <R, Tp> R executeAndWaitResult(Task<R, Tp> task);

    ForkJoinPool forkJoinPool();

    <R, Tp> WrappedTask<R, Tp> newWrappedTask(Task<R, Tp> task);

    @Override // scala.collection.parallel.Tasks, scala.collection.parallel.ExecutionContextTasks
    int parallelismLevel();
}
