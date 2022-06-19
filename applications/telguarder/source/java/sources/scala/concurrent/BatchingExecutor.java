package scala.concurrent;

import java.util.Objects;
import java.util.concurrent.Executor;
import scala.Function0;
import scala.Predef$;
import scala.collection.Seq;
import scala.collection.immutable.List;
import scala.collection.immutable.List$;
import scala.collection.immutable.Nil$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
@ScalaSignature(bytes = "\u0006\u0001y4\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005!A\u0002\u0002\u0011\u0005\u0006$8\r[5oO\u0016CXmY;u_JT!a\u0001\u0003\u0002\u0015\r|gnY;se\u0016tGOC\u0001\u0006\u0003\u0015\u00198-\u00197b'\r\u0001qa\u0004\t\u0003\u00115i\u0011!\u0003\u0006\u0003\u0015-\tA\u0001\\1oO*\tA\"\u0001\u0003kCZ\f\u0017B\u0001\b\n\u0005\u0019y%M[3diB\u0011\u0001\u0003F\u0007\u0002#)\u00111A\u0005\u0006\u0003'-\tA!\u001e;jY&\u0011Q#\u0005\u0002\t\u000bb,7-\u001e;pe\")q\u0003\u0001C\u00013\u00051A%\u001b8ji\u0012\u001a\u0001\u0001F\u0001\u001b!\tYB$D\u0001\u0005\u0013\tiBA\u0001\u0003V]&$\bbB\u0010\u0001\u0005\u0004%I\u0001I\u0001\f?R\f7o[:M_\u000e\fG.F\u0001\"!\rA!\u0005J\u0005\u0003G%\u00111\u0002\u00165sK\u0006$Gj\\2bYB\u0019Q%\f\u0019\u000f\u0005\u0019ZcBA\u0014+\u001b\u0005A#BA\u0015\u0019\u0003\u0019a$o\\8u}%\tQ!\u0003\u0002-\t\u00059\u0001/Y2lC\u001e,\u0017B\u0001\u00180\u0005\u0011a\u0015n\u001d;\u000b\u00051\"\u0001C\u0001\u00052\u0013\t\u0011\u0014B\u0001\u0005Sk:t\u0017M\u00197f\u0011\u0019!\u0004\u0001)A\u0005C\u0005aq\f^1tWNdunY1mA\u0019!a\u0007\u0001\u00038\u0005\u0015\u0011\u0015\r^2i'\u0011)t\u0001\r\u001d\u0011\u0005eRT\"\u0001\u0002\n\u0005m\u0012!\u0001\u0004\"m_\u000e\\7i\u001c8uKb$\b\u0002C\u001f6\u0005\u000b\u0007I\u0011\u0001 \u0002\u000f%t\u0017\u000e^5bYV\tA\u0005\u0003\u0005Ak\t\u0005\t\u0015!\u0003%\u0003!Ig.\u001b;jC2\u0004\u0003\"\u0002\"6\t\u0003\u0019\u0015A\u0002\u001fj]&$h\b\u0006\u0002E\rB\u0011Q)N\u0007\u0002\u0001!)Q(\u0011a\u0001I!I\u0001*\u000ea\u0001\u0002\u0004%I!S\u0001\u0013a\u0006\u0014XM\u001c;CY>\u001c7nQ8oi\u0016DH/F\u00019\u0011%YU\u00071AA\u0002\u0013%A*\u0001\fqCJ,g\u000e\u001e\"m_\u000e\\7i\u001c8uKb$x\fJ3r)\tQR\nC\u0004O\u0015\u0006\u0005\t\u0019\u0001\u001d\u0002\u0007a$\u0013\u0007\u0003\u0004Qk\u0001\u0006K\u0001O\u0001\u0014a\u0006\u0014XM\u001c;CY>\u001c7nQ8oi\u0016DH\u000f\t\u0005\u0006%V\"\t%G\u0001\u0004eVt\u0007\"\u0002+6\t\u0003*\u0016a\u00022m_\u000e\\wJ\\\u000b\u0003-j#\"a\u00165\u0015\u0005a\u001b\u0007CA-[\u0019\u0001!QaW*C\u0002q\u0013\u0011\u0001V\t\u0003;\u0002\u0004\"a\u00070\n\u0005}#!a\u0002(pi\"Lgn\u001a\t\u00037\u0005L!A\u0019\u0003\u0003\u0007\u0005s\u0017\u0010C\u0003e'\u0002\u000fQ-\u0001\u0006qKJl\u0017n]:j_:\u0004\"!\u000f4\n\u0005\u001d\u0014!\u0001C\"b]\u0006;\u0018-\u001b;\t\r%\u001cF\u00111\u0001k\u0003\u0015!\b.\u001e8l!\rY2\u000eW\u0005\u0003Y\u0012\u0011\u0001\u0002\u00102z]\u0006lWM\u0010\u0005\u0006]\u00021\tb\\\u0001\u0011k:\u0014\u0017\r^2iK\u0012,\u00050Z2vi\u0016$\"A\u00079\t\u000bEl\u0007\u0019\u0001\u0019\u0002\u0003IDQa\u001d\u0001\u0005BQ\fq!\u001a=fGV$X\r\u0006\u0002\u001bk\")aO\u001da\u0001a\u0005A!/\u001e8oC\ndW\rC\u0003y\u0001\u0011\u0005\u00110A\u0005cCR\u001c\u0007.\u00192mKR\u0011!0 \t\u00037mL!\u0001 \u0003\u0003\u000f\t{w\u000e\\3b]\")ao\u001ea\u0001a\u0001")
/* loaded from: classes3-dex2jar.jar:scala/concurrent/BatchingExecutor.class */
public interface BatchingExecutor extends Executor {

