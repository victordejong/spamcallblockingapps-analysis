package scala.collection.parallel;

import scala.Option;
import scala.collection.Seq;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.TraitSetter;
import scala.util.control.BreakControl;
import scala.util.control.Breaks$;
import scala.util.control.Breaks$$anon$1;
@ScalaSignature(bytes = "\u0006\u0001\u0005\u0015aaB\u0001\u0003!\u0003\r\t!\u0003\u0002\u0005)\u0006\u001c8N\u0003\u0002\u0004\t\u0005A\u0001/\u0019:bY2,GN\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!F\u0002\u000b3\u0019\u001a\"\u0001A\u0006\u0011\u00051iQ\"\u0001\u0004\n\u000591!AB!osJ+g\rC\u0003\u0011\u0001\u0011\u0005\u0011#\u0001\u0004%S:LG\u000f\n\u000b\u0002%A\u0011AbE\u0005\u0003)\u0019\u0011A!\u00168ji\u0016!a\u0003\u0001\u0001\u0018\u0005\u0019\u0011Vm];miB\u0011\u0001$\u0007\u0007\u0001\t\u0015Q\u0002A1\u0001\u001c\u0005\u0005\u0011\u0016C\u0001\u000f !\taQ$\u0003\u0002\u001f\r\t9aj\u001c;iS:<\u0007C\u0001\u0007!\u0013\t\tcAA\u0002B]fDQa\t\u0001\u0005\u0002\u0011\nAA]3qeV\tQ\u0005\u0005\u0002\u0019M\u00111q\u0005\u0001CC\u0002m\u0011!\u0001\u00169\t\u000b%\u0002a\u0011\u0001\u0016\u0002\t1,\u0017M\u001a\u000b\u0003%-BQ\u0001\f\u0015A\u00025\naA]3tk2$\bc\u0001\u0007//%\u0011qF\u0002\u0002\u0007\u001fB$\u0018n\u001c8\t\u000f1\u0002\u0001\u0019!D\u0001cU\tq\u0003C\u00044\u0001\u0001\u0007i\u0011\u0001\u001b\u0002\u0015I,7/\u001e7u?\u0012*\u0017\u000f\u0006\u0002\u0013k!9aGMA\u0001\u0002\u00049\u0012a\u0001=%c!)\u0001\b\u0001D\u0001s\u0005\u00112\u000f[8vY\u0012\u001c\u0006\u000f\\5u\rV\u0014H\u000f[3s+\u0005Q\u0004C\u0001\u0007<\u0013\tadAA\u0004C_>dW-\u00198\t\ry\u0002a\u0011\u0001\u0002@\u0003\u0015\u0019\b\u000f\\5u+\u0005\u0001\u0005cA!E\u000f:\u0011ABQ\u0005\u0003\u0007\u001a\tq\u0001]1dW\u0006<W-\u0003\u0002F\r\n\u00191+Z9\u000b\u0005\r3\u0001\u0003\u0002%\u0001/\u0015j\u0011A\u0001\u0005\u0007\u0015\u0002!\tAA&\u0002\u000b5,'oZ3\u0015\u0005Ia\u0005\"B'J\u0001\u0004q\u0015\u0001\u0002;iCRT#!J(,\u0003A\u0003\"!\u0015,\u000e\u0003IS!a\u0015+\u0002\u0013Ut7\r[3dW\u0016$'BA+\u0007\u0003)\tgN\\8uCRLwN\\\u0005\u0003/J\u0013\u0011#\u001e8dQ\u0016\u001c7.\u001a3WCJL\u0017M\\2f\u0011\u001dI\u0006\u00011A\u0005\u0002i\u000b\u0011\u0002\u001e5s_^\f'\r\\3\u0016\u0003m\u0003\"!\u0011/\n\u0005u3%!\u0003+ie><\u0018M\u00197f\u0011\u001dy\u0006\u00011A\u0005\u0002\u0001\fQ\u0002\u001e5s_^\f'\r\\3`I\u0015\fHC\u0001\nb\u0011\u001d1d,!AA\u0002mCaa\u0019\u0001!B\u0013Y\u0016A\u0003;ie><\u0018M\u00197fA!\u0012!-\u001a\t\u0003\u0019\u0019L!a\u001a\u0004\u0003\u0011Y|G.\u0019;jY\u0016DQ!\u001b\u0001\u0005\u0002E\t\u0001CZ8so\u0006\u0014H\r\u00165s_^\f'\r\\3\t\r-\u0004A\u0011\u0001\u0002m\u0003\u001d!(/\u001f'fC\u001a$\"AE7\t\u000b9T\u0007\u0019A\u0017\u0002\u000f1\f7\u000f\u001e:fg\"1\u0001\u000f\u0001C\u0001\u0005E\f\u0001\u0002\u001e:z\u001b\u0016\u0014x-\u001a\u000b\u0003%IDQa]8A\u00029\u000b\u0011\u0001\u001e\u0005\u0007k\u0002!\tA\u0001<\u0002\u001f5,'oZ3UQJ|w/\u00192mKN$\"AE<\t\u000b5#\b\u0019\u0001=1\u0007e\\h\u0010\u0005\u0003I\u0001il\bC\u0001\r|\t%ax/!A\u0001\u0002\u000b\u00051DA\u0002`IE\u0002\"\u0001\u0007@\u0005\u0013}<\u0018\u0011!A\u0001\u0006\u0003Y\"aA0%e!9\u00111\u0001\u0001\u0005\u0002\t\t\u0012aC:jO:\fG.\u00112peR\u0004")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/Task.class */
public interface Task<R, Tp> {

