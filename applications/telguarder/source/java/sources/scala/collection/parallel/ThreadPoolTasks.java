package scala.collection.parallel;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import scala.Function0;
import scala.collection.parallel.Tasks;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\u0005\u0005faB\u0001\u0003!\u0003\r\t!\u0003\u0002\u0010)\"\u0014X-\u00193Q_>dG+Y:lg*\u00111\u0001B\u0001\ta\u0006\u0014\u0018\r\u001c7fY*\u0011QAB\u0001\u000bG>dG.Z2uS>t'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001M\u0019\u0001A\u0003\b\u0011\u0005-aQ\"\u0001\u0004\n\u000551!AB!osJ+g\r\u0005\u0002\u0010!5\t!!\u0003\u0002\u0012\u0005\t)A+Y:lg\")1\u0003\u0001C\u0001)\u00051A%\u001b8ji\u0012\"\u0012!\u0006\t\u0003\u0017YI!a\u0006\u0004\u0003\tUs\u0017\u000e\u001e\u0004\b3\u0001\u0001\n1!\u0001\u001b\u0005-9&/\u00199qK\u0012$\u0016m]6\u0016\u0007macg\u0005\u0003\u00199\u0011:\u0003CA\u000f#\u001b\u0005q\"BA\u0010!\u0003\u0011a\u0017M\\4\u000b\u0003\u0005\nAA[1wC&\u00111E\b\u0002\u0007\u001f\nTWm\u0019;\u0011\u0005u)\u0013B\u0001\u0014\u001f\u0005!\u0011VO\u001c8bE2,\u0007\u0003\u0002\u0015*UUj\u0011\u0001A\u0005\u00033A\u0001\"a\u000b\u0017\r\u0001\u0011)Q\u0006\u0007b\u0001]\t\t!+\u0005\u00020eA\u00111\u0002M\u0005\u0003c\u0019\u0011qAT8uQ&tw\r\u0005\u0002\fg%\u0011AG\u0002\u0002\u0004\u0003:L\bCA\u00167\t\u00199\u0004\u0004\"b\u0001]\t\u0011A\u000b\u001d\u0005\u0006'a!\t\u0001\u0006\u0005\bua\u0001\r\u0011\"\u0001<\u0003\u0015ywO\\3e+\u0005a\u0004CA\u0006>\u0013\tqdAA\u0004C_>dW-\u00198\t\u000f\u0001C\u0002\u0019!C\u0001\u0003\u0006Iqn\u001e8fI~#S-\u001d\u000b\u0003+\tCqaQ \u0002\u0002\u0003\u0007A(A\u0002yIEBa!\u0012\r!B\u0013a\u0014AB8x]\u0016$\u0007\u0005\u000b\u0002E\u000fB\u00111\u0002S\u0005\u0003\u0013\u001a\u0011\u0001B^8mCRLG.\u001a\u0005\b\u0017b\u0001\r\u0011\"\u0001<\u0003%\u0019w.\u001c9mKR,G\rC\u0004N1\u0001\u0007I\u0011\u0001(\u0002\u001b\r|W\u000e\u001d7fi\u0016$w\fJ3r)\t)r\nC\u0004D\u0019\u0006\u0005\t\u0019\u0001\u001f\t\rEC\u0002\u0015)\u0003=\u0003)\u0019w.\u001c9mKR,G\r\t\u0015\u0003!\u001eCQ\u0001\u0016\r\u0005\u0002Q\tQa\u001d;beRDQA\u0016\r\u0005\u0002Q\tAa]=oG\")\u0001\f\u0007C\u00013\u0006IAO]=DC:\u001cW\r\u001c\u000b\u0002y!)1\f\u0007C\u0001)\u0005\u0019!/\u001e8\t\u000buCB\u0011\t\u000b\u0002\u000fI,G.Z1tK\")q\f\u0001D\tA\u0006qa.Z<Xe\u0006\u0004\b/\u001a3UCN\\WcA1eMR\u0011!m\u001a\t\u0005Qa\u0019W\r\u0005\u0002,I\u0012)QF\u0018b\u0001]A\u00111F\u001a\u0003\u0006oy\u0013\rA\f\u0005\u0006Qz\u0003\r![\u0001\u0002EB!qB[2f\u0013\tY'A\u0001\u0003UCN\\\u0007bB7\u0001\u0005\u00045\tA\\\u0001\fK:4\u0018N]8o[\u0016tG/F\u0001p!\t\u0001X/D\u0001r\u0015\t\u00118/\u0001\u0006d_:\u001cWO\u001d:f]RT!\u0001\u001e\u0011\u0002\tU$\u0018\u000e\\\u0005\u0003mF\u0014!\u0003\u00165sK\u0006$\u0007k\\8m\u000bb,7-\u001e;pe\")\u0001\u0010\u0001C\u0001]\u0006AQ\r_3dkR|'\u000fC\u0003{\u0001\u0011\u000510A\u0003rk\u0016,X-F\u0001}!\r\u0001X\u0010J\u0005\u0003}F\u00141\u0003T5oW\u0016$'\t\\8dW&tw-U;fk\u0016D\u0011\"!\u0001\u0001\u0001\u0004%\t!a\u0001\u0002\u0015Q|G/\u00197uCN\\7/\u0006\u0002\u0002\u0006A\u00191\"a\u0002\n\u0007\u0005%aAA\u0002J]RD\u0011\"!\u0004\u0001\u0001\u0004%\t!a\u0004\u0002\u001dQ|G/\u00197uCN\\7o\u0018\u0013fcR\u0019Q#!\u0005\t\u0013\r\u000bY!!AA\u0002\u0005\u0015\u0001\u0002CA\u000b\u0001\u0001\u0006K!!\u0002\u0002\u0017Q|G/\u00197uCN\\7\u000f\t\u0015\u0004\u0003'9\u0005BBA\u000e\u0001\u0011%A#A\u0005j]\u000e\u0014H+Y:lg\"1\u0011q\u0004\u0001\u0005\nQ\t\u0011\u0002Z3deR\u000b7o[:\t\u000f\u0005\r\u0002\u0001\"\u0001\u0002&\u00059Q\r_3dkR,WCBA\u0014\u0003c\tY\u0004\u0006\u0003\u0002*\u0005M\u0002#B\u0006\u0002,\u0005=\u0012bAA\u0017\r\tIa)\u001e8di&|g\u000e\r\t\u0004W\u0005EBAB\u0017\u0002\"\t\u0007a\u0006\u0003\u0005\u00026\u0005\u0005\u0002\u0019AA\u001c\u0003\u0011!\u0018m]6\u0011\r=Q\u0017qFA\u001d!\rY\u00131\b\u0003\u0007o\u0005\u0005\"\u0019\u0001\u0018\t\u000f\u0005}\u0002\u0001\"\u0001\u0002B\u0005!R\r_3dkR,\u0017I\u001c3XC&$(+Z:vYR,b!a\u0011\u0002H\u0005=C\u0003BA#\u0003\u0013\u00022aKA$\t\u0019i\u0013Q\bb\u0001]!A\u0011QGA\u001f\u0001\u0004\tY\u0005\u0005\u0004\u0010U\u0006\u0015\u0013Q\n\t\u0004W\u0005=CAB\u001c\u0002>\t\u0007a\u0006C\u0004\u0002T\u0001!\t!a\u0001\u0002!A\f'/\u00197mK2L7/\u001c'fm\u0016d\u0007f\u0002\u0001\u0002X\u0005u\u0013\u0011\r\t\u0004\u0017\u0005e\u0013bAA.\r\tQA-\u001a9sK\u000e\fG/\u001a3\"\u0005\u0005}\u0013\u0001H+tK\u0002\u0002gi\u001c:l\u0015>Lg\u000eV1tWN\u0004\u0007%\u001b8ti\u0016\fGML\u0011\u0003\u0003G\naA\r\u00182c9\u0002taBA4\u0005!\u0005\u0011\u0011N\u0001\u0010)\"\u0014X-\u00193Q_>dG+Y:lgB\u0019q\"a\u001b\u0007\r\u0005\u0011\u0001\u0012AA7'\r\tYG\u0003\u0005\t\u0003c\nY\u0007\"\u0001\u0002t\u00051A(\u001b8jiz\"\"!!\u001b\t\u0015\u0005]\u00141\u000eb\u0001\n\u0003\t\u0019!\u0001\u0005ok6\u001cuN]3t\u0011%\tY(a\u001b!\u0002\u0013\t)!A\u0005ok6\u001cuN]3tA!Q\u0011qPA6\u0005\u0004%\t!!!\u0002\rQ\u001cw.\u001e8u+\t\t\u0019\t\u0005\u0003\u0002\u0006\u0006-UBAAD\u0015\r\tI)]\u0001\u0007CR|W.[2\n\t\u00055\u0015q\u0011\u0002\u000b\u0003R|W.[2M_:<\u0007\"CAI\u0003W\u0002\u000b\u0011BAB\u0003\u001d!8m\\;oi\u0002B\u0011\"!&\u0002l\t\u0007I\u0011\u00018\u0002#\u0011,g-Y;miRC'/Z1e!>|G\u000e\u0003\u0005\u0002\u001a\u0006-\u0004\u0015!\u0003p\u0003I!WMZ1vYR$\u0006N]3bIB{w\u000e\u001c\u0011)\u0011\u0005-\u0014qKA/\u0003CB\u0003\"a\u001b\u0002X\u0005u\u0013\u0011\r\u0015\t\u0003K\n9&!\u0018\u0002b\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ThreadPoolTasks.class */
public interface ThreadPoolTasks extends Tasks {

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ThreadPoolTasks$WrappedTask.class */
    public interface WrappedTask<R, Tp> extends Runnable, Tasks.WrappedTask<R, Tp> {

