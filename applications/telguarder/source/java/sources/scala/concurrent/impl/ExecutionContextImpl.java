package scala.concurrent.impl;

import java.lang.Thread;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import scala.Function1;
import scala.Option;
import scala.Predef$;
import scala.collection.immutable.StringOps;
import scala.concurrent.ExecutionContext;
import scala.concurrent.ExecutionContextExecutor;
import scala.concurrent.forkjoin.ForkJoinPool;
import scala.concurrent.forkjoin.ForkJoinTask;
import scala.concurrent.forkjoin.ForkJoinWorkerThread;
import scala.math.package$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.RichDouble$;
import scala.util.control.NonFatal$;
@ScalaSignature(bytes = "\u0006\u0001\u00055f!B\u0001\u0003\u0001\u0019A!\u0001F#yK\u000e,H/[8o\u0007>tG/\u001a=u\u00136\u0004HN\u0003\u0002\u0004\t\u0005!\u0011.\u001c9m\u0015\t)a!\u0001\u0006d_:\u001cWO\u001d:f]RT\u0011aB\u0001\u0006g\u000e\fG.Y\n\u0004\u0001%i\u0001C\u0001\u0006\f\u001b\u00051\u0011B\u0001\u0007\u0007\u0005\u0019\te.\u001f*fMB\u0011abD\u0007\u0002\t%\u0011\u0001\u0003\u0002\u0002\u0019\u000bb,7-\u001e;j_:\u001cuN\u001c;fqR,\u00050Z2vi>\u0014\b\u0002\u0003\n\u0001\u0005\u0003\u0005\u000b\u0011\u0002\u000b\u0002\u0005\u0015\u001c8\u0001\u0001\t\u0003+mi\u0011A\u0006\u0006\u0003\u000b]Q!\u0001G\r\u0002\tU$\u0018\u000e\u001c\u0006\u00025\u0005!!.\u0019<b\u0013\tabC\u0001\u0005Fq\u0016\u001cW\u000f^8s\u0011!q\u0002A!A!\u0002\u0013y\u0012\u0001\u0003:fa>\u0014H/\u001a:\u0011\t)\u0001#EL\u0005\u0003C\u0019\u0011\u0011BR;oGRLwN\\\u0019\u0011\u0005\rZcB\u0001\u0013*\u001d\t)\u0003&D\u0001'\u0015\t93#\u0001\u0004=e>|GOP\u0005\u0002\u000f%\u0011!FB\u0001\ba\u0006\u001c7.Y4f\u0013\taSFA\u0005UQJ|w/\u00192mK*\u0011!F\u0002\t\u0003\u0015=J!\u0001\r\u0004\u0003\tUs\u0017\u000e\u001e\u0005\u0007e\u0001!\tAA\u001a\u0002\rqJg.\u001b;?)\r!dg\u000e\t\u0003k\u0001i\u0011A\u0001\u0005\u0006%E\u0002\r\u0001\u0006\u0005\u0006=E\u0002\ra\b\u0005\u0007s\u0001\u0001\u000b\u0011\u0002\u001e\u00021Ut7-Y;hQR,\u0005pY3qi&|g\u000eS1oI2,'\u000f\u0005\u0002<\u0003:\u0011AhP\u0007\u0002{)\u0011a(G\u0001\u0005Y\u0006tw-\u0003\u0002A{\u00051A\u000b\u001b:fC\u0012L!AQ\"\u00031Us7-Y;hQR,\u0005pY3qi&|g\u000eS1oI2,'O\u0003\u0002A{!9Q\t\u0001b\u0001\n\u00031\u0015\u0001C3yK\u000e,Ho\u001c:\u0016\u0003QAa\u0001\u0013\u0001!\u0002\u0013!\u0012!C3yK\u000e,Ho\u001c:!\r\u0011Q\u0005\u0001A&\u0003)\u0011+g-Y;miRC'/Z1e\r\u0006\u001cGo\u001c:z'\u0011IEj\u0014*\u0011\u0005qj\u0015B\u0001(>\u0005\u0019y%M[3diB\u0011Q\u0003U\u0005\u0003#Z\u0011Q\u0002\u00165sK\u0006$g)Y2u_JL\bCA*Z\u001d\t!v+D\u0001V\u0015\t1F!\u0001\u0005g_J\\'n\\5o\u0013\tAV+\u0001\u0007G_J\\'j\\5o!>|G.\u0003\u0002[7\nYbi\u001c:l\u0015>LgnV8sW\u0016\u0014H\u000b\u001b:fC\u00124\u0015m\u0019;pefT!\u0001W+\t\u0011uK%\u0011!Q\u0001\ny\u000b\u0001\u0002Z1f[>t\u0017n\u0019\t\u0003\u0015}K!\u0001\u0019\u0004\u0003\u000f\t{w\u000e\\3b]\")!'\u0013C\u0001ER\u00111-\u001a\t\u0003I&k\u0011\u0001\u0001\u0005\u0006;\u0006\u0004\rA\u0018\u0005\u0006O&#\t\u0001[\u0001\u0005o&\u0014X-\u0006\u0002jYR\u0011!.\u001e\t\u0003W2d\u0001\u0001B\u0003nM\n\u0007aNA\u0001U#\ty'\u000f\u0005\u0002\u000ba&\u0011\u0011O\u0002\u0002\b\u001d>$\b.\u001b8h!\ta4/\u0003\u0002u{\t1A\u000b\u001b:fC\u0012DQA\u001e4A\u0002)\fa\u0001\u001e5sK\u0006$\u0007\"\u0002=J\t\u0003I\u0018!\u00038foRC'/Z1e)\t\u0011(\u0010C\u0003|o\u0002\u0007A0\u0001\u0005sk:t\u0017M\u00197f!\taT0\u0003\u0002\u007f{\tA!+\u001e8oC\ndW\r\u0003\u0004y\u0013\u0012\u0005\u0011\u0011\u0001\u000b\u0005\u0003\u0007\tI\u0001E\u0002U\u0003\u000bI1!a\u0002V\u0005Q1uN]6K_&twk\u001c:lKJ$\u0006N]3bI\"9\u00111B@A\u0002\u00055\u0011a\u00014kaB\u0019A+a\u0004\n\u0007\u0005EQK\u0001\u0007G_J\\'j\\5o!>|G\u000eC\u0004\u0002\u0016\u0001!\t!a\u0006\u0002+\r\u0014X-\u0019;f\u000bb,7-\u001e;peN+'O^5dKV\u0011\u0011\u0011\u0004\t\u0004+\u0005m\u0011bAA\u000f-\tyQ\t_3dkR|'oU3sm&\u001cW\rC\u0004\u0002\"\u0001!\t!a\t\u0002\u000f\u0015DXmY;uKR\u0019a&!\n\t\rm\fy\u00021\u0001}\u0011\u001d\tI\u0003\u0001C\u0001\u0003W\tQB]3q_J$h)Y5mkJ,Gc\u0001\u0018\u0002.!9\u0011qFA\u0014\u0001\u0004\u0011\u0013!\u0001;\b\u0011\u0005M\"\u0001#\u0001\u0005\u0003k\tA#\u0012=fGV$\u0018n\u001c8D_:$X\r\u001f;J[Bd\u0007cA\u001b\u00028\u00199\u0011A\u0001E\u0001\t\u0005e2cAA\u001c\u0013!9!'a\u000e\u0005\u0002\u0005uBCAA\u001b\r\u001d\t\t%a\u000e\u0003\u0003\u0007\u00121#\u00113baR,GMR8sW*{\u0017N\u001c+bg.\u001cB!a\u0010\u0002FA!A+a\u0012/\u0013\r\tI%\u0016\u0002\r\r>\u00148NS8j]R\u000b7o\u001b\u0005\nw\u0006}\"\u0011!Q\u0001\nqDqAMA \t\u0003\ty\u0005\u0006\u0003\u0002R\u0005U\u0003\u0003BA*\u0003\u007fi!!a\u000e\t\rm\fi\u00051\u0001}\u0011!\tI&a\u0010\u0005F\u0005m\u0013\u0001D:fiJ\u000bwOU3tk2$Hc\u0001\u0018\u0002^!9\u0011qLA,\u0001\u0004q\u0013!A;\t\u0011\u0005\r\u0014q\bC#\u0003K\nAbZ3u%\u0006<(+Z:vYR$\u0012A\f\u0005\t\u0003S\ny\u0004\"\u0012\u0002l\u0005!Q\r_3d)\u0005q\u0006\u0002CA8\u0003o!\t!!\u001d\u0002\u0019\u0019\u0014x.\\#yK\u000e,Ho\u001c:\u0015\u000bQ\n\u0019(a\u001e\t\u000f\u0005U\u0014Q\u000ea\u0001)\u0005\tQ\r\u0003\u0005\u001f\u0003[\u0002\n\u00111\u0001 \u0011!\tY(a\u000e\u0005\u0002\u0005u\u0014a\u00054s_6,\u00050Z2vi>\u00148+\u001a:wS\u000e,GCBA@\u0003\u0017\u000biIE\u0003\u0002\u0002R\n)IB\u0004\u0002\u0004\u0006]\u0002!a \u0003\u0019q\u0012XMZ5oK6,g\u000e\u001e \u0011\u00079\t9)C\u0002\u0002\n\u0012\u0011q$\u0012=fGV$\u0018n\u001c8D_:$X\r\u001f;Fq\u0016\u001cW\u000f^8s'\u0016\u0014h/[2f\u0011\u001d\u0011\u0012\u0011\u0010a\u0001\u00033A\u0001BHA=!\u0003\u0005\ra\b\u0005\u000b\u0003#\u000b9$%A\u0005\u0002\u0005M\u0015A\u00064s_6,\u00050Z2vi>\u0014H\u0005Z3gCVdG\u000f\n\u001a\u0016\u0005\u0005U%fA\u0010\u0002\u0018.\u0012\u0011\u0011\u0014\t\u0005\u00037\u000b)+\u0004\u0002\u0002\u001e*!\u0011qTAQ\u0003%)hn\u00195fG.,GMC\u0002\u0002$\u001a\t!\"\u00198o_R\fG/[8o\u0013\u0011\t9+!(\u0003#Ut7\r[3dW\u0016$g+\u0019:jC:\u001cW\r\u0003\u0006\u0002,\u0006]\u0012\u0013!C\u0001\u0003'\u000bQD\u001a:p[\u0016CXmY;u_J\u001cVM\u001d<jG\u0016$C-\u001a4bk2$HE\r")
/* loaded from: classes3-dex2jar.jar:scala/concurrent/impl/ExecutionContextImpl.class */
public class ExecutionContextImpl implements ExecutionContextExecutor {
    private final Executor executor;
    public final Function1<Throwable, BoxedUnit> scala$concurrent$impl$ExecutionContextImpl$$reporter;

