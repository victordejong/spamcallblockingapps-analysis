package scala.collection;

import scala.Equals;
import scala.Function0;
import scala.Function1;
import scala.Option;
import scala.Predef$;
import scala.Tuple2;
import scala.reflect.ScalaSignature;
import scala.util.hashing.MurmurHash3$;
@ScalaSignature(bytes = "\u0006\u0001\u0005ucaB\u0001\u0003!\u0003\r\ta\u0002\u0002\u000b\u000f\u0016tW*\u00199MS.,'BA\u0002\u0005\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000b\u0005)1oY1mC\u000e\u0001Q\u0003\u0002\u0005\u0017A\r\u001aR\u0001A\u0005\u000eK!\u0002\"AC\u0006\u000e\u0003\u0011I!\u0001\u0004\u0003\u0003\r\u0005s\u0017PU3g!\u0011qq\"\u0005\u0012\u000e\u0003\tI!\u0001\u0005\u0002\u0003\u001f\u001d+g.\u0013;fe\u0006\u0014G.\u001a'jW\u0016\u0004BA\u0003\n\u0015?%\u00111\u0003\u0002\u0002\u0007)V\u0004H.\u001a\u001a\u0011\u0005U1B\u0002\u0001\u0003\u0006/\u0001\u0011\r\u0001\u0007\u0002\u0002\u0003F\u0011\u0011\u0004\b\t\u0003\u0015iI!a\u0007\u0003\u0003\u000f9{G\u000f[5oOB\u0011!\"H\u0005\u0003=\u0011\u00111!\u00118z!\t)\u0002\u0005\u0002\u0004\"\u0001\u0011\u0015\r\u0001\u0007\u0002\u0002\u0005B\u0011Qc\t\u0003\u0007I\u0001!)\u0019\u0001\r\u0003\tI+\u0007O\u001d\t\u0003\u0015\u0019J!a\n\u0003\u0003\r\u0015\u000bX/\u00197t!\u0011q\u0011&E\u0016\n\u0005)\u0012!A\u0004)be\u0006dG.\u001a7ju\u0006\u0014G.\u001a\t\u0005Y=\"r$D\u0001.\u0015\tq#!\u0001\u0005qCJ\fG\u000e\\3m\u0013\t\u0001TF\u0001\u0004QCJl\u0015\r\u001d\u0005\u0006e\u0001!\taM\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003Q\u0002\"AC\u001b\n\u0005Y\"!\u0001B+oSRDQ\u0001\u000f\u0001\u0007\u0002e\nq\u0001Z3gCVdG\u000f\u0006\u0002 u!)1h\u000ea\u0001)\u0005\u00191.Z=\t\u000bu\u0002a\u0011\u0001 \u0002\u0007\u001d,G\u000f\u0006\u0002@\u0005B\u0019!\u0002Q\u0010\n\u0005\u0005#!AB(qi&|g\u000eC\u0003<y\u0001\u0007A\u0003C\u0003E\u0001\u0019\u0005Q)A\u0003baBd\u0017\u0010\u0006\u0002 \r\")1h\u0011a\u0001)!)\u0001\n\u0001D\u0001\u0013\u0006\u00191/Z9\u0016\u0003)\u0003BAD&\u0015?%\u0011AJ\u0001\u0002\u0004\u001b\u0006\u0004\b\"\u0002(\u0001\r\u0003y\u0015!\u0002\u0013qYV\u001cXC\u0001)V)\t\t\u0006\f\u0005\u0003\u000f%R!\u0016BA*\u0003\u0005\u00199UM\\'baB\u0011Q#\u0016\u0003\u0006-6\u0013\ra\u0016\u0002\u0003\u0005F\n\"a\b\u000f\t\u000bek\u0005\u0019\u0001.\u0002\u0005-4\b\u0003\u0002\u0006\u0013)QCQ\u0001\u0018\u0001\u0007\u0002u\u000ba\u0001J7j]V\u001cHC\u0001\u0012_\u0011\u0015Y4\f1\u0001\u0015\u0011\u0015\u0001\u0007\u0001\"\u0011b\u0003!A\u0017m\u001d5D_\u0012,G#\u00012\u0011\u0005)\u0019\u0017B\u00013\u0005\u0005\rIe\u000e\u001e\u0005\u0006M\u00021\taZ\u0001\nO\u0016$xJ]#mg\u0016,\"\u0001\u001b6\u0015\u0007%\\G\u000e\u0005\u0002\u0016U\u0012)a+\u001ab\u0001/\")1(\u001aa\u0001)!1\u0001(\u001aCA\u00025\u00042A\u00038j\u0013\tyGA\u0001\u0005=Eft\u0017-\\3?\u0011\u0015\t\bA\"\u0001s\u0003!\u0019wN\u001c;bS:\u001cHCA:w!\tQA/\u0003\u0002v\t\t9!i\\8mK\u0006t\u0007\"B\u001eq\u0001\u0004!\u0002\"\u0002=\u0001\r\u0003I\u0018aC5t\t\u00164\u0017N\\3e\u0003R$\"a\u001d>\t\u000bm:\b\u0019\u0001\u000b\t\u000bq\u0004a\u0011A?\u0002\r-,\u0017pU3u+\u0005q\bc\u0001\b��)%\u0019\u0011\u0011\u0001\u0002\u0003\r\u001d+gnU3u\u0011\u001d\t)\u0001\u0001D\u0001\u0003\u000f\tAa[3zgV\u0011\u0011\u0011\u0002\t\u0005\u001d\u0005-A#C\u0002\u0002\u000e\t\u00111bR3o\u0013R,'/\u00192mK\"9\u0011\u0011\u0003\u0001\u0007\u0002\u0005M\u0011A\u0002<bYV,7/\u0006\u0002\u0002\u0016A!a\"a\u0003 \u0011\u001d\tI\u0002\u0001D\u0001\u00037\tAb[3zg&#XM]1u_J,\"!!\b\u0011\t9\ty\u0002F\u0005\u0004\u0003C\u0011!\u0001C%uKJ\fGo\u001c:\t\u000f\u0005\u0015\u0002A\"\u0001\u0002(\u0005qa/\u00197vKNLE/\u001a:bi>\u0014XCAA\u0015!\u0011q\u0011qD\u0010\t\u000f\u00055\u0002A\"\u0001\u00020\u0005Qa-\u001b7uKJ\\U-_:\u0015\t\u0005E\u00121\u0007\t\u0005\u001dI#r\u0004\u0003\u0005\u00026\u0005-\u0002\u0019AA\u001c\u0003\u0005\u0001\b#\u0002\u0006\u0002:Q\u0019\u0018bAA\u001e\t\tIa)\u001e8di&|g.\r\u0005\b\u0003\u007f\u0001a\u0011AA!\u0003%i\u0017\r\u001d,bYV,7/\u0006\u0003\u0002D\u0005%C\u0003BA#\u0003\u001b\u0002RA\u0004*\u0015\u0003\u000f\u00022!FA%\t\u001d\tY%!\u0010C\u0002a\u0011\u0011a\u0011\u0005\t\u0003\u001f\ni\u00041\u0001\u0002R\u0005\ta\r\u0005\u0004\u000b\u0003sy\u0012q\t\u0005\b\u0003+\u0002A\u0011IA,\u0003\u0019)\u0017/^1mgR\u00191/!\u0017\t\u000f\u0005m\u00131\u000ba\u00019\u0005!A\u000f[1u\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/GenMapLike.class */
public interface GenMapLike<A, B, Repr> extends GenIterableLike<Tuple2<A, B>, Repr>, Equals {

    /* renamed from: scala.collection.GenMapLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/GenMapLike$class.class */
    public abstract class Cclass {
        public static void $init$(GenMapLike genMapLike) {
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x003f, code lost:
            if (liftedTree1$1(r3, r0) != false) goto L12;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static boolean equals(scala.collection.GenMapLike r3, java.lang.Object r4) {
            /*
                r0 = r4
                boolean r0 = r0 instanceof scala.collection.GenMap
                r5 = r0
                r0 = 0
                r6 = r0
                r0 = r6
                r7 = r0
                r0 = r5
                if (r0 == 0) goto L45
                r0 = r4
                scala.collection.GenMap r0 = (scala.collection.GenMap) r0
                r4 = r0
                r0 = r3
                r1 = r4
                if (r0 == r1) goto L42
                r0 = r6
                r7 = r0
                r0 = r4
                r1 = r3
                boolean r0 = r0.canEqual(r1)
                if (r0 == 0) goto L45
                r0 = r6
                r7 = r0
                r0 = r3
                int r0 = r0.size()
                r1 = r4
                int r1 = r1.size()
                if (r0 != r1) goto L45
                r0 = r6
                r7 = r0
                r0 = r3
                r1 = r4
                boolean r0 = liftedTree1$1(r0, r1)
                if (r0 == 0) goto L45
            L42:
                r0 = 1
                r7 = r0
            L45:
                r0 = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.GenMapLike.Cclass.equals(scala.collection.GenMapLike, java.lang.Object):boolean");
        }

        public static int hashCode(GenMapLike genMapLike) {
            return MurmurHash3$.MODULE$.mapHash(genMapLike.seq());
        }

        private static final boolean liftedTree1$1(GenMapLike genMapLike, GenMap genMap) {
            boolean z;
            try {
                z = genMapLike.forall(new GenMapLike$$anonfun$liftedTree1$1$1(genMapLike, genMap));
            } catch (ClassCastException e) {
                Predef$.MODULE$.println("class cast ");
                z = false;
            }
            return z;
        }
    }

    Repr $minus(A a);

    <B1> GenMap<A, B1> $plus(Tuple2<A, B1> tuple2);

    B apply(A a);

    boolean contains(A a);

    /* renamed from: default */
    B mo6041default(A a);

    @Override // scala.Equals
    boolean equals(Object obj);

    GenMap<A, B> filterKeys(Function1<A, Object> function1);

    Option<B> get(A a);

    <B1> B1 getOrElse(A a, Function0<B1> function0);

    int hashCode();

    boolean isDefinedAt(A a);

    GenSet<A> keySet();

    GenIterable<A> keys();

    Iterator<A> keysIterator();

    <C> GenMap<A, C> mapValues(Function1<B, C> function1);

    @Override // scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    Map<A, B> seq();

    GenIterable<B> values();

    Iterator<B> valuesIterator();
}
