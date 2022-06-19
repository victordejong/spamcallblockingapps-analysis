package scala.collection.immutable;

import scala.MatchError;
import scala.collection.AbstractIterator;
import scala.collection.immutable.LongMap;
import scala.reflect.ScalaSignature;
import scala.sys.package$;
@ScalaSignature(bytes = "\u0006\u0001\u00154a!\u0001\u0002\u0002\u0002\tA!a\u0004'p]\u001el\u0015\r]%uKJ\fGo\u001c:\u000b\u0005\r!\u0011!C5n[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u000b\u0004\u0013\t\u00022C\u0001\u0001\u000b!\rYABD\u0007\u0002\t%\u0011Q\u0002\u0002\u0002\u0011\u0003\n\u001cHO]1di&#XM]1u_J\u0004\"a\u0004\t\r\u0001\u0011)\u0011\u0003\u0001b\u0001'\t\tAk\u0001\u0001\u0012\u0005QA\u0002CA\u000b\u0017\u001b\u00051\u0011BA\f\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"!F\r\n\u0005i1!aA!os\"AA\u0004\u0001B\u0001B\u0003%Q$\u0001\u0002jiB\u0019adH\u0011\u000e\u0003\tI!\u0001\t\u0002\u0003\u000f1{gnZ'baB\u0011qB\t\u0003\u0006G\u0001\u0011\ra\u0005\u0002\u0002-\")Q\u0005\u0001C\u0001M\u00051A(\u001b8jiz\"\"a\n\u0015\u0011\ty\u0001\u0011E\u0004\u0005\u00069\u0011\u0002\r!\b\u0005\bU\u0001\u0001\r\u0011\"\u0001,\u0003\u0015Ig\u000eZ3y+\u0005a\u0003CA\u000b.\u0013\tqcAA\u0002J]RDq\u0001\r\u0001A\u0002\u0013\u0005\u0011'A\u0005j]\u0012,\u0007p\u0018\u0013fcR\u0011!'\u000e\t\u0003+MJ!\u0001\u000e\u0004\u0003\tUs\u0017\u000e\u001e\u0005\bm=\n\t\u00111\u0001-\u0003\rAH%\r\u0005\u0007q\u0001\u0001\u000b\u0015\u0002\u0017\u0002\r%tG-\u001a=!\u0011\u001dQ\u0004\u00011A\u0005\u0002m\naAY;gM\u0016\u0014X#\u0001\u001f\u0011\u0007Uit(\u0003\u0002?\r\t)\u0011I\u001d:bsB\u0011Q\u0003Q\u0005\u0003\u0003\u001a\u0011a!\u00118z%\u00164\u0007bB\"\u0001\u0001\u0004%\t\u0001R\u0001\u000bEV4g-\u001a:`I\u0015\fHC\u0001\u001aF\u0011\u001d1$)!AA\u0002qBaa\u0012\u0001!B\u0013a\u0014a\u00022vM\u001a,'\u000f\t\u0005\u0006\u0013\u0002!\tAS\u0001\u0004a>\u0004H#A\u000f\t\u000b1\u0003A\u0011A'\u0002\tA,8\u000f\u001b\u000b\u0003e9CQaT&A\u0002u\t\u0011\u0001\u001f\u0005\u0006#\u00021\tAU\u0001\bm\u0006dW/Z(g)\tq1\u000bC\u0003U!\u0002\u0007Q+A\u0002uSB\u00042AV-\"\u001d\tqr+\u0003\u0002Y\u0005\u00059Aj\u001c8h\u001b\u0006\u0004\u0018B\u0001.\\\u0005\r!\u0016\u000e\u001d\u0006\u00031\nAQ!\u0018\u0001\u0005\u0002y\u000bq\u0001[1t\u001d\u0016DH/F\u0001`!\t)\u0002-\u0003\u0002b\r\t9!i\\8mK\u0006t\u0007\"B2\u0001\t\u000b!\u0017\u0001\u00028fqR$\u0012A\u0004")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/LongMapIterator.class */
public abstract class LongMapIterator<V, T> extends AbstractIterator<T> {
    private int index = 0;
    private Object[] buffer = new Object[65];

    public LongMapIterator(LongMap<V> longMap) {
        push(longMap);
    }

    public Object[] buffer() {
        return this.buffer;
    }

    public void buffer_$eq(Object[] objArr) {
        this.buffer = objArr;
    }

    @Override // scala.collection.Iterator
    public boolean hasNext() {
        return index() != 0;
    }

    public int index() {
        return this.index;
    }

    public void index_$eq(int i) {
        this.index = i;
    }

    @Override // scala.collection.Iterator
    public final T next() {
        T t;
        while (true) {
            boolean z = false;
            LongMap.Bin bin = null;
            LongMap<V> pop = pop();
            if (pop instanceof LongMap.Bin) {
                z = true;
                LongMap.Bin bin2 = (LongMap.Bin) pop;
                bin = bin2;
                if (bin2.left() instanceof LongMap.Tip) {
                    push(bin2.right());
                    t = valueOf((LongMap.Tip) bin2.left());
                    break;
                }
            }
            if (z) {
                push(bin.right());
                push(bin.left());
            } else if (!(pop instanceof LongMap.Tip)) {
                if (!LongMap$Nil$.MODULE$.equals(pop)) {
                    throw new MatchError(pop);
                }
                throw package$.MODULE$.error("Empty maps not allowed as subtrees");
            } else {
                t = valueOf((LongMap.Tip) pop);
            }
        }
        return t;
    }

    public LongMap<V> pop() {
        index_$eq(index() - 1);
        return (LongMap) buffer()[index()];
    }

    public void push(LongMap<V> longMap) {
        buffer()[index()] = longMap;
        index_$eq(index() + 1);
    }

    public abstract T valueOf(LongMap.Tip<V> tip);
}
