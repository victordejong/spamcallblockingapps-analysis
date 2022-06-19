package scala.collection.parallel;

import scala.None$;
import scala.Predef$;
import scala.Predef$any2stringadd$;
import scala.Some;
import scala.collection.IterableLike;
import scala.collection.Seq;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.Tasks;
import scala.reflect.ScalaSignature;
import scala.runtime.ObjectRef;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001-4q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\rBI\u0006\u0004H/\u001b<f/>\u00148n\u0015;fC2Lgn\u001a+bg.\u001c(BA\u0002\u0005\u0003!\u0001\u0018M]1mY\u0016d'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u00011c\u0001\u0001\u000b\u001dA\u00111\u0002D\u0007\u0002\r%\u0011QB\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u0005=\u0001R\"\u0001\u0002\n\u0005E\u0011!!\u0002+bg.\u001c\b\"B\n\u0001\t\u0003!\u0012A\u0002\u0013j]&$H\u0005F\u0001\u0016!\tYa#\u0003\u0002\u0018\r\t!QK\\5u\r\u001dI\u0002\u0001%A\u0002\u0002i\u00111b\u0016:baB,G\rV1tWV\u00191$I\u0016\u0014\u0007aQA\u0004\u0005\u0003\u001e=}QS\"\u0001\u0001\n\u0005e\u0001\u0002C\u0001\u0011\"\u0019\u0001!QA\t\rC\u0002\r\u0012\u0011AU\t\u0003I\u001d\u0002\"aC\u0013\n\u0005\u00192!a\u0002(pi\"Lgn\u001a\t\u0003\u0017!J!!\u000b\u0004\u0003\u0007\u0005s\u0017\u0010\u0005\u0002!W\u0011)A\u0006\u0007b\u0001G\t\u0011A\u000b\u001d\u0005\u0006'a!\t\u0001\u0006\u0005\b_a\u0001\r\u0011\"\u00011\u0003\u0011qW\r\u001f;\u0016\u0003E\u0002B!\b\r U!91\u0007\u0007a\u0001\n\u0003!\u0014\u0001\u00038fqR|F%Z9\u0015\u0005U)\u0004b\u0002\u001c3\u0003\u0003\u0005\r!M\u0001\u0004q\u0012\n\u0004B\u0002\u001d\u0019A\u0003&\u0011'A\u0003oKb$\b\u0005\u000b\u00028uA\u00111bO\u0005\u0003y\u0019\u0011\u0001B^8mCRLG.\u001a\u0005\b}a\u0001\r\u0011\"\u0001@\u00035\u0019\bn\\;mI^\u000b\u0017\u000e\u001e$peV\t\u0001\t\u0005\u0002\f\u0003&\u0011!I\u0002\u0002\b\u0005>|G.Z1o\u0011\u001d!\u0005\u00041A\u0005\u0002\u0015\u000b\u0011c\u001d5pk2$w+Y5u\r>\u0014x\fJ3r)\t)b\tC\u00047\u0007\u0006\u0005\t\u0019\u0001!\t\r!C\u0002\u0015)\u0003A\u00039\u0019\bn\\;mI^\u000b\u0017\u000e\u001e$pe\u0002B#a\u0012\u001e\t\u000b-Cb\u0011\u0001'\u0002\u000bM\u0004H.\u001b;\u0016\u00035\u00032AT)2\u001d\tYq*\u0003\u0002Q\r\u00059\u0001/Y2lC\u001e,\u0017B\u0001*T\u0005\r\u0019V-\u001d\u0006\u0003!\u001aAQ!\u0016\r\u0005\u0002Q\tqaY8naV$X\rC\u0003X1\u0011\u0005A#\u0001\u0005j]R,'O\\1m\u0011\u0015I\u0006\u0004\"\u0001[\u00035\u0019\b/Y<o'V\u0014G/Y:lgR\t\u0011\u0007C\u0003]1\u0011\u0005A#\u0001\u0006qe&tGo\u00115bS:DQA\u0018\u0001\u0007\u0012}\u000baB\\3x/J\f\u0007\u000f]3e)\u0006\u001c8.F\u0002aG\u0016$\"!\u00194\u0011\tuA\"\r\u001a\t\u0003A\r$QAI/C\u0002\r\u0002\"\u0001I3\u0005\u000b1j&\u0019A\u0012\t\u000b\u001dl\u0006\u0019\u00015\u0002\u0003\t\u0004BaD5cI&\u0011!N\u0001\u0002\u0005)\u0006\u001c8\u000e")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/AdaptiveWorkStealingTasks.class */
public interface AdaptiveWorkStealingTasks extends Tasks {

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask.class */
    public interface WrappedTask<R, Tp> extends Tasks.WrappedTask<R, Tp> {