    /* renamed from: scala.collection.parallel.Task$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/Task$class.class */
    public abstract class Cclass {
        public static void $init$(Task task) {
            task.throwable_$eq(null);
        }

        public static void forwardThrowable(Task task) {
            if (task.throwable() == null) {
                return;
            }
            throw task.throwable();
        }

        public static void merge(Task task, Object obj) {
        }

        public static void mergeThrowables(Task task, Task task2) {
            if (task.throwable() != null || task2.throwable() == null) {
                return;
            }
            task.throwable_$eq(task2.throwable());
        }

        public static Object repr(Task task) {
            return task;
        }

        public static void signalAbort(Task task) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static void tryLeaf(Task task, Option option) {
            try {
                Breaks$ breaks$ = Breaks$.MODULE$;
                Task$$anonfun$tryLeaf$1 task$$anonfun$tryLeaf$1 = new Task$$anonfun$tryLeaf$1(task, option);
                Breaks$$anon$1 breaks$$anon$1 = new Breaks$$anon$1(breaks$, task$$anonfun$tryLeaf$1);
                Task$$anonfun$tryLeaf$2 task$$anonfun$tryLeaf$2 = new Task$$anonfun$tryLeaf$2(task);
                try {
                    task$$anonfun$tryLeaf$1.apply();
                } catch (BreakControl e) {
                    if (e == breaks$$anon$1.$outer.scala$util$control$Breaks$$breakException()) {
                        task$$anonfun$tryLeaf$2.$outer.signalAbort();
                        BoxedUnit boxedUnit = BoxedUnit.UNIT;
                        return;
                    }
                    task.result_$eq(task.result());
                    task.throwable_$eq(e);
                    task.signalAbort();
                }
            } catch (Throwable th) {
                task.result_$eq(task.result());
                task.throwable_$eq(th);
                task.signalAbort();
            }
        }

        public static void tryMerge(Task task, Object obj) {
            Task<?, ?> task2 = (Task) obj;
            if (task.throwable() == null && task2.throwable() == null) {
                task.merge(obj);
            }
            task.mergeThrowables(task2);
        }
    }

    void forwardThrowable();

    void leaf(Option<R> option);

    void merge(Tp tp);

    void mergeThrowables(Task<?, ?> task);

    Tp repr();

    R result();

    void result_$eq(R r);

    boolean shouldSplitFurther();

    void signalAbort();

    Seq<Task<R, Tp>> split();

    Throwable throwable();

    @TraitSetter
    void throwable_$eq(Throwable th);

    void tryLeaf(Option<R> option);

    void tryMerge(Tp tp);
}
