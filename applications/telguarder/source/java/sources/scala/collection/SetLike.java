package scala.collection;

import java.util.Objects;
import scala.Array$;
import scala.Function1;
import scala.Predef$;
import scala.collection.IndexedSeqOptimized;
import scala.collection.Set;
import scala.collection.SetLike;
import scala.collection.TraversableLike;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.Subtractable;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.Range;
import scala.collection.immutable.Range$;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.ArrayOps;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.SetBuilder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.ParSet;
import scala.collection.parallel.ParSet$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
@ScalaSignature(bytes = "\u0006\u0001\t5a\u0001C\u0001\u0003!\u0003\r\taB\u0012\u0003\u000fM+G\u000fT5lK*\u00111\u0001B\u0001\u000bG>dG.Z2uS>t'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0019\u0001bE\u000f\u0014\r\u0001IQb\n\u00161!\tQ1\"D\u0001\u0005\u0013\taAA\u0001\u0004B]f\u0014VM\u001a\t\u0005\u001d=\tB$D\u0001\u0003\u0013\t\u0001\"A\u0001\u0007Ji\u0016\u0014\u0018M\u00197f\u0019&\\W\r\u0005\u0002\u0013'1\u0001A!\u0002\u000b\u0001\u0005\u0004)\"!A!\u0012\u0005YI\u0002C\u0001\u0006\u0018\u0013\tABAA\u0004O_RD\u0017N\\4\u0011\u0005)Q\u0012BA\u000e\u0005\u0005\r\te.\u001f\t\u0003%u!aA\b\u0001\u0005\u0006\u0004y\"\u0001\u0002+iSN\f\"A\u0006\u0011\u0013\u0007\u0005\u001aCE\u0002\u0003#\u0001\u0001\u0001#\u0001\u0004\u001fsK\u001aLg.Z7f]Rt\u0004\u0003\u0002\b\u0001#q\u00012AD\u0013\u0012\u0013\t1#AA\u0002TKR\u0004BA\u0004\u0015\u00129%\u0011\u0011F\u0001\u0002\u000b\u000f\u0016t7+\u001a;MS.,\u0007\u0003B\u0016/#qi\u0011\u0001\f\u0006\u0003[\t\tqaZ3oKJL7-\u0003\u00020Y\ta1+\u001e2ue\u0006\u001cG/\u00192mKB!a\"M\t4\u0013\t\u0011$A\u0001\bQCJ\fG\u000e\\3mSj\f'\r\\3\u0011\u0007Q:\u0014#D\u00016\u0015\t1$!\u0001\u0005qCJ\fG\u000e\\3m\u0013\tATG\u0001\u0004QCJ\u001cV\r\u001e\u0005\u0006u\u0001!\taO\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003q\u0002\"AC\u001f\n\u0005y\"!\u0001B+oSRDQ\u0001\u0011\u0001\u0007\u0002\u0005\u000bQ!Z7qif,\u0012\u0001\b\u0005\u0007\u0007\u0002\u0001K\u0011\u000b#\u0002\u00159,wOQ;jY\u0012,'/F\u0001F!\u00111\u0015*\u0005\u000f\u000e\u0003\u001dS!\u0001\u0013\u0002\u0002\u000f5,H/\u00192mK&\u0011!j\u0012\u0002\b\u0005VLG\u000eZ3s\u0011\u0019a\u0005\u0001)C)\u001b\u0006Y\u0001/\u0019:D_6\u0014\u0017N\\3s+\u0005q\u0005\u0003\u0002\u001bP#MJ!\u0001U\u001b\u0003\u0011\r{WNY5oKJDQA\u0015\u0001\u0005BM\u000bQ\u0001^8TKF,\u0012\u0001\u0016\t\u0004\u001dU\u000b\u0012B\u0001,\u0003\u0005\r\u0019V-\u001d\u0005\u00061\u0002!\t%W\u0001\ti>\u0014UO\u001a4feV\u0011!lX\u000b\u00027B\u0019a\t\u00180\n\u0005u;%A\u0002\"vM\u001a,'\u000f\u0005\u0002\u0013?\u0012)\u0001m\u0016b\u0001C\n\u0011\u0011)M\t\u0003#eAQa\u0019\u0001\u0005B\u0011\f1!\\1q+\r)\u0007\u000f\u001b\u000b\u0003MJ$\"a\u001a6\u0011\u0005IAG!B5c\u0005\u0004)\"\u0001\u0002+iCRDQa\u001b2A\u00041\f!A\u00194\u0011\u000b-jGd\\4\n\u00059d#\u0001D\"b]\n+\u0018\u000e\u001c3Ge>l\u0007C\u0001\nq\t\u0015\t(M1\u0001\u0016\u0005\u0005\u0011\u0005\"B:c\u0001\u0004!\u0018!\u00014\u0011\t))\u0018c\\\u0005\u0003m\u0012\u0011\u0011BR;oGRLwN\\\u0019)\u000b\tDh0!\u0001\u0011\u0005edX\"\u0001>\u000b\u0005m$\u0011AC1o]>$\u0018\r^5p]&\u0011QP\u001f\u0002\n[&<'/\u0019;j_:\f\u0013a`\u0001@'\u0016$h&\\1qA9|w\u000f\t:fiV\u0014hn\u001d\u0011bAM+G\u000f\f\u0011t_\u0002JG\u000fI<jY2\u0004C-[:dCJ$\u0007\u0005Z;qY&\u001c\u0017\r^3!m\u0006dW/Z:/C\t\t\u0019!A\u00033]ar\u0003\u0007C\u0004\u0002\b\u00011\t!!\u0003\u0002\u0011\r|g\u000e^1j]N$B!a\u0003\u0002\u0012A\u0019!\"!\u0004\n\u0007\u0005=AAA\u0004C_>dW-\u00198\t\u000f\u0005M\u0011Q\u0001a\u0001#\u0005!Q\r\\3n\u0011\u001d\t9\u0002\u0001D\u0001\u00033\tQ\u0001\n9mkN$2\u0001HA\u000e\u0011\u001d\t\u0019\"!\u0006A\u0002EAq!a\u0006\u0001\t\u0003\ty\u0002F\u0004\u001d\u0003C\t)#!\u000b\t\u000f\u0005\r\u0012Q\u0004a\u0001#\u0005)Q\r\\3nc!9\u0011qEA\u000f\u0001\u0004\t\u0012!B3mK6\u0014\u0004\u0002CA\u0016\u0003;\u0001\r!!\f\u0002\u000b\u0015dW-\\:\u0011\t)\ty#E\u0005\u0004\u0003c!!A\u0003\u001fsKB,\u0017\r^3e}!9\u0011Q\u0007\u0001\u0005\u0002\u0005]\u0012A\u0003\u0013qYV\u001cH\u0005\u001d7vgR\u0019A$!\u000f\t\u0011\u0005-\u00121\u0007a\u0001\u0003w\u0001BADA\u001f#%\u0019\u0011q\b\u0002\u0003%\u001d+g\u000e\u0016:bm\u0016\u00148/\u00192mK>s7-\u001a\u0005\b\u0003\u0007\u0002a\u0011AA#\u0003\u0019!S.\u001b8vgR\u0019A$a\u0012\t\u000f\u0005M\u0011\u0011\ta\u0001#!9\u00111\n\u0001\u0005B\u00055\u0013aB5t\u000b6\u0004H/_\u000b\u0003\u0003\u0017Aq!!\u0015\u0001\t\u0003\t\u0019&A\u0003v]&|g\u000eF\u0002\u001d\u0003+B\u0001\"a\u0016\u0002P\u0001\u0007\u0011\u0011L\u0001\u0005i\"\fG\u000f\u0005\u0003\u000f\u00037\n\u0012bAA/\u0005\t1q)\u001a8TKRDq!!\u0019\u0001\t\u0003\t\u0019'\u0001\u0003eS\u001a4Gc\u0001\u000f\u0002f!A\u0011qKA0\u0001\u0004\tI\u0006C\u0004\u0002j\u0001!\t!a\u001b\u0002\u000fM,(m]3ugR!\u0011QNA:!\u0011q\u0011q\u000e\u000f\n\u0007\u0005E$A\u0001\u0005Ji\u0016\u0014\u0018\r^8s\u0011!\t)(a\u001aA\u0002\u0005]\u0014a\u00017f]B\u0019!\"!\u001f\n\u0007\u0005mDAA\u0002J]RDq!!\u001b\u0001\t\u0003\ty\b\u0006\u0002\u0002n\u00191\u00111\u0011\u0001\u0005\u0003\u000b\u0013!bU;cg\u0016$8/\u0013;s'\u0011\t\t)a\"\u0011\t9\tI\tH\u0005\u0004\u0003\u0017\u0013!\u0001E!cgR\u0014\u0018m\u0019;Ji\u0016\u0014\u0018\r^8s\u0011-\ty)!!\u0003\u0002\u0003\u0006I!!%\u0002\t\u0015dWn\u001d\t\u0005\u001d\u0005M\u0015#C\u0002\u0002\u0016\n\u0011!\"\u00138eKb,GmU3r\u0011-\t)(!!\u0003\u0002\u0003\u0006I!a\u001e\t\u0011\u0005m\u0015\u0011\u0011C\u0001\u0003;\u000ba\u0001P5oSRtDCBAP\u0003G\u000b)\u000b\u0005\u0003\u0002\"\u0006\u0005U\"\u0001\u0001\t\u0011\u0005=\u0015\u0011\u0014a\u0001\u0003#C\u0001\"!\u001e\u0002\u001a\u0002\u0007\u0011q\u000f\u0005\u000b\u0003S\u000b\tI1A\u0005\n\u0005-\u0016\u0001B5eqN,\"!!,\u0011\u000b)\ty+a\u001e\n\u0007\u0005EFAA\u0003BeJ\f\u0017\u0010C\u0005\u00026\u0006\u0005\u0005\u0015!\u0003\u0002.\u0006)\u0011\u000e\u001a=tA!Q\u0011\u0011XAA\u0001\u0004%I!!\u0014\u0002\u0011}C\u0017m\u001d(fqRD!\"!0\u0002\u0002\u0002\u0007I\u0011BA`\u00031y\u0006.Y:OKb$x\fJ3r)\ra\u0014\u0011\u0019\u0005\u000b\u0003\u0007\fY,!AA\u0002\u0005-\u0011a\u0001=%c!I\u0011qYAAA\u0003&\u00111B\u0001\n?\"\f7OT3yi\u0002B\u0001\"a3\u0002\u0002\u0012\u0005\u0011QJ\u0001\bQ\u0006\u001ch*\u001a=u\u0011!\ty-!!\u0005\u0002\u0005E\u0017\u0001\u00028fqR$\u0012\u0001\b\u0005\b\u0003+\u0004A\u0011IAl\u00031\u0019HO]5oOB\u0013XMZ5y+\t\tI\u000e\u0005\u0003\u0002\\\u0006\u0005hb\u0001\u0006\u0002^&\u0019\u0011q\u001c\u0003\u0002\rA\u0013X\rZ3g\u0013\u0011\t\u0019/!:\u0003\rM#(/\u001b8h\u0015\r\ty\u000e\u0002\u0005\b\u0003S\u0004A\u0011IAv\u0003!!xn\u0015;sS:<GCAAm\u00119\ty\u000f\u0001I\u0001\u0004\u0003\u0005I\u0011BAy\u0005\u000f\t\u0011b];qKJ$S.\u00199\u0016\r\u0005M(\u0011AA})\u0011\t)Pa\u0001\u0015\t\u0005]\u00181 \t\u0004%\u0005eHAB5\u0002n\n\u0007Q\u0003C\u0004l\u0003[\u0004\u001d!!@\u0011\u000f-jG$a@\u0002xB\u0019!C!\u0001\u0005\rE\fiO1\u0001\u0016\u0011\u001d\u0019\u0018Q\u001ea\u0001\u0005\u000b\u0001RAC;\u0012\u0003\u007fL1a\u0019B\u0005\u0013\r\u0011YA\u0001\u0002\u0010)J\fg/\u001a:tC\ndW\rT5lK\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/SetLike.class */
public interface SetLike<A, This extends SetLike<A, This> & Set<A>> extends IterableLike<A, This>, GenSetLike<A, This>, Subtractable<A, This> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/SetLike$SubsetsItr.class */
    public class SubsetsItr extends AbstractIterator<This> {
        public final /* synthetic */ SetLike $outer;
        private boolean _hasNext = true;
        private final int len;
        public final IndexedSeq<A> scala$collection$SetLike$SubsetsItr$$elms;
        private final int[] scala$collection$SetLike$SubsetsItr$$idxs;

        public SubsetsItr(SetLike<A, This> setLike, IndexedSeq<A> indexedSeq, int i) {
            this.scala$collection$SetLike$SubsetsItr$$elms = indexedSeq;
            this.len = i;
            Objects.requireNonNull(setLike);
            this.$outer = setLike;
            this.scala$collection$SetLike$SubsetsItr$$idxs = Array$.MODULE$.range(0, i + 1);
            scala$collection$SetLike$SubsetsItr$$idxs()[i] = indexedSeq.size();
        }

        private boolean _hasNext() {
            return this._hasNext;
        }

        private void _hasNext_$eq(boolean z) {
            this._hasNext = z;
        }

        @Override // scala.collection.Iterator
        public boolean hasNext() {
            return _hasNext();
        }

        @Override // scala.collection.Iterator
        public This next() {
            if (hasNext()) {
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            } else {
                Iterator$.MODULE$.empty().next();
            }
            Builder<A, This> newBuilder = scala$collection$SetLike$SubsetsItr$$$outer().newBuilder();
            Predef$ predef$ = Predef$.MODULE$;
            Predef$ predef$2 = Predef$.MODULE$;
            IndexedSeqOptimized.Cclass.foreach(new ArrayOps.ofInt((int[]) IndexedSeqOptimized.Cclass.slice(new ArrayOps.ofInt(scala$collection$SetLike$SubsetsItr$$idxs()), 0, this.len)), new SetLike$SubsetsItr$$anonfun$next$2(this, newBuilder));
            Set set = (Set) newBuilder.result();
            int i = this.len - 1;
            while (i >= 0 && scala$collection$SetLike$SubsetsItr$$idxs()[i] == scala$collection$SetLike$SubsetsItr$$idxs()[i + 1] - 1) {
                i--;
            }
            if (i >= 0) {
                scala$collection$SetLike$SubsetsItr$$idxs()[i] = scala$collection$SetLike$SubsetsItr$$idxs()[i] + 1;
                Predef$ predef$3 = Predef$.MODULE$;
                int i2 = this.len;
                Range$ range$ = Range$.MODULE$;
                Range range = new Range(i + 1, i2, 1);
                range.scala$collection$immutable$Range$$validateMaxLength();
                boolean z = (range.start() == Integer.MIN_VALUE && range.end() == Integer.MIN_VALUE) ? false : true;
                int start = range.start();
                int terminalElement = range.terminalElement();
                int step = range.step();
                int i3 = 0;
                while (true) {
                    if (!(!z ? i3 < range.numRangeElements() : start != terminalElement)) {
                        break;
                    }
                    scala$collection$SetLike$SubsetsItr$$idxs()[start] = scala$collection$SetLike$SubsetsItr$$idxs()[start - 1] + 1;
                    i3++;
                    start += step;
                }
            } else {
                _hasNext_$eq(false);
            }
            return set;
        }

        public /* synthetic */ SetLike scala$collection$SetLike$SubsetsItr$$$outer() {
            return this.$outer;
        }

        public int[] scala$collection$SetLike$SubsetsItr$$idxs() {
            return this.scala$collection$SetLike$SubsetsItr$$idxs;
        }
    }

    /* renamed from: scala.collection.SetLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/SetLike$class.class */
    public abstract class Cclass {
        public static void $init$(SetLike setLike) {
        }

        public static Set $plus$plus(SetLike setLike, GenTraversableOnce genTraversableOnce) {
            return (Set) genTraversableOnce.seq().$div$colon((Set) setLike.repr(), new SetLike$$anonfun$$plus$plus$1(setLike));
        }

        public static Set diff(SetLike setLike, GenSet genSet) {
            return (Set) setLike.$minus$minus(genSet);
        }

        public static boolean isEmpty(SetLike setLike) {
            return setLike.size() == 0;
        }

        public static Object map(SetLike setLike, Function1 function1, CanBuildFrom canBuildFrom) {
            return setLike.scala$collection$SetLike$$super$map(function1, canBuildFrom);
        }

        public static Builder newBuilder(SetLike setLike) {
            return new SetBuilder(setLike.empty());
        }

        public static Combiner parCombiner(SetLike setLike) {
            return ParSet$.MODULE$.newCombiner();
        }

        public static String stringPrefix(SetLike setLike) {
            return "Set";
        }

        public static Iterator subsets(SetLike setLike) {
            return new AbstractIterator<This>(setLike) { // from class: scala.collection.SetLike$$anon$1
                private final /* synthetic */ SetLike $outer;
                private final IndexedSeq<A> elms;
                private int len = 0;
                private Iterator<This> itr = Iterator$.MODULE$.empty();

                {
                    Objects.requireNonNull(setLike);
                    this.$outer = setLike;
                    this.elms = setLike.toIndexedSeq();
                }

                private IndexedSeq<A> elms() {
                    return this.elms;
                }

                private Iterator<This> itr() {
                    return this.itr;
                }

                private void itr_$eq(Iterator<This> iterator) {
                    this.itr = iterator;
                }

                private int len() {
                    return this.len;
                }

                private void len_$eq(int i) {
                    this.len = i;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    return len() <= elms().size() || itr().hasNext();
                }

                /* JADX WARN: Incorrect return type in method signature: ()TThis; */
                @Override // scala.collection.Iterator
                public Set next() {
                    if (itr().hasNext()) {
                        BoxedUnit boxedUnit = BoxedUnit.UNIT;
                    } else if (len() > elms().size()) {
                        Iterator$.MODULE$.empty().next();
                    } else {
                        itr_$eq(new SetLike.SubsetsItr(this.$outer, elms(), len()));
                        len_$eq(len() + 1);
                        BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
                    }
                    return (Set) itr().next();
                }
            };
        }

        public static Iterator subsets(SetLike setLike, int i) {
            return (i < 0 || i > setLike.size()) ? Iterator$.MODULE$.empty() : new SubsetsItr(setLike, setLike.toIndexedSeq(), i);
        }

        public static Buffer toBuffer(SetLike setLike) {
            ArrayBuffer arrayBuffer = new ArrayBuffer(setLike.size());
            setLike.copyToBuffer(arrayBuffer);
            return arrayBuffer;
        }

        public static Seq toSeq(SetLike setLike) {
            return setLike.toBuffer();
        }

        public static String toString(SetLike setLike) {
            return TraversableLike.Cclass.toString(setLike);
        }

        public static Set union(SetLike setLike, GenSet genSet) {
            return setLike.$plus$plus(genSet);
        }
    }

    This $minus(A a);

    This $plus(A a);

    This $plus(A a, A a2, Seq<A> seq);

    This $plus$plus(GenTraversableOnce<A> genTraversableOnce);

    boolean contains(A a);

    This diff(GenSet<A> genSet);

    This empty();

    @Override // scala.collection.IterableLike
    boolean isEmpty();

    <B, That> That map(Function1<A, B> function1, CanBuildFrom<This, B, That> canBuildFrom);

    @Override // scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    Builder<A, This> newBuilder();

    Combiner<A, ParSet<A>> parCombiner();

    /* synthetic */ Object scala$collection$SetLike$$super$map(Function1 function1, CanBuildFrom canBuildFrom);

    String stringPrefix();

    Iterator<This> subsets();

    Iterator<This> subsets(int i);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    <A1> Buffer<A1> toBuffer();

    Seq<A> toSeq();

    @Override // scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    String toString();

    This union(GenSet<A> genSet);
}
