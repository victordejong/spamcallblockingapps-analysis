package scala.collection;

import scala.Equals;
import scala.Function1;
import scala.Function2;
import scala.collection.generic.CanBuildFrom;
import scala.reflect.ScalaSignature;
import scala.util.hashing.MurmurHash3$;
@ScalaSignature(bytes = "\u0006\u0001\t\u001ddaB\u0001\u0003!\u0003\r\ta\u0002\u0002\u000b\u000f\u0016t7+Z9MS.,'BA\u0002\u0005\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000b\u0005)1oY1mC\u000e\u0001Qc\u0001\u0005\u00145M)\u0001!C\u0007\u001d?A\u0011!bC\u0007\u0002\t%\u0011A\u0002\u0002\u0002\u0004\u0003:L\b\u0003\u0002\b\u0010#ei\u0011AA\u0005\u0003!\t\u0011qbR3o\u0013R,'/\u00192mK2K7.\u001a\t\u0003%Ma\u0001\u0001\u0002\u0004\u0015\u0001\u0011\u0015\r!\u0006\u0002\u0002\u0003F\u0011a#\u0003\t\u0003\u0015]I!\u0001\u0007\u0003\u0003\u000f9{G\u000f[5oOB\u0011!C\u0007\u0003\u00077\u0001!)\u0019A\u000b\u0003\tI+\u0007O\u001d\t\u0003\u0015uI!A\b\u0003\u0003\r\u0015\u000bX/\u00197t!\u0011q\u0001%\u0005\u0012\n\u0005\u0005\u0012!A\u0004)be\u0006dG.\u001a7ju\u0006\u0014G.\u001a\t\u0004G\u0019\nR\"\u0001\u0013\u000b\u0005\u0015\u0012\u0011\u0001\u00039be\u0006dG.\u001a7\n\u0005\u001d\"#A\u0002)beN+\u0017\u000fC\u0003*\u0001\u0011\u0005!&\u0001\u0004%S:LG\u000f\n\u000b\u0002WA\u0011!\u0002L\u0005\u0003[\u0011\u0011A!\u00168ji\")q\u0006\u0001D\u0001a\u0005\u00191/Z9\u0016\u0003E\u00022A\u0004\u001a\u0012\u0013\t\u0019$AA\u0002TKFDQ!\u000e\u0001\u0007\u0002Y\nQ!\u00199qYf$\"!E\u001c\t\u000ba\"\u0004\u0019A\u001d\u0002\u0007%$\u0007\u0010\u0005\u0002\u000bu%\u00111\b\u0002\u0002\u0004\u0013:$\b\"B\u001f\u0001\r\u0003q\u0014A\u00027f]\u001e$\b.F\u0001:\u0011\u0015\u0001\u0005\u0001\"\u0001B\u0003-I7\u000fR3gS:,G-\u0011;\u0015\u0005\t+\u0005C\u0001\u0006D\u0013\t!EAA\u0004C_>dW-\u00198\t\u000baz\u0004\u0019A\u001d\t\u000b\u001d\u0003a\u0011\u0001%\u0002\u001bM,w-\\3oi2+gn\u001a;i)\rI\u0014J\u0014\u0005\u0006\u0015\u001a\u0003\raS\u0001\u0002aB!!\u0002T\tC\u0013\tiEAA\u0005Gk:\u001cG/[8oc!)qJ\u0012a\u0001s\u0005!aM]8n\u0011\u0015\t\u0006\u0001\"\u0001S\u00031\u0001(/\u001a4jq2+gn\u001a;i)\tI4\u000bC\u0003K!\u0002\u00071\nC\u0003V\u0001\u0019\u0005a+\u0001\u0006j]\u0012,\u0007p\u00165fe\u0016$2!O,Y\u0011\u0015QE\u000b1\u0001L\u0011\u0015yE\u000b1\u0001:\u0011\u0015)\u0006\u0001\"\u0001[)\tI4\fC\u0003K3\u0002\u00071\nC\u0003^\u0001\u0011\u0005a,A\u0004j]\u0012,\u0007p\u00144\u0016\u0005}\u001bGCA\u001da\u0011\u0015\tG\f1\u0001c\u0003\u0011)G.Z7\u0011\u0005I\u0019G!\u00023]\u0005\u0004)'!\u0001\"\u0012\u0005EI\u0001\"B/\u0001\t\u00039WC\u00015l)\rI\u0014\u000e\u001c\u0005\u0006C\u001a\u0004\rA\u001b\t\u0003%-$Q\u0001\u001a4C\u0002\u0015DQa\u00144A\u0002eBQA\u001c\u0001\u0005\u0002=\f1\u0002\\1ti&sG-\u001a=PMV\u0011\u0001o\u001d\u000b\u0003sEDQ!Y7A\u0002I\u0004\"AE:\u0005\u000b\u0011l'\u0019A3\t\u000b9\u0004A\u0011A;\u0016\u0005YLHcA\u001dxu\")\u0011\r\u001ea\u0001qB\u0011!#\u001f\u0003\u0006IR\u0014\r!\u001a\u0005\u0006wR\u0004\r!O\u0001\u0004K:$\u0007\"B?\u0001\t\u0003q\u0018A\u00047bgRLe\u000eZ3y/\",'/\u001a\u000b\u0003s}DQA\u0013?A\u0002-Ca! \u0001\u0007\u0002\u0005\rA#B\u001d\u0002\u0006\u0005\u001d\u0001B\u0002&\u0002\u0002\u0001\u00071\n\u0003\u0004|\u0003\u0003\u0001\r!\u000f\u0005\b\u0003\u0017\u0001a\u0011AA\u0007\u0003\u001d\u0011XM^3sg\u0016,\u0012!\u0007\u0005\b\u0003#\u0001a\u0011AA\n\u0003)\u0011XM^3sg\u0016l\u0015\r]\u000b\u0007\u0003+\t\t$a\u0007\u0015\t\u0005]\u00111\u0007\u000b\u0005\u00033\ty\u0002E\u0002\u0013\u00037!q!!\b\u0002\u0010\t\u0007QC\u0001\u0003UQ\u0006$\b\u0002CA\u0011\u0003\u001f\u0001\u001d!a\t\u0002\u0005\t4\u0007#CA\u0013\u0003WI\u0012qFA\r\u001b\t\t9CC\u0002\u0002*\t\tqaZ3oKJL7-\u0003\u0003\u0002.\u0005\u001d\"\u0001D\"b]\n+\u0018\u000e\u001c3Ge>l\u0007c\u0001\n\u00022\u00111A-a\u0004C\u0002UA\u0001\"!\u000e\u0002\u0010\u0001\u0007\u0011qG\u0001\u0002MB)!\u0002T\t\u00020!9\u00111\b\u0001\u0005\u0002\u0005u\u0012AC:uCJ$8oV5uQV!\u0011qHA')\r\u0011\u0015\u0011\t\u0005\t\u0003\u0007\nI\u00041\u0001\u0002F\u0005!A\u000f[1u!\u0015q\u0011qIA&\u0013\r\tIE\u0001\u0002\u0007\u000f\u0016t7+Z9\u0011\u0007I\ti\u0005\u0002\u0004e\u0003s\u0011\r!\u0006\u0005\b\u0003w\u0001a\u0011AA)+\u0011\t\u0019&a\u0017\u0015\u000b\t\u000b)&!\u0018\t\u0011\u0005\r\u0013q\na\u0001\u0003/\u0002RADA$\u00033\u00022AEA.\t\u0019!\u0017q\nb\u0001+!9\u0011qLA(\u0001\u0004I\u0014AB8gMN,G\u000fC\u0004\u0002d\u00011\t!!\u001a\u0002\u0011\u0015tGm],ji\",B!a\u001a\u0002pQ\u0019!)!\u001b\t\u0011\u0005\r\u0013\u0011\ra\u0001\u0003W\u0002RADA$\u0003[\u00022AEA8\t\u0019!\u0017\u0011\rb\u0001+!9\u00111\u000f\u0001\u0007\u0002\u0005U\u0014!\u00029bi\u000eDWCBA<\u0003\u000b\u000bi\b\u0006\u0005\u0002z\u0005\u001d\u0015\u0011RAG)\u0011\tY(a \u0011\u0007I\ti\bB\u0004\u0002\u001e\u0005E$\u0019A\u000b\t\u0011\u0005\u0005\u0012\u0011\u000fa\u0002\u0003\u0003\u0003\u0012\"!\n\u0002,e\t\u0019)a\u001f\u0011\u0007I\t)\t\u0002\u0004e\u0003c\u0012\r!\u001a\u0005\u0007\u001f\u0006E\u0004\u0019A\u001d\t\u0011\u0005M\u0014\u0011\u000fa\u0001\u0003\u0017\u0003RADA$\u0003\u0007Cq!a$\u0002r\u0001\u0007\u0011(\u0001\u0005sKBd\u0017mY3e\u0011\u001d\t\u0019\n\u0001D\u0001\u0003+\u000bq!\u001e9eCR,G-\u0006\u0004\u0002\u0018\u0006\u0015\u0016Q\u0014\u000b\u0007\u00033\u000b9+a+\u0015\t\u0005m\u0015q\u0014\t\u0004%\u0005uEaBA\u000f\u0003#\u0013\r!\u0006\u0005\t\u0003C\t\t\nq\u0001\u0002\"BI\u0011QEA\u00163\u0005\r\u00161\u0014\t\u0004%\u0005\u0015FA\u00023\u0002\u0012\n\u0007Q\rC\u0004\u0002*\u0006E\u0005\u0019A\u001d\u0002\u000b%tG-\u001a=\t\u000f\u0005\f\t\n1\u0001\u0002$\"9\u0011q\u0016\u0001\u0007\u0002\u0005E\u0016a\u0003\u0013qYV\u001cHeY8m_:,b!a-\u0002B\u0006eF\u0003BA[\u0003\u0007$B!a.\u0002<B\u0019!#!/\u0005\u000f\u0005u\u0011Q\u0016b\u0001+!A\u0011\u0011EAW\u0001\b\ti\fE\u0005\u0002&\u0005-\u0012$a0\u00028B\u0019!#!1\u0005\r\u0011\fiK1\u0001f\u0011\u001d\t\u0017Q\u0016a\u0001\u0003\u007fCq!a2\u0001\r\u0003\tI-A\u0006%G>dwN\u001c\u0013qYV\u001cXCBAf\u00033\f\t\u000e\u0006\u0003\u0002N\u0006mG\u0003BAh\u0003'\u00042AEAi\t\u001d\ti\"!2C\u0002UA\u0001\"!\t\u0002F\u0002\u000f\u0011Q\u001b\t\n\u0003K\tY#GAl\u0003\u001f\u00042AEAm\t\u0019!\u0017Q\u0019b\u0001K\"9\u0011-!2A\u0002\u0005]\u0007bBAp\u0001\u0019\u0005\u0011\u0011]\u0001\u0006a\u0006$Gk\\\u000b\u0007\u0003G\f\t0!;\u0015\r\u0005\u0015\u00181_A|)\u0011\t9/a;\u0011\u0007I\tI\u000fB\u0004\u0002\u001e\u0005u'\u0019A\u000b\t\u0011\u0005\u0005\u0012Q\u001ca\u0002\u0003[\u0004\u0012\"!\n\u0002,e\ty/a:\u0011\u0007I\t\t\u0010\u0002\u0004e\u0003;\u0014\r!\u001a\u0005\b\u0003k\fi\u000e1\u0001:\u0003\raWM\u001c\u0005\bC\u0006u\u0007\u0019AAx\u0011\u001d\tY\u0010\u0001D\u0001\u0003{\f1bY8se\u0016\u001c\bo\u001c8egV!\u0011q B\u0007)\u0011\u0011\tAa\u0004\u0015\u0007\t\u0013\u0019\u0001C\u0004K\u0003s\u0004\rA!\u0002\u0011\u000f)\u00119!\u0005B\u0006\u0005&\u0019!\u0011\u0002\u0003\u0003\u0013\u0019+hn\u0019;j_:\u0014\u0004c\u0001\n\u0003\u000e\u00111A-!?C\u0002UA\u0001\"a\u0011\u0002z\u0002\u0007!\u0011\u0003\t\u0006\u001d\u0005\u001d#1\u0002\u0005\b\u0005+\u0001a\u0011\u0001B\f\u0003\u0015!xnU3r+\t\u0011I\u0002\u0005\u0003\u000f\u0003\u000f\n\u0002b\u0002B\u000f\u0001\u0011\u0005!qD\u0001\u0006k:LwN\\\u000b\u0007\u0005C\u0011yCa\n\u0015\t\t\r\"\u0011\u0007\u000b\u0005\u0005K\u0011I\u0003E\u0002\u0013\u0005O!q!!\b\u0003\u001c\t\u0007Q\u0003\u0003\u0005\u0002\"\tm\u00019\u0001B\u0016!%\t)#a\u000b\u001a\u0005[\u0011)\u0003E\u0002\u0013\u0005_!a\u0001\u001aB\u000e\u0005\u0004)\u0007\u0002CA\"\u00057\u0001\rAa\r\u0011\u000b9\t9E!\f\t\u000f\t]\u0002A\"\u0001\u0003:\u0005!A-\u001b4g+\u0011\u0011YDa\u0011\u0015\u0007e\u0011i\u0004\u0003\u0005\u0002D\tU\u0002\u0019\u0001B !\u0015q\u0011q\tB!!\r\u0011\"1\t\u0003\u0007I\nU\"\u0019A3\t\u000f\t\u001d\u0003A\"\u0001\u0003J\u0005I\u0011N\u001c;feN,7\r^\u000b\u0005\u0005\u0017\u0012\u0019\u0006F\u0002\u001a\u0005\u001bB\u0001\"a\u0011\u0003F\u0001\u0007!q\n\t\u0006\u001d\u0005\u001d#\u0011\u000b\t\u0004%\tMCA\u00023\u0003F\t\u0007Q\rC\u0004\u0003X\u00011\t!!\u0004\u0002\u0011\u0011L7\u000f^5oGRDqAa\u0017\u0001\t\u0003\u0012i&\u0001\u0005iCND7i\u001c3f)\u0005I\u0004b\u0002B1\u0001\u0011\u0005#1M\u0001\u0007KF,\u0018\r\\:\u0015\u0007\t\u0013)\u0007C\u0004\u0002D\t}\u0003\u0019A\u0005")
/* loaded from: classes3-dex2jar.jar:scala/collection/GenSeqLike.class */
public interface GenSeqLike<A, Repr> extends GenIterableLike<A, Repr>, Equals {

