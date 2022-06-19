package scala.collection.mutable;

import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.TraversableOnce;
import scala.collection.generic.Growable;
import scala.math.Ordering;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001E4A!\u0001\u0002\u0001\u0013\tI2+\u001f8dQJ|g.\u001b>fIB\u0013\u0018n\u001c:jif\fV/Z;f\u0015\t\u0019A!A\u0004nkR\f'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005)\t2C\u0001\u0001\f!\raQbD\u0007\u0002\u0005%\u0011aB\u0001\u0002\u000e!JLwN]5usF+X-^3\u0011\u0005A\tB\u0002\u0001\u0003\u0006%\u0001\u0011\ra\u0005\u0002\u0002\u0003F\u0011A\u0003\u0007\t\u0003+Yi\u0011AB\u0005\u0003/\u0019\u0011qAT8uQ&tw\r\u0005\u0002\u00163%\u0011!D\u0002\u0002\u0004\u0003:L\b\"\u0003\u000f\u0001\u0005\u0003\u0005\u000b1B\u000f%\u0003\ry'\u000f\u001a\t\u0004=\u0005zaBA\u000b \u0013\t\u0001c!A\u0004qC\u000e\\\u0017mZ3\n\u0005\t\u001a#\u0001C(sI\u0016\u0014\u0018N\\4\u000b\u0005\u00012\u0011B\u0001\u000f\u000e\u0011\u00151\u0003\u0001\"\u0001(\u0003\u0019a\u0014N\\5u}Q\t\u0001\u0006\u0006\u0002*UA\u0019A\u0002A\b\t\u000bq)\u00039A\u000f\t\u000b1\u0002A\u0011I\u0017\u0002\u000f%\u001cX)\u001c9usV\ta\u0006\u0005\u0002\u0016_%\u0011\u0001G\u0002\u0002\b\u0005>|G.Z1o\u0011\u0015\u0011\u0004\u0001\"\u00114\u0003!!\u0003\u000f\\;tI\u0015\fHC\u0001\u001b6\u001b\u0005\u0001\u0001\"\u0002\u001c2\u0001\u0004y\u0011\u0001B3mK6DQ\u0001\u000f\u0001\u0005Be\nQ\u0002\n9mkN$\u0003\u000f\\;tI\u0015\fHC\u0001\u001b;\u0011\u0015Yt\u00071\u0001=\u0003\tA8\u000fE\u0002>}=i\u0011\u0001B\u0005\u0003\u007f\u0011\u0011q\u0002\u0016:bm\u0016\u00148/\u00192mK>s7-\u001a\u0005\u0006\u0003\u0002!\tEQ\u0001\bK:\fX/Z;f)\t\u0019e\t\u0005\u0002\u0016\t&\u0011QI\u0002\u0002\u0005+:LG\u000fC\u0003H\u0001\u0002\u0007\u0001*A\u0003fY\u0016l7\u000fE\u0002\u0016\u0013>I!A\u0013\u0004\u0003\u0015q\u0012X\r]3bi\u0016$g\bC\u0003M\u0001\u0011\u0005S*A\u0004eKF,X-^3\u0015\u0003=AQa\u0014\u0001\u0005BA\u000bA\u0001[3bIV\tq\u0002C\u0003S\u0001\u0011\u00053+A\u0003dY\u0016\f'\u000fF\u0001D\u0011\u0015)\u0006\u0001\"\u0011W\u0003!IG/\u001a:bi>\u0014X#A,\u0011\u0007uBv\"\u0003\u0002Z\t\tA\u0011\n^3sCR|'\u000fC\u0003\\\u0001\u0011\u0005C,\u0001\u0004fcV\fGn\u001d\u000b\u0003]uCQA\u0018.A\u0002a\tA\u0001\u001e5bi\")\u0001\r\u0001C!C\u0006AAo\\*ue&tw\rF\u0001c!\t\u0019gM\u0004\u0002\u0016I&\u0011QMB\u0001\u0007!J,G-\u001a4\n\u0005\u001dD'AB*ue&twM\u0003\u0002f\r!\"\u0001A[7p!\t)2.\u0003\u0002m\r\tQA-\u001a9sK\u000e\fG/\u001a3\"\u00039\f\u0011qI\"p[B\u0014X\r[3og&4X\rI:z]\u000eD'o\u001c8ju\u0006$\u0018n\u001c8!m&\f\u0007e]3mK\u000e$\u0018N^3!_Z,'O]5eS:<\u0007e\u001c4![\u0016$\bn\u001c3tA%\u001c\b%\u001b8iKJ,g\u000e\u001e7zAUt'/\u001a7jC\ndWM\f\u0011!\u0007>t7/\u001b3fe\u0002R\u0017M^1/kRLGNL2p]\u000e,(O]3oi:\u001auN\\2veJ,g\u000e^*lSBd\u0015n\u001d;TKR\u0004\u0013m\u001d\u0011b]\u0002\nG\u000e^3s]\u0006$\u0018N^3/C\u0005\u0001\u0018A\u0002\u001a/cEr\u0003\u0007")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/SynchronizedPriorityQueue.class */
public class SynchronizedPriorityQueue<A> extends PriorityQueue<A> {
    public SynchronizedPriorityQueue(Ordering<A> ordering) {
        super(ordering);
    }

    @Override // scala.collection.mutable.PriorityQueue, scala.collection.mutable.Builder, scala.collection.generic.Growable
    public SynchronizedPriorityQueue<A> $plus$eq(A a) {
        synchronized (this) {
            super.$plus$eq((SynchronizedPriorityQueue<A>) a);
        }
        return this;
    }

    @Override // scala.collection.mutable.PriorityQueue, scala.collection.generic.Growable
    public SynchronizedPriorityQueue<A> $plus$plus$eq(TraversableOnce<A> traversableOnce) {
        synchronized (this) {
            Growable.Cclass.$plus$plus$eq(this, traversableOnce);
        }
        return this;
    }

    @Override // scala.collection.mutable.PriorityQueue, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        synchronized (this) {
            super.clear();
        }
    }

    @Override // scala.collection.mutable.PriorityQueue
    public A dequeue() {
        A a;
        synchronized (this) {
            a = (A) super.dequeue();
        }
        return a;
    }

    @Override // scala.collection.mutable.PriorityQueue
    public void enqueue(Seq<A> seq) {
        synchronized (this) {
            Growable.Cclass.$plus$plus$eq(this, seq);
        }
    }

    @Override // scala.Equals
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this) {
            equals = super.equals(obj);
        }
        return equals;
    }

    @Override // scala.collection.mutable.PriorityQueue, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public A head() {
        A a;
        synchronized (this) {
            a = (A) super.head();
        }
        return a;
    }

    @Override // scala.collection.mutable.PriorityQueue, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this) {
            isEmpty = super.isEmpty();
        }
        return isEmpty;
    }

    @Override // scala.collection.mutable.PriorityQueue, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        Iterator<A> it;
        synchronized (this) {
            it = super.iterator();
        }
        return it;
    }

    @Override // scala.collection.mutable.PriorityQueue, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        String priorityQueue;
        synchronized (this) {
            priorityQueue = super.toString();
        }
        return priorityQueue;
    }
}