        /* renamed from: scala.collection.parallel.ThreadPoolTasks$WrappedTask$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ThreadPoolTasks$WrappedTask$class.class */
        public abstract class Cclass {
            public static void $init$(WrappedTask wrappedTask) {
                wrappedTask.owned_$eq(false);
                wrappedTask.completed_$eq(false);
            }

            public static void release(WrappedTask wrappedTask) {
                synchronized (wrappedTask) {
                    wrappedTask.completed_$eq(true);
                    synchronized (wrappedTask.scala$collection$parallel$ThreadPoolTasks$WrappedTask$$$outer().executor()) {
                        Cclass.scala$collection$parallel$ThreadPoolTasks$$decrTasks(wrappedTask.scala$collection$parallel$ThreadPoolTasks$WrappedTask$$$outer());
                        BoxedUnit boxedUnit = BoxedUnit.UNIT;
                    }
                    wrappedTask.notifyAll();
                    BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
                }
            }

            public static void run(WrappedTask wrappedTask) {
                boolean z;
                synchronized (wrappedTask) {
                    z = true;
                    if (wrappedTask.owned()) {
                        BoxedUnit boxedUnit = BoxedUnit.UNIT;
                        z = false;
                    } else {
                        wrappedTask.owned_$eq(true);
                        BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
                    }
                }
                if (z) {
                    wrappedTask.compute();
                }
            }