    /* loaded from: classes3-dex2jar.jar:scala/concurrent/BatchingExecutor$Batch.class */
    public class Batch implements Runnable, BlockContext {
        public final /* synthetic */ BatchingExecutor $outer;
        private final List<Runnable> initial;
        private BlockContext scala$concurrent$BatchingExecutor$Batch$$parentBlockContext;

        public Batch(BatchingExecutor batchingExecutor, List<Runnable> list) {
            this.initial = list;
            Objects.requireNonNull(batchingExecutor);
            this.$outer = batchingExecutor;
        }

        private BlockContext scala$concurrent$BatchingExecutor$Batch$$parentBlockContext() {
            return this.scala$concurrent$BatchingExecutor$Batch$$parentBlockContext;
        }

        @Override // scala.concurrent.BlockContext
        public <T> T blockOn(Function0<T> function0, CanAwait canAwait) {
            List<Runnable> list = scala$concurrent$BatchingExecutor$Batch$$$outer().scala$concurrent$BatchingExecutor$$_tasksLocal().get();
            scala$concurrent$BatchingExecutor$Batch$$$outer().scala$concurrent$BatchingExecutor$$_tasksLocal().set(Nil$.MODULE$);
            if (list != null && list.nonEmpty()) {
                scala$concurrent$BatchingExecutor$Batch$$$outer().unbatchedExecute(new Batch(scala$concurrent$BatchingExecutor$Batch$$$outer(), list));
            }
            Predef$.MODULE$.require(scala$concurrent$BatchingExecutor$Batch$$parentBlockContext() != null);
            return (T) scala$concurrent$BatchingExecutor$Batch$$parentBlockContext().blockOn(function0, canAwait);
        }

        public List<Runnable> initial() {
            return this.initial;
        }

        @Override // java.lang.Runnable
        public void run() {
            Predef$.MODULE$.require(scala$concurrent$BatchingExecutor$Batch$$$outer().scala$concurrent$BatchingExecutor$$_tasksLocal().get() == null);
            BlockContext$.MODULE$.withBlockContext(this, new BatchingExecutor$Batch$$anonfun$run$1(this, BlockContext$.MODULE$.current()));
        }

        public /* synthetic */ BatchingExecutor scala$concurrent$BatchingExecutor$Batch$$$outer() {
            return this.$outer;
        }

        public void scala$concurrent$BatchingExecutor$Batch$$parentBlockContext_$eq(BlockContext blockContext) {
            this.scala$concurrent$BatchingExecutor$Batch$$parentBlockContext = blockContext;
        }
    }

    /* renamed from: scala.concurrent.BatchingExecutor$class */
    /* loaded from: classes3-dex2jar.jar:scala/concurrent/BatchingExecutor$class.class */
    public abstract class Cclass {
        public static void $init$(BatchingExecutor batchingExecutor) {
            batchingExecutor.mo63x7d29554c(new ThreadLocal());
        }

        public static boolean batchable(BatchingExecutor batchingExecutor, Runnable runnable) {
            return runnable instanceof OnCompleteRunnable;
        }

        public static void execute(BatchingExecutor batchingExecutor, Runnable runnable) {
            if (!batchingExecutor.batchable(runnable)) {
                batchingExecutor.unbatchedExecute(runnable);
                return;
            }
            List<Runnable> list = batchingExecutor.scala$concurrent$BatchingExecutor$$_tasksLocal().get();
            if (list == null) {
                batchingExecutor.unbatchedExecute(new Batch(batchingExecutor, List$.MODULE$.apply((Seq) Predef$.MODULE$.wrapRefArray(new Runnable[]{runnable}))));
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
                return;
            }
            batchingExecutor.scala$concurrent$BatchingExecutor$$_tasksLocal().set(list.$colon$colon(runnable));
            BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
        }
    }

    boolean batchable(Runnable runnable);

    @Override // java.util.concurrent.Executor
    void execute(Runnable runnable);

    ThreadLocal<List<Runnable>> scala$concurrent$BatchingExecutor$$_tasksLocal();

    /* renamed from: scala$concurrent$BatchingExecutor$_setter_$scala$concurrent$BatchingExecutor$$_tasksLocal_$eq */
    void mo63x7d29554c(ThreadLocal threadLocal);

    void unbatchedExecute(Runnable runnable);
}
