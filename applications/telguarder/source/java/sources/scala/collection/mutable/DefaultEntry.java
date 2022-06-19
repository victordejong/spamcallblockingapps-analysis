package scala.collection.mutable;

import scala.Serializable;
import scala.collection.mutable.HashEntry;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001)3A!\u0001\u0002\u0003\u0013\taA)\u001a4bk2$XI\u001c;ss*\u00111\u0001B\u0001\b[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\rQQ\u0003I\n\u0005\u0001-y!\u0005\u0005\u0002\r\u001b5\ta!\u0003\u0002\u000f\r\t1\u0011I\\=SK\u001a\u0004B\u0001E\t\u0014=5\t!!\u0003\u0002\u0013\u0005\tI\u0001*Y:i\u000b:$(/\u001f\t\u0003)Ua\u0001\u0001B\u0003\u0017\u0001\t\u0007qCA\u0001B#\tA2\u0004\u0005\u0002\r3%\u0011!D\u0002\u0002\b\u001d>$\b.\u001b8h!\taA$\u0003\u0002\u001e\r\t\u0019\u0011I\\=\u0011\tA\u00011c\b\t\u0003)\u0001\"Q!\t\u0001C\u0002]\u0011\u0011A\u0011\t\u0003\u0019\rJ!\u0001\n\u0004\u0003\u0019M+'/[1mSj\f'\r\\3\t\u0011\u0019\u0002!Q1A\u0005\u0002\u001d\n1a[3z+\u0005\u0019\u0002\u0002C\u0015\u0001\u0005\u0003\u0005\u000b\u0011B\n\u0002\t-,\u0017\u0010\t\u0005\tW\u0001\u0011\t\u0019!C\u0001Y\u0005)a/\u00197vKV\tq\u0004\u0003\u0005/\u0001\t\u0005\r\u0011\"\u00010\u0003%1\u0018\r\\;f?\u0012*\u0017\u000f\u0006\u00021gA\u0011A\"M\u0005\u0003e\u0019\u0011A!\u00168ji\"9A'LA\u0001\u0002\u0004y\u0012a\u0001=%c!Aa\u0007\u0001B\u0001B\u0003&q$\u0001\u0004wC2,X\r\t\u0005\u0006q\u0001!\t!O\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0007yQ4\bC\u0003'o\u0001\u00071\u0003C\u0003,o\u0001\u0007q\u0004C\u0003>\u0001\u0011\u0005c(\u0001\u0005u_N#(/\u001b8h)\u0005y\u0004C\u0001!F\u001b\u0005\t%B\u0001\"D\u0003\u0011a\u0017M\\4\u000b\u0003\u0011\u000bAA[1wC&\u0011a)\u0011\u0002\u0007'R\u0014\u0018N\\4\t\u000b!\u0003A\u0011A%\u0002\u0017\rD\u0017-\u001b8TiJLgnZ\u000b\u0002\u007f\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/DefaultEntry.class */
public final class DefaultEntry<A, B> implements HashEntry<A, DefaultEntry<A, B>>, Serializable {
    private final A key;
    private Object next;
    private B value;

    public DefaultEntry(A a, B b) {
        this.key = a;
        this.value = b;
        HashEntry.Cclass.$init$(this);
    }

    public String chainString() {
        return new StringBuilder().append((Object) "(kv: ").append(key()).append((Object) ", ").append(value()).append((Object) ")").append((Object) (next() == null ? "" : new StringBuilder().append((Object) " -> ").append((Object) ((DefaultEntry) next()).toString()).toString())).toString();
    }

    @Override // scala.collection.mutable.HashEntry
    public A key() {
        return this.key;
    }

    @Override // scala.collection.mutable.HashEntry
    public Object next() {
        return this.next;
    }

    @Override // scala.collection.mutable.HashEntry
    public void next_$eq(Object obj) {
        this.next = obj;
    }

    public String toString() {
        return chainString();
    }

    public B value() {
        return this.value;
    }

    public void value_$eq(B b) {
        this.value = b;
    }
}
