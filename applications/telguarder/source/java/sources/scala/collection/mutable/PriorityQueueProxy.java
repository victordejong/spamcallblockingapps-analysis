package scala.collection.mutable;

import java.util.Objects;
import scala.Proxy;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.TraversableOnce;
import scala.math.Ordering;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001i4Q!\u0001\u0002\u0002\u0002%\u0011!\u0003\u0015:j_JLG/_)vKV,\u0007K]8ys*\u00111\u0001B\u0001\b[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\tQ\u0011cE\u0002\u0001\u0017m\u00012\u0001D\u0007\u0010\u001b\u0005\u0011\u0011B\u0001\b\u0003\u00055\u0001&/[8sSRL\u0018+^3vKB\u0011\u0001#\u0005\u0007\u0001\t\u0015\u0011\u0002A1\u0001\u0014\u0005\u0005\t\u0015C\u0001\u000b\u0019!\t)b#D\u0001\u0007\u0013\t9bAA\u0004O_RD\u0017N\\4\u0011\u0005UI\u0012B\u0001\u000e\u0007\u0005\r\te.\u001f\t\u0003+qI!!\b\u0004\u0003\u000bA\u0013x\u000e_=\t\u0013}\u0001!\u0011!Q\u0001\f\u0001:\u0013aA8sIB\u0019\u0011\u0005J\b\u000f\u0005U\u0011\u0013BA\u0012\u0007\u0003\u001d\u0001\u0018mY6bO\u0016L!!\n\u0014\u0003\u0011=\u0013H-\u001a:j]\u001eT!a\t\u0004\n\u0005}i\u0001\"B\u0015\u0001\t\u0003Q\u0013A\u0002\u001fj]&$h\bF\u0001,)\taS\u0006E\u0002\r\u0001=AQa\b\u0015A\u0004\u0001BQa\f\u0001\u0007\u0002A\nAa]3mMV\t1\u0002C\u00033\u0001\u0011\u00053'\u0001\u0005ji\u0016\u0014\u0018\r^8s+\u0005!\u0004cA\u001b7\u001f5\tA!\u0003\u00028\t\tA\u0011\n^3sCR|'\u000fC\u0003:\u0001\u0011\u0005#(\u0001\u0004mK:<G\u000f[\u000b\u0002wA\u0011Q\u0003P\u0005\u0003{\u0019\u00111!\u00138u\u0011\u0015y\u0004\u0001\"\u0011A\u0003\u001dI7/R7qif,\u0012!\u0011\t\u0003+\tK!a\u0011\u0004\u0003\u000f\t{w\u000e\\3b]\")Q\t\u0001C!\r\u0006AA\u0005\u001d7vg\u0012*\u0017\u000f\u0006\u0002H\u00116\t\u0001\u0001C\u0003J\t\u0002\u0007q\"\u0001\u0003fY\u0016l\u0007\"B&\u0001\t\u0003b\u0015!\u0004\u0013qYV\u001cH\u0005\u001d7vg\u0012*\u0017\u000f\u0006\u0002H\u001b\")aJ\u0013a\u0001\u001f\u0006\u0011\u0011\u000e\u001e\t\u0004kA{\u0011BA)\u0005\u0005=!&/\u0019<feN\f'\r\\3P]\u000e,\u0007\"B*\u0001\t\u0003\"\u0016aB3ocV,W/\u001a\u000b\u0003+b\u0003\"!\u0006,\n\u0005]3!\u0001B+oSRDQ!\u0017*A\u0002i\u000bQ!\u001a7f[N\u00042!F.\u0010\u0013\tafA\u0001\u0006=e\u0016\u0004X-\u0019;fIzBQA\u0018\u0001\u0005B}\u000bq\u0001Z3rk\u0016,X\rF\u0001\u0010\u0011\u0015\t\u0007\u0001\"\u0011c\u0003\u0011AW-\u00193\u0016\u0003=AQ\u0001\u001a\u0001\u0005B\u0015\fQa\u00197fCJ$\u0012!\u0016\u0005\u0006O\u0002!\t\u0005[\u0001\bi>\fV/Z;f+\u0005I\u0007c\u0001\u0007k\u001f%\u00111N\u0001\u0002\u0006#V,W/\u001a\u0005\u0006[\u0002!\tE\\\u0001\u0006G2|g.\u001a\u000b\u0002\u0017!Y\u0001\u000f\u0001I\u0001\u0004\u0003\u0005I\u0011B9(\u0003%\u0019X\u000f]3sI=\u0014H-F\u0001!Q\u0011\u00011O\u001e=\u0011\u0005U!\u0018BA;\u0007\u0005)!W\r\u001d:fG\u0006$X\rZ\u0011\u0002o\u0006)\u0005K]8ys&tw\rI5tA\u0011,\u0007O]3dCR,G\r\t3vK\u0002\"x\u000e\t7bG.\u0004sN\u001a\u0011vg\u0016\u0004\u0013M\u001c3!G>l\u0007/\u001b7fe6bWM^3mAM,\b\u000f]8si:\n\u0013!_\u0001\u0007e9\n\u0014G\f\u0019")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/PriorityQueueProxy.class */
public abstract class PriorityQueueProxy<A> extends PriorityQueue<A> implements Proxy {
    public PriorityQueueProxy(Ordering<A> ordering) {
        super(ordering);
        Proxy.Cclass.$init$(this);
    }

    @Override // scala.collection.mutable.PriorityQueue, scala.collection.mutable.Builder, scala.collection.generic.Growable
    public PriorityQueueProxy<A> $plus$eq(A a) {
        self().$plus$eq((PriorityQueue<A>) a);
        return this;
    }

    @Override // scala.collection.mutable.PriorityQueue, scala.collection.generic.Growable
    public PriorityQueueProxy<A> $plus$plus$eq(TraversableOnce<A> traversableOnce) {
        self().$plus$plus$eq(traversableOnce);
        return this;
    }

    @Override // scala.collection.mutable.PriorityQueue, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        self().clear();
    }

    @Override // scala.collection.mutable.PriorityQueue
    public PriorityQueue<A> clone() {
        return new PriorityQueueProxy<A>(this) { // from class: scala.collection.mutable.PriorityQueueProxy$$anon$1
            private final /* synthetic */ PriorityQueueProxy $outer;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(this.scala$collection$mutable$PriorityQueueProxy$$super$ord());
                Objects.requireNonNull(this);
                this.$outer = this;
            }

            @Override // scala.collection.mutable.PriorityQueueProxy, scala.Proxy
            public PriorityQueue<A> self() {
                return this.$outer.self().clone();
            }
        };
    }

    @Override // scala.collection.mutable.PriorityQueue
    public A dequeue() {
        return self().dequeue();
    }

    @Override // scala.collection.mutable.PriorityQueue
    public void enqueue(Seq<A> seq) {
        self().$plus$plus$eq(seq);
    }

    @Override // scala.Equals
    public boolean equals(Object obj) {
        return Proxy.Cclass.equals(this, obj);
    }

    @Override // scala.collection.mutable.PriorityQueue, scala.Proxy
    public int hashCode() {
        return Proxy.Cclass.hashCode(this);
    }

    @Override // scala.collection.mutable.PriorityQueue, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public A head() {
        return self().head();
    }

    @Override // scala.collection.mutable.PriorityQueue, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return self().isEmpty();
    }

    @Override // scala.collection.mutable.PriorityQueue, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<A> iterator() {
        return self().iterator();
    }

    @Override // scala.collection.mutable.PriorityQueue
    public int length() {
        return self().length();
    }

    public /* synthetic */ Ordering scala$collection$mutable$PriorityQueueProxy$$super$ord() {
        return super.ord();
    }

    @Override // scala.Proxy
    public abstract PriorityQueue<A> self();

    @Override // scala.collection.mutable.PriorityQueue
    public Queue<A> toQueue() {
        return self().toQueue();
    }

    @Override // scala.collection.mutable.PriorityQueue, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        return Proxy.Cclass.toString(this);
    }
}
