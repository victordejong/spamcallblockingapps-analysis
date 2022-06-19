package scala.collection.mutable;

import scala.Function1;
import scala.Option;
import scala.collection.GenSeqLike;
import scala.collection.Seq;
import scala.collection.SeqLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.Growable;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001E4A!\u0001\u0002\u0001\u0013\t\t2+\u001f8dQJ|g.\u001b>fIF+X-^3\u000b\u0005\r!\u0011aB7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001A\u000b\u0003\u0015E\u0019\"\u0001A\u0006\u0011\u00071iq\"D\u0001\u0003\u0013\tq!AA\u0003Rk\u0016,X\r\u0005\u0002\u0011#1\u0001A!\u0002\n\u0001\u0005\u0004\u0019\"!A!\u0012\u0005QA\u0002CA\u000b\u0017\u001b\u00051\u0011BA\f\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"!F\r\n\u0005i1!aA!os\")A\u0004\u0001C\u0001;\u00051A(\u001b8jiz\"\u0012A\b\t\u0004\u0019\u0001y\u0001\"\u0002\u0011\u0001\t\u0003\n\u0013aB5t\u000b6\u0004H/_\u000b\u0002EA\u0011QcI\u0005\u0003I\u0019\u0011qAQ8pY\u0016\fg\u000eC\u0003'\u0001\u0011\u0005s%\u0001\u0005%a2,8\u000fJ3r)\tA\u0013&D\u0001\u0001\u0011\u0015QS\u00051\u0001\u0010\u0003\u0011)G.Z7\t\u000b1\u0002A\u0011I\u0017\u0002\u001b\u0011\u0002H.^:%a2,8\u000fJ3r)\tAc\u0006C\u00030W\u0001\u0007\u0001'\u0001\u0002ygB\u0019\u0011GM\b\u000e\u0003\u0011I!a\r\u0003\u0003\u001fQ\u0013\u0018M^3sg\u0006\u0014G.Z(oG\u0016DQ!\u000e\u0001\u0005BY\nq!\u001a8rk\u0016,X\r\u0006\u00028uA\u0011Q\u0003O\u0005\u0003s\u0019\u0011A!\u00168ji\")1\b\u000ea\u0001y\u0005)Q\r\\3ngB\u0019Q#P\b\n\u0005y2!A\u0003\u001fsKB,\u0017\r^3e}!)\u0001\t\u0001C!\u0003\u00069A-Z9vKV,G#A\b\t\u000b\r\u0003A\u0011\t#\u0002\u0019\u0011,\u0017/^3vK\u001aK'o\u001d;\u0015\u0005\u0015C\u0005cA\u000bG\u001f%\u0011qI\u0002\u0002\u0007\u001fB$\u0018n\u001c8\t\u000b%\u0013\u0005\u0019\u0001&\u0002\u0003A\u0004B!F&\u0010E%\u0011AJ\u0002\u0002\n\rVt7\r^5p]FBQA\u0014\u0001\u0005B=\u000b!\u0002Z3rk\u0016,X-\u00117m)\t\u00016\u000bE\u0002\r#>I!A\u0015\u0002\u0003\u0007M+\u0017\u000fC\u0003J\u001b\u0002\u0007!\nC\u0003V\u0001\u0011\u0005c+A\u0003ge>tG/F\u0001\u0010\u0011\u0015A\u0006\u0001\"\u0011Z\u0003\u0015\u0019G.Z1s)\u00059\u0004\"B.\u0001\t\u0003b\u0016AB3rk\u0006d7\u000f\u0006\u0002#;\")aL\u0017a\u00011\u0005!A\u000f[1u\u0011\u0015\u0001\u0007\u0001\"\u0011b\u0003!!xn\u0015;sS:<G#\u00012\u0011\u0005\r4gBA\u000be\u0013\t)g!\u0001\u0004Qe\u0016$WMZ\u0005\u0003O\"\u0014aa\u0015;sS:<'BA3\u0007Q\u0011\u0001!.\\8\u0011\u0005UY\u0017B\u00017\u0007\u0005)!W\r\u001d:fG\u0006$X\rZ\u0011\u0002]\u0006\tYcU=oG\"\u0014xN\\5{CRLwN\u001c\u0011wS\u0006\u00043/\u001a7fGRLg/\u001a\u0011pm\u0016\u0014(/\u001b3j]\u001e\u0004sN\u001a\u0011nKRDw\u000eZ:!SN\u0004\u0013N\u001c5fe\u0016tG\u000f\\=!k:\u0014X\r\\5bE2,g\u0006\t\u0011D_:\u001c\u0018\u000eZ3sA)\fg/\u0019\u0018vi&dgfY8oGV\u0014(/\u001a8u]\r{gnY;se\u0016tG\u000fT5oW\u0016$\u0017+^3vK\u0002\n7\u000fI1oA\u0005dG/\u001a:oCRLg/\u001a\u0018\"\u0003A\faA\r\u00182c9\u0002\u0004")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/SynchronizedQueue.class */
public class SynchronizedQueue<A> extends Queue<A> {
    @Override // scala.collection.mutable.MutableList, scala.collection.mutable.Builder, scala.collection.generic.Growable
    public SynchronizedQueue<A> $plus$eq(A a) {
        SynchronizedQueue<A> synchronizedQueue;
        synchronized (this) {
            synchronizedQueue = (SynchronizedQueue) super.$plus$eq((SynchronizedQueue<A>) a);
        }
        return synchronizedQueue;
    }