    /* renamed from: scala.collection.GenSeqLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/GenSeqLike$class.class */
    public abstract class Cclass {
        public static void $init$(GenSeqLike genSeqLike) {
        }

        public static boolean equals(GenSeqLike genSeqLike, Object obj) {
            boolean z = false;
            if (obj instanceof GenSeq) {
                GenSeq genSeq = (GenSeq) obj;
                z = false;
                if (genSeq.canEqual(genSeqLike)) {
                    z = false;
                    if (genSeqLike.sameElements(genSeq)) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public static int hashCode(GenSeqLike genSeqLike) {
            return MurmurHash3$.MODULE$.seqHash(genSeqLike.seq());
        }

        public static int indexOf(GenSeqLike genSeqLike, Object obj) {
            return genSeqLike.indexOf(obj, 0);
        }

        public static int indexOf(GenSeqLike genSeqLike, Object obj, int i) {
            return genSeqLike.indexWhere(new GenSeqLike$$anonfun$indexOf$1(genSeqLike, obj), i);
        }

        public static int indexWhere(GenSeqLike genSeqLike, Function1 function1) {
            return genSeqLike.indexWhere(function1, 0);
        }

        public static boolean isDefinedAt(GenSeqLike genSeqLike, int i) {
            return i >= 0 && i < genSeqLike.length();
        }

        public static int lastIndexOf(GenSeqLike genSeqLike, Object obj) {
            return genSeqLike.lastIndexWhere(new GenSeqLike$$anonfun$lastIndexOf$1(genSeqLike, obj));
        }

        public static int lastIndexOf(GenSeqLike genSeqLike, Object obj, int i) {
            return genSeqLike.lastIndexWhere(new GenSeqLike$$anonfun$lastIndexOf$2(genSeqLike, obj), i);
        }

        public static int lastIndexWhere(GenSeqLike genSeqLike, Function1 function1) {
            return genSeqLike.lastIndexWhere(function1, genSeqLike.length() - 1);
        }

        public static int prefixLength(GenSeqLike genSeqLike, Function1 function1) {
            return genSeqLike.segmentLength(function1, 0);
        }

        public static boolean startsWith(GenSeqLike genSeqLike, GenSeq genSeq) {
            return genSeqLike.startsWith(genSeq, 0);
        }

        public static Object union(GenSeqLike genSeqLike, GenSeq genSeq, CanBuildFrom canBuildFrom) {
            return genSeqLike.$plus$plus(genSeq, canBuildFrom);
        }
    }

    <B, That> That $colon$plus(B b, CanBuildFrom<Repr, B, That> canBuildFrom);

    <B, That> That $plus$colon(B b, CanBuildFrom<Repr, B, That> canBuildFrom);

    A apply(int i);

    <B> boolean corresponds(GenSeq<B> genSeq, Function2<A, B, Object> function2);

    <B> Repr diff(GenSeq<B> genSeq);

    Repr distinct();

    <B> boolean endsWith(GenSeq<B> genSeq);

    @Override // scala.Equals
    boolean equals(Object obj);

    int hashCode();

    <B> int indexOf(B b);

    <B> int indexOf(B b, int i);

    int indexWhere(Function1<A, Object> function1);

    int indexWhere(Function1<A, Object> function1, int i);

    <B> Repr intersect(GenSeq<B> genSeq);

    boolean isDefinedAt(int i);

    <B> int lastIndexOf(B b);

    <B> int lastIndexOf(B b, int i);

    int lastIndexWhere(Function1<A, Object> function1);

    int lastIndexWhere(Function1<A, Object> function1, int i);

    int length();

    <B, That> That padTo(int i, B b, CanBuildFrom<Repr, B, That> canBuildFrom);

    <B, That> That patch(int i, GenSeq<B> genSeq, int i2, CanBuildFrom<Repr, B, That> canBuildFrom);

    int prefixLength(Function1<A, Object> function1);

    Repr reverse();

    <B, That> That reverseMap(Function1<A, B> function1, CanBuildFrom<Repr, B, That> canBuildFrom);

    int segmentLength(Function1<A, Object> function1, int i);

    @Override // scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    Seq<A> seq();

    <B> boolean startsWith(GenSeq<B> genSeq);

    <B> boolean startsWith(GenSeq<B> genSeq, int i);

    @Override // scala.collection.GenTraversableOnce, scala.collection.SetLike
    GenSeq<A> toSeq();

    <B, That> That union(GenSeq<B> genSeq, CanBuildFrom<Repr, B, That> canBuildFrom);

    <B, That> That updated(int i, B b, CanBuildFrom<Repr, B, That> canBuildFrom);
}
