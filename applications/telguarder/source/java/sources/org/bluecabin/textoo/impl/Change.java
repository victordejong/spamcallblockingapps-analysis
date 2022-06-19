package org.bluecabin.textoo.impl;

import scala.collection.immutable.Queue;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001I3q!\u0001\u0002\u0011\u0002\u0007%1B\u0001\u0004DQ\u0006tw-\u001a\u0006\u0003\u0007\u0011\tA![7qY*\u0011QAB\u0001\u0007i\u0016DHo\\8\u000b\u0005\u001dA\u0011!\u00032mk\u0016\u001c\u0017MY5o\u0015\u0005I\u0011aA8sO\u000e\u0001QC\u0001\u0007K'\t\u0001Q\u0002\u0005\u0002\u000f#5\tqBC\u0001\u0011\u0003\u0015\u00198-\u00197b\u0013\t\u0011rB\u0001\u0004B]f\u0014VM\u001a\u0005\u0006)\u0001!\t!F\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003Y\u0001\"AD\f\n\u0005ay!\u0001B+oSRDQA\u0007\u0001\u0005\u0002m\tQ!\u00193e)>$\"\u0001H&\u0011\u0007u\u0011\u0014J\u0004\u0002\u001fS9\u0011q\u0004\u000b\b\u0003A\u001dr!!\t\u0014\u000f\u0005\t*S\"A\u0012\u000b\u0005\u0011R\u0011A\u0002\u001fs_>$h(C\u0001\n\u0013\t9\u0001\"\u0003\u0002\u0006\r%\u00111\u0001B\u0004\u0006U\tAIaK\u0001\u0007\u0007\"\fgnZ3\u0011\u00051jS\"\u0001\u0002\u0007\u000b\u0005\u0011\u0001\u0012\u0002\u0018\u0014\u00055j\u0001\"\u0002\u0019.\t\u0003\t\u0014A\u0002\u001fj]&$h\bF\u0001,\u000b\u0011\u0019T\u0006\u0001\u001b\u0003\u0017\rC\u0017M\\4f#V,W/Z\u000b\u0003k\u0001\u00032AN\u001e>\u001b\u00059$B\u0001\u001d:\u0003%IW.\\;uC\ndWM\u0003\u0002;\u001f\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\n\u0005q:$!B)vKV,\u0007c\u0001\u0017\u0001}A\u0011q\b\u0011\u0007\u0001\t\u0015\t%G1\u0001C\u0005\u0005!\u0016CA\"G!\tqA)\u0003\u0002F\u001f\t9aj\u001c;iS:<\u0007C\u0001\bH\u0013\tAuBA\u0002B]f\u0004\"a\u0010&\u0005\u000b\u0005\u0003!\u0019\u0001\"\t\u000b1K\u0002\u0019\u0001\u000f\u0002\u000f\rD\u0017M\\4fg\")a\n\u0001D\u0001\u001f\u0006)\u0011\r\u001d9msR\u0011\u0011\n\u0015\u0005\u0006#6\u0003\r!S\u0001\u0005i\u0016DH\u000f")
/* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/Change.class */
public interface Change<T> {

    /* renamed from: org.bluecabin.textoo.impl.Change$class */
    /* loaded from: classes-dex2jar.jar:org/bluecabin/textoo/impl/Change$class.class */
    public abstract class Cclass {
        public static void $init$(Change change) {
        }

        public static Queue addTo(Change change, Queue queue) {
            return queue.enqueue((Queue) change);
        }
    }

    Queue<Change<T>> addTo(Queue<Change<T>> queue);

    T apply(T t);
}