            public static void start(WrappedTask wrappedTask) {
                synchronized (wrappedTask) {
                    synchronized (wrappedTask.scala$collection$parallel$ThreadPoolTasks$WrappedTask$$$outer().executor()) {
                        Cclass.scala$collection$parallel$ThreadPoolTasks$$incrTasks(wrappedTask.scala$collection$parallel$ThreadPoolTasks$WrappedTask$$$outer());
                        wrappedTask.scala$collection$parallel$ThreadPoolTasks$WrappedTask$$$outer().executor().submit(wrappedTask);
                    }
                }
            }

            public static void sync(WrappedTask wrappedTask) {
                synchronized (wrappedTask) {
                    synchronized (wrappedTask.scala$collection$parallel$ThreadPoolTasks$WrappedTask$$$outer().executor()) {
                        int corePoolSize = wrappedTask.scala$collection$parallel$ThreadPoolTasks$WrappedTask$$$outer().executor().getCorePoolSize();
                        if (corePoolSize < wrappedTask.scala$collection$parallel$ThreadPoolTasks$WrappedTask$$$outer().totaltasks()) {
                            wrappedTask.scala$collection$parallel$ThreadPoolTasks$WrappedTask$$$outer().executor().setCorePoolSize(corePoolSize + 1);
                            BoxedUnit boxedUnit = BoxedUnit.UNIT;
                        } else {
                            BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
                        }
                    }
                    while (!wrappedTask.completed()) {
                        wrappedTask.wait();
                    }
                    BoxedUnit boxedUnit3 = BoxedUnit.UNIT;
                }
            }

