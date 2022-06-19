package scala.collection.parallel;

import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$;
import scala.Predef$$less$colon$less;
import scala.Tuple2;
import scala.collection.BufferedIterator;
import scala.collection.GenIterable;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.Seq$;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.DelegatedSignalling;
import scala.collection.generic.IdleSignalling$;
import scala.collection.generic.Signalling;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Map;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.AugmentedIterableIterator;
import scala.collection.parallel.RemainsIterator;
import scala.collection.parallel.immutable.package$;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.ObjectRef;
import scala.runtime.RichInt$;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\tEh\u0001C\u0001\u0003!\u0003\r\t!C\u001f\u0003!%#XM]1cY\u0016\u001c\u0006\u000f\\5ui\u0016\u0014(BA\u0002\u0005\u0003!\u0001\u0018M]1mY\u0016d'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0016'\u0019\u00011b\u0004\u0010\"OA\u0011A\"D\u0007\u0002\r%\u0011aB\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u0007A\t2#D\u0001\u0003\u0013\t\u0011\"AA\rBk\u001elWM\u001c;fI&#XM]1cY\u0016LE/\u001a:bi>\u0014\bC\u0001\u000b\u0016\u0019\u0001!aA\u0006\u0001\u0005\u0006\u00049\"!\u0001+\u0012\u0005aY\u0002C\u0001\u0007\u001a\u0013\tQbAA\u0004O_RD\u0017N\\4\u0011\u00051a\u0012BA\u000f\u0007\u0005\r\te.\u001f\t\u0004!}\u0019\u0012B\u0001\u0011\u0003\u0005!\u0019\u0006\u000f\\5ui\u0016\u0014\bC\u0001\u0012&\u001b\u0005\u0019#B\u0001\u0013\u0005\u0003\u001d9WM\\3sS\u000eL!AJ\u0012\u0003\u0015MKwM\\1mY&tw\r\u0005\u0002#Q%\u0011\u0011f\t\u0002\u0014\t\u0016dWmZ1uK\u0012\u001c\u0016n\u001a8bY2Lgn\u001a\u0005\u0006W\u0001!\t\u0001L\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u00035\u0002\"\u0001\u0004\u0018\n\u0005=2!\u0001B+oSRDq!\r\u0001A\u0002\u0013\u0005!'\u0001\btS\u001et\u0017\r\u001c#fY\u0016<\u0017\r^3\u0016\u0003\u0005Bq\u0001\u000e\u0001A\u0002\u0013\u0005Q'\u0001\ntS\u001et\u0017\r\u001c#fY\u0016<\u0017\r^3`I\u0015\fHCA\u00177\u0011\u001d94'!AA\u0002\u0005\n1\u0001\u001f\u00132\u0011\u0019I\u0004\u0001)Q\u0005C\u0005y1/[4oC2$U\r\\3hCR,\u0007\u0005C\u0003<\u0001\u0019\u0005A(A\u0002ekB,\u0012!\u0010\t\u0004!\u0001\u0019\u0002\"B \u0001\r\u0003\u0001\u0015!B:qY&$X#A!\u0011\u0007\t+UH\u0004\u0002\r\u0007&\u0011AIB\u0001\ba\u0006\u001c7.Y4f\u0013\t1uIA\u0002TKFT!\u0001\u0012\u0004\t\u000b%\u0003A\u0011\u0001!\u0002'M\u0004H.\u001b;XSRD7+[4oC2d\u0017N\\4\t\u000b-\u0003A\u0011\u0001'\u0002%MDw.\u001e7e'Bd\u0017\u000e\u001e$veRDWM]\u000b\u0003\u001b^#2AT)Z!\taq*\u0003\u0002Q\r\t9!i\\8mK\u0006t\u0007\"\u0002*K\u0001\u0004\u0019\u0016\u0001B2pY2\u00042\u0001\u0005+W\u0013\t)&AA\u0006QCJLE/\u001a:bE2,\u0007C\u0001\u000bX\t\u0015A&J1\u0001\u0018\u0005\u0005\u0019\u0006\"\u0002.K\u0001\u0004Y\u0016\u0001\u00059be\u0006dG.\u001a7jg6dUM^3m!\taA,\u0003\u0002^\r\t\u0019\u0011J\u001c;\t\u000b}\u0003a\u0011\u00011\u0002\u0013I,W.Y5oS:<W#A.\t\u000b\t\u0004A\u0011C2\u0002\u0017\t,\u0018\u000e\u001c3TiJLgn\u001a\u000b\u0003I.\u0004\"!\u001a5\u000f\u000511\u0017BA4\u0007\u0003\u0019\u0001&/\u001a3fM&\u0011\u0011N\u001b\u0002\u0007'R\u0014\u0018N\\4\u000b\u0005\u001d4\u0001\"\u00027b\u0001\u0004i\u0017aB2m_N,(/\u001a\t\u0005\u00199\u0004X&\u0003\u0002p\r\tIa)\u001e8di&|g.\r\t\u0005\u00199$W\u0006\u0003\u0004s\u0001\u0011\u0005!a]\u0001\u0011I\u0016\u0014WoZ%oM>\u0014X.\u0019;j_:,\u0012\u0001\u001e\t\u0003kjl\u0011A\u001e\u0006\u0003ob\fA\u0001\\1oO*\t\u00110\u0001\u0003kCZ\f\u0017BA5w\r\u0011a\b\u0001A?\u0003\u000bQ\u000b7.\u001a8\u0014\u0007m\\Q\b\u0003\u0005��w\n\u0005\t\u0015!\u0003\\\u0003\u0015!\u0018m[3o\u0011\u001d\t\u0019a\u001fC\u0001\u0003\u000b\ta\u0001P5oSRtD\u0003BA\u0004\u0003\u0017\u00012!!\u0003|\u001b\u0005\u0001\u0001BB@\u0002\u0002\u0001\u00071\fC\u0004`w\u0002\u0007I\u0011\u00011\t\u0013\u0005E1\u00101A\u0005\u0002\u0005M\u0011!\u0004:f[\u0006Lg.\u001b8h?\u0012*\u0017\u000fF\u0002.\u0003+A\u0001bNA\b\u0003\u0003\u0005\ra\u0017\u0005\b\u00033Y\b\u0015)\u0003\\\u0003)\u0011X-\\1j]&tw\r\t\u0005\b\u0003;YH\u0011AA\u0010\u0003\u001dA\u0017m\u001d(fqR,\u0012A\u0014\u0005\b\u0003GYH\u0011AA\u0013\u0003\u0011qW\r\u001f;\u0015\u0003MAQaO>\u0005\u0002qBQaP>\u0005\u0002\u0001C\u0001\"!\f|A\u0013E\u0011qF\u0001\bi\u0006\\WmU3r+\u0011\t\t$!\u0010\u0015\t\u0005M\u0012Q\n\u000b\u0005\u0003k\t\u0019\u0005\u0005\u0004\u00028\u0005e\u00121H\u0007\u0002\t%\u0011a\t\u0002\t\u0004)\u0005uB\u0001CA \u0003W\u0011\r!!\u0011\u0003\u0005AK\u0015C\u0001\r>\u0011!\t)%a\u000bA\u0002\u0005\u001d\u0013!\u0002;bW\u0016\u0014\b\u0003\u0003\u0007\u0002J\u0005m2,a\u000f\n\u0007\u0005-cAA\u0005Gk:\u001cG/[8oe!A\u0011qJA\u0016\u0001\u0004\t\t&\u0001\u0002tcB!!)RA\u001e\u0011!\t)\u0006\u0001C\u0001\t\u0005]\u0013\u0001\u00038foR\u000b7.\u001a8\u0015\t\u0005\u001d\u0011\u0011\f\u0005\b\u00037\n\u0019\u00061\u0001\\\u0003\u0015)h\u000e^5m\u0011!\ty\u0006\u0001C\u0001\t\u0005\u0005\u0014\u0001\u00058foNc\u0017nY3J]R,'O\\1m+\u0011\t\u0019'a\u001a\u0015\r\u0005\u0015\u0014QNA9!\r!\u0012q\r\u0003\t\u0003S\niF1\u0001\u0002l\t\tQ+E\u0002\u0019\u0003\u000fA\u0001\"a\u001c\u0002^\u0001\u0007\u0011QM\u0001\u0003SRDq!a\u001d\u0002^\u0001\u00071,A\u0003ge>l\u0017\u0007C\u0004\u0002x\u0001!\t%!\u001f\u0002\tQ\f7.\u001a\u000b\u0004{\u0005m\u0004bBA?\u0003k\u0002\raW\u0001\u0002]\"9\u0011\u0011\u0011\u0001\u0005B\u0005\r\u0015!B:mS\u000e,G#B\u001f\u0002\u0006\u0006\u001d\u0005bBA:\u0003\u007f\u0002\ra\u0017\u0005\b\u0003\u0013\u000by\b1\u0001\\\u0003\u0019)h\u000e^5mc\u00191\u0011Q\u0012\u0001\u0001\u0003\u001f\u0013a!T1qa\u0016$W\u0003BAI\u0003/\u001bR!a#\f\u0003'\u0003B\u0001\u0005\u0001\u0002\u0016B\u0019A#a&\u0005\ra\u000bYI1\u0001\u0018\u0011-\tY*a#\u0003\u0002\u0003\u0006I!!(\u0002\u0003\u0019\u0004R\u0001\u00048\u0014\u0003+C\u0001\"a\u0001\u0002\f\u0012\u0005\u0011\u0011\u0015\u000b\u0005\u0003G\u000b)\u000b\u0005\u0004\u0002\n\u0005-\u0015Q\u0013\u0005\t\u00037\u000by\n1\u0001\u0002\u001e\"A\u0011QDAF\t\u0003\ty\u0002\u0003\u0005\u0002$\u0005-E\u0011AAV)\t\t)\n\u0003\u0004`\u0003\u0017#\t\u0001\u0019\u0005\bw\u0005-E\u0011AAY+\t\t\u0019\nC\u0004@\u0003\u0017#\t!!.\u0016\u0005\u0005]\u0006\u0003\u0002\"F\u0003'Cq!a/\u0001\t\u0003\ni,A\u0002nCB,B!a0\u0002FR!\u0011\u0011YAd!\u0019\tI!a#\u0002DB\u0019A#!2\u0005\ra\u000bIL1\u0001\u0018\u0011!\tY*!/A\u0002\u0005%\u0007#\u0002\u0007o'\u0005\rgABAg\u0001\u0001\tyM\u0001\u0005BaB,g\u000eZ3e+\u0019\t\t.a6\u0002dN)\u00111Z\u0006\u0002TB!\u0001\u0003AAk!\r!\u0012q\u001b\u0003\t\u0003S\nYM1\u0001\u0002ZF\u00111c\u0007\u0005\f\u0003;\fYM!b\u0001\n#\ty.\u0001\u0003uQ\u0006$XCAAq!\r!\u00121\u001d\u0003\t\u0003\u007f\tYM1\u0001\u0002fF\u0019\u0001$a5\t\u0017\u0005%\u00181\u001aB\u0001B\u0003%\u0011\u0011]\u0001\u0006i\"\fG\u000f\t\u0005\t\u0003\u0007\tY\r\"\u0001\u0002nR!\u0011q^Ay!!\tI!a3\u0002V\u0006\u0005\b\u0002CAo\u0003W\u0004\r!!9\t\u0015\u0005U\u00181\u001aa\u0001\n#\t90\u0001\u0003dkJ\u0014XCAAj\u0011)\tY0a3A\u0002\u0013E\u0011Q`\u0001\tGV\u0014(o\u0018\u0013fcR\u0019Q&a@\t\u0013]\nI0!AA\u0002\u0005M\u0007\"\u0003B\u0002\u0003\u0017\u0004\u000b\u0015BAj\u0003\u0015\u0019WO\u001d:!\u0011!\ti\"a3\u0005\u0002\u0005}\u0001\u0002CA\u0012\u0003\u0017$\tA!\u0003\u0015\u0005\u0005U\u0007BB0\u0002L\u0012\u0005\u0001\r\u0003\u0005\u0003\u0010\u0005-G\u0011CA\u0010\u000351\u0017N]:u\u001d>tW)\u001c9us\"91(a3\u0005\u0002\u0005]\bbB \u0002L\u0012\u0005!QC\u000b\u0003\u0005/\u0001BAQ#\u0002T\"9!1\u0004\u0001\u0005\u0002\tu\u0011!E1qa\u0016tG\rU1s\u0013R,'/\u00192mKV1!q\u0004B\u0013\u0005S!BA!\t\u00030AA\u0011\u0011BAf\u0005G\u00119\u0003E\u0002\u0015\u0005K!\u0001\"!\u001b\u0003\u001a\t\u0007\u0011\u0011\u001c\t\u0004)\t%B\u0001CA \u00053\u0011\rAa\u000b\u0012\u0007a\u0011i\u0003\u0005\u0003\u0011\u0001\t\r\u0002\u0002CAo\u00053\u0001\rAa\n\u0007\r\tM\u0002\u0001\u0001B\u001b\u0005\u0019Q\u0016\u000e\u001d9fIV!!q\u0007B\"'\u0015\u0011\td\u0003B\u001d!\u0011\u0001\u0002Aa\u000f\u0011\r1\u0011id\u0005B!\u0013\r\u0011yD\u0002\u0002\u0007)V\u0004H.\u001a\u001a\u0011\u0007Q\u0011\u0019\u0005\u0002\u0004Y\u0005c\u0011\ra\u0006\u0005\f\u0003;\u0014\tD!b\u0001\n#\u00119%\u0006\u0002\u0003JA)\u0001Ca\u0013\u0003B%\u0019!Q\n\u0002\u0003\u0017M+\u0017o\u00159mSR$XM\u001d\u0005\f\u0003S\u0014\tD!A!\u0002\u0013\u0011I\u0005\u0003\u0005\u0002\u0004\tEB\u0011\u0001B*)\u0011\u0011)Fa\u0016\u0011\r\u0005%!\u0011\u0007B!\u0011!\tiN!\u0015A\u0002\t%\u0003\u0002CA\u000f\u0005c!\t!a\b\t\u0011\u0005\r\"\u0011\u0007C\u0001\u0005;\"\"Aa\u000f\t\r}\u0013\t\u0004\"\u0001a\u0011\u001dY$\u0011\u0007C\u0001\u0005G*\"A!\u000f\t\u000f}\u0012\t\u0004\"\u0001\u0003hU\u0011!\u0011\u000e\t\u0005\u0005\u0016\u0013I\u0004C\u0004\u0003n\u0001!\tAa\u001c\u0002\u0013iL\u0007\u000fU1s'\u0016\fX\u0003\u0002B9\u0005o\"BAa\u001d\u0003zA1\u0011\u0011\u0002B\u0019\u0005k\u00022\u0001\u0006B<\t\u0019A&1\u000eb\u0001/!A\u0011Q\u001cB6\u0001\u0004\u0011Y\bE\u0003\u0011\u0005\u0017\u0012)H\u0002\u0004\u0003��\u0001\u0001!\u0011\u0011\u0002\n5&\u0004\b/\u001a3BY2,bAa!\u0003\f\n=5#\u0002B?\u0017\t\u0015\u0005\u0003\u0002\t\u0001\u0005\u000f\u0003r\u0001\u0004B\u001f\u0005\u0013\u0013i\tE\u0002\u0015\u0005\u0017#\u0001\"!\u001b\u0003~\t\u0007\u0011\u0011\u001c\t\u0004)\t=EA\u0002-\u0003~\t\u0007q\u0003C\u0006\u0002^\nu$Q1A\u0005\u0012\tMUC\u0001BK!\u0015\u0001\"1\nBG\u0011-\tIO! \u0003\u0002\u0003\u0006IA!&\t\u0017\tm%Q\u0010BC\u0002\u0013E!QT\u0001\ti\"L7/\u001a7f[V\u0011!\u0011\u0012\u0005\f\u0005C\u0013iH!A!\u0002\u0013\u0011I)A\u0005uQ&\u001cX\r\\3nA!Y!Q\u0015B?\u0005\u000b\u0007I\u0011\u0003BT\u0003!!\b.\u0019;fY\u0016lWC\u0001BG\u0011-\u0011YK! \u0003\u0002\u0003\u0006IA!$\u0002\u0013QD\u0017\r^3mK6\u0004\u0003\u0002CA\u0002\u0005{\"\tAa,\u0015\u0011\tE&1\u0017B[\u0005o\u0003\u0002\"!\u0003\u0003~\t%%Q\u0012\u0005\t\u0003;\u0014i\u000b1\u0001\u0003\u0016\"A!1\u0014BW\u0001\u0004\u0011I\t\u0003\u0005\u0003&\n5\u0006\u0019\u0001BG\u0011!\tiB! \u0005\u0002\u0005}\u0001\u0002CA\u0012\u0005{\"\tA!0\u0015\u0005\t\u001d\u0005BB0\u0003~\u0011\u0005\u0001\rC\u0004<\u0005{\"\tAa1\u0016\u0005\t\u0015\u0005bB \u0003~\u0011\u0005!qY\u000b\u0003\u0005\u0013\u0004BAQ#\u0003\u0006\"9!Q\u001a\u0001\u0005\u0002\t=\u0017\u0001\u0004>ja\u0006cG\u000eU1s'\u0016\fX\u0003\u0003Bi\u0005G\u00149Na7\u0015\u0011\tM'Q\u001dBu\u0005[\u0004\u0002\"!\u0003\u0003~\tU'\u0011\u001c\t\u0004)\t]G\u0001CA5\u0005\u0017\u0014\r!!7\u0011\u0007Q\u0011Y\u000e\u0002\u0005\u0003^\n-'\u0019\u0001Bp\u0005\u0005\u0011\u0016c\u0001Bq7A\u0019ACa9\u0005\ra\u0013YM1\u0001\u0018\u0011!\tiNa3A\u0002\t\u001d\b#\u0002\t\u0003L\t\u0005\b\u0002\u0003Bv\u0005\u0017\u0004\rA!6\u0002\u0011QD\u0017n]#mK6D\u0001Ba<\u0003L\u0002\u0007!\u0011\\\u0001\ti\"\fG/\u00127f[\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/IterableSplitter.class */
public interface IterableSplitter<T> extends AugmentedIterableIterator<T>, Splitter<T>, DelegatedSignalling {

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/IterableSplitter$Appended.class */
    public class Appended<U, PI extends IterableSplitter<U>> implements IterableSplitter<U> {
        public final /* synthetic */ IterableSplitter $outer;
        private IterableSplitter<U> curr;
        private Signalling signalDelegate;
        private final PI that;