    /* renamed from: scala$concurrent$impl$ExecutionContextImpl$$uncaughtExceptionHandler */
    public final Thread.UncaughtExceptionHandler f1621xbbd1923c = new Thread.UncaughtExceptionHandler(this) { // from class: scala.concurrent.impl.ExecutionContextImpl$$anon$3
        private final /* synthetic */ ExecutionContextImpl $outer;

        {
            Objects.requireNonNull(this);
            this.$outer = this;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            this.$outer.scala$concurrent$impl$ExecutionContextImpl$$reporter.apply(th);
        }
    };

    /* loaded from: classes3-dex2jar.jar:scala/concurrent/impl/ExecutionContextImpl$AdaptedForkJoinTask.class */
    public static final class AdaptedForkJoinTask extends ForkJoinTask<BoxedUnit> {
        private final Runnable runnable;

        public AdaptedForkJoinTask(Runnable runnable) {
            this.runnable = runnable;
        }

        @Override // scala.concurrent.forkjoin.ForkJoinTask
        public final boolean exec() {
            try {
                this.runnable.run();
                return true;
            } catch (Throwable th) {
                Thread currentThread = Thread.currentThread();
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler = currentThread.getUncaughtExceptionHandler();
                if (uncaughtExceptionHandler == null) {
                    BoxedUnit boxedUnit = BoxedUnit.UNIT;
                } else {
                    uncaughtExceptionHandler.uncaughtException(currentThread, th);
                    BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
                }
                throw th;
            }
        }