            public static boolean tryCancel(WrappedTask wrappedTask) {
                Boolean bool;
                synchronized (wrappedTask) {
                    if (wrappedTask.owned()) {
                        bool = BoxesRunTime.boxToBoolean(false);
                    } else {
                        wrappedTask.owned_$eq(true);
                        bool = BoxesRunTime.boxToBoolean(true);
                    }
                }
                return BoxesRunTime.unboxToBoolean(bool);
            }
        }

        boolean completed();

        @TraitSetter
        void completed_$eq(boolean z);

        boolean owned();

        @TraitSetter
        void owned_$eq(boolean z);

        void release();

        @Override // java.lang.Runnable
        void run();

        /* synthetic */ ThreadPoolTasks scala$collection$parallel$ThreadPoolTasks$WrappedTask$$$outer();

        void start();

        void sync();

        boolean tryCancel();
    }

    /* renamed from: scala.collection.parallel.ThreadPoolTasks$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ThreadPoolTasks$class.class */
    public abstract class Cclass {
        public static Function0 execute(ThreadPoolTasks threadPoolTasks, Task task) {
            WrappedTask newWrappedTask = threadPoolTasks.newWrappedTask(task);
            newWrappedTask.start();
            return new ThreadPoolTasks$$anonfun$execute$1(threadPoolTasks, newWrappedTask);
        }

        public static Object executeAndWaitResult(ThreadPoolTasks threadPoolTasks, Task task) {
            WrappedTask newWrappedTask = threadPoolTasks.newWrappedTask(task);
            newWrappedTask.start();
            newWrappedTask.sync();
            newWrappedTask.body().forwardThrowable();
            return newWrappedTask.body().result();
        }

        public static ThreadPoolExecutor executor(ThreadPoolTasks threadPoolTasks) {
            return threadPoolTasks.environment();
        }

        public static int parallelismLevel(ThreadPoolTasks threadPoolTasks) {
            return ThreadPoolTasks$.MODULE$.numCores();
        }

        public static LinkedBlockingQueue queue(ThreadPoolTasks threadPoolTasks) {
            return (LinkedBlockingQueue) threadPoolTasks.executor().getQueue();
        }

        public static void scala$collection$parallel$ThreadPoolTasks$$decrTasks(ThreadPoolTasks threadPoolTasks) {
            synchronized (threadPoolTasks) {
                threadPoolTasks.totaltasks_$eq(threadPoolTasks.totaltasks() - 1);
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
        }

        public static void scala$collection$parallel$ThreadPoolTasks$$incrTasks(ThreadPoolTasks threadPoolTasks) {
            synchronized (threadPoolTasks) {
                threadPoolTasks.totaltasks_$eq(threadPoolTasks.totaltasks() + 1);
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
        }
    }

    @Override // scala.collection.parallel.Tasks, scala.collection.parallel.ExecutionContextTasks
    ThreadPoolExecutor environment();

    @Override // scala.collection.parallel.Tasks, scala.collection.parallel.ExecutionContextTasks
    <R, Tp> Function0<R> execute(Task<R, Tp> task);

    @Override // scala.collection.parallel.Tasks, scala.collection.parallel.ExecutionContextTasks
    <R, Tp> R executeAndWaitResult(Task<R, Tp> task);

    ThreadPoolExecutor executor();

    <R, Tp> WrappedTask<R, Tp> newWrappedTask(Task<R, Tp> task);

    @Override // scala.collection.parallel.Tasks, scala.collection.parallel.ExecutionContextTasks
    int parallelismLevel();

    LinkedBlockingQueue<Runnable> queue();

    int totaltasks();

    @TraitSetter
    void totaltasks_$eq(int i);
}
