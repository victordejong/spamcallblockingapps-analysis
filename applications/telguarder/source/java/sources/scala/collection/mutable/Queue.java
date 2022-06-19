package scala.collection.mutable;

import java.util.NoSuchElementException;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Function3;
import scala.Function4;
import scala.Function5;
import scala.None$;
import scala.Option;
import scala.Some;
import scala.collection.GenTraversable;
import scala.collection.Seq;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenTraversableFactory;
import scala.collection.generic.GenericCompanion;
import scala.math.Integral;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\u0005ud\u0001B\u0001\u0003\u0001%\u0011Q!U;fk\u0016T!a\u0001\u0003\u0002\u000f5,H/\u00192mK*\u0011QAB\u0001\u000bG>dG.Z2uS>t'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011!\"E\n\u0007\u0001-Y\u0002e\n\u0016\u0011\u00071iq\"D\u0001\u0003\u0013\tq!AA\u0006NkR\f'\r\\3MSN$\bC\u0001\t\u0012\u0019\u0001!QA\u0005\u0001C\u0002M\u0011\u0011!Q\t\u0003)a\u0001\"!\u0006\f\u000e\u0003\u0019I!a\u0006\u0004\u0003\u000f9{G\u000f[5oOB\u0011Q#G\u0005\u00035\u0019\u00111!\u00118z!\u0011aRdD\u0010\u000e\u0003\u0011I!A\b\u0003\u0003%1Kg.Z1s'\u0016\fx\n\u001d;j[&TX\r\u001a\t\u0004\u0019\u0001y\u0001\u0003B\u0011%\u001f\u0019j\u0011A\t\u0006\u0003G\u0011\tqaZ3oKJL7-\u0003\u0002&E\tQr)\u001a8fe&\u001cGK]1wKJ\u001c\u0018M\u00197f)\u0016l\u0007\u000f\\1uKB\u0011A\u0002\u0001\t\u0004\u0019!z\u0012BA\u0015\u0003\u0005%\u0019En\u001c8fC\ndW\r\u0005\u0002\u0016W%\u0011AF\u0002\u0002\r'\u0016\u0014\u0018.\u00197ju\u0006\u0014G.\u001a\u0005\u0006]\u0001!\taL\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0003}AQ!\r\u0001\u0005BI\n\u0011bY8na\u0006t\u0017n\u001c8\u0016\u0003M\u00022!\t\u001b'\u0013\t)$E\u0001\tHK:,'/[2D_6\u0004\u0018M\\5p]\"1q\u0007\u0001Q\u0005Ra\n!B\\3x\u0005VLG\u000eZ3s+\u0005I\u0004\u0003\u0002\u0007;\u001f}I!a\u000f\u0002\u0003\u000f\t+\u0018\u000e\u001c3fe\"1a\u0006\u0001C\u0001\u0005u\"Ba\b D\u000b\")q\b\u0010a\u0001\u0001\u0006\u0019am\u001d;\u0011\u00071\tu\"\u0003\u0002C\u0005\tQA*\u001b8lK\u0012d\u0015n\u001d;\t\u000b\u0011c\u0004\u0019\u0001!\u0002\u00071\u001cH\u000fC\u0003Gy\u0001\u0007q)A\u0002m]\u001e\u0004\"!\u0006%\n\u0005%3!aA%oi\")1\n\u0001C\u0001\u0019\u00069QM\\9vKV,GCA'Q!\t)b*\u0003\u0002P\r\t!QK\\5u\u0011\u0015\t&\n1\u0001S\u0003\u0015)G.Z7t!\r)2kD\u0005\u0003)\u001a\u0011!\u0002\u0010:fa\u0016\fG/\u001a3?\u0011\u00151\u0006\u0001\"\u0001X\u0003\u001d!W-];fk\u0016$\u0012a\u0004\u0005\u00063\u0002!\tAW\u0001\rI\u0016\fX/Z;f\r&\u00148\u000f\u001e\u000b\u00037z\u00032!\u0006/\u0010\u0013\tifA\u0001\u0004PaRLwN\u001c\u0005\u0006?b\u0003\r\u0001Y\u0001\u0002aB!Q#Y\bd\u0013\t\u0011gAA\u0005Gk:\u001cG/[8ocA\u0011Q\u0003Z\u0005\u0003K\u001a\u0011qAQ8pY\u0016\fg\u000eC\u0003h\u0001\u0011%\u0001.\u0001\bsK6|g/\u001a$s_6d\u0015n\u001d;\u0015\u0005mK\u0007\"B0g\u0001\u0004\u0001\u0007\"B6\u0001\t\u0003a\u0017A\u00033fcV,W/Z!mYR\u0011Q\u000e\u001d\t\u0004\u00199|\u0011BA8\u0003\u0005\r\u0019V-\u001d\u0005\u0006?*\u0004\r\u0001\u0019\u0005\u0006e\u0002!Ia]\u0001\u0012e\u0016lwN^3BY24%o\\7MSN$Hc\u0001;xqB\u0019A\"^\b\n\u0005Y\u0014!aC!se\u0006L()\u001e4gKJDQaX9A\u0002\u0001DQ!_9A\u0002Q\f1A]3t\u0011\u0015Y\b\u0001\"\u0001}\u00031)\u0007\u0010\u001e:bGR4\u0015N]:u)\u0011ih0!\u0001\u0011\u0007Ua\u0006\tC\u0003��u\u0002\u0007\u0001)A\u0003ti\u0006\u0014H\u000fC\u0003`u\u0002\u0007\u0001\rK\u0004{\u0003\u000b\tY!a\u0004\u0011\u0007U\t9!C\u0002\u0002\n\u0019\u0011!\u0002Z3qe\u0016\u001c\u0017\r^3eC\t\ti!\u0001-fqR\u0014\u0018m\u0019;GSJ\u001cH\u000fI5oCB\u0004(o\u001c9sS\u0006$X\r\\=!Kb\u0004xn]3tA%l\u0007\u000f\\3nK:$\u0018\r^5p]\u0002\"W\r^1jYNt\u0003\u0005I+tK\u0002\"W-];fk\u0016\u0004sN\u001d\u0011eKF,X-^3BY2t\u0013EAA\t\u0003\u0019\u0011d&M\u0019/a!9\u0011Q\u0003\u0001\u0005\u0002\u0005]\u0011!\u00024s_:$X#A\b\t\u000f\u0005m\u0001\u0001\"\u0011\u0002\u001e\u0005!A/Y5m+\u0005y\u0002BBA\u0011\u0001\u0011\u0005s&A\u0003dY>tW\r\u0003\u0005\u0002&\u0001\u0001K\u0011BA\u0014\u0003=!Wm\u0019:f[\u0016tG\u000fT3oORDG#A'\b\u000f\u0005-\"\u0001#\u0001\u0002.\u0005)\u0011+^3vKB\u0019A\"a\f\u0007\r\u0005\u0011\u0001\u0012AA\u0019'\u0015\ty#a\r+!\u0011\t\u0013Q\u0007\u0014\n\u0007\u0005]\"E\u0001\u0006TKF4\u0015m\u0019;pefDqALA\u0018\t\u0003\tY\u0004\u0006\u0002\u0002.!A\u0011qHA\u0018\t\u0007\t\t%\u0001\u0007dC:\u0014U/\u001b7e\rJ|W.\u0006\u0003\u0002D\u0005USCAA#!%\t\u0013qIA&\u0003'\n9&C\u0002\u0002J\t\u0012AbQ1o\u0005VLG\u000e\u001a$s_6\u0004B!!\u0014\u0002P5\u0011\u0011qF\u0005\u0004\u0003#\"$\u0001B\"pY2\u00042\u0001EA+\t\u0019\u0011\u0012Q\bb\u0001'A!A\u0002AA*\u0011\u001d9\u0014q\u0006C\u0001\u00037*B!!\u0018\u0002dU\u0011\u0011q\f\t\u0007\u0019i\n\t'!\u001a\u0011\u0007A\t\u0019\u0007\u0002\u0004\u0013\u00033\u0012\ra\u0005\t\u0005\u0019\u0001\t\t\u0007\u0003\u0006\u0002j\u0005=\u0012\u0011!C\u0005\u0003W\n1B]3bIJ+7o\u001c7wKR\u0011\u0011Q\u000e\t\u0005\u0003_\nI(\u0004\u0002\u0002r)!\u00111OA;\u0003\u0011a\u0017M\\4\u000b\u0005\u0005]\u0014\u0001\u00026bm\u0006LA!a\u001f\u0002r\t1qJ\u00196fGR\u0004")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/Queue.class */
public class Queue<A> extends MutableList<A> {
    public Queue() {
    }