    @Override // scala.collection.mutable.MutableList, scala.collection.generic.Growable
    public SynchronizedQueue<A> $plus$plus$eq(TraversableOnce<A> traversableOnce) {
        SynchronizedQueue<A> synchronizedQueue;
        synchronized (this) {
            synchronizedQueue = (SynchronizedQueue) Growable.Cclass.$plus$plus$eq(this, traversableOnce);
        }
        return synchronizedQueue;
    }

    @Override // scala.collection.mutable.MutableList, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        synchronized (this) {
            super.clear();
        }
    }

    @Override // scala.collection.mutable.Queue, scala.collection.mutable.QueueProxy
    public A dequeue() {
        A a;
        synchronized (this) {
            a = (A) super.dequeue();
        }
        return a;
    }

    @Override // scala.collection.mutable.Queue
    public Seq<A> dequeueAll(Function1<A, Object> function1) {
        Seq<A> dequeueAll;
        synchronized (this) {
            dequeueAll = super.dequeueAll(function1);
        }
        return dequeueAll;
    }

    @Override // scala.collection.mutable.Queue
    public Option<A> dequeueFirst(Function1<A, Object> function1) {
        Option<A> dequeueFirst;
        synchronized (this) {
            dequeueFirst = super.dequeueFirst(function1);
        }
        return dequeueFirst;
    }

    @Override // scala.collection.mutable.Queue, scala.collection.mutable.QueueProxy
    public void enqueue(Seq<A> seq) {
        synchronized (this) {
            Growable.Cclass.$plus$plus$eq(this, seq);
        }
    }

    @Override // scala.collection.AbstractSeq, scala.Equals
    public boolean equals(Object obj) {
        boolean equals;
        synchronized (this) {
            equals = GenSeqLike.Cclass.equals(this, obj);
        }
        return equals;
    }

    @Override // scala.collection.mutable.Queue, scala.collection.mutable.QueueProxy
    public A front() {
        A a;
        synchronized (this) {
            a = (A) super.front();
        }
        return a;
    }

    @Override // scala.collection.mutable.MutableList, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        boolean isEmpty;
        synchronized (this) {
            isEmpty = super.isEmpty();
        }
        return isEmpty;
    }

    @Override // scala.collection.AbstractSeq, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        String cclass;
        synchronized (this) {
            cclass = SeqLike.Cclass.toString(this);
        }
        return cclass;
    }
}
