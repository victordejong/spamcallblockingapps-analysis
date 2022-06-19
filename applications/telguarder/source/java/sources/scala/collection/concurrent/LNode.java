package scala.collection.concurrent;

import scala.MatchError;
import scala.Option;
import scala.Predef$;
import scala.Tuple2;
import scala.collection.immutable.ListMap;
import scala.collection.immutable.StringOps;
import scala.collection.mutable.StringBuilder;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001)4Q!\u0001\u0002\u0003\t!\u0011Q\u0001\u0014(pI\u0016T!a\u0001\u0003\u0002\u0015\r|gnY;se\u0016tGO\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006,2!\u0003\t\u001d'\t\u0001!\u0002\u0005\u0003\f\u00199YR\"\u0001\u0002\n\u00055\u0011!\u0001C'bS:tu\u000eZ3\u0011\u0005=\u0001B\u0002\u0001\u0003\u0006#\u0001\u0011\ra\u0005\u0002\u0002\u0017\u000e\u0001\u0011C\u0001\u000b\u0019!\t)b#D\u0001\u0007\u0013\t9bAA\u0004O_RD\u0017N\\4\u0011\u0005UI\u0012B\u0001\u000e\u0007\u0005\r\te.\u001f\t\u0003\u001fq!Q!\b\u0001C\u0002M\u0011\u0011A\u0016\u0005\t?\u0001\u0011)\u0019!C\u0003A\u00059A.[:u[\u0006\u0004X#A\u0011\u0011\t\t*cbG\u0007\u0002G)\u0011A\u0005B\u0001\nS6lW\u000f^1cY\u0016L!AJ\u0012\u0003\u000f1K7\u000f^'ba\"A\u0001\u0006\u0001B\u0001B\u00035\u0011%\u0001\u0005mSN$X.\u00199!\u0011\u0015Q\u0003\u0001\"\u0001,\u0003\u0019a\u0014N\\5u}Q\u0011A&\f\t\u0005\u0017\u0001q1\u0004C\u0003 S\u0001\u0007\u0011\u0005C\u0003+\u0001\u0011\u0005q\u0006F\u0002-aIBQ!\r\u0018A\u00029\t\u0011a\u001b\u0005\u0006g9\u0002\raG\u0001\u0002m\")!\u0006\u0001C\u0001kQ)AF\u000e\u001d;y!)q\u0007\u000ea\u0001\u001d\u0005\u00111.\r\u0005\u0006sQ\u0002\raG\u0001\u0003mFBQa\u000f\u001bA\u00029\t!a\u001b\u001a\t\u000bu\"\u0004\u0019A\u000e\u0002\u0005Y\u0014\u0004\"B \u0001\t\u0003\u0001\u0015\u0001C5og\u0016\u0014H/\u001a3\u0015\u00071\n%\tC\u00032}\u0001\u0007a\u0002C\u00034}\u0001\u00071\u0004C\u0003E\u0001\u0011\u0005Q)A\u0004sK6|g/\u001a3\u0015\u0007)1u\tC\u00032\u0007\u0002\u0007a\u0002C\u0003I\u0007\u0002\u0007\u0011*\u0001\u0002diB!1B\u0013\b\u001c\u0013\tY%AA\u0004Ue&,W*\u00199\t\u000b5\u0003A\u0011\u0001(\u0002\u0007\u001d,G\u000f\u0006\u0002P%B\u0019Q\u0003U\u000e\n\u0005E3!AB(qi&|g\u000eC\u00032\u0019\u0002\u0007a\u0002C\u0003U\u0001\u0011\u0005Q+\u0001\u0006dC\u000eDW\rZ*ju\u0016$\"AV-\u0011\u0005U9\u0016B\u0001-\u0007\u0005\rIe\u000e\u001e\u0005\u0006\u0011N\u0003\rA\u0017\t\u0003+mK!\u0001\u0018\u0004\u0003\r\u0005s\u0017PU3g\u0011\u0015q\u0006\u0001\"\u0001`\u0003\u0019\u0019HO]5oOR\u0011\u0001\r\u001b\t\u0003C\u001al\u0011A\u0019\u0006\u0003G\u0012\fA\u0001\\1oO*\tQ-\u0001\u0003kCZ\f\u0017BA4c\u0005\u0019\u0019FO]5oO\")\u0011.\u0018a\u0001-\u0006\u0019A.\u001a<")
/* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/LNode.class */
public final class LNode<K, V> extends MainNode<K, V> {
    private final ListMap<K, V> listmap;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LNode(K r12, V r13) {
        /*
            r11 = this;
            scala.collection.immutable.ListMap$ r0 = scala.collection.immutable.ListMap$.MODULE$
            r14 = r0
            scala.Predef$ r0 = scala.Predef$.MODULE$
            r15 = r0
            scala.Predef$ArrowAssoc$ r0 = scala.Predef$ArrowAssoc$.MODULE$
            r16 = r0
            r0 = r11
            r1 = r14
            r2 = r15
            r3 = 1
            scala.Tuple2[] r3 = new scala.Tuple2[r3]
            r4 = r3
            r5 = 0
            scala.Tuple2 r6 = new scala.Tuple2
            r7 = r6
            scala.Predef$ r8 = scala.Predef$.MODULE$
            r9 = r12
            java.lang.Object r8 = r8.ArrowAssoc(r9)
            r9 = r13
            r7.<init>(r8, r9)
            r4[r5] = r6
            java.lang.Object[] r3 = (java.lang.Object[]) r3
            scala.collection.mutable.WrappedArray r2 = r2.wrapRefArray(r3)
            scala.collection.GenMap r1 = r1.apply(r2)
            scala.collection.immutable.ListMap r1 = (scala.collection.immutable.ListMap) r1
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.concurrent.LNode.<init>(java.lang.Object, java.lang.Object):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LNode(K r12, V r13, K r14, V r15) {
        /*
            r11 = this;
            scala.collection.immutable.ListMap$ r0 = scala.collection.immutable.ListMap$.MODULE$
            r16 = r0
            scala.Predef$ r0 = scala.Predef$.MODULE$
            r17 = r0
            scala.Predef$ArrowAssoc$ r0 = scala.Predef$ArrowAssoc$.MODULE$
            r18 = r0
            scala.Tuple2 r0 = new scala.Tuple2
            r1 = r0
            scala.Predef$ r2 = scala.Predef$.MODULE$
            r3 = r12
            java.lang.Object r2 = r2.ArrowAssoc(r3)
            r3 = r13
            r1.<init>(r2, r3)
            r13 = r0
            scala.Predef$ArrowAssoc$ r0 = scala.Predef$ArrowAssoc$.MODULE$
            r12 = r0
            r0 = r11
            r1 = r16
            r2 = r17
            r3 = 2
            scala.Tuple2[] r3 = new scala.Tuple2[r3]
            r4 = r3
            r5 = 0
            r6 = r13
            r4[r5] = r6
            r4 = r3
            r5 = 1
            scala.Tuple2 r6 = new scala.Tuple2
            r7 = r6
            scala.Predef$ r8 = scala.Predef$.MODULE$
            r9 = r14
            java.lang.Object r8 = r8.ArrowAssoc(r9)
            r9 = r15
            r7.<init>(r8, r9)
            r4[r5] = r6
            java.lang.Object[] r3 = (java.lang.Object[]) r3
            scala.collection.mutable.WrappedArray r2 = r2.wrapRefArray(r3)
            scala.collection.GenMap r1 = r1.apply(r2)
            scala.collection.immutable.ListMap r1 = (scala.collection.immutable.ListMap) r1
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.concurrent.LNode.<init>(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object):void");
    }

    public LNode(ListMap<K, V> listMap) {
        this.listmap = listMap;
    }

    @Override // scala.collection.concurrent.MainNode
    public int cachedSize(Object obj) {
        return listmap().size();
    }

    public Option<V> get(K k) {
        return listmap().get(k);
    }

    public LNode<K, V> inserted(K k, V v) {
        return new LNode<>(listmap().$plus(new Tuple2<>(k, v)));
    }

    public final ListMap<K, V> listmap() {
        return this.listmap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MainNode<K, V> removed(K k, TrieMap<K, V> trieMap) {
        LNode lNode;
        ListMap<K, V> $minus = listmap().$minus((ListMap<K, V>) k);
        if ($minus.size() > 1) {
            lNode = new LNode($minus);
        } else {
            Tuple2<K, V> next = $minus.iterator().next();
            if (next == null) {
                throw new MatchError(next);
            }
            Tuple2 tuple2 = new Tuple2(next.mo269_1(), next.mo268_2());
            Object mo269_1 = tuple2.mo269_1();
            lNode = new TNode(mo269_1, tuple2.mo268_2(), trieMap.computeHash(mo269_1));
        }
        return lNode;
    }

    @Override // scala.collection.concurrent.BasicNode
    public String string(int i) {
        StringBuilder stringBuilder = new StringBuilder();
        Predef$ predef$ = Predef$.MODULE$;
        StringBuilder append = stringBuilder.append((Object) new StringOps(" ").$times(i));
        Predef$ predef$2 = Predef$.MODULE$;
        return append.append((Object) new StringOps("LNode(%s)").format(Predef$.MODULE$.genericWrapArray(new Object[]{listmap().mkString(", ")}))).toString();
    }
}