        /* JADX WARN: Multi-variable type inference failed */
        public Appended(IterableSplitter<T> iterableSplitter, PI pi) {
            this.that = pi;
            Objects.requireNonNull(iterableSplitter);
            this.$outer = iterableSplitter;
            TraversableOnce.Cclass.$init$(this);
            Iterator.Cclass.$init$(this);
            RemainsIterator.Cclass.$init$(this);
            AugmentedIterableIterator.Cclass.$init$(this);
            DelegatedSignalling.Cclass.$init$(this);
            Cclass.$init$(this);
            signalDelegate_$eq(iterableSplitter.signalDelegate());
            this.curr = iterableSplitter;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $colon$bslash(B b, Function2<U, B, B> function2) {
            Object foldRight;
            foldRight = foldRight(b, function2);
            return (B) foldRight;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $div$colon(B b, Function2<B, U, B> function2) {
            Object foldLeft;
            foldLeft = foldLeft(b, function2);
            return (B) foldLeft;
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> $plus$plus(Function0<GenTraversableOnce<B>> function0) {
            return Iterator.Cclass.$plus$plus(this, function0);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void abort() {
            DelegatedSignalling.Cclass.abort(this);
        }

        @Override // scala.collection.TraversableOnce
        public StringBuilder addString(StringBuilder stringBuilder) {
            return TraversableOnce.Cclass.addString(this, stringBuilder);
        }

        @Override // scala.collection.TraversableOnce
        public StringBuilder addString(StringBuilder stringBuilder, String str) {
            return TraversableOnce.Cclass.addString(this, stringBuilder, str);
        }

        @Override // scala.collection.TraversableOnce
        public StringBuilder addString(StringBuilder stringBuilder, String str, String str2, String str3) {
            return TraversableOnce.Cclass.addString(this, stringBuilder, str, str2, str3);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B aggregate(Function0<B> function0, Function2<B, U, B> function2, Function2<B, B, B> function22) {
            return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <U, PI extends IterableSplitter<U>> IterableSplitter<U>.Appended<U, PI> appendParIterable(PI pi) {
            return Cclass.appendParIterable(this, pi);
        }

        @Override // scala.collection.Iterator
        public BufferedIterator<U> buffered() {
            return Iterator.Cclass.buffered(this);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public String buildString(Function1<Function1<String, BoxedUnit>, BoxedUnit> function1) {
            return Cclass.buildString(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> collect(PartialFunction<U, B> partialFunction) {
            return Iterator.Cclass.collect(this, partialFunction);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> collect2combiner(PartialFunction<U, S> partialFunction, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.collect2combiner(this, partialFunction, combiner);
        }

        @Override // scala.collection.TraversableOnce
        public <B> Option<B> collectFirst(PartialFunction<U, B> partialFunction) {
            return TraversableOnce.Cclass.collectFirst(this, partialFunction);
        }

        @Override // scala.collection.Iterator
        public boolean contains(Object obj) {
            return Iterator.Cclass.contains(this, obj);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, Coll, Bld extends Builder<U, Coll>> Bld copy2builder(Bld bld) {
            return (Bld) AugmentedIterableIterator.Cclass.copy2builder(this, bld);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> void copyToArray(Object obj) {
            TraversableOnce.Cclass.copyToArray(this, obj);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> void copyToArray(Object obj, int i) {
            TraversableOnce.Cclass.copyToArray(this, obj, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <U> void copyToArray(Object obj, int i, int i2) {
            AugmentedIterableIterator.Cclass.copyToArray(this, obj, i, i2);
        }

        @Override // scala.collection.TraversableOnce
        public <B> void copyToBuffer(Buffer<B> buffer) {
            TraversableOnce.Cclass.copyToBuffer(this, buffer);
        }

        @Override // scala.collection.Iterator
        public <B> boolean corresponds(GenTraversableOnce<B> genTraversableOnce, Function2<U, B, Object> function2) {
            return Iterator.Cclass.corresponds(this, genTraversableOnce, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int count(Function1<U, Object> function1) {
            return AugmentedIterableIterator.Cclass.count(this, function1);
        }

        public IterableSplitter<U> curr() {
            return this.curr;
        }

        public void curr_$eq(IterableSplitter<U> iterableSplitter) {
            this.curr = iterableSplitter;
        }

        @Override // scala.collection.parallel.IterableSplitter
        public String debugInformation() {
            return Cclass.debugInformation(this);
        }

        @Override // scala.collection.Iterator
        public Iterator<U> drop(int i) {
            return Iterator.Cclass.drop(this, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> drop2combiner(int i, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.drop2combiner(this, i, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<U> dropWhile(Function1<U, Object> function1) {
            return Iterator.Cclass.dropWhile(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public IterableSplitter<U> dup() {
            return scala$collection$parallel$IterableSplitter$Appended$$$outer().dup().appendParIterable(that());
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<U>, Iterator<U>> duplicate() {
            return Iterator.Cclass.duplicate(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<U, Object> function1) {
            return Iterator.Cclass.exists(this, function1);
        }

        @Override // scala.collection.Iterator
        public Iterator<U> filter(Function1<U, Object> function1) {
            return Iterator.Cclass.filter(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> filter2combiner(Function1<U, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.filter2combiner(this, function1, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<U> filterNot(Function1<U, Object> function1) {
            return Iterator.Cclass.filterNot(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> filterNot2combiner(Function1<U, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.filterNot2combiner(this, function1, combiner);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<U> find(Function1<U, Object> function1) {
            return Iterator.Cclass.find(this, function1);
        }

        public boolean firstNonEmpty() {
            return curr() == scala$collection$parallel$IterableSplitter$Appended$$$outer() && curr().hasNext();
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> flatMap(Function1<U, GenTraversableOnce<B>> function1) {
            return Iterator.Cclass.flatMap(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> flatmap2combiner(Function1<U, GenTraversableOnce<S>> function1, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.flatmap2combiner(this, function1, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U fold(U u, Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.fold(this, u, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B foldLeft(B b, Function2<B, U, B> function2) {
            return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B foldRight(B b, Function2<U, B, B> function2) {
            return (B) TraversableOnce.Cclass.foldRight(this, b, function2);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<U, Object> function1) {
            return Iterator.Cclass.forall(this, function1);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<U, U> function1) {
            Iterator.Cclass.foreach(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<U>.GroupedIterator<B> grouped(int i) {
            return Iterator.Cclass.grouped(this, i);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean hasDefiniteSize() {
            return Iterator.Cclass.hasDefiniteSize(this);
        }

        @Override // scala.collection.Iterator
        public boolean hasNext() {
            boolean z;
            if (curr().hasNext()) {
                z = true;
            } else if (curr() == scala$collection$parallel$IterableSplitter$Appended$$$outer()) {
                curr_$eq(that());
                z = curr().hasNext();
            } else {
                z = false;
            }
            return z;
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public int indexFlag() {
            return DelegatedSignalling.Cclass.indexFlag(this);
        }

        @Override // scala.collection.Iterator
        public <B> int indexOf(B b) {
            return Iterator.Cclass.indexOf(this, b);
        }

        @Override // scala.collection.Iterator
        public int indexWhere(Function1<U, Object> function1) {
            return Iterator.Cclass.indexWhere(this, function1);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public boolean isAborted() {
            return DelegatedSignalling.Cclass.isAborted(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public boolean isEmpty() {
            return Iterator.Cclass.isEmpty(this);
        }

        @Override // scala.collection.parallel.RemainsIterator
        public boolean isRemainingCheap() {
            return RemainsIterator.Cclass.isRemainingCheap(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce
        public boolean isTraversableAgain() {
            return Iterator.Cclass.isTraversableAgain(this);
        }

        @Override // scala.collection.Iterator
        public int length() {
            return Iterator.Cclass.length(this);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public <S> IterableSplitter<U>.Mapped<S> map(Function1<U, S> function1) {
            return Cclass.map(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> map2combiner(Function1<U, S> function1, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.map2combiner(this, function1, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U max(Ordering<U> ordering) {
            return (U) AugmentedIterableIterator.Cclass.max(this, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> U maxBy(Function1<U, B> function1, Ordering<B> ordering) {
            return (U) TraversableOnce.Cclass.maxBy(this, function1, ordering);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U min(Ordering<U> ordering) {
            return (U) AugmentedIterableIterator.Cclass.min(this, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> U minBy(Function1<U, B> function1, Ordering<B> ordering) {
            return (U) TraversableOnce.Cclass.minBy(this, function1, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public String mkString() {
            return TraversableOnce.Cclass.mkString(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public String mkString(String str) {
            return TraversableOnce.Cclass.mkString(this, str);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public String mkString(String str, String str2, String str3) {
            return TraversableOnce.Cclass.mkString(this, str, str2, str3);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public Taken newSliceInternal(Taken taken, int i) {
            return Cclass.newSliceInternal(this, taken, i);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public IterableSplitter<U>.Taken newTaken(int i) {
            return Cclass.newTaken(this, i);
        }

        @Override // scala.collection.Iterator
        public U next() {
            U u;
            if (curr() == scala$collection$parallel$IterableSplitter$Appended$$$outer()) {
                hasNext();
                u = curr().next();
            } else {
                u = curr().next();
            }
            return u;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean nonEmpty() {
            return TraversableOnce.Cclass.nonEmpty(this);
        }

        @Override // scala.collection.Iterator
        public <A1> Iterator<A1> padTo(int i, A1 a1) {
            return Iterator.Cclass.padTo(this, i, a1);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<U>, Iterator<U>> partition(Function1<U, Object> function1) {
            return Iterator.Cclass.partition(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> partition2combiners(Function1<U, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.partition2combiners(this, function1, combiner, combiner2);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> patch(int i, Iterator<B> iterator, int i2) {
            return Iterator.Cclass.patch(this, i, iterator, i2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U product(Numeric<U> numeric) {
            return (U) AugmentedIterableIterator.Cclass.product(this, numeric);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U reduce(Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.reduce(this, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U> U reduceLeft(int i, Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.reduceLeft(this, i, function2);
        }

        @Override // scala.collection.TraversableOnce
        public <B> B reduceLeft(Function2<B, U, B> function2) {
            return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceLeftOption(Function2<B, U, B> function2) {
            return TraversableOnce.Cclass.reduceLeftOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
            return TraversableOnce.Cclass.reduceOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B reduceRight(Function2<U, B, B> function2) {
            return (B) TraversableOnce.Cclass.reduceRight(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceRightOption(Function2<U, B, B> function2) {
            return TraversableOnce.Cclass.reduceRightOption(this, function2);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.parallel.RemainsIterator
        public int remaining() {
            return curr() == scala$collection$parallel$IterableSplitter$Appended$$$outer() ? curr().remaining() + that().remaining() : curr().remaining();
        }

        @Override // scala.collection.TraversableOnce
        public List<U> reversed() {
            return TraversableOnce.Cclass.reversed(this);
        }

        @Override // scala.collection.Iterator
        public boolean sameElements(Iterator<?> iterator) {
            return Iterator.Cclass.sameElements(this, iterator);
        }

        public /* synthetic */ IterableSplitter scala$collection$parallel$IterableSplitter$Appended$$$outer() {
            return this.$outer;
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> scanLeft(B b, Function2<B, U, B> function2) {
            return Iterator.Cclass.scanLeft(this, b, function2);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> scanRight(B b, Function2<U, B, B> function2) {
            return Iterator.Cclass.scanRight(this, b, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, A> void scanToArray(U u, Function2<U, U, U> function2, Object obj, int i) {
            AugmentedIterableIterator.Cclass.scanToArray(this, u, function2, obj, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, That> Combiner<U, That> scanToCombiner(int i, U u, Function2<U, U, U> function2, Combiner<U, That> combiner) {
            return AugmentedIterableIterator.Cclass.scanToCombiner(this, i, u, function2, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, That> Combiner<U, That> scanToCombiner(U u, Function2<U, U, U> function2, Combiner<U, That> combiner) {
            return AugmentedIterableIterator.Cclass.scanToCombiner(this, u, function2, combiner);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Iterator<U> seq() {
            return Iterator.Cclass.seq(this);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void setIndexFlag(int i) {
            DelegatedSignalling.Cclass.setIndexFlag(this, i);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void setIndexFlagIfGreater(int i) {
            DelegatedSignalling.Cclass.setIndexFlagIfGreater(this, i);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void setIndexFlagIfLesser(int i) {
            DelegatedSignalling.Cclass.setIndexFlagIfLesser(this, i);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <S> boolean shouldSplitFurther(ParIterable<S> parIterable, int i) {
            return Cclass.shouldSplitFurther(this, parIterable, i);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.generic.DelegatedSignalling
        public Signalling signalDelegate() {
            return this.signalDelegate;
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.generic.DelegatedSignalling
        @TraitSetter
        public void signalDelegate_$eq(Signalling signalling) {
            this.signalDelegate = signalling;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return TraversableOnce.Cclass.size(this);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public IterableSplitter<U> slice(int i, int i2) {
            return Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> slice2combiner(int i, int i2, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.slice2combiner(this, i, i2, combiner);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<U>.GroupedIterator<B> sliding(int i, int i2) {
            return Iterator.Cclass.sliding(this, i, i2);
        }

        @Override // scala.collection.Iterator
        public <B> int sliding$default$2() {
            return Iterator.Cclass.sliding$default$2(this);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<U>, Iterator<U>> span(Function1<U, Object> function1) {
            return Iterator.Cclass.span(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> span2combiners(Function1<U, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.span2combiners(this, function1, combiner, combiner2);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.parallel.Splitter
        public Seq<IterableSplitter<U>> split() {
            return firstNonEmpty() ? (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new IterableSplitter[]{curr(), that()})) : curr().split();
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> splitAt2combiners(int i, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.splitAt2combiners(this, i, combiner, combiner2);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public Seq<IterableSplitter<U>> splitWithSignalling() {
            return Cclass.splitWithSignalling(this);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U sum(Numeric<U> numeric) {
            return (U) AugmentedIterableIterator.Cclass.sum(this, numeric);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public int tag() {
            return DelegatedSignalling.Cclass.tag(this);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public IterableSplitter<U> take(int i) {
            return Cclass.take(this, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> take2combiner(int i, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.take2combiner(this, i, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<U> takeWhile(Function1<U, Object> function1) {
            return Iterator.Cclass.takeWhile(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Object> takeWhile2combiner(Function1<U, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.takeWhile2combiner(this, function1, combiner);
        }

        public PI that() {
            return this.that;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        /* renamed from: to */
        public <Col> Col mo1to(CanBuildFrom<Nothing$, U, Col> canBuildFrom) {
            return (Col) TraversableOnce.Cclass.m182to(this, canBuildFrom);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Object toArray(ClassTag<B> classTag) {
            return TraversableOnce.Cclass.toArray(this, classTag);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Buffer<B> toBuffer() {
            return TraversableOnce.Cclass.toBuffer(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public IndexedSeq<U> toIndexedSeq() {
            return TraversableOnce.Cclass.toIndexedSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterable<U> toIterable() {
            return TraversableOnce.Cclass.toIterable(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterator<U> toIterator() {
            return Iterator.Cclass.toIterator(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public List<U> toList() {
            return TraversableOnce.Cclass.toList(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <T, U> Map<T, U> toMap(Predef$$less$colon$less<U, Tuple2<T, U>> predef$$less$colon$less) {
            return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
        public Seq<U> toSeq() {
            return TraversableOnce.Cclass.toSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
        public <B> Set<B> toSet() {
            return TraversableOnce.Cclass.toSet(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Stream<U> toStream() {
            return Iterator.Cclass.toStream(this);
        }

        @Override // scala.collection.Iterator
        public String toString() {
            return Iterator.Cclass.toString(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Traversable<U> toTraversable() {
            return Iterator.Cclass.toTraversable(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Vector<U> toVector() {
            return TraversableOnce.Cclass.toVector(this);
        }

        @Override // scala.collection.Iterator
        public Iterator<U> withFilter(Function1<U, Object> function1) {
            return Iterator.Cclass.withFilter(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<Tuple2<U, B>> zip(Iterator<B> iterator) {
            return Iterator.Cclass.zip(this, iterator);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, S, That> Combiner<Tuple2<U, S>, That> zip2combiner(RemainsIterator<S> remainsIterator, Combiner<Tuple2<U, S>, That> combiner) {
            return AugmentedIterableIterator.Cclass.zip2combiner(this, remainsIterator, combiner);
        }

        @Override // scala.collection.Iterator
        public <B, A1, B1> Iterator<Tuple2<A1, B1>> zipAll(Iterator<B> iterator, A1 a1, B1 b1) {
            return Iterator.Cclass.zipAll(this, iterator, a1, b1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, S, That> Combiner<Tuple2<U, S>, That> zipAll2combiner(RemainsIterator<S> remainsIterator, U u, S s, Combiner<Tuple2<U, S>, That> combiner) {
            return AugmentedIterableIterator.Cclass.zipAll2combiner(this, remainsIterator, u, s, combiner);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <S, U, R> IterableSplitter<U>.ZippedAll<U, R> zipAllParSeq(SeqSplitter<S> seqSplitter, U u, R r) {
            return Cclass.zipAllParSeq(this, seqSplitter, u, r);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <S> IterableSplitter<U>.Zipped<S> zipParSeq(SeqSplitter<S> seqSplitter) {
            return Cclass.zipParSeq(this, seqSplitter);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<U, Object>> zipWithIndex() {
            return Iterator.Cclass.zipWithIndex(this);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/IterableSplitter$Mapped.class */
    public class Mapped<S> implements IterableSplitter<S> {
        public final /* synthetic */ IterableSplitter $outer;
        public final Function1<T, S> scala$collection$parallel$IterableSplitter$Mapped$$f;
        private Signalling signalDelegate;

        public Mapped(IterableSplitter<T> iterableSplitter, Function1<T, S> function1) {
            this.scala$collection$parallel$IterableSplitter$Mapped$$f = function1;
            Objects.requireNonNull(iterableSplitter);
            this.$outer = iterableSplitter;
            TraversableOnce.Cclass.$init$(this);
            Iterator.Cclass.$init$(this);
            RemainsIterator.Cclass.$init$(this);
            AugmentedIterableIterator.Cclass.$init$(this);
            DelegatedSignalling.Cclass.$init$(this);
            Cclass.$init$(this);
            signalDelegate_$eq(iterableSplitter.signalDelegate());
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $colon$bslash(B b, Function2<S, B, B> function2) {
            Object foldRight;
            foldRight = foldRight(b, function2);
            return (B) foldRight;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $div$colon(B b, Function2<B, S, B> function2) {
            Object foldLeft;
            foldLeft = foldLeft(b, function2);
            return (B) foldLeft;
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> $plus$plus(Function0<GenTraversableOnce<B>> function0) {
            return Iterator.Cclass.$plus$plus(this, function0);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void abort() {
            DelegatedSignalling.Cclass.abort(this);
        }

        @Override // scala.collection.TraversableOnce
        public StringBuilder addString(StringBuilder stringBuilder) {
            return TraversableOnce.Cclass.addString(this, stringBuilder);
        }

        @Override // scala.collection.TraversableOnce
        public StringBuilder addString(StringBuilder stringBuilder, String str) {
            return TraversableOnce.Cclass.addString(this, stringBuilder, str);
        }

        @Override // scala.collection.TraversableOnce
        public StringBuilder addString(StringBuilder stringBuilder, String str, String str2, String str3) {
            return TraversableOnce.Cclass.addString(this, stringBuilder, str, str2, str3);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B aggregate(Function0<B> function0, Function2<B, S, B> function2, Function2<B, B, B> function22) {
            return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <U, PI extends IterableSplitter<U>> IterableSplitter<S>.Appended<U, PI> appendParIterable(PI pi) {
            return Cclass.appendParIterable(this, pi);
        }

        @Override // scala.collection.Iterator
        public BufferedIterator<S> buffered() {
            return Iterator.Cclass.buffered(this);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public String buildString(Function1<Function1<String, BoxedUnit>, BoxedUnit> function1) {
            return Cclass.buildString(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> collect(PartialFunction<S, B> partialFunction) {
            return Iterator.Cclass.collect(this, partialFunction);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> collect2combiner(PartialFunction<S, S> partialFunction, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.collect2combiner(this, partialFunction, combiner);
        }

        @Override // scala.collection.TraversableOnce
        public <B> Option<B> collectFirst(PartialFunction<S, B> partialFunction) {
            return TraversableOnce.Cclass.collectFirst(this, partialFunction);
        }

        @Override // scala.collection.Iterator
        public boolean contains(Object obj) {
            return Iterator.Cclass.contains(this, obj);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, Coll, Bld extends Builder<U, Coll>> Bld copy2builder(Bld bld) {
            return (Bld) AugmentedIterableIterator.Cclass.copy2builder(this, bld);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> void copyToArray(Object obj) {
            TraversableOnce.Cclass.copyToArray(this, obj);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> void copyToArray(Object obj, int i) {
            TraversableOnce.Cclass.copyToArray(this, obj, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <U> void copyToArray(Object obj, int i, int i2) {
            AugmentedIterableIterator.Cclass.copyToArray(this, obj, i, i2);
        }

        @Override // scala.collection.TraversableOnce
        public <B> void copyToBuffer(Buffer<B> buffer) {
            TraversableOnce.Cclass.copyToBuffer(this, buffer);
        }

        @Override // scala.collection.Iterator
        public <B> boolean corresponds(GenTraversableOnce<B> genTraversableOnce, Function2<S, B, Object> function2) {
            return Iterator.Cclass.corresponds(this, genTraversableOnce, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int count(Function1<S, Object> function1) {
            return AugmentedIterableIterator.Cclass.count(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public String debugInformation() {
            return Cclass.debugInformation(this);
        }

        @Override // scala.collection.Iterator
        public Iterator<S> drop(int i) {
            return Iterator.Cclass.drop(this, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> drop2combiner(int i, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.drop2combiner(this, i, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<S> dropWhile(Function1<S, Object> function1) {
            return Iterator.Cclass.dropWhile(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public IterableSplitter<S> dup() {
            return scala$collection$parallel$IterableSplitter$Mapped$$$outer().dup().map((Function1) this.scala$collection$parallel$IterableSplitter$Mapped$$f);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<S>, Iterator<S>> duplicate() {
            return Iterator.Cclass.duplicate(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<S, Object> function1) {
            return Iterator.Cclass.exists(this, function1);
        }

        @Override // scala.collection.Iterator
        public Iterator<S> filter(Function1<S, Object> function1) {
            return Iterator.Cclass.filter(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> filter2combiner(Function1<S, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.filter2combiner(this, function1, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<S> filterNot(Function1<S, Object> function1) {
            return Iterator.Cclass.filterNot(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> filterNot2combiner(Function1<S, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.filterNot2combiner(this, function1, combiner);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<S> find(Function1<S, Object> function1) {
            return Iterator.Cclass.find(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> flatMap(Function1<S, GenTraversableOnce<B>> function1) {
            return Iterator.Cclass.flatMap(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> flatmap2combiner(Function1<S, GenTraversableOnce<S>> function1, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.flatmap2combiner(this, function1, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U fold(U u, Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.fold(this, u, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B foldLeft(B b, Function2<B, S, B> function2) {
            return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B foldRight(B b, Function2<S, B, B> function2) {
            return (B) TraversableOnce.Cclass.foldRight(this, b, function2);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<S, Object> function1) {
            return Iterator.Cclass.forall(this, function1);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<S, U> function1) {
            Iterator.Cclass.foreach(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<S>.GroupedIterator<B> grouped(int i) {
            return Iterator.Cclass.grouped(this, i);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean hasDefiniteSize() {
            return Iterator.Cclass.hasDefiniteSize(this);
        }

        @Override // scala.collection.Iterator
        public boolean hasNext() {
            return scala$collection$parallel$IterableSplitter$Mapped$$$outer().hasNext();
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public int indexFlag() {
            return DelegatedSignalling.Cclass.indexFlag(this);
        }

        @Override // scala.collection.Iterator
        public <B> int indexOf(B b) {
            return Iterator.Cclass.indexOf(this, b);
        }

        @Override // scala.collection.Iterator
        public int indexWhere(Function1<S, Object> function1) {
            return Iterator.Cclass.indexWhere(this, function1);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public boolean isAborted() {
            return DelegatedSignalling.Cclass.isAborted(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public boolean isEmpty() {
            return Iterator.Cclass.isEmpty(this);
        }

        @Override // scala.collection.parallel.RemainsIterator
        public boolean isRemainingCheap() {
            return RemainsIterator.Cclass.isRemainingCheap(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce
        public boolean isTraversableAgain() {
            return Iterator.Cclass.isTraversableAgain(this);
        }

        @Override // scala.collection.Iterator
        public int length() {
            return Iterator.Cclass.length(this);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public <S> IterableSplitter<S>.Mapped<S> map(Function1<S, S> function1) {
            return Cclass.map(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> map2combiner(Function1<S, S> function1, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.map2combiner(this, function1, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> S max(Ordering<U> ordering) {
            return (S) AugmentedIterableIterator.Cclass.max(this, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> S maxBy(Function1<S, B> function1, Ordering<B> ordering) {
            return (S) TraversableOnce.Cclass.maxBy(this, function1, ordering);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> S min(Ordering<U> ordering) {
            return (S) AugmentedIterableIterator.Cclass.min(this, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> S minBy(Function1<S, B> function1, Ordering<B> ordering) {
            return (S) TraversableOnce.Cclass.minBy(this, function1, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public String mkString() {
            return TraversableOnce.Cclass.mkString(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public String mkString(String str) {
            return TraversableOnce.Cclass.mkString(this, str);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public String mkString(String str, String str2, String str3) {
            return TraversableOnce.Cclass.mkString(this, str, str2, str3);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <U extends IterableSplitter<S>.Taken> U newSliceInternal(U u, int i) {
            return (U) Cclass.newSliceInternal(this, u, i);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public IterableSplitter<S>.Taken newTaken(int i) {
            return Cclass.newTaken(this, i);
        }

        @Override // scala.collection.Iterator
        public S next() {
            return this.scala$collection$parallel$IterableSplitter$Mapped$$f.apply(scala$collection$parallel$IterableSplitter$Mapped$$$outer().next());
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean nonEmpty() {
            return TraversableOnce.Cclass.nonEmpty(this);
        }

        @Override // scala.collection.Iterator
        public <A1> Iterator<A1> padTo(int i, A1 a1) {
            return Iterator.Cclass.padTo(this, i, a1);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<S>, Iterator<S>> partition(Function1<S, Object> function1) {
            return Iterator.Cclass.partition(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> partition2combiners(Function1<S, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.partition2combiners(this, function1, combiner, combiner2);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> patch(int i, Iterator<B> iterator, int i2) {
            return Iterator.Cclass.patch(this, i, iterator, i2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U product(Numeric<U> numeric) {
            return (U) AugmentedIterableIterator.Cclass.product(this, numeric);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U reduce(Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.reduce(this, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U> U reduceLeft(int i, Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.reduceLeft(this, i, function2);
        }

        @Override // scala.collection.TraversableOnce
        public <B> B reduceLeft(Function2<B, S, B> function2) {
            return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceLeftOption(Function2<B, S, B> function2) {
            return TraversableOnce.Cclass.reduceLeftOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
            return TraversableOnce.Cclass.reduceOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B reduceRight(Function2<S, B, B> function2) {
            return (B) TraversableOnce.Cclass.reduceRight(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceRightOption(Function2<S, B, B> function2) {
            return TraversableOnce.Cclass.reduceRightOption(this, function2);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.parallel.RemainsIterator
        public int remaining() {
            return scala$collection$parallel$IterableSplitter$Mapped$$$outer().remaining();
        }

        @Override // scala.collection.TraversableOnce
        public List<S> reversed() {
            return TraversableOnce.Cclass.reversed(this);
        }

        @Override // scala.collection.Iterator
        public boolean sameElements(Iterator<?> iterator) {
            return Iterator.Cclass.sameElements(this, iterator);
        }

        public /* synthetic */ IterableSplitter scala$collection$parallel$IterableSplitter$Mapped$$$outer() {
            return this.$outer;
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> scanLeft(B b, Function2<B, S, B> function2) {
            return Iterator.Cclass.scanLeft(this, b, function2);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> scanRight(B b, Function2<S, B, B> function2) {
            return Iterator.Cclass.scanRight(this, b, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, A> void scanToArray(U u, Function2<U, U, U> function2, Object obj, int i) {
            AugmentedIterableIterator.Cclass.scanToArray(this, u, function2, obj, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, That> Combiner<U, That> scanToCombiner(int i, U u, Function2<U, U, U> function2, Combiner<U, That> combiner) {
            return AugmentedIterableIterator.Cclass.scanToCombiner(this, i, u, function2, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, That> Combiner<U, That> scanToCombiner(U u, Function2<U, U, U> function2, Combiner<U, That> combiner) {
            return AugmentedIterableIterator.Cclass.scanToCombiner(this, u, function2, combiner);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Iterator<S> seq() {
            return Iterator.Cclass.seq(this);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void setIndexFlag(int i) {
            DelegatedSignalling.Cclass.setIndexFlag(this, i);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void setIndexFlagIfGreater(int i) {
            DelegatedSignalling.Cclass.setIndexFlagIfGreater(this, i);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void setIndexFlagIfLesser(int i) {
            DelegatedSignalling.Cclass.setIndexFlagIfLesser(this, i);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <S> boolean shouldSplitFurther(ParIterable<S> parIterable, int i) {
            return Cclass.shouldSplitFurther(this, parIterable, i);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.generic.DelegatedSignalling
        public Signalling signalDelegate() {
            return this.signalDelegate;
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.generic.DelegatedSignalling
        @TraitSetter
        public void signalDelegate_$eq(Signalling signalling) {
            this.signalDelegate = signalling;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return TraversableOnce.Cclass.size(this);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public IterableSplitter<S> slice(int i, int i2) {
            return Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> slice2combiner(int i, int i2, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.slice2combiner(this, i, i2, combiner);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<S>.GroupedIterator<B> sliding(int i, int i2) {
            return Iterator.Cclass.sliding(this, i, i2);
        }

        @Override // scala.collection.Iterator
        public <B> int sliding$default$2() {
            return Iterator.Cclass.sliding$default$2(this);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<S>, Iterator<S>> span(Function1<S, Object> function1) {
            return Iterator.Cclass.span(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> span2combiners(Function1<S, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.span2combiners(this, function1, combiner, combiner2);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.parallel.Splitter
        public Seq<IterableSplitter<S>> split() {
            return (Seq) scala$collection$parallel$IterableSplitter$Mapped$$$outer().split().map(new IterableSplitter$Mapped$$anonfun$split$2(this), Seq$.MODULE$.canBuildFrom());
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> splitAt2combiners(int i, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.splitAt2combiners(this, i, combiner, combiner2);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public Seq<IterableSplitter<S>> splitWithSignalling() {
            return Cclass.splitWithSignalling(this);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U sum(Numeric<U> numeric) {
            return (U) AugmentedIterableIterator.Cclass.sum(this, numeric);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public int tag() {
            return DelegatedSignalling.Cclass.tag(this);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public IterableSplitter<S> take(int i) {
            return Cclass.take(this, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> take2combiner(int i, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.take2combiner(this, i, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<S> takeWhile(Function1<S, Object> function1) {
            return Iterator.Cclass.takeWhile(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Object> takeWhile2combiner(Function1<S, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.takeWhile2combiner(this, function1, combiner);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        /* renamed from: to */
        public <Col> Col mo1to(CanBuildFrom<Nothing$, S, Col> canBuildFrom) {
            return (Col) TraversableOnce.Cclass.m182to(this, canBuildFrom);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Object toArray(ClassTag<B> classTag) {
            return TraversableOnce.Cclass.toArray(this, classTag);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Buffer<B> toBuffer() {
            return TraversableOnce.Cclass.toBuffer(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public IndexedSeq<S> toIndexedSeq() {
            return TraversableOnce.Cclass.toIndexedSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterable<S> toIterable() {
            return TraversableOnce.Cclass.toIterable(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterator<S> toIterator() {
            return Iterator.Cclass.toIterator(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public List<S> toList() {
            return TraversableOnce.Cclass.toList(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <T, U> Map<T, U> toMap(Predef$$less$colon$less<S, Tuple2<T, U>> predef$$less$colon$less) {
            return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
        public Seq<S> toSeq() {
            return TraversableOnce.Cclass.toSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
        public <B> Set<B> toSet() {
            return TraversableOnce.Cclass.toSet(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Stream<S> toStream() {
            return Iterator.Cclass.toStream(this);
        }

        @Override // scala.collection.Iterator
        public String toString() {
            return Iterator.Cclass.toString(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Traversable<S> toTraversable() {
            return Iterator.Cclass.toTraversable(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Vector<S> toVector() {
            return TraversableOnce.Cclass.toVector(this);
        }

        @Override // scala.collection.Iterator
        public Iterator<S> withFilter(Function1<S, Object> function1) {
            return Iterator.Cclass.withFilter(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<Tuple2<S, B>> zip(Iterator<B> iterator) {
            return Iterator.Cclass.zip(this, iterator);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, S, That> Combiner<Tuple2<U, S>, That> zip2combiner(RemainsIterator<S> remainsIterator, Combiner<Tuple2<U, S>, That> combiner) {
            return AugmentedIterableIterator.Cclass.zip2combiner(this, remainsIterator, combiner);
        }

        @Override // scala.collection.Iterator
        public <B, A1, B1> Iterator<Tuple2<A1, B1>> zipAll(Iterator<B> iterator, A1 a1, B1 b1) {
            return Iterator.Cclass.zipAll(this, iterator, a1, b1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, S, That> Combiner<Tuple2<U, S>, That> zipAll2combiner(RemainsIterator<S> remainsIterator, U u, S s, Combiner<Tuple2<U, S>, That> combiner) {
            return AugmentedIterableIterator.Cclass.zipAll2combiner(this, remainsIterator, u, s, combiner);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <S, U, R> IterableSplitter<S>.ZippedAll<U, R> zipAllParSeq(SeqSplitter<S> seqSplitter, U u, R r) {
            return Cclass.zipAllParSeq(this, seqSplitter, u, r);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <S> IterableSplitter<S>.Zipped<S> zipParSeq(SeqSplitter<S> seqSplitter) {
            return Cclass.zipParSeq(this, seqSplitter);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<S, Object>> zipWithIndex() {
            return Iterator.Cclass.zipWithIndex(this);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/IterableSplitter$Taken.class */
    public class Taken implements IterableSplitter<T> {
        public final /* synthetic */ IterableSplitter $outer;
        private int remaining;
        private Signalling signalDelegate;
        private final int taken;

        public Taken(IterableSplitter<T> iterableSplitter, int i) {
            this.taken = i;
            Objects.requireNonNull(iterableSplitter);
            this.$outer = iterableSplitter;
            TraversableOnce.Cclass.$init$(this);
            Iterator.Cclass.$init$(this);
            RemainsIterator.Cclass.$init$(this);
            AugmentedIterableIterator.Cclass.$init$(this);
            DelegatedSignalling.Cclass.$init$(this);
            Cclass.$init$(this);
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            this.remaining = richInt$.min$extension(i, iterableSplitter.remaining());
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $colon$bslash(B b, Function2<T, B, B> function2) {
            Object foldRight;
            foldRight = foldRight(b, function2);
            return (B) foldRight;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $div$colon(B b, Function2<B, T, B> function2) {
            Object foldLeft;
            foldLeft = foldLeft(b, function2);
            return (B) foldLeft;
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> $plus$plus(Function0<GenTraversableOnce<B>> function0) {
            return Iterator.Cclass.$plus$plus(this, function0);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void abort() {
            DelegatedSignalling.Cclass.abort(this);
        }

        @Override // scala.collection.TraversableOnce
        public StringBuilder addString(StringBuilder stringBuilder) {
            return TraversableOnce.Cclass.addString(this, stringBuilder);
        }

        @Override // scala.collection.TraversableOnce
        public StringBuilder addString(StringBuilder stringBuilder, String str) {
            return TraversableOnce.Cclass.addString(this, stringBuilder, str);
        }

        @Override // scala.collection.TraversableOnce
        public StringBuilder addString(StringBuilder stringBuilder, String str, String str2, String str3) {
            return TraversableOnce.Cclass.addString(this, stringBuilder, str, str2, str3);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B aggregate(Function0<B> function0, Function2<B, T, B> function2, Function2<B, B, B> function22) {
            return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <U, PI extends IterableSplitter<U>> IterableSplitter<T>.Appended<U, PI> appendParIterable(PI pi) {
            return Cclass.appendParIterable(this, pi);
        }

        @Override // scala.collection.Iterator
        public BufferedIterator<T> buffered() {
            return Iterator.Cclass.buffered(this);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public String buildString(Function1<Function1<String, BoxedUnit>, BoxedUnit> function1) {
            return Cclass.buildString(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> collect(PartialFunction<T, B> partialFunction) {
            return Iterator.Cclass.collect(this, partialFunction);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> collect2combiner(PartialFunction<T, S> partialFunction, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.collect2combiner(this, partialFunction, combiner);
        }

        @Override // scala.collection.TraversableOnce
        public <B> Option<B> collectFirst(PartialFunction<T, B> partialFunction) {
            return TraversableOnce.Cclass.collectFirst(this, partialFunction);
        }

        @Override // scala.collection.Iterator
        public boolean contains(Object obj) {
            return Iterator.Cclass.contains(this, obj);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, Coll, Bld extends Builder<U, Coll>> Bld copy2builder(Bld bld) {
            return (Bld) AugmentedIterableIterator.Cclass.copy2builder(this, bld);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> void copyToArray(Object obj) {
            TraversableOnce.Cclass.copyToArray(this, obj);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> void copyToArray(Object obj, int i) {
            TraversableOnce.Cclass.copyToArray(this, obj, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <U> void copyToArray(Object obj, int i, int i2) {
            AugmentedIterableIterator.Cclass.copyToArray(this, obj, i, i2);
        }

        @Override // scala.collection.TraversableOnce
        public <B> void copyToBuffer(Buffer<B> buffer) {
            TraversableOnce.Cclass.copyToBuffer(this, buffer);
        }

        @Override // scala.collection.Iterator
        public <B> boolean corresponds(GenTraversableOnce<B> genTraversableOnce, Function2<T, B, Object> function2) {
            return Iterator.Cclass.corresponds(this, genTraversableOnce, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int count(Function1<T, Object> function1) {
            return AugmentedIterableIterator.Cclass.count(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public String debugInformation() {
            return Cclass.debugInformation(this);
        }

        @Override // scala.collection.Iterator
        public Iterator<T> drop(int i) {
            return Iterator.Cclass.drop(this, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> drop2combiner(int i, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.drop2combiner(this, i, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<T> dropWhile(Function1<T, Object> function1) {
            return Iterator.Cclass.dropWhile(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public IterableSplitter<T> dup() {
            return scala$collection$parallel$IterableSplitter$Taken$$$outer().dup().take(this.taken);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<T>, Iterator<T>> duplicate() {
            return Iterator.Cclass.duplicate(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<T, Object> function1) {
            return Iterator.Cclass.exists(this, function1);
        }

        @Override // scala.collection.Iterator
        public Iterator<T> filter(Function1<T, Object> function1) {
            return Iterator.Cclass.filter(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> filter2combiner(Function1<T, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.filter2combiner(this, function1, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<T> filterNot(Function1<T, Object> function1) {
            return Iterator.Cclass.filterNot(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> filterNot2combiner(Function1<T, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.filterNot2combiner(this, function1, combiner);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<T> find(Function1<T, Object> function1) {
            return Iterator.Cclass.find(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> flatMap(Function1<T, GenTraversableOnce<B>> function1) {
            return Iterator.Cclass.flatMap(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> flatmap2combiner(Function1<T, GenTraversableOnce<S>> function1, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.flatmap2combiner(this, function1, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U fold(U u, Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.fold(this, u, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B foldLeft(B b, Function2<B, T, B> function2) {
            return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B foldRight(B b, Function2<T, B, B> function2) {
            return (B) TraversableOnce.Cclass.foldRight(this, b, function2);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<T, Object> function1) {
            return Iterator.Cclass.forall(this, function1);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<T, U> function1) {
            Iterator.Cclass.foreach(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<T>.GroupedIterator<B> grouped(int i) {
            return Iterator.Cclass.grouped(this, i);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean hasDefiniteSize() {
            return Iterator.Cclass.hasDefiniteSize(this);
        }

        @Override // scala.collection.Iterator
        public boolean hasNext() {
            return remaining() > 0;
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public int indexFlag() {
            return DelegatedSignalling.Cclass.indexFlag(this);
        }

        @Override // scala.collection.Iterator
        public <B> int indexOf(B b) {
            return Iterator.Cclass.indexOf(this, b);
        }

        @Override // scala.collection.Iterator
        public int indexWhere(Function1<T, Object> function1) {
            return Iterator.Cclass.indexWhere(this, function1);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public boolean isAborted() {
            return DelegatedSignalling.Cclass.isAborted(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public boolean isEmpty() {
            return Iterator.Cclass.isEmpty(this);
        }

        @Override // scala.collection.parallel.RemainsIterator
        public boolean isRemainingCheap() {
            return RemainsIterator.Cclass.isRemainingCheap(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce
        public boolean isTraversableAgain() {
            return Iterator.Cclass.isTraversableAgain(this);
        }

        @Override // scala.collection.Iterator
        public int length() {
            return Iterator.Cclass.length(this);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public <S> IterableSplitter<T>.Mapped<S> map(Function1<T, S> function1) {
            return Cclass.map(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> map2combiner(Function1<T, S> function1, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.map2combiner(this, function1, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> T max(Ordering<U> ordering) {
            return (T) AugmentedIterableIterator.Cclass.max(this, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> T maxBy(Function1<T, B> function1, Ordering<B> ordering) {
            return (T) TraversableOnce.Cclass.maxBy(this, function1, ordering);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> T min(Ordering<U> ordering) {
            return (T) AugmentedIterableIterator.Cclass.min(this, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> T minBy(Function1<T, B> function1, Ordering<B> ordering) {
            return (T) TraversableOnce.Cclass.minBy(this, function1, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public String mkString() {
            return TraversableOnce.Cclass.mkString(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public String mkString(String str) {
            return TraversableOnce.Cclass.mkString(this, str);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public String mkString(String str, String str2, String str3) {
            return TraversableOnce.Cclass.mkString(this, str, str2, str3);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <U extends IterableSplitter<T>.Taken> U newSliceInternal(U u, int i) {
            return (U) Cclass.newSliceInternal(this, u, i);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public IterableSplitter<T>.Taken newTaken(int i) {
            return Cclass.newTaken(this, i);
        }

        @Override // scala.collection.Iterator
        public T next() {
            remaining_$eq(remaining() - 1);
            return scala$collection$parallel$IterableSplitter$Taken$$$outer().next();
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean nonEmpty() {
            return TraversableOnce.Cclass.nonEmpty(this);
        }

        @Override // scala.collection.Iterator
        public <A1> Iterator<A1> padTo(int i, A1 a1) {
            return Iterator.Cclass.padTo(this, i, a1);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<T>, Iterator<T>> partition(Function1<T, Object> function1) {
            return Iterator.Cclass.partition(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> partition2combiners(Function1<T, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.partition2combiners(this, function1, combiner, combiner2);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> patch(int i, Iterator<B> iterator, int i2) {
            return Iterator.Cclass.patch(this, i, iterator, i2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U product(Numeric<U> numeric) {
            return (U) AugmentedIterableIterator.Cclass.product(this, numeric);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U reduce(Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.reduce(this, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U> U reduceLeft(int i, Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.reduceLeft(this, i, function2);
        }

        @Override // scala.collection.TraversableOnce
        public <B> B reduceLeft(Function2<B, T, B> function2) {
            return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceLeftOption(Function2<B, T, B> function2) {
            return TraversableOnce.Cclass.reduceLeftOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
            return TraversableOnce.Cclass.reduceOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B reduceRight(Function2<T, B, B> function2) {
            return (B) TraversableOnce.Cclass.reduceRight(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceRightOption(Function2<T, B, B> function2) {
            return TraversableOnce.Cclass.reduceRightOption(this, function2);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.parallel.RemainsIterator
        public int remaining() {
            return this.remaining;
        }

        public void remaining_$eq(int i) {
            this.remaining = i;
        }

        @Override // scala.collection.TraversableOnce
        public List<T> reversed() {
            return TraversableOnce.Cclass.reversed(this);
        }

        @Override // scala.collection.Iterator
        public boolean sameElements(Iterator<?> iterator) {
            return Iterator.Cclass.sameElements(this, iterator);
        }

        public /* synthetic */ IterableSplitter scala$collection$parallel$IterableSplitter$Taken$$$outer() {
            return this.$outer;
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> scanLeft(B b, Function2<B, T, B> function2) {
            return Iterator.Cclass.scanLeft(this, b, function2);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> scanRight(B b, Function2<T, B, B> function2) {
            return Iterator.Cclass.scanRight(this, b, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, A> void scanToArray(U u, Function2<U, U, U> function2, Object obj, int i) {
            AugmentedIterableIterator.Cclass.scanToArray(this, u, function2, obj, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, That> Combiner<U, That> scanToCombiner(int i, U u, Function2<U, U, U> function2, Combiner<U, That> combiner) {
            return AugmentedIterableIterator.Cclass.scanToCombiner(this, i, u, function2, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, That> Combiner<U, That> scanToCombiner(U u, Function2<U, U, U> function2, Combiner<U, That> combiner) {
            return AugmentedIterableIterator.Cclass.scanToCombiner(this, u, function2, combiner);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Iterator<T> seq() {
            return Iterator.Cclass.seq(this);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void setIndexFlag(int i) {
            DelegatedSignalling.Cclass.setIndexFlag(this, i);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void setIndexFlagIfGreater(int i) {
            DelegatedSignalling.Cclass.setIndexFlagIfGreater(this, i);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void setIndexFlagIfLesser(int i) {
            DelegatedSignalling.Cclass.setIndexFlagIfLesser(this, i);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <S> boolean shouldSplitFurther(ParIterable<S> parIterable, int i) {
            return Cclass.shouldSplitFurther(this, parIterable, i);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.generic.DelegatedSignalling
        public Signalling signalDelegate() {
            return this.signalDelegate;
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.generic.DelegatedSignalling
        @TraitSetter
        public void signalDelegate_$eq(Signalling signalling) {
            this.signalDelegate = signalling;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return TraversableOnce.Cclass.size(this);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public IterableSplitter<T> slice(int i, int i2) {
            return Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> slice2combiner(int i, int i2, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.slice2combiner(this, i, i2, combiner);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<T>.GroupedIterator<B> sliding(int i, int i2) {
            return Iterator.Cclass.sliding(this, i, i2);
        }

        @Override // scala.collection.Iterator
        public <B> int sliding$default$2() {
            return Iterator.Cclass.sliding$default$2(this);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<T>, Iterator<T>> span(Function1<T, Object> function1) {
            return Iterator.Cclass.span(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> span2combiners(Function1<T, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.span2combiners(this, function1, combiner, combiner2);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.parallel.Splitter
        public Seq<IterableSplitter<T>> split() {
            return takeSeq(scala$collection$parallel$IterableSplitter$Taken$$$outer().split(), new IterableSplitter$Taken$$anonfun$split$1(this));
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> splitAt2combiners(int i, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.splitAt2combiners(this, i, combiner, combiner2);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public Seq<IterableSplitter<T>> splitWithSignalling() {
            return Cclass.splitWithSignalling(this);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U sum(Numeric<U> numeric) {
            return (U) AugmentedIterableIterator.Cclass.sum(this, numeric);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public int tag() {
            return DelegatedSignalling.Cclass.tag(this);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public IterableSplitter<T> take(int i) {
            return Cclass.take(this, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> take2combiner(int i, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.take2combiner(this, i, combiner);
        }

        public <PI extends IterableSplitter<T>> Seq<PI> takeSeq(Seq<PI> seq, Function2<PI, Object, PI> function2) {
            Seq seq2 = (Seq) seq.scanLeft(BoxesRunTime.boxToInteger(0), new IterableSplitter$Taken$$anonfun$3(this), Seq$.MODULE$.canBuildFrom());
            return (Seq) ((Seq) ((TraversableLike) seq.zip((GenIterable) seq2.init().zip(seq2.tail(), Seq$.MODULE$.canBuildFrom()), Seq$.MODULE$.canBuildFrom())).withFilter(new IterableSplitter$Taken$$anonfun$4(this)).map(new IterableSplitter$Taken$$anonfun$5(this, function2), Seq$.MODULE$.canBuildFrom())).filter(new IterableSplitter$Taken$$anonfun$takeSeq$1(this));
        }

        @Override // scala.collection.Iterator
        public Iterator<T> takeWhile(Function1<T, Object> function1) {
            return Iterator.Cclass.takeWhile(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Object> takeWhile2combiner(Function1<T, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.takeWhile2combiner(this, function1, combiner);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        /* renamed from: to */
        public <Col> Col mo1to(CanBuildFrom<Nothing$, T, Col> canBuildFrom) {
            return (Col) TraversableOnce.Cclass.m182to(this, canBuildFrom);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Object toArray(ClassTag<B> classTag) {
            return TraversableOnce.Cclass.toArray(this, classTag);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Buffer<B> toBuffer() {
            return TraversableOnce.Cclass.toBuffer(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public IndexedSeq<T> toIndexedSeq() {
            return TraversableOnce.Cclass.toIndexedSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterable<T> toIterable() {
            return TraversableOnce.Cclass.toIterable(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterator<T> toIterator() {
            return Iterator.Cclass.toIterator(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public List<T> toList() {
            return TraversableOnce.Cclass.toList(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <T, U> Map<T, U> toMap(Predef$$less$colon$less<T, Tuple2<T, U>> predef$$less$colon$less) {
            return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
        public Seq<T> toSeq() {
            return TraversableOnce.Cclass.toSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
        public <B> Set<B> toSet() {
            return TraversableOnce.Cclass.toSet(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Stream<T> toStream() {
            return Iterator.Cclass.toStream(this);
        }

        @Override // scala.collection.Iterator
        public String toString() {
            return Iterator.Cclass.toString(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Traversable<T> toTraversable() {
            return Iterator.Cclass.toTraversable(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Vector<T> toVector() {
            return TraversableOnce.Cclass.toVector(this);
        }

        @Override // scala.collection.Iterator
        public Iterator<T> withFilter(Function1<T, Object> function1) {
            return Iterator.Cclass.withFilter(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<Tuple2<T, B>> zip(Iterator<B> iterator) {
            return Iterator.Cclass.zip(this, iterator);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, S, That> Combiner<Tuple2<U, S>, That> zip2combiner(RemainsIterator<S> remainsIterator, Combiner<Tuple2<U, S>, That> combiner) {
            return AugmentedIterableIterator.Cclass.zip2combiner(this, remainsIterator, combiner);
        }

        @Override // scala.collection.Iterator
        public <B, A1, B1> Iterator<Tuple2<A1, B1>> zipAll(Iterator<B> iterator, A1 a1, B1 b1) {
            return Iterator.Cclass.zipAll(this, iterator, a1, b1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, S, That> Combiner<Tuple2<U, S>, That> zipAll2combiner(RemainsIterator<S> remainsIterator, U u, S s, Combiner<Tuple2<U, S>, That> combiner) {
            return AugmentedIterableIterator.Cclass.zipAll2combiner(this, remainsIterator, u, s, combiner);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <S, U, R> IterableSplitter<T>.ZippedAll<U, R> zipAllParSeq(SeqSplitter<S> seqSplitter, U u, R r) {
            return Cclass.zipAllParSeq(this, seqSplitter, u, r);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <S> IterableSplitter<T>.Zipped<S> zipParSeq(SeqSplitter<S> seqSplitter) {
            return Cclass.zipParSeq(this, seqSplitter);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<T, Object>> zipWithIndex() {
            return Iterator.Cclass.zipWithIndex(this);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/IterableSplitter$Zipped.class */
    public class Zipped<S> implements IterableSplitter<Tuple2<T, S>> {
        public final /* synthetic */ IterableSplitter $outer;
        private Signalling signalDelegate;
        private final SeqSplitter<S> that;

        public Zipped(IterableSplitter<T> iterableSplitter, SeqSplitter<S> seqSplitter) {
            this.that = seqSplitter;
            Objects.requireNonNull(iterableSplitter);
            this.$outer = iterableSplitter;
            TraversableOnce.Cclass.$init$(this);
            Iterator.Cclass.$init$(this);
            RemainsIterator.Cclass.$init$(this);
            AugmentedIterableIterator.Cclass.$init$(this);
            DelegatedSignalling.Cclass.$init$(this);
            Cclass.$init$(this);
            signalDelegate_$eq(iterableSplitter.signalDelegate());
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $colon$bslash(B b, Function2<Tuple2<T, S>, B, B> function2) {
            Object foldRight;
            foldRight = foldRight(b, function2);
            return (B) foldRight;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $div$colon(B b, Function2<B, Tuple2<T, S>, B> function2) {
            Object foldLeft;
            foldLeft = foldLeft(b, function2);
            return (B) foldLeft;
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> $plus$plus(Function0<GenTraversableOnce<B>> function0) {
            return Iterator.Cclass.$plus$plus(this, function0);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void abort() {
            DelegatedSignalling.Cclass.abort(this);
        }

        @Override // scala.collection.TraversableOnce
        public StringBuilder addString(StringBuilder stringBuilder) {
            return TraversableOnce.Cclass.addString(this, stringBuilder);
        }

        @Override // scala.collection.TraversableOnce
        public StringBuilder addString(StringBuilder stringBuilder, String str) {
            return TraversableOnce.Cclass.addString(this, stringBuilder, str);
        }

        @Override // scala.collection.TraversableOnce
        public StringBuilder addString(StringBuilder stringBuilder, String str, String str2, String str3) {
            return TraversableOnce.Cclass.addString(this, stringBuilder, str, str2, str3);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B aggregate(Function0<B> function0, Function2<B, Tuple2<T, S>, B> function2, Function2<B, B, B> function22) {
            return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <U, PI extends IterableSplitter<U>> IterableSplitter<Tuple2<T, S>>.Appended<U, PI> appendParIterable(PI pi) {
            return Cclass.appendParIterable(this, pi);
        }

        @Override // scala.collection.Iterator
        public BufferedIterator<Tuple2<T, S>> buffered() {
            return Iterator.Cclass.buffered(this);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public String buildString(Function1<Function1<String, BoxedUnit>, BoxedUnit> function1) {
            return Cclass.buildString(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> collect(PartialFunction<Tuple2<T, S>, B> partialFunction) {
            return Iterator.Cclass.collect(this, partialFunction);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> collect2combiner(PartialFunction<Tuple2<T, S>, S> partialFunction, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.collect2combiner(this, partialFunction, combiner);
        }

        @Override // scala.collection.TraversableOnce
        public <B> Option<B> collectFirst(PartialFunction<Tuple2<T, S>, B> partialFunction) {
            return TraversableOnce.Cclass.collectFirst(this, partialFunction);
        }

        @Override // scala.collection.Iterator
        public boolean contains(Object obj) {
            return Iterator.Cclass.contains(this, obj);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, Coll, Bld extends Builder<U, Coll>> Bld copy2builder(Bld bld) {
            return (Bld) AugmentedIterableIterator.Cclass.copy2builder(this, bld);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> void copyToArray(Object obj) {
            TraversableOnce.Cclass.copyToArray(this, obj);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> void copyToArray(Object obj, int i) {
            TraversableOnce.Cclass.copyToArray(this, obj, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <U> void copyToArray(Object obj, int i, int i2) {
            AugmentedIterableIterator.Cclass.copyToArray(this, obj, i, i2);
        }

        @Override // scala.collection.TraversableOnce
        public <B> void copyToBuffer(Buffer<B> buffer) {
            TraversableOnce.Cclass.copyToBuffer(this, buffer);
        }

        @Override // scala.collection.Iterator
        public <B> boolean corresponds(GenTraversableOnce<B> genTraversableOnce, Function2<Tuple2<T, S>, B, Object> function2) {
            return Iterator.Cclass.corresponds(this, genTraversableOnce, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int count(Function1<Tuple2<T, S>, Object> function1) {
            return AugmentedIterableIterator.Cclass.count(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public String debugInformation() {
            return Cclass.debugInformation(this);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<T, S>> drop(int i) {
            return Iterator.Cclass.drop(this, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> drop2combiner(int i, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.drop2combiner(this, i, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<T, S>> dropWhile(Function1<Tuple2<T, S>, Object> function1) {
            return Iterator.Cclass.dropWhile(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public IterableSplitter<Tuple2<T, S>> dup() {
            return scala$collection$parallel$IterableSplitter$Zipped$$$outer().dup().zipParSeq(that());
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<Tuple2<T, S>>, Iterator<Tuple2<T, S>>> duplicate() {
            return Iterator.Cclass.duplicate(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<Tuple2<T, S>, Object> function1) {
            return Iterator.Cclass.exists(this, function1);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<T, S>> filter(Function1<Tuple2<T, S>, Object> function1) {
            return Iterator.Cclass.filter(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> filter2combiner(Function1<Tuple2<T, S>, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.filter2combiner(this, function1, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<T, S>> filterNot(Function1<Tuple2<T, S>, Object> function1) {
            return Iterator.Cclass.filterNot(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> filterNot2combiner(Function1<Tuple2<T, S>, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.filterNot2combiner(this, function1, combiner);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<Tuple2<T, S>> find(Function1<Tuple2<T, S>, Object> function1) {
            return Iterator.Cclass.find(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> flatMap(Function1<Tuple2<T, S>, GenTraversableOnce<B>> function1) {
            return Iterator.Cclass.flatMap(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> flatmap2combiner(Function1<Tuple2<T, S>, GenTraversableOnce<S>> function1, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.flatmap2combiner(this, function1, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U fold(U u, Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.fold(this, u, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B foldLeft(B b, Function2<B, Tuple2<T, S>, B> function2) {
            return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B foldRight(B b, Function2<Tuple2<T, S>, B, B> function2) {
            return (B) TraversableOnce.Cclass.foldRight(this, b, function2);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<Tuple2<T, S>, Object> function1) {
            return Iterator.Cclass.forall(this, function1);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<Tuple2<T, S>, U> function1) {
            Iterator.Cclass.foreach(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<Tuple2<T, S>>.GroupedIterator<B> grouped(int i) {
            return Iterator.Cclass.grouped(this, i);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean hasDefiniteSize() {
            return Iterator.Cclass.hasDefiniteSize(this);
        }

        @Override // scala.collection.Iterator
        public boolean hasNext() {
            return scala$collection$parallel$IterableSplitter$Zipped$$$outer().hasNext() && that().hasNext();
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public int indexFlag() {
            return DelegatedSignalling.Cclass.indexFlag(this);
        }

        @Override // scala.collection.Iterator
        public <B> int indexOf(B b) {
            return Iterator.Cclass.indexOf(this, b);
        }

        @Override // scala.collection.Iterator
        public int indexWhere(Function1<Tuple2<T, S>, Object> function1) {
            return Iterator.Cclass.indexWhere(this, function1);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public boolean isAborted() {
            return DelegatedSignalling.Cclass.isAborted(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public boolean isEmpty() {
            return Iterator.Cclass.isEmpty(this);
        }

        @Override // scala.collection.parallel.RemainsIterator
        public boolean isRemainingCheap() {
            return RemainsIterator.Cclass.isRemainingCheap(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce
        public boolean isTraversableAgain() {
            return Iterator.Cclass.isTraversableAgain(this);
        }

        @Override // scala.collection.Iterator
        public int length() {
            return Iterator.Cclass.length(this);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public <S> IterableSplitter<Tuple2<T, S>>.Mapped<S> map(Function1<Tuple2<T, S>, S> function1) {
            return Cclass.map(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> map2combiner(Function1<Tuple2<T, S>, S> function1, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.map2combiner(this, function1, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Object max(Ordering ordering) {
            return AugmentedIterableIterator.Cclass.max(this, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Object maxBy(Function1 function1, Ordering ordering) {
            return TraversableOnce.Cclass.maxBy(this, function1, ordering);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Object min(Ordering ordering) {
            return AugmentedIterableIterator.Cclass.min(this, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Object minBy(Function1 function1, Ordering ordering) {
            return TraversableOnce.Cclass.minBy(this, function1, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public String mkString() {
            return TraversableOnce.Cclass.mkString(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public String mkString(String str) {
            return TraversableOnce.Cclass.mkString(this, str);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public String mkString(String str, String str2, String str3) {
            return TraversableOnce.Cclass.mkString(this, str, str2, str3);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <U extends IterableSplitter<Tuple2<T, S>>.Taken> U newSliceInternal(U u, int i) {
            return (U) Cclass.newSliceInternal(this, u, i);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public IterableSplitter<Tuple2<T, S>>.Taken newTaken(int i) {
            return Cclass.newTaken(this, i);
        }

        @Override // scala.collection.Iterator
        public Tuple2<T, S> next() {
            return new Tuple2<>(scala$collection$parallel$IterableSplitter$Zipped$$$outer().next(), that().next());
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean nonEmpty() {
            return TraversableOnce.Cclass.nonEmpty(this);
        }

        @Override // scala.collection.Iterator
        public <A1> Iterator<A1> padTo(int i, A1 a1) {
            return Iterator.Cclass.padTo(this, i, a1);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<Tuple2<T, S>>, Iterator<Tuple2<T, S>>> partition(Function1<Tuple2<T, S>, Object> function1) {
            return Iterator.Cclass.partition(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> partition2combiners(Function1<Tuple2<T, S>, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.partition2combiners(this, function1, combiner, combiner2);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> patch(int i, Iterator<B> iterator, int i2) {
            return Iterator.Cclass.patch(this, i, iterator, i2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U product(Numeric<U> numeric) {
            return (U) AugmentedIterableIterator.Cclass.product(this, numeric);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U reduce(Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.reduce(this, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U> U reduceLeft(int i, Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.reduceLeft(this, i, function2);
        }

        @Override // scala.collection.TraversableOnce
        public <B> B reduceLeft(Function2<B, Tuple2<T, S>, B> function2) {
            return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceLeftOption(Function2<B, Tuple2<T, S>, B> function2) {
            return TraversableOnce.Cclass.reduceLeftOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
            return TraversableOnce.Cclass.reduceOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B reduceRight(Function2<Tuple2<T, S>, B, B> function2) {
            return (B) TraversableOnce.Cclass.reduceRight(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceRightOption(Function2<Tuple2<T, S>, B, B> function2) {
            return TraversableOnce.Cclass.reduceRightOption(this, function2);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.parallel.RemainsIterator
        public int remaining() {
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            return richInt$.min$extension(scala$collection$parallel$IterableSplitter$Zipped$$$outer().remaining(), that().remaining());
        }

        @Override // scala.collection.TraversableOnce
        public List<Tuple2<T, S>> reversed() {
            return TraversableOnce.Cclass.reversed(this);
        }

        @Override // scala.collection.Iterator
        public boolean sameElements(Iterator<?> iterator) {
            return Iterator.Cclass.sameElements(this, iterator);
        }

        public /* synthetic */ IterableSplitter scala$collection$parallel$IterableSplitter$Zipped$$$outer() {
            return this.$outer;
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> scanLeft(B b, Function2<B, Tuple2<T, S>, B> function2) {
            return Iterator.Cclass.scanLeft(this, b, function2);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> scanRight(B b, Function2<Tuple2<T, S>, B, B> function2) {
            return Iterator.Cclass.scanRight(this, b, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, A> void scanToArray(U u, Function2<U, U, U> function2, Object obj, int i) {
            AugmentedIterableIterator.Cclass.scanToArray(this, u, function2, obj, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, That> Combiner<U, That> scanToCombiner(int i, U u, Function2<U, U, U> function2, Combiner<U, That> combiner) {
            return AugmentedIterableIterator.Cclass.scanToCombiner(this, i, u, function2, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, That> Combiner<U, That> scanToCombiner(U u, Function2<U, U, U> function2, Combiner<U, That> combiner) {
            return AugmentedIterableIterator.Cclass.scanToCombiner(this, u, function2, combiner);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Iterator<Tuple2<T, S>> seq() {
            return Iterator.Cclass.seq(this);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void setIndexFlag(int i) {
            DelegatedSignalling.Cclass.setIndexFlag(this, i);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void setIndexFlagIfGreater(int i) {
            DelegatedSignalling.Cclass.setIndexFlagIfGreater(this, i);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void setIndexFlagIfLesser(int i) {
            DelegatedSignalling.Cclass.setIndexFlagIfLesser(this, i);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <S> boolean shouldSplitFurther(ParIterable<S> parIterable, int i) {
            return Cclass.shouldSplitFurther(this, parIterable, i);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.generic.DelegatedSignalling
        public Signalling signalDelegate() {
            return this.signalDelegate;
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.generic.DelegatedSignalling
        @TraitSetter
        public void signalDelegate_$eq(Signalling signalling) {
            this.signalDelegate = signalling;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return TraversableOnce.Cclass.size(this);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public IterableSplitter<Tuple2<T, S>> slice(int i, int i2) {
            return Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> slice2combiner(int i, int i2, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.slice2combiner(this, i, i2, combiner);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<Tuple2<T, S>>.GroupedIterator<B> sliding(int i, int i2) {
            return Iterator.Cclass.sliding(this, i, i2);
        }

        @Override // scala.collection.Iterator
        public <B> int sliding$default$2() {
            return Iterator.Cclass.sliding$default$2(this);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<Tuple2<T, S>>, Iterator<Tuple2<T, S>>> span(Function1<Tuple2<T, S>, Object> function1) {
            return Iterator.Cclass.span(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> span2combiners(Function1<Tuple2<T, S>, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.span2combiners(this, function1, combiner, combiner2);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.parallel.Splitter
        public Seq<IterableSplitter<Tuple2<T, S>>> split() {
            Seq<IterableSplitter<T>> split = scala$collection$parallel$IterableSplitter$Zipped$$$outer().split();
            return (Seq) ((TraversableLike) split.zip(that().psplit((Seq) split.map(new IterableSplitter$Zipped$$anonfun$6(this), Seq$.MODULE$.canBuildFrom())), Seq$.MODULE$.canBuildFrom())).map(new IterableSplitter$Zipped$$anonfun$split$3(this), Seq$.MODULE$.canBuildFrom());
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> splitAt2combiners(int i, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.splitAt2combiners(this, i, combiner, combiner2);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public Seq<IterableSplitter<Tuple2<T, S>>> splitWithSignalling() {
            return Cclass.splitWithSignalling(this);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U sum(Numeric<U> numeric) {
            return (U) AugmentedIterableIterator.Cclass.sum(this, numeric);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public int tag() {
            return DelegatedSignalling.Cclass.tag(this);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public IterableSplitter<Tuple2<T, S>> take(int i) {
            return Cclass.take(this, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> take2combiner(int i, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.take2combiner(this, i, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<T, S>> takeWhile(Function1<Tuple2<T, S>, Object> function1) {
            return Iterator.Cclass.takeWhile(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Object> takeWhile2combiner(Function1<Tuple2<T, S>, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.takeWhile2combiner(this, function1, combiner);
        }

        public SeqSplitter<S> that() {
            return this.that;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        /* renamed from: to */
        public <Col> Col mo1to(CanBuildFrom<Nothing$, Tuple2<T, S>, Col> canBuildFrom) {
            return (Col) TraversableOnce.Cclass.m182to(this, canBuildFrom);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Object toArray(ClassTag<B> classTag) {
            return TraversableOnce.Cclass.toArray(this, classTag);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Buffer<B> toBuffer() {
            return TraversableOnce.Cclass.toBuffer(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public IndexedSeq<Tuple2<T, S>> toIndexedSeq() {
            return TraversableOnce.Cclass.toIndexedSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterable<Tuple2<T, S>> toIterable() {
            return TraversableOnce.Cclass.toIterable(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterator<Tuple2<T, S>> toIterator() {
            return Iterator.Cclass.toIterator(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public List<Tuple2<T, S>> toList() {
            return TraversableOnce.Cclass.toList(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <T, U> Map<T, U> toMap(Predef$$less$colon$less<Tuple2<T, S>, Tuple2<T, U>> predef$$less$colon$less) {
            return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
        public Seq<Tuple2<T, S>> toSeq() {
            return TraversableOnce.Cclass.toSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
        public <B> Set<B> toSet() {
            return TraversableOnce.Cclass.toSet(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Stream<Tuple2<T, S>> toStream() {
            return Iterator.Cclass.toStream(this);
        }

        @Override // scala.collection.Iterator
        public String toString() {
            return Iterator.Cclass.toString(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Traversable<Tuple2<T, S>> toTraversable() {
            return Iterator.Cclass.toTraversable(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Vector<Tuple2<T, S>> toVector() {
            return TraversableOnce.Cclass.toVector(this);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<T, S>> withFilter(Function1<Tuple2<T, S>, Object> function1) {
            return Iterator.Cclass.withFilter(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<Tuple2<Tuple2<T, S>, B>> zip(Iterator<B> iterator) {
            return Iterator.Cclass.zip(this, iterator);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, S, That> Combiner<Tuple2<U, S>, That> zip2combiner(RemainsIterator<S> remainsIterator, Combiner<Tuple2<U, S>, That> combiner) {
            return AugmentedIterableIterator.Cclass.zip2combiner(this, remainsIterator, combiner);
        }

        @Override // scala.collection.Iterator
        public <B, A1, B1> Iterator<Tuple2<A1, B1>> zipAll(Iterator<B> iterator, A1 a1, B1 b1) {
            return Iterator.Cclass.zipAll(this, iterator, a1, b1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, S, That> Combiner<Tuple2<U, S>, That> zipAll2combiner(RemainsIterator<S> remainsIterator, U u, S s, Combiner<Tuple2<U, S>, That> combiner) {
            return AugmentedIterableIterator.Cclass.zipAll2combiner(this, remainsIterator, u, s, combiner);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <S, U, R> IterableSplitter<Tuple2<T, S>>.ZippedAll<U, R> zipAllParSeq(SeqSplitter<S> seqSplitter, U u, R r) {
            return Cclass.zipAllParSeq(this, seqSplitter, u, r);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <S> IterableSplitter<Tuple2<T, S>>.Zipped<S> zipParSeq(SeqSplitter<S> seqSplitter) {
            return Cclass.zipParSeq(this, seqSplitter);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<Tuple2<T, S>, Object>> zipWithIndex() {
            return Iterator.Cclass.zipWithIndex(this);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/IterableSplitter$ZippedAll.class */
    public class ZippedAll<U, S> implements IterableSplitter<Tuple2<U, S>> {
        public final /* synthetic */ IterableSplitter $outer;
        private Signalling signalDelegate;
        private final SeqSplitter<S> that;
        private final S thatelem;
        private final U thiselem;

        public ZippedAll(IterableSplitter<T> iterableSplitter, SeqSplitter<S> seqSplitter, U u, S s) {
            this.that = seqSplitter;
            this.thiselem = u;
            this.thatelem = s;
            Objects.requireNonNull(iterableSplitter);
            this.$outer = iterableSplitter;
            TraversableOnce.Cclass.$init$(this);
            Iterator.Cclass.$init$(this);
            RemainsIterator.Cclass.$init$(this);
            AugmentedIterableIterator.Cclass.$init$(this);
            DelegatedSignalling.Cclass.$init$(this);
            Cclass.$init$(this);
            signalDelegate_$eq(iterableSplitter.signalDelegate());
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $colon$bslash(B b, Function2<Tuple2<U, S>, B, B> function2) {
            Object foldRight;
            foldRight = foldRight(b, function2);
            return (B) foldRight;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B $div$colon(B b, Function2<B, Tuple2<U, S>, B> function2) {
            Object foldLeft;
            foldLeft = foldLeft(b, function2);
            return (B) foldLeft;
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> $plus$plus(Function0<GenTraversableOnce<B>> function0) {
            return Iterator.Cclass.$plus$plus(this, function0);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void abort() {
            DelegatedSignalling.Cclass.abort(this);
        }

        @Override // scala.collection.TraversableOnce
        public StringBuilder addString(StringBuilder stringBuilder) {
            return TraversableOnce.Cclass.addString(this, stringBuilder);
        }

        @Override // scala.collection.TraversableOnce
        public StringBuilder addString(StringBuilder stringBuilder, String str) {
            return TraversableOnce.Cclass.addString(this, stringBuilder, str);
        }

        @Override // scala.collection.TraversableOnce
        public StringBuilder addString(StringBuilder stringBuilder, String str, String str2, String str3) {
            return TraversableOnce.Cclass.addString(this, stringBuilder, str, str2, str3);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B aggregate(Function0<B> function0, Function2<B, Tuple2<U, S>, B> function2, Function2<B, B, B> function22) {
            return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <U, PI extends IterableSplitter<U>> IterableSplitter<Tuple2<U, S>>.Appended<U, PI> appendParIterable(PI pi) {
            return Cclass.appendParIterable(this, pi);
        }

        @Override // scala.collection.Iterator
        public BufferedIterator<Tuple2<U, S>> buffered() {
            return Iterator.Cclass.buffered(this);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public String buildString(Function1<Function1<String, BoxedUnit>, BoxedUnit> function1) {
            return Cclass.buildString(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> collect(PartialFunction<Tuple2<U, S>, B> partialFunction) {
            return Iterator.Cclass.collect(this, partialFunction);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> collect2combiner(PartialFunction<Tuple2<U, S>, S> partialFunction, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.collect2combiner(this, partialFunction, combiner);
        }

        @Override // scala.collection.TraversableOnce
        public <B> Option<B> collectFirst(PartialFunction<Tuple2<U, S>, B> partialFunction) {
            return TraversableOnce.Cclass.collectFirst(this, partialFunction);
        }

        @Override // scala.collection.Iterator
        public boolean contains(Object obj) {
            return Iterator.Cclass.contains(this, obj);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, Coll, Bld extends Builder<U, Coll>> Bld copy2builder(Bld bld) {
            return (Bld) AugmentedIterableIterator.Cclass.copy2builder(this, bld);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> void copyToArray(Object obj) {
            TraversableOnce.Cclass.copyToArray(this, obj);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> void copyToArray(Object obj, int i) {
            TraversableOnce.Cclass.copyToArray(this, obj, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <U> void copyToArray(Object obj, int i, int i2) {
            AugmentedIterableIterator.Cclass.copyToArray(this, obj, i, i2);
        }

        @Override // scala.collection.TraversableOnce
        public <B> void copyToBuffer(Buffer<B> buffer) {
            TraversableOnce.Cclass.copyToBuffer(this, buffer);
        }

        @Override // scala.collection.Iterator
        public <B> boolean corresponds(GenTraversableOnce<B> genTraversableOnce, Function2<Tuple2<U, S>, B, Object> function2) {
            return Iterator.Cclass.corresponds(this, genTraversableOnce, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int count(Function1<Tuple2<U, S>, Object> function1) {
            return AugmentedIterableIterator.Cclass.count(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public String debugInformation() {
            return Cclass.debugInformation(this);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<U, S>> drop(int i) {
            return Iterator.Cclass.drop(this, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> drop2combiner(int i, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.drop2combiner(this, i, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<U, S>> dropWhile(Function1<Tuple2<U, S>, Object> function1) {
            return Iterator.Cclass.dropWhile(this, function1);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public IterableSplitter<Tuple2<U, S>> dup() {
            return scala$collection$parallel$IterableSplitter$ZippedAll$$$outer().dup().zipAllParSeq(that(), thiselem(), thatelem());
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<Tuple2<U, S>>, Iterator<Tuple2<U, S>>> duplicate() {
            return Iterator.Cclass.duplicate(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<Tuple2<U, S>, Object> function1) {
            return Iterator.Cclass.exists(this, function1);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<U, S>> filter(Function1<Tuple2<U, S>, Object> function1) {
            return Iterator.Cclass.filter(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> filter2combiner(Function1<Tuple2<U, S>, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.filter2combiner(this, function1, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<U, S>> filterNot(Function1<Tuple2<U, S>, Object> function1) {
            return Iterator.Cclass.filterNot(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> filterNot2combiner(Function1<Tuple2<U, S>, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.filterNot2combiner(this, function1, combiner);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<Tuple2<U, S>> find(Function1<Tuple2<U, S>, Object> function1) {
            return Iterator.Cclass.find(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> flatMap(Function1<Tuple2<U, S>, GenTraversableOnce<B>> function1) {
            return Iterator.Cclass.flatMap(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> flatmap2combiner(Function1<Tuple2<U, S>, GenTraversableOnce<S>> function1, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.flatmap2combiner(this, function1, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U fold(U u, Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.fold(this, u, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> B foldLeft(B b, Function2<B, Tuple2<U, S>, B> function2) {
            return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B foldRight(B b, Function2<Tuple2<U, S>, B, B> function2) {
            return (B) TraversableOnce.Cclass.foldRight(this, b, function2);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<Tuple2<U, S>, Object> function1) {
            return Iterator.Cclass.forall(this, function1);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<Tuple2<U, S>, U> function1) {
            Iterator.Cclass.foreach(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<Tuple2<U, S>>.GroupedIterator<B> grouped(int i) {
            return Iterator.Cclass.grouped(this, i);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean hasDefiniteSize() {
            return Iterator.Cclass.hasDefiniteSize(this);
        }

        @Override // scala.collection.Iterator
        public boolean hasNext() {
            return scala$collection$parallel$IterableSplitter$ZippedAll$$$outer().hasNext() || that().hasNext();
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public int indexFlag() {
            return DelegatedSignalling.Cclass.indexFlag(this);
        }

        @Override // scala.collection.Iterator
        public <B> int indexOf(B b) {
            return Iterator.Cclass.indexOf(this, b);
        }

        @Override // scala.collection.Iterator
        public int indexWhere(Function1<Tuple2<U, S>, Object> function1) {
            return Iterator.Cclass.indexWhere(this, function1);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public boolean isAborted() {
            return DelegatedSignalling.Cclass.isAborted(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public boolean isEmpty() {
            return Iterator.Cclass.isEmpty(this);
        }

        @Override // scala.collection.parallel.RemainsIterator
        public boolean isRemainingCheap() {
            return RemainsIterator.Cclass.isRemainingCheap(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce
        public boolean isTraversableAgain() {
            return Iterator.Cclass.isTraversableAgain(this);
        }

        @Override // scala.collection.Iterator
        public int length() {
            return Iterator.Cclass.length(this);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public <S> IterableSplitter<Tuple2<U, S>>.Mapped<S> map(Function1<Tuple2<U, S>, S> function1) {
            return Cclass.map(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <S, That> Combiner<S, That> map2combiner(Function1<Tuple2<U, S>, S> function1, Combiner<S, That> combiner) {
            return AugmentedIterableIterator.Cclass.map2combiner(this, function1, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Object max(Ordering ordering) {
            return AugmentedIterableIterator.Cclass.max(this, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Object maxBy(Function1 function1, Ordering ordering) {
            return TraversableOnce.Cclass.maxBy(this, function1, ordering);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Object min(Ordering ordering) {
            return AugmentedIterableIterator.Cclass.min(this, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Object minBy(Function1 function1, Ordering ordering) {
            return TraversableOnce.Cclass.minBy(this, function1, ordering);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public String mkString() {
            return TraversableOnce.Cclass.mkString(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public String mkString(String str) {
            return TraversableOnce.Cclass.mkString(this, str);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public String mkString(String str, String str2, String str3) {
            return TraversableOnce.Cclass.mkString(this, str, str2, str3);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public Taken newSliceInternal(Taken taken, int i) {
            return Cclass.newSliceInternal(this, taken, i);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public IterableSplitter<Tuple2<U, S>>.Taken newTaken(int i) {
            return Cclass.newTaken(this, i);
        }

        @Override // scala.collection.Iterator
        public Tuple2<U, S> next() {
            return scala$collection$parallel$IterableSplitter$ZippedAll$$$outer().hasNext() ? that().hasNext() ? new Tuple2<>(scala$collection$parallel$IterableSplitter$ZippedAll$$$outer().next(), that().next()) : new Tuple2<>(scala$collection$parallel$IterableSplitter$ZippedAll$$$outer().next(), thatelem()) : new Tuple2<>(thiselem(), that().next());
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public boolean nonEmpty() {
            return TraversableOnce.Cclass.nonEmpty(this);
        }

        @Override // scala.collection.Iterator
        public <A1> Iterator<A1> padTo(int i, A1 a1) {
            return Iterator.Cclass.padTo(this, i, a1);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<Tuple2<U, S>>, Iterator<Tuple2<U, S>>> partition(Function1<Tuple2<U, S>, Object> function1) {
            return Iterator.Cclass.partition(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> partition2combiners(Function1<Tuple2<U, S>, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.partition2combiners(this, function1, combiner, combiner2);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> patch(int i, Iterator<B> iterator, int i2) {
            return Iterator.Cclass.patch(this, i, iterator, i2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U product(Numeric<U> numeric) {
            return (U) AugmentedIterableIterator.Cclass.product(this, numeric);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U reduce(Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.reduce(this, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U> U reduceLeft(int i, Function2<U, U, U> function2) {
            return (U) AugmentedIterableIterator.Cclass.reduceLeft(this, i, function2);
        }

        @Override // scala.collection.TraversableOnce
        public <B> B reduceLeft(Function2<B, Tuple2<U, S>, B> function2) {
            return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceLeftOption(Function2<B, Tuple2<U, S>, B> function2) {
            return TraversableOnce.Cclass.reduceLeftOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
            return TraversableOnce.Cclass.reduceOption(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <B> B reduceRight(Function2<Tuple2<U, S>, B, B> function2) {
            return (B) TraversableOnce.Cclass.reduceRight(this, function2);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Option<B> reduceRightOption(Function2<Tuple2<U, S>, B, B> function2) {
            return TraversableOnce.Cclass.reduceRightOption(this, function2);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.parallel.RemainsIterator
        public int remaining() {
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            return richInt$.max$extension(scala$collection$parallel$IterableSplitter$ZippedAll$$$outer().remaining(), that().remaining());
        }

        @Override // scala.collection.TraversableOnce
        public List<Tuple2<U, S>> reversed() {
            return TraversableOnce.Cclass.reversed(this);
        }

        @Override // scala.collection.Iterator
        public boolean sameElements(Iterator<?> iterator) {
            return Iterator.Cclass.sameElements(this, iterator);
        }

        public /* synthetic */ IterableSplitter scala$collection$parallel$IterableSplitter$ZippedAll$$$outer() {
            return this.$outer;
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> scanLeft(B b, Function2<B, Tuple2<U, S>, B> function2) {
            return Iterator.Cclass.scanLeft(this, b, function2);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<B> scanRight(B b, Function2<Tuple2<U, S>, B, B> function2) {
            return Iterator.Cclass.scanRight(this, b, function2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, A> void scanToArray(U u, Function2<U, U, U> function2, Object obj, int i) {
            AugmentedIterableIterator.Cclass.scanToArray(this, u, function2, obj, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, That> Combiner<U, That> scanToCombiner(int i, U u, Function2<U, U, U> function2, Combiner<U, That> combiner) {
            return AugmentedIterableIterator.Cclass.scanToCombiner(this, i, u, function2, combiner);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, That> Combiner<U, That> scanToCombiner(U u, Function2<U, U, U> function2, Combiner<U, That> combiner) {
            return AugmentedIterableIterator.Cclass.scanToCombiner(this, u, function2, combiner);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public Iterator<Tuple2<U, S>> seq() {
            return Iterator.Cclass.seq(this);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void setIndexFlag(int i) {
            DelegatedSignalling.Cclass.setIndexFlag(this, i);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void setIndexFlagIfGreater(int i) {
            DelegatedSignalling.Cclass.setIndexFlagIfGreater(this, i);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public void setIndexFlagIfLesser(int i) {
            DelegatedSignalling.Cclass.setIndexFlagIfLesser(this, i);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <S> boolean shouldSplitFurther(ParIterable<S> parIterable, int i) {
            return Cclass.shouldSplitFurther(this, parIterable, i);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.generic.DelegatedSignalling
        public Signalling signalDelegate() {
            return this.signalDelegate;
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.generic.DelegatedSignalling
        @TraitSetter
        public void signalDelegate_$eq(Signalling signalling) {
            this.signalDelegate = signalling;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public int size() {
            return TraversableOnce.Cclass.size(this);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public IterableSplitter<Tuple2<U, S>> slice(int i, int i2) {
            return Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> slice2combiner(int i, int i2, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.slice2combiner(this, i, i2, combiner);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<Tuple2<U, S>>.GroupedIterator<B> sliding(int i, int i2) {
            return Iterator.Cclass.sliding(this, i, i2);
        }

        @Override // scala.collection.Iterator
        public <B> int sliding$default$2() {
            return Iterator.Cclass.sliding$default$2(this);
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<Tuple2<U, S>>, Iterator<Tuple2<U, S>>> span(Function1<Tuple2<U, S>, Object> function1) {
            return Iterator.Cclass.span(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> span2combiners(Function1<Tuple2<U, S>, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.span2combiners(this, function1, combiner, combiner2);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.parallel.Splitter
        public Seq<IterableSplitter<Tuple2<U, S>>> split() {
            int remaining = scala$collection$parallel$IterableSplitter$ZippedAll$$$outer().remaining();
            int remaining2 = that().remaining();
            IterableSplitter scala$collection$parallel$IterableSplitter$ZippedAll$$$outer = scala$collection$parallel$IterableSplitter$ZippedAll$$$outer();
            Appended appended = scala$collection$parallel$IterableSplitter$ZippedAll$$$outer;
            if (remaining < remaining2) {
                appended = scala$collection$parallel$IterableSplitter$ZippedAll$$$outer.appendParIterable(package$.MODULE$.repetition(thiselem(), remaining2 - remaining).splitter());
            }
            return (Seq<IterableSplitter<Tuple2<T, S>>>) appended.zipParSeq(remaining > remaining2 ? that().appendParSeq(package$.MODULE$.repetition(thatelem(), remaining - remaining2).splitter()) : that()).split();
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> splitAt2combiners(int i, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.splitAt2combiners(this, i, combiner, combiner2);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public Seq<IterableSplitter<Tuple2<U, S>>> splitWithSignalling() {
            return Cclass.splitWithSignalling(this);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U sum(Numeric<U> numeric) {
            return (U) AugmentedIterableIterator.Cclass.sum(this, numeric);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public int tag() {
            return DelegatedSignalling.Cclass.tag(this);
        }

        @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public IterableSplitter<Tuple2<U, S>> take(int i) {
            return Cclass.take(this, i);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Combiner<U, This> take2combiner(int i, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.take2combiner(this, i, combiner);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<U, S>> takeWhile(Function1<Tuple2<U, S>, Object> function1) {
            return Iterator.Cclass.takeWhile(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Object> takeWhile2combiner(Function1<Tuple2<U, S>, Object> function1, Combiner<U, This> combiner) {
            return AugmentedIterableIterator.Cclass.takeWhile2combiner(this, function1, combiner);
        }

        public SeqSplitter<S> that() {
            return this.that;
        }

        public S thatelem() {
            return this.thatelem;
        }

        public U thiselem() {
            return this.thiselem;
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        /* renamed from: to */
        public <Col> Col mo1to(CanBuildFrom<Nothing$, Tuple2<U, S>, Col> canBuildFrom) {
            return (Col) TraversableOnce.Cclass.m182to(this, canBuildFrom);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Object toArray(ClassTag<B> classTag) {
            return TraversableOnce.Cclass.toArray(this, classTag);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <B> Buffer<B> toBuffer() {
            return TraversableOnce.Cclass.toBuffer(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public IndexedSeq<Tuple2<U, S>> toIndexedSeq() {
            return TraversableOnce.Cclass.toIndexedSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterable<Tuple2<U, S>> toIterable() {
            return TraversableOnce.Cclass.toIterable(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterator<Tuple2<U, S>> toIterator() {
            return Iterator.Cclass.toIterator(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public List<Tuple2<U, S>> toList() {
            return TraversableOnce.Cclass.toList(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <T, U> Map<T, U> toMap(Predef$$less$colon$less<Tuple2<U, S>, Tuple2<T, U>> predef$$less$colon$less) {
            return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
        public Seq<Tuple2<U, S>> toSeq() {
            return TraversableOnce.Cclass.toSeq(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
        public <B> Set<B> toSet() {
            return TraversableOnce.Cclass.toSet(this);
        }

        @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Stream<Tuple2<U, S>> toStream() {
            return Iterator.Cclass.toStream(this);
        }

        @Override // scala.collection.Iterator
        public String toString() {
            return Iterator.Cclass.toString(this);
        }

        @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Traversable<Tuple2<U, S>> toTraversable() {
            return Iterator.Cclass.toTraversable(this);
        }

        @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public Vector<Tuple2<U, S>> toVector() {
            return TraversableOnce.Cclass.toVector(this);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<U, S>> withFilter(Function1<Tuple2<U, S>, Object> function1) {
            return Iterator.Cclass.withFilter(this, function1);
        }

        @Override // scala.collection.Iterator
        public <B> Iterator<Tuple2<Tuple2<U, S>, B>> zip(Iterator<B> iterator) {
            return Iterator.Cclass.zip(this, iterator);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, S, That> Combiner<Tuple2<U, S>, That> zip2combiner(RemainsIterator<S> remainsIterator, Combiner<Tuple2<U, S>, That> combiner) {
            return AugmentedIterableIterator.Cclass.zip2combiner(this, remainsIterator, combiner);
        }

        @Override // scala.collection.Iterator
        public <B, A1, B1> Iterator<Tuple2<A1, B1>> zipAll(Iterator<B> iterator, A1 a1, B1 b1) {
            return Iterator.Cclass.zipAll(this, iterator, a1, b1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, S, That> Combiner<Tuple2<U, S>, That> zipAll2combiner(RemainsIterator<S> remainsIterator, U u, S s, Combiner<Tuple2<U, S>, That> combiner) {
            return AugmentedIterableIterator.Cclass.zipAll2combiner(this, remainsIterator, u, s, combiner);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <S, U, R> IterableSplitter<Tuple2<U, S>>.ZippedAll<U, R> zipAllParSeq(SeqSplitter<S> seqSplitter, U u, R r) {
            return Cclass.zipAllParSeq(this, seqSplitter, u, r);
        }

        @Override // scala.collection.parallel.IterableSplitter
        public <S> IterableSplitter<Tuple2<U, S>>.Zipped<S> zipParSeq(SeqSplitter<S> seqSplitter) {
            return Cclass.zipParSeq(this, seqSplitter);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<Tuple2<U, S>, Object>> zipWithIndex() {
            return Iterator.Cclass.zipWithIndex(this);
        }
    }

    /* renamed from: scala.collection.parallel.IterableSplitter$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/IterableSplitter$class.class */
    public abstract class Cclass {
        public static void $init$(IterableSplitter iterableSplitter) {
            iterableSplitter.signalDelegate_$eq(IdleSignalling$.MODULE$);
        }

        public static Appended appendParIterable(IterableSplitter iterableSplitter, IterableSplitter iterableSplitter2) {
            return new Appended(iterableSplitter, iterableSplitter2);
        }

        public static String buildString(IterableSplitter iterableSplitter, Function1 function1) {
            ObjectRef create = ObjectRef.create("");
            function1.apply(new IterableSplitter$$anonfun$buildString$1(iterableSplitter, create));
            return (String) create.elem;
        }

        public static String debugInformation(IterableSplitter iterableSplitter) {
            return new StringBuilder().append((Object) "Parallel iterator: ").append(iterableSplitter.getClass()).toString();
        }

        public static Mapped map(IterableSplitter iterableSplitter, Function1 function1) {
            return new Mapped(iterableSplitter, function1);
        }

        public static Taken newSliceInternal(IterableSplitter iterableSplitter, Taken taken, int i) {
            while (i > 0 && taken.hasNext()) {
                taken.next();
                i--;
            }
            return taken;
        }

        public static Taken newTaken(IterableSplitter iterableSplitter, int i) {
            return new Taken(iterableSplitter, i);
        }

        public static boolean shouldSplitFurther(IterableSplitter iterableSplitter, ParIterable parIterable, int i) {
            return iterableSplitter.remaining() > package$.MODULE$.thresholdFromSize(parIterable.size(), i);
        }

        public static IterableSplitter slice(IterableSplitter iterableSplitter, int i, int i2) {
            return iterableSplitter.newSliceInternal(iterableSplitter.newTaken(i2), i);
        }

        public static Seq splitWithSignalling(IterableSplitter iterableSplitter) {
            Seq<IterableSplitter<T>> split = iterableSplitter.split();
            split.foreach(new IterableSplitter$$anonfun$splitWithSignalling$1(iterableSplitter));
            return split;
        }

        public static IterableSplitter take(IterableSplitter iterableSplitter, int i) {
            return iterableSplitter.newTaken(i);
        }

        public static ZippedAll zipAllParSeq(IterableSplitter iterableSplitter, SeqSplitter seqSplitter, Object obj, Object obj2) {
            return new ZippedAll(iterableSplitter, seqSplitter, obj, obj2);
        }

        public static Zipped zipParSeq(IterableSplitter iterableSplitter, SeqSplitter seqSplitter) {
            return new Zipped(iterableSplitter, seqSplitter);
        }
    }

    <U, PI extends IterableSplitter<U>> IterableSplitter<T>.Appended<U, PI> appendParIterable(PI pi);

    String buildString(Function1<Function1<String, BoxedUnit>, BoxedUnit> function1);

    String debugInformation();

    IterableSplitter<T> dup();

    @Override // scala.collection.Iterator
    <S> IterableSplitter<T>.Mapped<S> map(Function1<T, S> function1);

    <U extends IterableSplitter<T>.Taken> U newSliceInternal(U u, int i);

    IterableSplitter<T>.Taken newTaken(int i);

    @Override // scala.collection.parallel.RemainsIterator
    int remaining();

    <S> boolean shouldSplitFurther(ParIterable<S> parIterable, int i);

    Signalling signalDelegate();

    @TraitSetter
    void signalDelegate_$eq(Signalling signalling);

    @Override // scala.collection.Iterator
    IterableSplitter<T> slice(int i, int i2);

    Seq<IterableSplitter<T>> split();

    Seq<IterableSplitter<T>> splitWithSignalling();

    @Override // scala.collection.Iterator
    IterableSplitter<T> take(int i);

    <S, U, R> IterableSplitter<T>.ZippedAll<U, R> zipAllParSeq(SeqSplitter<S> seqSplitter, U u, R r);

    <S> IterableSplitter<T>.Zipped<S> zipParSeq(SeqSplitter<S> seqSplitter);
}