        @Override // scala.concurrent.forkjoin.ForkJoinTask
        /* renamed from: getRawResult */
        public final void getRawResult2() {
        }

        public final void setRawResult(BoxedUnit boxedUnit) {
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory.class */
    public class DefaultThreadFactory implements ThreadFactory, ForkJoinPool.ForkJoinWorkerThreadFactory {
        public final /* synthetic */ ExecutionContextImpl $outer;
        private final boolean daemonic;

        public DefaultThreadFactory(ExecutionContextImpl executionContextImpl, boolean z) {
            this.daemonic = z;
            Objects.requireNonNull(executionContextImpl);
            this.$outer = executionContextImpl;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return wire(new Thread(runnable));
        }

        @Override // scala.concurrent.forkjoin.ForkJoinPool.ForkJoinWorkerThreadFactory
        public ForkJoinWorkerThread newThread(ForkJoinPool forkJoinPool) {
            return (ForkJoinWorkerThread) wire(new ExecutionContextImpl$DefaultThreadFactory$$anon$2(this, forkJoinPool));
        }

        /* renamed from: scala$concurrent$impl$ExecutionContextImpl$DefaultThreadFactory$$$outer */
        public /* synthetic */ ExecutionContextImpl m60x18229eae() {
            return this.$outer;
        }

        public <T extends Thread> T wire(T t) {
            t.setDaemon(this.daemonic);
            t.setUncaughtExceptionHandler(m60x18229eae().f1621xbbd1923c);
            return t;
        }
    }

    public ExecutionContextImpl(Executor executor, Function1<Throwable, BoxedUnit> function1) {
        this.scala$concurrent$impl$ExecutionContextImpl$$reporter = function1;
        ExecutionContext.Cclass.$init$(this);
        this.executor = executor == null ? createExecutorService() : executor;
    }

    public static ExecutionContextImpl fromExecutor(Executor executor, Function1<Throwable, BoxedUnit> function1) {
        return ExecutionContextImpl$.MODULE$.fromExecutor(executor, function1);
    }

    public static ExecutionContextImpl fromExecutorService(ExecutorService executorService, Function1<Throwable, BoxedUnit> function1) {
        return ExecutionContextImpl$.MODULE$.fromExecutorService(executorService, function1);
    }

    private final int getInt$1(String str, String str2) {
        int i;
        try {
            str2 = System.getProperty(str, str2);
        } catch (SecurityException e) {
        }
        if (str2.charAt(0) == 'x') {
            RichDouble$ richDouble$ = RichDouble$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            double availableProcessors = Runtime.getRuntime().availableProcessors();
            Predef$ predef$2 = Predef$.MODULE$;
            i = (int) richDouble$.ceil$extension(availableProcessors * new StringOps(str2.substring(1)).toDouble());
        } else {
            Predef$ predef$3 = Predef$.MODULE$;
            i = new StringOps(str2).toInt();
        }
        return i;
    }

    private final int range$1(int i, int i2, int i3) {
        return package$.MODULE$.min(package$.MODULE$.max(i, i2), i3);
    }

    public ExecutorService createExecutorService() {
        ForkJoinPool forkJoinPool;
        int range$1 = range$1(getInt$1("scala.concurrent.context.minThreads", "1"), getInt$1("scala.concurrent.context.numThreads", "x1"), getInt$1("scala.concurrent.context.maxThreads", "x1"));
        DefaultThreadFactory defaultThreadFactory = new DefaultThreadFactory(this, true);
        try {
            forkJoinPool = new ForkJoinPool(range$1, (ForkJoinPool.ForkJoinWorkerThreadFactory) defaultThreadFactory, this.f1621xbbd1923c, true);
        } catch (Throwable th) {
            Option<Throwable> unapply = NonFatal$.MODULE$.unapply(th);
            if (unapply.isEmpty()) {
                throw th;
            }
            System.err.println("Failed to create ForkJoinPool for the default ExecutionContext, falling back to ThreadPoolExecutor");
            unapply.get().printStackTrace(System.err);
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(range$1, range$1, 5L, TimeUnit.MINUTES, new LinkedBlockingQueue(), defaultThreadFactory);
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            forkJoinPool = threadPoolExecutor;
        }
        return forkJoinPool;
    }

    @Override // scala.concurrent.ExecutionContext, scala.concurrent.BatchingExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        Executor executor = executor();
        if (!(executor instanceof ForkJoinPool)) {
            executor.execute(runnable);
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
            return;
        }
        ForkJoinPool forkJoinPool = (ForkJoinPool) executor;
        AdaptedForkJoinTask adaptedForkJoinTask = runnable instanceof ForkJoinTask ? (ForkJoinTask) runnable : new AdaptedForkJoinTask(runnable);
        Thread currentThread = Thread.currentThread();
        if (!(currentThread instanceof ForkJoinWorkerThread) || ((ForkJoinWorkerThread) currentThread).getPool() != forkJoinPool) {
            forkJoinPool.execute(adaptedForkJoinTask);
            BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
        } else {
            adaptedForkJoinTask.fork();
            BoxedUnit boxedUnit3 = BoxedUnit.UNIT;
        }
        BoxedUnit boxedUnit4 = BoxedUnit.UNIT;
    }

    public Executor executor() {
        return this.executor;
    }

    @Override // scala.concurrent.ExecutionContext
    public ExecutionContext prepare() {
        return ExecutionContext.Cclass.prepare(this);
    }

    @Override // scala.concurrent.ExecutionContext
    public void reportFailure(Throwable th) {
        this.scala$concurrent$impl$ExecutionContextImpl$$reporter.apply(th);
    }
}