    public Queue(LinkedList<A> linkedList, LinkedList<A> linkedList2, int i) {
        this();
        first0_$eq(linkedList);
        last0_$eq(linkedList2);
        len_$eq(i);
    }

    public static GenTraversableFactory<Queue>.GenericCanBuildFrom<Nothing$> ReusableCBF() {
        return (GenTraversableFactory<CC>.GenericCanBuildFrom<Nothing$>) Queue$.MODULE$.ReusableCBF();
    }

    public static <A> CanBuildFrom<Queue<?>, A, Queue<A>> canBuildFrom() {
        return Queue$.MODULE$.canBuildFrom();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable concat(Seq seq) {
        return Queue$.MODULE$.concat(seq);
    }

    private void decrementLength() {
        len_$eq(len() - 1);
        if (len() == 0) {
            last0_$eq(first0());
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable empty() {
        return Queue$.MODULE$.empty();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, int i5, Function0 function0) {
        return Queue$.MODULE$.fill(i, i2, i3, i4, i5, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, int i4, Function0 function0) {
        return Queue$.MODULE$.fill(i, i2, i3, i4, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, int i3, Function0 function0) {
        return Queue$.MODULE$.fill(i, i2, i3, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, int i2, Function0 function0) {
        return Queue$.MODULE$.fill(i, i2, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable fill(int i, Function0 function0) {
        return Queue$.MODULE$.fill(i, function0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable iterate(Object obj, int i, Function1 function1) {
        return Queue$.MODULE$.iterate(obj, i, function1);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Object obj3, Integral integral) {
        return Queue$.MODULE$.range(obj, obj2, obj3, integral);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable range(Object obj, Object obj2, Integral integral) {
        return Queue$.MODULE$.range(obj, obj2, integral);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ArrayBuffer<A> removeAllFromList(Function1<A, Object> function1, ArrayBuffer<A> arrayBuffer) {
        LinkedList<A> first0 = first0();
        while (first0.next().nonEmpty()) {
            if (BoxesRunTime.unboxToBoolean(function1.apply(((LinkedListLike) first0.next()).elem()))) {
                arrayBuffer.$plus$eq((ArrayBuffer<A>) ((LinkedListLike) first0.next()).elem());
                if (first0.next() == last0()) {
                    last0_$eq(first0);
                }
                first0.next_$eq(((LinkedListLike) first0.next()).next());
                decrementLength();
            } else {
                first0 = (LinkedList) first0.next();
            }
        }
        return arrayBuffer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Option<A> removeFromList(Function1<A, Object> function1) {
        LinkedList<A> first0 = first0();
        Option option = None$.MODULE$;
        while (first0.next().nonEmpty() && !BoxesRunTime.unboxToBoolean(function1.apply(((LinkedListLike) first0.next()).elem()))) {
            first0 = (LinkedList) first0.next();
        }
        Option option2 = option;
        if (first0.next().nonEmpty()) {
            option2 = new Some(((LinkedListLike) first0.next()).elem());
            if (first0.next() == last0()) {
                last0_$eq(first0);
            }
            first0.next_$eq(((LinkedListLike) first0.next()).next());
        }
        return option2;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, int i5, Function5 function5) {
        return Queue$.MODULE$.tabulate(i, i2, i3, i4, i5, function5);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, int i4, Function4 function4) {
        return Queue$.MODULE$.tabulate(i, i2, i3, i4, function4);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, int i3, Function3 function3) {
        return Queue$.MODULE$.tabulate(i, i2, i3, function3);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, int i2, Function2 function2) {
        return Queue$.MODULE$.tabulate(i, i2, function2);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [scala.collection.GenTraversable] */
    public static GenTraversable tabulate(int i, Function1 function1) {
        return Queue$.MODULE$.tabulate(i, function1);
    }

    public static Some unapplySeq(Seq seq) {
        return Queue$.MODULE$.unapplySeq(seq);
    }

    @Override // scala.collection.mutable.MutableList, scala.collection.mutable.AbstractSeq, scala.collection.mutable.Cloneable
    public Queue<A> clone() {
        Builder<A, Queue<A>> newBuilder = newBuilder();
        newBuilder.$plus$plus$eq(seq());
        return newBuilder.result();
    }

    @Override // scala.collection.mutable.MutableList, scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<Queue> companion() {
        return Queue$.MODULE$;
    }

    public A dequeue() {
        if (!isEmpty()) {
            A elem = first0().elem();
            first0_$eq((LinkedList) first0().next());
            decrementLength();
            return elem;
        }
        throw new NoSuchElementException("queue empty");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [scala.collection.mutable.Seq] */
    public Seq<A> dequeueAll(Function1<A, Object> function1) {
        ArrayBuffer<A> arrayBuffer;
        if (first0().isEmpty()) {
            arrayBuffer = (Seq) Seq$.MODULE$.empty();
        } else {
            ArrayBuffer<A> arrayBuffer2 = new ArrayBuffer<>();
            while (first0().nonEmpty() && BoxesRunTime.unboxToBoolean(function1.apply(first0().elem()))) {
                arrayBuffer2.$plus$eq((ArrayBuffer<A>) first0().elem());
                first0_$eq((LinkedList) first0().next());
                decrementLength();
            }
            arrayBuffer = first0().isEmpty() ? arrayBuffer2 : removeAllFromList(function1, arrayBuffer2);
        }
        return arrayBuffer;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x005d, code lost:
        if (r0.equals(r0) == false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public scala.Option<A> dequeueFirst(scala.Function1<A, java.lang.Object> r5) {
        /*
            r4 = this;
            r0 = r4
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Le
            scala.None$ r0 = scala.None$.MODULE$
            r5 = r0
            goto L66
        Le:
            r0 = r5
            r1 = r4
            scala.collection.mutable.LinkedList r1 = r1.first0()
            java.lang.Object r1 = r1.elem()
            java.lang.Object r0 = r0.apply(r1)
            boolean r0 = scala.runtime.BoxesRunTime.unboxToBoolean(r0)
            if (r0 == 0) goto L45
            scala.Some r0 = new scala.Some
            r1 = r0
            r2 = r4
            scala.collection.mutable.LinkedList r2 = r2.first0()
            java.lang.Object r2 = r2.elem()
            r1.<init>(r2)
            r5 = r0
            r0 = r4
            r1 = r4
            scala.collection.mutable.LinkedList r1 = r1.first0()
            scala.collection.mutable.Seq r1 = r1.next()
            scala.collection.mutable.LinkedList r1 = (scala.collection.mutable.LinkedList) r1
            r0.first0_$eq(r1)
            r0 = r4
            r0.decrementLength()
            goto L66
        L45:
            r0 = r4
            r1 = r5
            scala.Option r0 = r0.removeFromList(r1)
            r6 = r0
            scala.None$ r0 = scala.None$.MODULE$
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L56
            goto L60
        L56:
            r0 = r6
            r5 = r0
            r0 = r6
            r1 = r7
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L66
        L60:
            r0 = r4
            r0.decrementLength()
            r0 = r6
            r5 = r0
        L66:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.mutable.Queue.dequeueFirst(scala.Function1):scala.Option");
    }

    public void enqueue(Seq<A> seq) {
        $plus$plus$eq(seq);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Option<LinkedList<A>> extractFirst(LinkedList<A> linkedList, Function1<A, Object> function1) {
        None$ none$;
        if (isEmpty()) {
            none$ = None$.MODULE$;
        } else {
            while (linkedList.next().nonEmpty() && !BoxesRunTime.unboxToBoolean(function1.apply(((LinkedListLike) linkedList.next()).elem()))) {
                linkedList = (LinkedList) linkedList.next();
            }
            if (((LinkedListLike) linkedList.next()).isEmpty()) {
                none$ = None$.MODULE$;
            } else {
                Some some = new Some(linkedList.next());
                linkedList.next_$eq(((LinkedListLike) linkedList.next()).next());
                decrementLength();
                none$ = some;
            }
        }
        return none$;
    }

    public A front() {
        return head();
    }

    @Override // scala.collection.mutable.MutableList, scala.collection.mutable.AbstractSeq, scala.collection.AbstractSeq, scala.PartialFunction
    public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
        return isDefinedAt(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.mutable.MutableList, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    public Builder<A, Queue<A>> newBuilder() {
        return companion().newBuilder();
    }

    @Override // scala.collection.mutable.MutableList, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Queue<A> tail() {
        Queue<A> queue = new Queue<>();
        tailImpl(queue);
        return queue;
    }
}
