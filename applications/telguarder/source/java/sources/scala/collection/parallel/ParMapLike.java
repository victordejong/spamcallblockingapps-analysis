package scala.collection.parallel;

import java.util.NoSuchElementException;
import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.MatchError;
import scala.None$;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$$less$colon$less;
import scala.Some;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.CustomParallelizable;
import scala.collection.GenIterable;
import scala.collection.GenMapLike;
import scala.collection.GenSet;
import scala.collection.GenSetLike;
import scala.collection.GenTraversable;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.Map;
import scala.collection.MapLike;
import scala.collection.Parallel;
import scala.collection.Parallelizable;
import scala.collection.Seq;
import scala.collection.Set;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.DelegatedSignalling;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericParTemplate;
import scala.collection.generic.GenericSetTemplate;
import scala.collection.generic.GenericTraversableTemplate;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Nil$;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.ParIterable;
import scala.collection.parallel.ParIterableLike;
import scala.collection.parallel.ParMap;
import scala.collection.parallel.ParMapLike;
import scala.collection.parallel.ParSet;
import scala.collection.parallel.ParSetLike;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\u00055g\u0001C\u0001\u0003!\u0003\r\t!\u0003\u0015\u0003\u0015A\u000b'/T1q\u0019&\\WM\u0003\u0002\u0004\t\u0005A\u0001/\u0019:bY2,GN\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001!F\u0003\u000b+}\u00113f\u0005\u0003\u0001\u0017=I\u0004C\u0001\u0007\u000e\u001b\u00051\u0011B\u0001\b\u0007\u0005\u0019\te.\u001f*fMB)\u0001#E\n\u001fC5\tA!\u0003\u0002\u0013\t\tQq)\u001a8NCBd\u0015n[3\u0011\u0005Q)B\u0002\u0001\u0003\u0006-\u0001\u0011\ra\u0006\u0002\u0002\u0017F\u0011\u0001d\u0007\t\u0003\u0019eI!A\u0007\u0004\u0003\u000f9{G\u000f[5oOB\u0011A\u0002H\u0005\u0003;\u0019\u00111!\u00118z!\t!r\u0004\u0002\u0004!\u0001\u0011\u0015\ra\u0006\u0002\u0002-B\u0011AC\t\u0003\u0007G\u0001!)\u0019\u0001\u0013\u0003\tI+\u0007O]\t\u00031\u0015\u00122A\n\u00157\r\u00119\u0003\u0001A\u0013\u0003\u0019q\u0012XMZ5oK6,g\u000e\u001e \u0011\r%\u00021CH\u0011+\u001b\u0005\u0011\u0001C\u0001\u000b,\t\u0019a\u0003\u0001\"b\u0001[\tQ1+Z9vK:$\u0018.\u00197\u0012\u0005aq#cA\u00181g\u0019!q\u0005\u0001\u0001/!\u0011\u0001\u0012g\u0005\u0010\n\u0005I\"!aA'baB)\u0001\u0003N\n\u001fU%\u0011Q\u0007\u0002\u0002\b\u001b\u0006\u0004H*[6f!\u0011Isg\u0005\u0010\n\u0005a\u0012!A\u0002)be6\u000b\u0007\u000fE\u0003*uq\n#&\u0003\u0002<\u0005\ty\u0001+\u0019:Ji\u0016\u0014\u0018M\u00197f\u0019&\\W\r\u0005\u0003\r{Mq\u0012B\u0001 \u0007\u0005\u0019!V\u000f\u001d7fe!)\u0001\t\u0001C\u0001\u0003\u00061A%\u001b8ji\u0012\"\u0012A\u0011\t\u0003\u0019\rK!\u0001\u0012\u0004\u0003\tUs\u0017\u000e\u001e\u0005\u0006\r\u0002!\taR\u0001\bI\u00164\u0017-\u001e7u)\tq\u0002\nC\u0003J\u000b\u0002\u00071#A\u0002lKfDQa\u0013\u0001\u0007\u00021\u000bQ!Z7qif,\u0012!\t\u0005\u0006\u001d\u0002!\taT\u0001\u0006CB\u0004H.\u001f\u000b\u0003=ACQ!S'A\u0002MAQA\u0015\u0001\u0005\u0002M\u000b\u0011bZ3u\u001fJ,En]3\u0016\u0005Q3FcA+Z5B\u0011AC\u0016\u0003\u0006/F\u0013\r\u0001\u0017\u0002\u0002+F\u0011ad\u0007\u0005\u0006\u0013F\u0003\ra\u0005\u0005\u0007\rF#\t\u0019A.\u0011\u00071aV+\u0003\u0002^\r\tAAHY=oC6,g\bC\u0003`\u0001\u0011\u0005\u0001-\u0001\u0005d_:$\u0018-\u001b8t)\t\tG\r\u0005\u0002\rE&\u00111M\u0002\u0002\b\u0005>|G.Z1o\u0011\u0015Ie\f1\u0001\u0014\u0011\u00151\u0007\u0001\"\u0001h\u0003-I7\u000fR3gS:,G-\u0011;\u0015\u0005\u0005D\u0007\"B%f\u0001\u0004\u0019\u0002B\u00026\u0001A\u0013%1.\u0001\u0007lKf\u001c\u0018\n^3sCR|'\u000f\u0006\u0002m_B\u0019\u0011&\\\n\n\u00059\u0014!\u0001E%uKJ\f'\r\\3Ta2LG\u000f^3s\u0011\u0015\u0001\u0018\u000e1\u0001r\u0003\u0005\u0019(F\u0001:t!\rIS\u000eP\u0016\u0002iB\u0011QO_\u0007\u0002m*\u0011q\u000f_\u0001\nk:\u001c\u0007.Z2lK\u0012T!!\u001f\u0004\u0002\u0015\u0005tgn\u001c;bi&|g.\u0003\u0002|m\n\tRO\\2iK\u000e\\W\r\u001a,be&\fgnY3\t\u000b)\u0004A\u0011A?\u0016\u00031Dqa \u0001!\n\u0013\t\t!\u0001\bwC2,Xm]%uKJ\fGo\u001c:\u0015\t\u0005\r\u0011Q\u0001\t\u0004S5t\u0002\"\u00029\u007f\u0001\u0004\t\bBB@\u0001\t\u0003\tI!\u0006\u0002\u0002\u0004\u00191\u0011Q\u0002\u0001\t\u0003\u001f\u0011Q\u0002R3gCVdGoS3z'\u0016$8#BA\u0006\u0017\u0005E\u0001\u0003B\u0015\u0002\u0014MI1!!\u0006\u0003\u0005\u0019\u0001\u0016M]*fi\"A\u0011\u0011DA\u0006\t\u0003\tY\"\u0001\u0004=S:LGO\u0010\u000b\u0003\u0003;\u0001B!a\b\u0002\f5\t\u0001\u0001C\u0004`\u0003\u0017!\t!a\t\u0015\u0007\u0005\f)\u0003\u0003\u0004J\u0003C\u0001\ra\u0005\u0005\b\u0003S\tY\u0001\"\u0001~\u0003!\u0019\b\u000f\\5ui\u0016\u0014\b\u0002CA\u0017\u0003\u0017!\t!a\f\u0002\u000b\u0011\u0002H.^:\u0015\t\u0005E\u0011\u0011\u0007\u0005\b\u0003g\tY\u00031\u0001\u0014\u0003\u0011)G.Z7\t\u0011\u0005]\u00121\u0002C\u0001\u0003s\ta\u0001J7j]V\u001cH\u0003BA\t\u0003wAq!a\r\u00026\u0001\u00071\u0003\u0003\u0005\u0002@\u0005-A\u0011IA!\u0003\u0011\u0019\u0018N_3\u0016\u0005\u0005\r\u0003c\u0001\u0007\u0002F%\u0019\u0011q\t\u0004\u0003\u0007%sG\u000f\u0003\u0005\u0002L\u0005-A\u0011IA'\u0003\u001d1wN]3bG\",B!a\u0014\u0002^Q\u0019!)!\u0015\t\u0011\u0005M\u0013\u0011\na\u0001\u0003+\n\u0011A\u001a\t\u0007\u0019\u0005]3#a\u0017\n\u0007\u0005ecAA\u0005Gk:\u001cG/[8ocA\u0019A#!\u0018\u0005\u000f\u0005}\u0013\u0011\nb\u0001/\t\t1\u000b\u0003\u0005\u0002d\u0005-A\u0011IA3\u0003\r\u0019X-]\u000b\u0003\u0003O\u0002B\u0001EA5'%\u0019\u00111\u000e\u0003\u0003\u0007M+GO\u0002\u0004\u0002p\u0001A\u0011\u0011\u000f\u0002\u0016\t\u00164\u0017-\u001e7u-\u0006dW/Z:Ji\u0016\u0014\u0018M\u00197f'\u0015\tigCA:!\u0011I\u0013Q\u000f\u0010\n\u0007\u0005]$AA\u0006QCJLE/\u001a:bE2,\u0007\u0002CA\r\u0003[\"\t!a\u001f\u0015\u0005\u0005u\u0004\u0003BA\u0010\u0003[B\u0001\"!\u000b\u0002n\u0011\u0005\u0011\u0011\u0002\u0005\t\u0003\u007f\ti\u0007\"\u0011\u0002B!A\u00111JA7\t\u0003\n))\u0006\u0003\u0002\b\u0006=Ec\u0001\"\u0002\n\"A\u00111KAB\u0001\u0004\tY\t\u0005\u0004\r\u0003/r\u0012Q\u0012\t\u0004)\u0005=EaBA0\u0003\u0007\u0013\ra\u0006\u0005\t\u0003G\ni\u0007\"\u0001\u0002\u0014V\u0011\u0011Q\u0013\t\u0005!\u0005]e$C\u0002\u0002\u001a\u0012\u0011\u0001\"\u0013;fe\u0006\u0014G.\u001a\u0005\b\u0003;\u0003A\u0011AAP\u0003\u0019YW-_*fiV\u0011\u0011\u0011\u0003\u0005\b\u0003G\u0003A\u0011AAS\u0003\u0011YW-_:\u0016\u0005\u0005\u001d\u0006\u0003B\u0015\u0002vMAq!a+\u0001\t\u0003\ti+\u0001\u0004wC2,Xm]\u000b\u0003\u0003gBq!!-\u0001\t\u0003\t\u0019,\u0001\u0006gS2$XM]&fsN$2ANA[\u0011!\t9,a,A\u0002\u0005e\u0016!\u00019\u0011\u000b1\t9fE1\t\u000f\u0005u\u0006\u0001\"\u0001\u0002@\u0006IQ.\u00199WC2,Xm]\u000b\u0005\u0003\u0003\f9\r\u0006\u0003\u0002D\u0006%\u0007#B\u00158'\u0005\u0015\u0007c\u0001\u000b\u0002H\u00129\u0011qLA^\u0005\u00049\u0002\u0002CA*\u0003w\u0003\r!a3\u0011\r1\t9FHAc\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMapLike.class */
public interface ParMapLike<K, V, Repr extends ParMapLike<K, V, Repr, Sequential> & ParMap<K, V>, Sequential extends Map<K, V> & MapLike<K, V, Sequential>> extends GenMapLike<K, V, Repr>, ParIterableLike<Tuple2<K, V>, Repr, Sequential> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMapLike$DefaultKeySet.class */
    public class DefaultKeySet implements ParSet<K> {
        public final /* synthetic */ ParMapLike $outer;
        private volatile ParIterableLike$ScanLeaf$ ScanLeaf$module;
        private volatile ParIterableLike$ScanNode$ ScanNode$module;
        private volatile transient TaskSupport scala$collection$parallel$ParIterableLike$$_tasksupport;

        public DefaultKeySet(ParMapLike<K, V, Repr, Sequential> parMapLike) {
            Objects.requireNonNull(parMapLike);
            this.$outer = parMapLike;
            Parallelizable.Cclass.$init$(this);
            Function1.Cclass.$init$(this);
            GenSetLike.Cclass.$init$(this);
            GenericTraversableTemplate.Cclass.$init$(this);
            GenTraversable.Cclass.$init$(this);
            GenIterable.Cclass.$init$(this);
            GenericSetTemplate.Cclass.$init$(this);
            GenSet.Cclass.$init$(this);
            GenericParTemplate.Cclass.$init$(this);
            CustomParallelizable.Cclass.$init$(this);
            scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(package$.MODULE$.defaultTaskSupport());
            ParIterable.Cclass.$init$(this);
            ParSetLike.Cclass.$init$(this);
            ParSet.Cclass.$init$(this);
        }

        private ParIterableLike$ScanLeaf$ ScanLeaf$lzycompute() {
            synchronized (this) {
                if (this.ScanLeaf$module == null) {
                    this.ScanLeaf$module = new ParIterableLike$ScanLeaf$(this);
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return this.ScanLeaf$module;
        }

        private ParIterableLike$ScanNode$ ScanNode$lzycompute() {
            synchronized (this) {
                if (this.ScanNode$module == null) {
                    this.ScanNode$module = new ParIterableLike$ScanNode$(this);
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return this.ScanNode$module;
        }

        @Override // scala.collection.GenSetLike
        public Object $amp(GenSet genSet) {
            Object intersect;
            intersect = intersect(genSet);
            return intersect;
        }

        @Override // scala.collection.GenSetLike
        public Object $amp$tilde(GenSet genSet) {
            Object diff;
            diff = diff(genSet);
            return diff;
        }

        @Override // scala.collection.GenSetLike
        public Object $bar(GenSet genSet) {
            Object union;
            union = union(genSet);
            return union;
        }

        @Override // scala.collection.GenTraversableOnce
        public <S> S $colon$bslash(S s, Function2<K, S, S> function2) {
            Object foldRight;
            foldRight = foldRight(s, function2);
            return (S) foldRight;
        }

        @Override // scala.collection.GenTraversableOnce
        public <S> S $div$colon(S s, Function2<S, K, S> function2) {
            Object foldLeft;
            foldLeft = foldLeft(s, function2);
            return (S) foldLeft;
        }

        @Override // scala.collection.GenSetLike, scala.collection.SetLike, scala.collection.generic.Subtractable
        public ParSet<K> $minus(K k) {
            return (ParSet) ((GenSetLike) ((ParIterableLike) ParSet$.MODULE$.apply(Nil$.MODULE$)).$plus$plus(this, ParSet$.MODULE$.canBuildFrom())).$minus(k);
        }

        @Override // scala.collection.GenSetLike, scala.collection.SetLike
        public ParSet<K> $plus(K k) {
            return (ParSet) ((GenSetLike) ((ParIterableLike) ParSet$.MODULE$.apply(Nil$.MODULE$)).$plus$plus(this, ParSet$.MODULE$.canBuildFrom())).$plus(k);
        }

        @Override // scala.collection.GenTraversableLike
        public <U, That> That $plus$plus(GenTraversableOnce<U> genTraversableOnce, CanBuildFrom<ParSet<K>, U, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public ParIterableLike$ScanLeaf$ ScanLeaf() {
            return this.ScanLeaf$module == null ? ScanLeaf$lzycompute() : this.ScanLeaf$module;
        }

        @Override // scala.collection.parallel.ParIterableLike
        public ParIterableLike$ScanNode$ ScanNode() {
            return this.ScanNode$module == null ? ScanNode$lzycompute() : this.ScanNode$module;
        }

        @Override // scala.collection.GenTraversableOnce
        public <S> S aggregate(Function0<S> function0, Function2<S, K, S> function2, Function2<S, S, S> function22) {
            return (S) ParIterableLike.Cclass.aggregate(this, function0, function2, function22);
        }

        @Override // scala.Function1
        public <A> Function1<K, A> andThen(Function1<Object, A> function1) {
            return Function1.Cclass.andThen(this, function1);
        }

        @Override // scala.collection.GenSetLike, scala.Function1
        public boolean apply(K k) {
            return GenSetLike.Cclass.apply(this, k);
        }

        @Override // scala.Function1
        public double apply$mcDD$sp(double d) {
            double unboxToDouble;
            unboxToDouble = BoxesRunTime.unboxToDouble(apply((DefaultKeySet) BoxesRunTime.boxToDouble(d)));
            return unboxToDouble;
        }

        @Override // scala.Function1
        public double apply$mcDF$sp(float f) {
            double unboxToDouble;
            unboxToDouble = BoxesRunTime.unboxToDouble(apply((DefaultKeySet) BoxesRunTime.boxToFloat(f)));
            return unboxToDouble;
        }

        @Override // scala.Function1
        public double apply$mcDI$sp(int i) {
            double unboxToDouble;
            unboxToDouble = BoxesRunTime.unboxToDouble(apply((DefaultKeySet) BoxesRunTime.boxToInteger(i)));
            return unboxToDouble;
        }

        @Override // scala.Function1
        public double apply$mcDJ$sp(long j) {
            double unboxToDouble;
            unboxToDouble = BoxesRunTime.unboxToDouble(apply((DefaultKeySet) BoxesRunTime.boxToLong(j)));
            return unboxToDouble;
        }

        @Override // scala.Function1
        public float apply$mcFD$sp(double d) {
            float unboxToFloat;
            unboxToFloat = BoxesRunTime.unboxToFloat(apply((DefaultKeySet) BoxesRunTime.boxToDouble(d)));
            return unboxToFloat;
        }

        @Override // scala.Function1
        public float apply$mcFF$sp(float f) {
            float unboxToFloat;
            unboxToFloat = BoxesRunTime.unboxToFloat(apply((DefaultKeySet) BoxesRunTime.boxToFloat(f)));
            return unboxToFloat;
        }

        @Override // scala.Function1
        public float apply$mcFI$sp(int i) {
            float unboxToFloat;
            unboxToFloat = BoxesRunTime.unboxToFloat(apply((DefaultKeySet) BoxesRunTime.boxToInteger(i)));
            return unboxToFloat;
        }

        @Override // scala.Function1
        public float apply$mcFJ$sp(long j) {
            float unboxToFloat;
            unboxToFloat = BoxesRunTime.unboxToFloat(apply((DefaultKeySet) BoxesRunTime.boxToLong(j)));
            return unboxToFloat;
        }

        @Override // scala.Function1
        public int apply$mcID$sp(double d) {
            int unboxToInt;
            unboxToInt = BoxesRunTime.unboxToInt(apply((DefaultKeySet) BoxesRunTime.boxToDouble(d)));
            return unboxToInt;
        }

        @Override // scala.Function1
        public int apply$mcIF$sp(float f) {
            int unboxToInt;
            unboxToInt = BoxesRunTime.unboxToInt(apply((DefaultKeySet) BoxesRunTime.boxToFloat(f)));
            return unboxToInt;
        }

        @Override // scala.Function1
        public int apply$mcII$sp(int i) {
            int unboxToInt;
            unboxToInt = BoxesRunTime.unboxToInt(apply((DefaultKeySet) BoxesRunTime.boxToInteger(i)));
            return unboxToInt;
        }

        @Override // scala.Function1
        public int apply$mcIJ$sp(long j) {
            int unboxToInt;
            unboxToInt = BoxesRunTime.unboxToInt(apply((DefaultKeySet) BoxesRunTime.boxToLong(j)));
            return unboxToInt;
        }

        @Override // scala.Function1
        public long apply$mcJD$sp(double d) {
            long unboxToLong;
            unboxToLong = BoxesRunTime.unboxToLong(apply((DefaultKeySet) BoxesRunTime.boxToDouble(d)));
            return unboxToLong;
        }

        @Override // scala.Function1
        public long apply$mcJF$sp(float f) {
            long unboxToLong;
            unboxToLong = BoxesRunTime.unboxToLong(apply((DefaultKeySet) BoxesRunTime.boxToFloat(f)));
            return unboxToLong;
        }

        @Override // scala.Function1
        public long apply$mcJI$sp(int i) {
            long unboxToLong;
            unboxToLong = BoxesRunTime.unboxToLong(apply((DefaultKeySet) BoxesRunTime.boxToInteger(i)));
            return unboxToLong;
        }

        @Override // scala.Function1
        public long apply$mcJJ$sp(long j) {
            long unboxToLong;
            unboxToLong = BoxesRunTime.unboxToLong(apply((DefaultKeySet) BoxesRunTime.boxToLong(j)));
            return unboxToLong;
        }

        @Override // scala.Function1
        public void apply$mcVD$sp(double d) {
            apply((DefaultKeySet) BoxesRunTime.boxToDouble(d));
        }

        @Override // scala.Function1
        public void apply$mcVF$sp(float f) {
            apply((DefaultKeySet) BoxesRunTime.boxToFloat(f));
        }

        @Override // scala.Function1
        public void apply$mcVI$sp(int i) {
            apply((DefaultKeySet) BoxesRunTime.boxToInteger(i));
        }

        @Override // scala.Function1
        public void apply$mcVJ$sp(long j) {
            apply((DefaultKeySet) BoxesRunTime.boxToLong(j));
        }

        @Override // scala.Function1
        public boolean apply$mcZD$sp(double d) {
            boolean unboxToBoolean;
            unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((DefaultKeySet) BoxesRunTime.boxToDouble(d)));
            return unboxToBoolean;
        }

        @Override // scala.Function1
        public boolean apply$mcZF$sp(float f) {
            boolean unboxToBoolean;
            unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((DefaultKeySet) BoxesRunTime.boxToFloat(f)));
            return unboxToBoolean;
        }

        @Override // scala.Function1
        public boolean apply$mcZI$sp(int i) {
            boolean unboxToBoolean;
            unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((DefaultKeySet) BoxesRunTime.boxToInteger(i)));
            return unboxToBoolean;
        }

        @Override // scala.Function1
        public boolean apply$mcZJ$sp(long j) {
            boolean unboxToBoolean;
            unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((DefaultKeySet) BoxesRunTime.boxToLong(j)));
            return unboxToBoolean;
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <S, That> Object bf2seq(CanBuildFrom<ParSet<K>, S, That> canBuildFrom) {
            return ParIterableLike.Cclass.bf2seq(this, canBuildFrom);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public Seq<String> brokenInvariants() {
            return ParIterableLike.Cclass.brokenInvariants(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <Elem, To> Object builder2ops(Builder<Elem, To> builder) {
            return ParIterableLike.Cclass.builder2ops(this, builder);
        }

        @Override // scala.Equals
        public boolean canEqual(Object obj) {
            return ParIterableLike.Cclass.canEqual(this, obj);
        }

        @Override // scala.collection.GenTraversableLike
        public <S, That> That collect(PartialFunction<K, S> partialFunction, CanBuildFrom<ParSet<K>, S, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.collect(this, partialFunction, canBuildFrom);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public Object combinerFactory() {
            return ParIterableLike.Cclass.combinerFactory(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <S, That> Object combinerFactory(Function0<Combiner<S, That>> function0) {
            return ParIterableLike.Cclass.combinerFactory(this, function0);
        }

        @Override // scala.collection.parallel.ParSet, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public GenericCompanion<ParSet> companion() {
            return ParSet.Cclass.companion(this);
        }

        @Override // scala.Function1
        public <A> Function1<A, Object> compose(Function1<A, K> function1) {
            return Function1.Cclass.compose(this, function1);
        }

        @Override // scala.collection.GenSetLike, scala.collection.SetLike
        public boolean contains(K k) {
            return scala$collection$parallel$ParMapLike$DefaultKeySet$$$outer().contains(k);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> void copyToArray(Object obj) {
            ParIterableLike.Cclass.copyToArray(this, obj);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> void copyToArray(Object obj, int i) {
            ParIterableLike.Cclass.copyToArray(this, obj, i);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <U> void copyToArray(Object obj, int i, int i2) {
            ParIterableLike.Cclass.copyToArray(this, obj, i, i2);
        }

        @Override // scala.collection.GenTraversableOnce
        public int count(Function1<K, Object> function1) {
            return ParIterableLike.Cclass.count(this, function1);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public ArrayBuffer<String> debugBuffer() {
            return ParIterableLike.Cclass.debugBuffer(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public String debugInformation() {
            return ParIterableLike.Cclass.debugInformation(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public void debugclear() {
            ParIterableLike.Cclass.debugclear(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public ArrayBuffer<String> debuglog(String str) {
            return ParIterableLike.Cclass.debuglog(this, str);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <PI extends DelegatedSignalling> Object delegatedSignalling2ops(PI pi) {
            return ParIterableLike.Cclass.delegatedSignalling2ops(this, pi);
        }

        @Override // scala.collection.GenSetLike, scala.collection.SetLike
        public ParSet<K> diff(GenSet<K> genSet) {
            return ParSetLike.Cclass.diff(this, genSet);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
        public ParIterable drop(int i) {
            return ParIterableLike.Cclass.drop(this, i);
        }

        @Override // scala.collection.GenTraversableLike
        public ParIterable dropWhile(Function1 function1) {
            return ParIterableLike.Cclass.dropWhile(this, function1);
        }

        @Override // scala.collection.parallel.ParSet, scala.collection.generic.GenericSetTemplate, scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
        public ParSet<K> empty() {
            return ParSet.Cclass.empty(this);
        }

        @Override // scala.collection.GenSetLike, scala.Equals
        public boolean equals(Object obj) {
            return GenSetLike.Cclass.equals(this, obj);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<K, Object> function1) {
            return ParIterableLike.Cclass.exists(this, function1);
        }

        @Override // scala.collection.GenTraversableLike
        public ParIterable filter(Function1 function1) {
            return ParIterableLike.Cclass.filter(this, function1);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.MapLike
        public ParIterable filterNot(Function1 function1) {
            return ParIterableLike.Cclass.filterNot(this, function1);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<K> find(Function1<K, Object> function1) {
            return ParIterableLike.Cclass.find(this, function1);
        }

        @Override // scala.collection.GenTraversableLike
        public <S, That> That flatMap(Function1<K, GenTraversableOnce<S>> function1, CanBuildFrom<ParSet<K>, S, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.flatMap(this, function1, canBuildFrom);
        }

        @Override // scala.collection.generic.GenericTraversableTemplate
        public GenTraversable flatten(Function1 function1) {
            return GenericTraversableTemplate.Cclass.flatten(this, function1);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> U fold(U u, Function2<U, U, U> function2) {
            return (U) ParIterableLike.Cclass.fold(this, u, function2);
        }

        @Override // scala.collection.GenTraversableOnce
        public <S> S foldLeft(S s, Function2<S, K, S> function2) {
            return (S) ParIterableLike.Cclass.foldLeft(this, s, function2);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <S> S foldRight(S s, Function2<K, S, S> function2) {
            return (S) ParIterableLike.Cclass.foldRight(this, s, function2);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<K, Object> function1) {
            return ParIterableLike.Cclass.forall(this, function1);
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [scala.collection.parallel.ParIterable] */
        @Override // scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <S> void foreach(Function1<K, S> function1) {
            scala$collection$parallel$ParMapLike$DefaultKeySet$$$outer().withFilter(new ParMapLike$DefaultKeySet$$anonfun$foreach$1(this)).foreach(new ParMapLike$DefaultKeySet$$anonfun$foreach$2(this, function1));
        }

        @Override // scala.collection.generic.GenericTraversableTemplate
        public <B> Combiner<B, ParSet<B>> genericBuilder() {
            return GenericParTemplate.Cclass.genericBuilder(this);
        }

        @Override // scala.collection.generic.GenericParTemplate
        public <B> Combiner<B, ParSet<B>> genericCombiner() {
            return GenericParTemplate.Cclass.genericCombiner(this);
        }

        @Override // scala.collection.GenTraversableLike
        public <K> scala.collection.parallel.immutable.ParMap<K, ParSet<K>> groupBy(Function1<K, K> function1) {
            return ParIterableLike.Cclass.groupBy(this, function1);
        }

        @Override // scala.collection.GenTraversableOnce
        public boolean hasDefiniteSize() {
            return ParIterableLike.Cclass.hasDefiniteSize(this);
        }

        @Override // scala.collection.GenSetLike
        public int hashCode() {
            return GenSetLike.Cclass.hashCode(this);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public K head() {
            return (K) ParIterableLike.Cclass.head(this);
        }

        @Override // scala.collection.GenTraversableLike
        public Option<K> headOption() {
            return ParIterableLike.Cclass.headOption(this);
        }

        @Override // scala.collection.GenTraversableLike
        public ParIterable init() {
            return ParIterableLike.Cclass.init(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public void initTaskSupport() {
            ParIterableLike.Cclass.initTaskSupport(this);
        }

        @Override // scala.collection.GenSetLike
        public Object intersect(GenSet genSet) {
            return GenSetLike.Cclass.intersect(this, genSet);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public boolean isEmpty() {
            return ParIterableLike.Cclass.isEmpty(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public boolean isStrictSplitterCollection() {
            return ParIterableLike.Cclass.isStrictSplitterCollection(this);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.GenTraversableOnce
        public final boolean isTraversableAgain() {
            return ParIterableLike.Cclass.isTraversableAgain(this);
        }

        @Override // scala.collection.GenSetLike
        public Splitter<K> iterator() {
            return ParIterableLike.Cclass.iterator(this);
        }

        @Override // scala.collection.GenTraversableLike
        public K last() {
            return (K) ParIterableLike.Cclass.last(this);
        }

        @Override // scala.collection.GenTraversableLike
        public Option<K> lastOption() {
            return ParIterableLike.Cclass.lastOption(this);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.SetLike
        public <S, That> That map(Function1<K, S> function1, CanBuildFrom<ParSet<K>, S, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.map(this, function1, canBuildFrom);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> K max(Ordering<U> ordering) {
            return (K) ParIterableLike.Cclass.max(this, ordering);
        }

        @Override // scala.collection.GenTraversableOnce
        public <S> K maxBy(Function1<K, S> function1, Ordering<S> ordering) {
            return (K) ParIterableLike.Cclass.maxBy(this, function1, ordering);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> K min(Ordering<U> ordering) {
            return (K) ParIterableLike.Cclass.min(this, ordering);
        }

        @Override // scala.collection.GenTraversableOnce
        public <S> K minBy(Function1<K, S> function1, Ordering<S> ordering) {
            return (K) ParIterableLike.Cclass.minBy(this, function1, ordering);
        }

        @Override // scala.collection.GenTraversableOnce
        public String mkString() {
            return ParIterableLike.Cclass.mkString(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public String mkString(String str) {
            return ParIterableLike.Cclass.mkString(this, str);
        }

        @Override // scala.collection.GenTraversableOnce
        public String mkString(String str, String str2, String str3) {
            return ParIterableLike.Cclass.mkString(this, str, str2, str3);
        }

        @Override // scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
        public Builder<K, ParSet<K>> newBuilder() {
            return GenericParTemplate.Cclass.newBuilder(this);
        }

        @Override // scala.collection.generic.GenericParTemplate, scala.collection.generic.HasNewCombiner
        public Combiner<K, ParSet<K>> newCombiner() {
            return GenericParTemplate.Cclass.newCombiner(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public boolean nonEmpty() {
            return ParIterableLike.Cclass.nonEmpty(this);
        }

        @Override // scala.collection.Parallelizable
        public ParIterable par() {
            return ParIterableLike.Cclass.par(this);
        }

        @Override // scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
        public Combiner<K, ParSet<K>> parCombiner() {
            return CustomParallelizable.Cclass.parCombiner(this);
        }

        @Override // scala.collection.GenTraversableLike
        public Tuple2<ParSet<K>, ParSet<K>> partition(Function1<K, Object> function1) {
            return ParIterableLike.Cclass.partition(this, function1);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public void printDebugBuffer() {
            ParIterableLike.Cclass.printDebugBuffer(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> U product(Numeric<U> numeric) {
            return (U) ParIterableLike.Cclass.product(this, numeric);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> U reduce(Function2<U, U, U> function2) {
            return (U) ParIterableLike.Cclass.reduce(this, function2);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <U> U reduceLeft(Function2<U, K, U> function2) {
            return (U) ParIterableLike.Cclass.reduceLeft(this, function2);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> Option<U> reduceLeftOption(Function2<U, K, U> function2) {
            return ParIterableLike.Cclass.reduceLeftOption(this, function2);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> Option<U> reduceOption(Function2<U, U, U> function2) {
            return ParIterableLike.Cclass.reduceOption(this, function2);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <U> U reduceRight(Function2<K, U, U> function2) {
            return (U) ParIterableLike.Cclass.reduceRight(this, function2);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> Option<U> reduceRightOption(Function2<K, U, U> function2) {
            return ParIterableLike.Cclass.reduceRightOption(this, function2);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
        public ParIterable repr() {
            return ParIterableLike.Cclass.repr(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <S, That> Combiner<S, That> reuse(Option<Combiner<S, That>> option, Combiner<S, That> combiner) {
            return ParIterableLike.Cclass.reuse(this, option, combiner);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
        public <U> boolean sameElements(GenIterable<U> genIterable) {
            return ParIterableLike.Cclass.sameElements(this, genIterable);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public TaskSupport scala$collection$parallel$ParIterableLike$$_tasksupport() {
            return this.scala$collection$parallel$ParIterableLike$$_tasksupport;
        }

        @Override // scala.collection.parallel.ParIterableLike
        @TraitSetter
        public void scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(TaskSupport taskSupport) {
            this.scala$collection$parallel$ParIterableLike$$_tasksupport = taskSupport;
        }

        public /* synthetic */ ParMapLike scala$collection$parallel$ParMapLike$DefaultKeySet$$$outer() {
            return this.$outer;
        }

        @Override // scala.collection.GenTraversableLike
        public <U, That> That scan(U u, Function2<U, U, U> function2, CanBuildFrom<ParSet<K>, U, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.scan(this, u, function2, canBuildFrom);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public int scanBlockSize() {
            return ParIterableLike.Cclass.scanBlockSize(this);
        }

        @Override // scala.collection.GenTraversableLike
        public <S, That> That scanLeft(S s, Function2<S, K, S> function2, CanBuildFrom<ParSet<K>, S, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.scanLeft(this, s, function2, canBuildFrom);
        }

        @Override // scala.collection.GenTraversableLike
        public <S, That> That scanRight(S s, Function2<K, S, S> function2, CanBuildFrom<ParSet<K>, S, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.scanRight(this, s, function2, canBuildFrom);
        }

        @Override // scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Set<K> seq() {
            return scala$collection$parallel$ParMapLike$DefaultKeySet$$$outer().seq().keySet();
        }

        @Override // scala.collection.parallel.ParIterableLike
        public ParIterable sequentially(Function1 function1) {
            return ParIterableLike.Cclass.sequentially(this, function1);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.GenTraversableOnce
        public int size() {
            return scala$collection$parallel$ParMapLike$DefaultKeySet$$$outer().size();
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
        public ParIterable slice(int i, int i2) {
            return ParIterableLike.Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.GenTraversableLike
        public Tuple2<ParSet<K>, ParSet<K>> span(Function1<K, Object> function1) {
            return ParIterableLike.Cclass.span(this, function1);
        }

        @Override // scala.collection.GenTraversableLike
        public Tuple2<ParSet<K>, ParSet<K>> splitAt(int i) {
            return ParIterableLike.Cclass.splitAt(this, i);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public IterableSplitter<K> splitter() {
            return Cclass.scala$collection$parallel$ParMapLike$$keysIterator(scala$collection$parallel$ParMapLike$DefaultKeySet$$$outer(), scala$collection$parallel$ParMapLike$DefaultKeySet$$$outer().splitter());
        }

        @Override // scala.collection.parallel.ParSet, scala.collection.GenTraversableLike, scala.collection.SetLike
        public String stringPrefix() {
            return ParSet.Cclass.stringPrefix(this);
        }

        @Override // scala.collection.GenSetLike, scala.collection.SortedSetLike
        public boolean subsetOf(GenSet<K> genSet) {
            return GenSetLike.Cclass.subsetOf(this, genSet);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> U sum(Numeric<U> numeric) {
            return (U) ParIterableLike.Cclass.sum(this, numeric);
        }

        @Override // scala.collection.GenTraversableLike
        public ParIterable tail() {
            return ParIterableLike.Cclass.tail(this);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
        public ParIterable take(int i) {
            return ParIterableLike.Cclass.take(this, i);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
        public ParIterable takeWhile(Function1 function1) {
            return ParIterableLike.Cclass.takeWhile(this, function1);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <R, Tp> Object task2ops(ParIterableLike<K, ParSet<K>, Set<K>>.StrictSplitterCheckTask<R, Tp> strictSplitterCheckTask) {
            return ParIterableLike.Cclass.task2ops(this, strictSplitterCheckTask);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public TaskSupport tasksupport() {
            return ParIterableLike.Cclass.tasksupport(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public void tasksupport_$eq(TaskSupport taskSupport) {
            scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(taskSupport);
        }

        @Override // scala.collection.GenTraversableOnce
        /* renamed from: to */
        public <Col> Col mo1to(CanBuildFrom<Nothing$, K, Col> canBuildFrom) {
            return (Col) ParIterableLike.Cclass.m112to(this, canBuildFrom);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> Object toArray(ClassTag<U> classTag) {
            return ParIterableLike.Cclass.toArray(this, classTag);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> Buffer<U> toBuffer() {
            return ParIterableLike.Cclass.toBuffer(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public IndexedSeq<K> toIndexedSeq() {
            return ParIterableLike.Cclass.toIndexedSeq(this);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public ParIterable<K> toIterable() {
            return ParIterableLike.Cclass.toIterable(this);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterator<K> toIterator() {
            return ParIterableLike.Cclass.toIterator(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public List<K> toList() {
            return ParIterableLike.Cclass.toList(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public <K, V> scala.collection.parallel.immutable.ParMap<K, V> toMap(Predef$$less$colon$less<K, Tuple2<K, V>> predef$$less$colon$less) {
            return ParIterableLike.Cclass.toMap(this, predef$$less$colon$less);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <U, That> That toParCollection(Function0<Combiner<U, That>> function0) {
            return (That) ParIterableLike.Cclass.toParCollection(this, function0);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <K, V, That> That toParMap(Function0<Combiner<Tuple2<K, V>, That>> function0, Predef$$less$colon$less<K, Tuple2<K, V>> predef$$less$colon$less) {
            return (That) ParIterableLike.Cclass.toParMap(this, function0, predef$$less$colon$less);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.SetLike
        public ParSeq<K> toSeq() {
            return ParIterableLike.Cclass.toSeq(this);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.immutable.Set
        public <U> scala.collection.parallel.immutable.ParSet<U> toSet() {
            return ParIterableLike.Cclass.toSet(this);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Stream<K> toStream() {
            return ParIterableLike.Cclass.toStream(this);
        }

        @Override // scala.Function1
        public String toString() {
            return ParIterableLike.Cclass.toString(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public GenTraversable<K> toTraversable() {
            return ParIterableLike.Cclass.toTraversable(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public Vector<K> toVector() {
            return ParIterableLike.Cclass.toVector(this);
        }

        @Override // scala.collection.generic.GenericTraversableTemplate
        public GenTraversable transpose(Function1 function1) {
            return GenericTraversableTemplate.Cclass.transpose(this, function1);
        }

        @Override // scala.collection.GenSetLike, scala.collection.SetLike
        public ParSet<K> union(GenSet<K> genSet) {
            return ParSetLike.Cclass.union(this, genSet);
        }

        @Override // scala.collection.generic.GenericTraversableTemplate
        public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<K, Tuple2<A1, A2>> function1) {
            return GenericTraversableTemplate.Cclass.unzip(this, function1);
        }

        @Override // scala.collection.generic.GenericTraversableTemplate
        public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<K, Tuple3<A1, A2, A3>> function1) {
            return GenericTraversableTemplate.Cclass.unzip3(this, function1);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public Object view() {
            return ParIterableLike.Cclass.view(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public ParIterable withFilter(Function1 function1) {
            return ParIterableLike.Cclass.withFilter(this, function1);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <R> Object wrap(Function0<R> function0) {
            return ParIterableLike.Cclass.wrap(this, function0);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
        public <U, S, That> That zip(GenIterable<S> genIterable, CanBuildFrom<ParSet<K>, Tuple2<U, S>, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.zip(this, genIterable, canBuildFrom);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
        public <S, U, That> That zipAll(GenIterable<S> genIterable, U u, S s, CanBuildFrom<ParSet<K>, Tuple2<U, S>, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.zipAll(this, genIterable, u, s, canBuildFrom);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
        public <U, That> That zipWithIndex(CanBuildFrom<ParSet<K>, Tuple2<U, Object>, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.zipWithIndex(this, canBuildFrom);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMapLike$DefaultValuesIterable.class */
    public class DefaultValuesIterable implements ParIterable<V> {
        public final /* synthetic */ ParMapLike $outer;
        private volatile ParIterableLike$ScanLeaf$ ScanLeaf$module;
        private volatile ParIterableLike$ScanNode$ ScanNode$module;
        private volatile transient TaskSupport scala$collection$parallel$ParIterableLike$$_tasksupport;

        public DefaultValuesIterable(ParMapLike<K, V, Repr, Sequential> parMapLike) {
            Objects.requireNonNull(parMapLike);
            this.$outer = parMapLike;
            Parallelizable.Cclass.$init$(this);
            GenericTraversableTemplate.Cclass.$init$(this);
            GenTraversable.Cclass.$init$(this);
            GenIterable.Cclass.$init$(this);
            GenericParTemplate.Cclass.$init$(this);
            CustomParallelizable.Cclass.$init$(this);
            scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(package$.MODULE$.defaultTaskSupport());
            ParIterable.Cclass.$init$(this);
        }

        private ParIterableLike$ScanLeaf$ ScanLeaf$lzycompute() {
            synchronized (this) {
                if (this.ScanLeaf$module == null) {
                    this.ScanLeaf$module = new ParIterableLike$ScanLeaf$(this);
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return this.ScanLeaf$module;
        }

        private ParIterableLike$ScanNode$ ScanNode$lzycompute() {
            synchronized (this) {
                if (this.ScanNode$module == null) {
                    this.ScanNode$module = new ParIterableLike$ScanNode$(this);
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return this.ScanNode$module;
        }

        @Override // scala.collection.GenTraversableOnce
        public <S> S $colon$bslash(S s, Function2<V, S, S> function2) {
            Object foldRight;
            foldRight = foldRight(s, function2);
            return (S) foldRight;
        }

        @Override // scala.collection.GenTraversableOnce
        public <S> S $div$colon(S s, Function2<S, V, S> function2) {
            Object foldLeft;
            foldLeft = foldLeft(s, function2);
            return (S) foldLeft;
        }

        @Override // scala.collection.GenTraversableLike
        public <U, That> That $plus$plus(GenTraversableOnce<U> genTraversableOnce, CanBuildFrom<ParIterable<V>, U, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public ParIterableLike$ScanLeaf$ ScanLeaf() {
            return this.ScanLeaf$module == null ? ScanLeaf$lzycompute() : this.ScanLeaf$module;
        }

        @Override // scala.collection.parallel.ParIterableLike
        public ParIterableLike$ScanNode$ ScanNode() {
            return this.ScanNode$module == null ? ScanNode$lzycompute() : this.ScanNode$module;
        }

        @Override // scala.collection.GenTraversableOnce
        public <S> S aggregate(Function0<S> function0, Function2<S, V, S> function2, Function2<S, S, S> function22) {
            return (S) ParIterableLike.Cclass.aggregate(this, function0, function2, function22);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <S, That> Object bf2seq(CanBuildFrom<ParIterable<V>, S, That> canBuildFrom) {
            return ParIterableLike.Cclass.bf2seq(this, canBuildFrom);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public Seq<String> brokenInvariants() {
            return ParIterableLike.Cclass.brokenInvariants(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <Elem, To> Object builder2ops(Builder<Elem, To> builder) {
            return ParIterableLike.Cclass.builder2ops(this, builder);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public boolean canEqual(Object obj) {
            return ParIterableLike.Cclass.canEqual(this, obj);
        }

        @Override // scala.collection.GenTraversableLike
        public <S, That> That collect(PartialFunction<V, S> partialFunction, CanBuildFrom<ParIterable<V>, S, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.collect(this, partialFunction, canBuildFrom);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public Object combinerFactory() {
            return ParIterableLike.Cclass.combinerFactory(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <S, That> Object combinerFactory(Function0<Combiner<S, That>> function0) {
            return ParIterableLike.Cclass.combinerFactory(this, function0);
        }

        @Override // scala.collection.parallel.ParIterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public GenericCompanion<ParIterable> companion() {
            return ParIterable.Cclass.companion(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> void copyToArray(Object obj) {
            ParIterableLike.Cclass.copyToArray(this, obj);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> void copyToArray(Object obj, int i) {
            ParIterableLike.Cclass.copyToArray(this, obj, i);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <U> void copyToArray(Object obj, int i, int i2) {
            ParIterableLike.Cclass.copyToArray(this, obj, i, i2);
        }

        @Override // scala.collection.GenTraversableOnce
        public int count(Function1<V, Object> function1) {
            return ParIterableLike.Cclass.count(this, function1);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public ArrayBuffer<String> debugBuffer() {
            return ParIterableLike.Cclass.debugBuffer(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public String debugInformation() {
            return ParIterableLike.Cclass.debugInformation(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public void debugclear() {
            ParIterableLike.Cclass.debugclear(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public ArrayBuffer<String> debuglog(String str) {
            return ParIterableLike.Cclass.debuglog(this, str);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <PI extends DelegatedSignalling> Object delegatedSignalling2ops(PI pi) {
            return ParIterableLike.Cclass.delegatedSignalling2ops(this, pi);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
        public ParIterable<V> drop(int i) {
            return ParIterableLike.Cclass.drop(this, i);
        }

        @Override // scala.collection.GenTraversableLike
        public ParIterable<V> dropWhile(Function1<V, Object> function1) {
            return ParIterableLike.Cclass.dropWhile(this, function1);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<V, Object> function1) {
            return ParIterableLike.Cclass.exists(this, function1);
        }

        @Override // scala.collection.GenTraversableLike
        public ParIterable<V> filter(Function1<V, Object> function1) {
            return ParIterableLike.Cclass.filter(this, function1);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.MapLike
        public ParIterable<V> filterNot(Function1<V, Object> function1) {
            return ParIterableLike.Cclass.filterNot(this, function1);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<V> find(Function1<V, Object> function1) {
            return ParIterableLike.Cclass.find(this, function1);
        }

        @Override // scala.collection.GenTraversableLike
        public <S, That> That flatMap(Function1<V, GenTraversableOnce<S>> function1, CanBuildFrom<ParIterable<V>, S, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.flatMap(this, function1, canBuildFrom);
        }

        @Override // scala.collection.generic.GenericTraversableTemplate
        public GenTraversable flatten(Function1 function1) {
            return GenericTraversableTemplate.Cclass.flatten(this, function1);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> U fold(U u, Function2<U, U, U> function2) {
            return (U) ParIterableLike.Cclass.fold(this, u, function2);
        }

        @Override // scala.collection.GenTraversableOnce
        public <S> S foldLeft(S s, Function2<S, V, S> function2) {
            return (S) ParIterableLike.Cclass.foldLeft(this, s, function2);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <S> S foldRight(S s, Function2<V, S, S> function2) {
            return (S) ParIterableLike.Cclass.foldRight(this, s, function2);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<V, Object> function1) {
            return ParIterableLike.Cclass.forall(this, function1);
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [scala.collection.parallel.ParIterable] */
        @Override // scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <S> void foreach(Function1<V, S> function1) {
            m111xefa8ccf().withFilter(new ParMapLike$DefaultValuesIterable$$anonfun$foreach$3(this)).foreach(new ParMapLike$DefaultValuesIterable$$anonfun$foreach$4(this, function1));
        }

        @Override // scala.collection.generic.GenericTraversableTemplate
        public <B> Combiner<B, ParIterable<B>> genericBuilder() {
            return GenericParTemplate.Cclass.genericBuilder(this);
        }

        @Override // scala.collection.generic.GenericParTemplate
        public <B> Combiner<B, ParIterable<B>> genericCombiner() {
            return GenericParTemplate.Cclass.genericCombiner(this);
        }

        @Override // scala.collection.GenTraversableLike
        public <K> scala.collection.parallel.immutable.ParMap<K, ParIterable<V>> groupBy(Function1<V, K> function1) {
            return ParIterableLike.Cclass.groupBy(this, function1);
        }

        @Override // scala.collection.GenTraversableOnce
        public boolean hasDefiniteSize() {
            return ParIterableLike.Cclass.hasDefiniteSize(this);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public V head() {
            return (V) ParIterableLike.Cclass.head(this);
        }

        @Override // scala.collection.GenTraversableLike
        public Option<V> headOption() {
            return ParIterableLike.Cclass.headOption(this);
        }

        @Override // scala.collection.GenTraversableLike
        public ParIterable<V> init() {
            return ParIterableLike.Cclass.init(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public void initTaskSupport() {
            ParIterableLike.Cclass.initTaskSupport(this);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public boolean isEmpty() {
            return ParIterableLike.Cclass.isEmpty(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public boolean isStrictSplitterCollection() {
            return ParIterableLike.Cclass.isStrictSplitterCollection(this);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.GenTraversableOnce
        public final boolean isTraversableAgain() {
            return ParIterableLike.Cclass.isTraversableAgain(this);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Splitter<V> iterator() {
            return ParIterableLike.Cclass.iterator(this);
        }

        @Override // scala.collection.GenTraversableLike
        public V last() {
            return (V) ParIterableLike.Cclass.last(this);
        }

        @Override // scala.collection.GenTraversableLike
        public Option<V> lastOption() {
            return ParIterableLike.Cclass.lastOption(this);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.SetLike
        public <S, That> That map(Function1<V, S> function1, CanBuildFrom<ParIterable<V>, S, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.map(this, function1, canBuildFrom);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> V max(Ordering<U> ordering) {
            return (V) ParIterableLike.Cclass.max(this, ordering);
        }

        @Override // scala.collection.GenTraversableOnce
        public <S> V maxBy(Function1<V, S> function1, Ordering<S> ordering) {
            return (V) ParIterableLike.Cclass.maxBy(this, function1, ordering);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> V min(Ordering<U> ordering) {
            return (V) ParIterableLike.Cclass.min(this, ordering);
        }

        @Override // scala.collection.GenTraversableOnce
        public <S> V minBy(Function1<V, S> function1, Ordering<S> ordering) {
            return (V) ParIterableLike.Cclass.minBy(this, function1, ordering);
        }

        @Override // scala.collection.GenTraversableOnce
        public String mkString() {
            return ParIterableLike.Cclass.mkString(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public String mkString(String str) {
            return ParIterableLike.Cclass.mkString(this, str);
        }

        @Override // scala.collection.GenTraversableOnce
        public String mkString(String str, String str2, String str3) {
            return ParIterableLike.Cclass.mkString(this, str, str2, str3);
        }

        @Override // scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
        public Builder<V, ParIterable<V>> newBuilder() {
            return GenericParTemplate.Cclass.newBuilder(this);
        }

        @Override // scala.collection.generic.GenericParTemplate, scala.collection.generic.HasNewCombiner
        public Combiner<V, ParIterable<V>> newCombiner() {
            return GenericParTemplate.Cclass.newCombiner(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public boolean nonEmpty() {
            return ParIterableLike.Cclass.nonEmpty(this);
        }

        @Override // scala.collection.Parallelizable
        public ParIterable<V> par() {
            return ParIterableLike.Cclass.par(this);
        }

        @Override // scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
        public Combiner<V, ParIterable<V>> parCombiner() {
            return CustomParallelizable.Cclass.parCombiner(this);
        }

        @Override // scala.collection.GenTraversableLike
        public Tuple2<ParIterable<V>, ParIterable<V>> partition(Function1<V, Object> function1) {
            return ParIterableLike.Cclass.partition(this, function1);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public void printDebugBuffer() {
            ParIterableLike.Cclass.printDebugBuffer(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> U product(Numeric<U> numeric) {
            return (U) ParIterableLike.Cclass.product(this, numeric);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> U reduce(Function2<U, U, U> function2) {
            return (U) ParIterableLike.Cclass.reduce(this, function2);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <U> U reduceLeft(Function2<U, V, U> function2) {
            return (U) ParIterableLike.Cclass.reduceLeft(this, function2);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> Option<U> reduceLeftOption(Function2<U, V, U> function2) {
            return ParIterableLike.Cclass.reduceLeftOption(this, function2);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> Option<U> reduceOption(Function2<U, U, U> function2) {
            return ParIterableLike.Cclass.reduceOption(this, function2);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <U> U reduceRight(Function2<V, U, U> function2) {
            return (U) ParIterableLike.Cclass.reduceRight(this, function2);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> Option<U> reduceRightOption(Function2<V, U, U> function2) {
            return ParIterableLike.Cclass.reduceRightOption(this, function2);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
        public ParIterable<V> repr() {
            return ParIterableLike.Cclass.repr(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <S, That> Combiner<S, That> reuse(Option<Combiner<S, That>> option, Combiner<S, That> combiner) {
            return ParIterableLike.Cclass.reuse(this, option, combiner);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
        public <U> boolean sameElements(GenIterable<U> genIterable) {
            return ParIterableLike.Cclass.sameElements(this, genIterable);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public TaskSupport scala$collection$parallel$ParIterableLike$$_tasksupport() {
            return this.scala$collection$parallel$ParIterableLike$$_tasksupport;
        }

        @Override // scala.collection.parallel.ParIterableLike
        @TraitSetter
        public void scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(TaskSupport taskSupport) {
            this.scala$collection$parallel$ParIterableLike$$_tasksupport = taskSupport;
        }

        /* renamed from: scala$collection$parallel$ParMapLike$DefaultValuesIterable$$$outer */
        public /* synthetic */ ParMapLike m111xefa8ccf() {
            return this.$outer;
        }

        @Override // scala.collection.GenTraversableLike
        public <U, That> That scan(U u, Function2<U, U, U> function2, CanBuildFrom<ParIterable<V>, U, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.scan(this, u, function2, canBuildFrom);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public int scanBlockSize() {
            return ParIterableLike.Cclass.scanBlockSize(this);
        }

        @Override // scala.collection.GenTraversableLike
        public <S, That> That scanLeft(S s, Function2<S, V, S> function2, CanBuildFrom<ParIterable<V>, S, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.scanLeft(this, s, function2, canBuildFrom);
        }

        @Override // scala.collection.GenTraversableLike
        public <S, That> That scanRight(S s, Function2<V, S, S> function2, CanBuildFrom<ParIterable<V>, S, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.scanRight(this, s, function2, canBuildFrom);
        }

        @Override // scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Iterable<V> seq() {
            return m111xefa8ccf().seq().values();
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <S, That extends Parallel> ParIterable<V> sequentially(Function1<Iterable<V>, Parallelizable<S, That>> function1) {
            return ParIterableLike.Cclass.sequentially(this, function1);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.GenTraversableOnce
        public int size() {
            return m111xefa8ccf().size();
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
        public ParIterable<V> slice(int i, int i2) {
            return ParIterableLike.Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.GenTraversableLike
        public Tuple2<ParIterable<V>, ParIterable<V>> span(Function1<V, Object> function1) {
            return ParIterableLike.Cclass.span(this, function1);
        }

        @Override // scala.collection.GenTraversableLike
        public Tuple2<ParIterable<V>, ParIterable<V>> splitAt(int i) {
            return ParIterableLike.Cclass.splitAt(this, i);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public IterableSplitter<V> splitter() {
            return Cclass.scala$collection$parallel$ParMapLike$$valuesIterator(m111xefa8ccf(), m111xefa8ccf().splitter());
        }

        @Override // scala.collection.parallel.ParIterable, scala.collection.GenTraversableLike, scala.collection.SetLike
        public String stringPrefix() {
            return ParIterable.Cclass.stringPrefix(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> U sum(Numeric<U> numeric) {
            return (U) ParIterableLike.Cclass.sum(this, numeric);
        }

        @Override // scala.collection.GenTraversableLike
        public ParIterable<V> tail() {
            return ParIterableLike.Cclass.tail(this);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
        public ParIterable<V> take(int i) {
            return ParIterableLike.Cclass.take(this, i);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
        public ParIterable<V> takeWhile(Function1<V, Object> function1) {
            return ParIterableLike.Cclass.takeWhile(this, function1);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <R, Tp> Object task2ops(ParIterableLike<V, ParIterable<V>, Iterable<V>>.StrictSplitterCheckTask<R, Tp> strictSplitterCheckTask) {
            return ParIterableLike.Cclass.task2ops(this, strictSplitterCheckTask);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public TaskSupport tasksupport() {
            return ParIterableLike.Cclass.tasksupport(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public void tasksupport_$eq(TaskSupport taskSupport) {
            scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(taskSupport);
        }

        @Override // scala.collection.GenTraversableOnce
        /* renamed from: to */
        public <Col> Col mo1to(CanBuildFrom<Nothing$, V, Col> canBuildFrom) {
            return (Col) ParIterableLike.Cclass.m112to(this, canBuildFrom);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> Object toArray(ClassTag<U> classTag) {
            return ParIterableLike.Cclass.toArray(this, classTag);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> Buffer<U> toBuffer() {
            return ParIterableLike.Cclass.toBuffer(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public IndexedSeq<V> toIndexedSeq() {
            return ParIterableLike.Cclass.toIndexedSeq(this);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public ParIterable<V> toIterable() {
            return ParIterableLike.Cclass.toIterable(this);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterator<V> toIterator() {
            return ParIterableLike.Cclass.toIterator(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public List<V> toList() {
            return ParIterableLike.Cclass.toList(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public <K, V> scala.collection.parallel.immutable.ParMap<K, V> toMap(Predef$$less$colon$less<V, Tuple2<K, V>> predef$$less$colon$less) {
            return ParIterableLike.Cclass.toMap(this, predef$$less$colon$less);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <U, That> That toParCollection(Function0<Combiner<U, That>> function0) {
            return (That) ParIterableLike.Cclass.toParCollection(this, function0);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <K, V, That> That toParMap(Function0<Combiner<Tuple2<K, V>, That>> function0, Predef$$less$colon$less<V, Tuple2<K, V>> predef$$less$colon$less) {
            return (That) ParIterableLike.Cclass.toParMap(this, function0, predef$$less$colon$less);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.SetLike
        public ParSeq<V> toSeq() {
            return ParIterableLike.Cclass.toSeq(this);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.immutable.Set
        public <U> scala.collection.parallel.immutable.ParSet<U> toSet() {
            return ParIterableLike.Cclass.toSet(this);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Stream<V> toStream() {
            return ParIterableLike.Cclass.toStream(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public String toString() {
            return ParIterableLike.Cclass.toString(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public GenTraversable<V> toTraversable() {
            return ParIterableLike.Cclass.toTraversable(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public Vector<V> toVector() {
            return ParIterableLike.Cclass.toVector(this);
        }

        @Override // scala.collection.generic.GenericTraversableTemplate
        public GenTraversable transpose(Function1 function1) {
            return GenericTraversableTemplate.Cclass.transpose(this, function1);
        }

        @Override // scala.collection.generic.GenericTraversableTemplate
        public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<V, Tuple2<A1, A2>> function1) {
            return GenericTraversableTemplate.Cclass.unzip(this, function1);
        }

        @Override // scala.collection.generic.GenericTraversableTemplate
        public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<V, Tuple3<A1, A2, A3>> function1) {
            return GenericTraversableTemplate.Cclass.unzip3(this, function1);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public Object view() {
            return ParIterableLike.Cclass.view(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public ParIterable<V> withFilter(Function1<V, Object> function1) {
            return ParIterableLike.Cclass.withFilter(this, function1);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <R> Object wrap(Function0<R> function0) {
            return ParIterableLike.Cclass.wrap(this, function0);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
        public <U, S, That> That zip(GenIterable<S> genIterable, CanBuildFrom<ParIterable<V>, Tuple2<U, S>, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.zip(this, genIterable, canBuildFrom);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
        public <S, U, That> That zipAll(GenIterable<S> genIterable, U u, S s, CanBuildFrom<ParIterable<V>, Tuple2<U, S>, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.zipAll(this, genIterable, u, s, canBuildFrom);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
        public <U, That> That zipWithIndex(CanBuildFrom<ParIterable<V>, Tuple2<U, Object>, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.zipWithIndex(this, canBuildFrom);
        }
    }

    /* renamed from: scala.collection.parallel.ParMapLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMapLike$class.class */
    public abstract class Cclass {
        public static void $init$(ParMapLike parMapLike) {
        }

        public static Object apply(ParMapLike parMapLike, Object obj) {
            Object obj2;
            Option<V> option = parMapLike.get(obj);
            if (option instanceof Some) {
                obj2 = ((Some) option).m362x();
            } else if (!None$.MODULE$.equals(option)) {
                throw new MatchError(option);
            } else {
                obj2 = parMapLike.mo6041default(obj);
            }
            return obj2;
        }

        public static boolean contains(ParMapLike parMapLike, Object obj) {
            return parMapLike.get(obj).isDefined();
        }

        /* renamed from: default */
        public static Object m6252default(ParMapLike parMapLike, Object obj) {
            throw new NoSuchElementException(new StringBuilder().append((Object) "key not found: ").append(obj).toString());
        }

        public static ParMap filterKeys(ParMapLike parMapLike, Function1 function1) {
            return new ParMapLike$$anon$1(parMapLike, function1);
        }

        public static Object getOrElse(ParMapLike parMapLike, Object obj, Function0 function0) {
            Object obj2;
            Option<V> option = parMapLike.get(obj);
            if (option instanceof Some) {
                obj2 = ((Some) option).m362x();
            } else if (!None$.MODULE$.equals(option)) {
                throw new MatchError(option);
            } else {
                obj2 = function0.apply();
            }
            return obj2;
        }

        public static boolean isDefinedAt(ParMapLike parMapLike, Object obj) {
            return parMapLike.contains(obj);
        }

        public static ParSet keySet(ParMapLike parMapLike) {
            return new DefaultKeySet(parMapLike);
        }

        public static ParIterable keys(ParMapLike parMapLike) {
            return parMapLike.keySet();
        }

        public static IterableSplitter keysIterator(ParMapLike parMapLike) {
            return scala$collection$parallel$ParMapLike$$keysIterator(parMapLike, parMapLike.splitter());
        }

        public static ParMap mapValues(ParMapLike parMapLike, Function1 function1) {
            return new ParMapLike$$anon$2(parMapLike, function1);
        }

        public static IterableSplitter scala$collection$parallel$ParMapLike$$keysIterator(ParMapLike parMapLike, IterableSplitter iterableSplitter) {
            return new ParMapLike$$anon$3(parMapLike, iterableSplitter);
        }

        public static IterableSplitter scala$collection$parallel$ParMapLike$$valuesIterator(ParMapLike parMapLike, IterableSplitter iterableSplitter) {
            return new ParMapLike$$anon$4(parMapLike, iterableSplitter);
        }

        public static ParIterable values(ParMapLike parMapLike) {
            return new DefaultValuesIterable(parMapLike);
        }

        public static IterableSplitter valuesIterator(ParMapLike parMapLike) {
            return scala$collection$parallel$ParMapLike$$valuesIterator(parMapLike, parMapLike.splitter());
        }
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.Function1
    V apply(K k);

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    boolean contains(K k);

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    /* renamed from: default */
    V mo6041default(K k);

    Repr empty();

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    ParMap<K, V> filterKeys(Function1<K, Object> function1);

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    <U> U getOrElse(K k, Function0<U> function0);

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.PartialFunction
    boolean isDefinedAt(K k);

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    ParSet<K> keySet();

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    ParIterable<K> keys();

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    IterableSplitter<K> keysIterator();

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    <S> ParMap<K, S> mapValues(Function1<V, S> function1);

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    ParIterable<V> values();

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    IterableSplitter<V> valuesIterator();
}