        /* renamed from: scala.collection.parallel.AdaptiveWorkStealingTasks$WrappedTask$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask$class.class */
        public abstract class Cclass {
            public static void $init$(WrappedTask wrappedTask) {
                wrappedTask.next_$eq(null);
                wrappedTask.shouldWaitFor_$eq(true);
            }

            public static void compute(WrappedTask wrappedTask) {
                if (wrappedTask.body().shouldSplitFurther()) {
                    wrappedTask.internal();
                    wrappedTask.release();
                    return;
                }
                wrappedTask.body().tryLeaf(None$.MODULE$);
                wrappedTask.release();
            }

            public static void internal(WrappedTask wrappedTask) {
                WrappedTask<R, Tp> spawnSubtasks = wrappedTask.spawnSubtasks();
                spawnSubtasks.body().tryLeaf(None$.MODULE$);
                spawnSubtasks.release();
                wrappedTask.body().result_$eq(spawnSubtasks.body().result());
                wrappedTask.body().throwable_$eq(spawnSubtasks.body().throwable());
                while (spawnSubtasks.next() != null) {
                    spawnSubtasks = spawnSubtasks.next();
                    if (spawnSubtasks.tryCancel()) {
                        spawnSubtasks.body().tryLeaf(new Some(wrappedTask.body().result()));
                        spawnSubtasks.release();
                    } else {
                        spawnSubtasks.sync();
                    }
                    wrappedTask.body().tryMerge(spawnSubtasks.body().repr());
                }
            }

            public static void printChain(WrappedTask wrappedTask) {
                String str = "chain: ";
                while (wrappedTask != null) {
                    str = new StringBuilder().append((Object) str).append((Object) Predef$any2stringadd$.MODULE$.$plus$extension(Predef$.MODULE$.any2stringadd(wrappedTask), " ---> ")).toString();
                    wrappedTask = wrappedTask.next();
                }
                Predef$.MODULE$.println(str);
            }

            public static WrappedTask spawnSubtasks(WrappedTask wrappedTask) {
                WrappedTask<R, Tp> head;
                boolean shouldSplitFurther;
                ObjectRef create = ObjectRef.create(null);
                WrappedTask<R, Tp> wrappedTask2 = wrappedTask;
                do {
                    Seq<WrappedTask<R, Tp>> split = wrappedTask2.split();
                    head = split.head();
                    ((IterableLike) split.tail().reverse()).foreach(new AdaptiveWorkStealingTasks$WrappedTask$$anonfun$spawnSubtasks$1(wrappedTask, create));
                    shouldSplitFurther = head.body().shouldSplitFurther();
                    wrappedTask2 = head;
                } while (shouldSplitFurther);
                head.next_$eq((WrappedTask) create.elem);
                return head;
            }
        }

        @Override // 
        void compute();

        void internal();

        WrappedTask<R, Tp> next();

        @TraitSetter
        void next_$eq(WrappedTask<R, Tp> wrappedTask);

        void printChain();

        /* renamed from: scala$collection$parallel$AdaptiveWorkStealingTasks$WrappedTask$$$outer */
        /* synthetic */ AdaptiveWorkStealingTasks mo121xc53d60dc();

        boolean shouldWaitFor();

        @TraitSetter
        void shouldWaitFor_$eq(boolean z);

        WrappedTask<R, Tp> spawnSubtasks();

        @Override // 
        Seq<WrappedTask<R, Tp>> split();
    }

    /* renamed from: scala.collection.parallel.AdaptiveWorkStealingTasks$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/AdaptiveWorkStealingTasks$class.class */
    public abstract class Cclass {
        public static void $init$(AdaptiveWorkStealingTasks adaptiveWorkStealingTasks) {
        }
    }

    <R, Tp> WrappedTask<R, Tp> newWrappedTask(Task<R, Tp> task);
}
