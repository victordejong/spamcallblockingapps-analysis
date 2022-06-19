package scala.collection.concurrent;

import scala.Predef$;
import scala.Tuple2;
import scala.collection.immutable.StringOps;
import scala.collection.mutable.StringBuilder;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001a3Q!\u0001\u0002\u0003\t!\u0011Qa\u0015(pI\u0016T!a\u0001\u0003\u0002\u0015\r|gnY;se\u0016tGO\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006,2!C\n '\r\u0001!B\u0004\t\u0003\u00171i\u0011AA\u0005\u0003\u001b\t\u0011\u0011BQ1tS\u000etu\u000eZ3\u0011\t-y\u0011CH\u0005\u0003!\t\u0011aa\u0013,O_\u0012,\u0007C\u0001\n\u0014\u0019\u0001!Q\u0001\u0006\u0001C\u0002Y\u0011\u0011aS\u0002\u0001#\t92\u0004\u0005\u0002\u001935\ta!\u0003\u0002\u001b\r\t9aj\u001c;iS:<\u0007C\u0001\r\u001d\u0013\tibAA\u0002B]f\u0004\"AE\u0010\u0005\u000b\u0001\u0002!\u0019\u0001\f\u0003\u0003YC\u0001B\t\u0001\u0003\u0006\u0004%)aI\u0001\u0002WV\t\u0011\u0003\u0003\u0005&\u0001\t\u0005\t\u0015!\u0004\u0012\u0003\tY\u0007\u0005\u0003\u0005(\u0001\t\u0015\r\u0011\"\u0002)\u0003\u00051X#\u0001\u0010\t\u0011)\u0002!\u0011!Q\u0001\u000ey\t!A\u001e\u0011\t\u00111\u0002!Q1A\u0005\u00065\n!\u0001[2\u0016\u00039\u0002\"\u0001G\u0018\n\u0005A2!aA%oi\"A!\u0007\u0001B\u0001B\u00035a&A\u0002iG\u0002BQ\u0001\u000e\u0001\u0005\u0002U\na\u0001P5oSRtD\u0003\u0002\u001c8qe\u0002Ba\u0003\u0001\u0012=!)!e\ra\u0001#!)qe\ra\u0001=!)Af\ra\u0001]!)1\b\u0001C\u0003y\u0005!1m\u001c9z+\u00051\u0004\"\u0002 \u0001\t\u000by\u0014AC2paf$v.\u001c2fIV\t\u0001\t\u0005\u0003\f\u0003Fq\u0012B\u0001\"\u0003\u0005\u0015!fj\u001c3f\u0011\u0015!\u0005\u0001\"\u0002=\u00031\u0019w\u000e]=V]R|WNY3e\u0011\u00151\u0005\u0001\"\u0002H\u0003\u0019Yg\u000fU1jeV\t\u0001\n\u0005\u0003\u0019\u0013Fq\u0012B\u0001&\u0007\u0005\u0019!V\u000f\u001d7fe!)A\n\u0001C\u0003\u001b\u000611\u000f\u001e:j]\u001e$\"A\u0014,\u0011\u0005=#V\"\u0001)\u000b\u0005E\u0013\u0016\u0001\u00027b]\u001eT\u0011aU\u0001\u0005U\u00064\u0018-\u0003\u0002V!\n11\u000b\u001e:j]\u001eDQaV&A\u00029\n1\u0001\\3w\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/SNode.class */
public final class SNode<K, V> extends BasicNode implements KVNode<K, V> {

    /* renamed from: hc */
    private final int f1528hc;

    /* renamed from: k */
    private final K f1529k;

    /* renamed from: v */
    private final V f1530v;

    public SNode(K k, V v, int i) {
        this.f1529k = k;
        this.f1530v = v;
        this.f1528hc = i;
    }

    public final SNode<K, V> copy() {
        return new SNode<>(m179k(), m178v(), m180hc());
    }

    public final TNode<K, V> copyTombed() {
        return new TNode<>(m179k(), m178v(), m180hc());
    }

    public final SNode<K, V> copyUntombed() {
        return new SNode<>(m179k(), m178v(), m180hc());
    }

    /* renamed from: hc */
    public final int m180hc() {
        return this.f1528hc;
    }

    /* renamed from: k */
    public final K m179k() {
        return this.f1529k;
    }

    @Override // scala.collection.concurrent.KVNode
    public final Tuple2<K, V> kvPair() {
        return new Tuple2<>(m179k(), m178v());
    }

    @Override // scala.collection.concurrent.BasicNode
    public final String string(int i) {
        StringBuilder stringBuilder = new StringBuilder();
        Predef$ predef$ = Predef$.MODULE$;
        StringBuilder append = stringBuilder.append((Object) new StringOps("  ").$times(i));
        Predef$ predef$2 = Predef$.MODULE$;
        return append.append((Object) new StringOps("SNode(%s, %s, %x)").format(Predef$.MODULE$.genericWrapArray(new Object[]{m179k(), m178v(), BoxesRunTime.boxToInteger(m180hc())}))).toString();
    }

    /* renamed from: v */
    public final V m178v() {
        return this.f1530v;
    }
}
