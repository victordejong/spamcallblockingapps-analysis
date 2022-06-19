package scala.collection.parallel;

import scala.Function1;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterator;
import scala.collection.parallel.mutable.ParArray;
import scala.collection.parallel.mutable.ResizableParArrayCombiner;
import scala.collection.parallel.mutable.package$;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u0005=r!B\u0001\u0003\u0011\u0003I\u0011a\u00029bG.\fw-\u001a\u0006\u0003\u0007\u0011\t\u0001\u0002]1sC2dW\r\u001c\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001\u0001\t\u0003\u0015-i\u0011A\u0001\u0004\u0006\u0019\tA\t!\u0004\u0002\ba\u0006\u001c7.Y4f'\tYa\u0002\u0005\u0002\u0010!5\ta!\u0003\u0002\u0012\r\t1\u0011I\\=SK\u001aDQaE\u0006\u0005\u0002Q\ta\u0001P5oSRtD#A\u0005\t\u000fYY!\u0019!C\u0001/\u0005aQ*\u0013(`\r>\u0013vlQ(Q3V\t\u0001\u0004\u0005\u0002\u00103%\u0011!D\u0002\u0002\u0004\u0013:$\bB\u0002\u000f\fA\u0003%\u0001$A\u0007N\u0013:{fi\u0014*`\u0007>\u0003\u0016\f\t\u0005\b=-\u0011\r\u0011\"\u0001\u0018\u0003)\u0019\u0005*R\"L?J\u000bE+\u0012\u0005\u0007A-\u0001\u000b\u0011\u0002\r\u0002\u0017\rCUiQ&`%\u0006#V\t\t\u0005\bE-\u0011\r\u0011\"\u0001$\u0003\u0015\u0019\u0016K\u0015+3+\u0005!\u0003CA\b&\u0013\t1cA\u0001\u0004E_V\u0014G.\u001a\u0005\u0007Q-\u0001\u000b\u0011\u0002\u0013\u0002\rM\u000b&\u000b\u0016\u001a!\u0011\u001dQ3B1A\u0005\u0002]\t1#\u0019<bS2\f'\r\\3Qe>\u001cWm]:peNDa\u0001L\u0006!\u0002\u0013A\u0012\u0001F1wC&d\u0017M\u00197f!J|7-Z:t_J\u001c\b\u0005C\u0003/\u0017\u0011\u0005q&A\tuQJ,7\u000f[8mI\u001a\u0013x.\\*ju\u0016$2\u0001\u0007\u00193\u0011\u0015\tT\u00061\u0001\u0019\u0003\t\u0019(\u0010C\u00034[\u0001\u0007\u0001$\u0001\tqCJ\fG\u000e\\3mSNlG*\u001a<fY\"1Qg\u0003C\u0001\u0005Y\n1\"\u001e8tkB\u0004xN\u001d;fIV\tq\u0007\u0005\u0002\u0010q%\u0011\u0011H\u0002\u0002\b\u001d>$\b.\u001b8h\u0011\u0019Y4\u0002\"\u0001\u0003y\u0005iQO\\:vaB|'\u000f^3e_B$\"aN\u001f\t\u000byR\u0004\u0019A \u0002\u00075\u001cx\r\u0005\u0002A\u0007:\u0011q\"Q\u0005\u0003\u0005\u001a\ta\u0001\u0015:fI\u00164\u0017B\u0001#F\u0005\u0019\u0019FO]5oO*\u0011!I\u0002\u0005\u0007\u000f.!\tA\u0001%\u0002\u0017=,Ho\u001c4c_VtGm\u001d\u000b\u0003o%CQA\u0013$A\u0002a\t1!\u001b3y\u0011\u0019a5\u0002\"\u0001\u0003\u001b\u0006qq-\u001a;UCN\\7+\u001e9q_J$X#\u0001(\u0011\u0005)y\u0015B\u0001)\u0003\u0005-!\u0016m]6TkB\u0004xN\u001d;\t\u000fI[!\u0019!C\u0001\u001b\u0006\u0011B-\u001a4bk2$H+Y:l'V\u0004\bo\u001c:u\u0011\u0019!6\u0002)A\u0005\u001d\u0006\u0019B-\u001a4bk2$H+Y:l'V\u0004\bo\u001c:uA!)ak\u0003C\u0001/\u0006q1/\u001a;UCN\\7+\u001e9q_J$XC\u0001-\\)\rI\u0016m\u0019\t\u00035nc\u0001\u0001B\u0003]+\n\u0007QL\u0001\u0003D_2d\u0017CA\u001c_!\tyq,\u0003\u0002a\r\t\u0019\u0011I\\=\t\u000b\t,\u0006\u0019A-\u0002\u0003\rDQ\u0001Z+A\u00029\u000b\u0011\u0001\u001e\u0004\u0005M.\tqMA\rD_2dWm\u0019;j_:\u001c\b*\u0019<f)>\u0004\u0016M]!se\u0006LXc\u00015loN\u0011QM\u0004\u0005\tE\u0016\u0014\t\u0011)A\u0005UB\u0011!l\u001b\u0003\u0006Y\u0016\u0014\r!\u0018\u0002\u0002\u0007\"Aa.\u001aB\u0001B\u0003-q.A\u0003bg\u001e#x\u000e\u0005\u0003\u0010a*\u0014\u0018BA9\u0007\u0005%1UO\\2uS>t\u0017\u0007E\u0002tiZl\u0011\u0001B\u0005\u0003k\u0012\u0011!cR3o)J\fg/\u001a:tC\ndWm\u00148dKB\u0011!l\u001e\u0003\u0006q\u0016\u0014\r!\u0018\u0002\u0002)\")1#\u001aC\u0001uR\u00111p \u000b\u0003yz\u0004B!`3km6\t1\u0002C\u0003os\u0002\u000fq\u000eC\u0003cs\u0002\u0007!\u000eC\u0004\u0002\u0004\u0015$\t!!\u0002\u0002\u0015Q|\u0007+\u0019:BeJ\f\u00170\u0006\u0002\u0002\bA)\u0011\u0011BA\bm6\u0011\u00111\u0002\u0006\u0004\u0003\u001b\u0011\u0011aB7vi\u0006\u0014G.Z\u0005\u0005\u0003#\tYA\u0001\u0005QCJ\f%O]1z\u0011%\t)bCA\u0001\n\u0007\t9\"A\rD_2dWm\u0019;j_:\u001c\b*\u0019<f)>\u0004\u0016M]!se\u0006LXCBA\r\u0003C\t)\u0003\u0006\u0003\u0002\u001c\u00055B\u0003BA\u000f\u0003O\u0001b!`3\u0002 \u0005\r\u0002c\u0001.\u0002\"\u00111A.a\u0005C\u0002u\u00032AWA\u0013\t\u0019A\u00181\u0003b\u0001;\"9a.a\u0005A\u0004\u0005%\u0002CB\bq\u0003?\tY\u0003\u0005\u0003ti\u0006\r\u0002b\u00022\u0002\u0014\u0001\u0007\u0011q\u0004")
/* renamed from: scala.collection.parallel.package */
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/package.class */
public final class Cpackage {

    /* renamed from: scala.collection.parallel.package$CollectionsHaveToParArray */
    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/package$CollectionsHaveToParArray.class */
    public static class CollectionsHaveToParArray<C, T> {
        private final Function1<C, GenTraversableOnce<T>> asGto;

        /* renamed from: c */
        private final C f1612c;

        public CollectionsHaveToParArray(C c, Function1<C, GenTraversableOnce<T>> function1) {
            this.f1612c = c;
            this.asGto = function1;
        }

        public ParArray<T> toParArray() {
            ParArray<T> parArray;
            GenTraversableOnce<T> apply = this.asGto.apply(this.f1612c);
            if (apply instanceof ParArray) {
                parArray = (ParArray) apply;
            } else {
                Iterator<T> iterator = apply.toIterator();
                ResizableParArrayCombiner<T> apply2 = package$.MODULE$.ParArrayCombiner().apply();
                while (iterator.hasNext()) {
                    apply2.$plus$eq((ResizableParArrayCombiner<T>) iterator.next());
                }
                parArray = apply2.result();
            }
            return parArray;
        }
    }

    public static int CHECK_RATE() {
        return package$.MODULE$.CHECK_RATE();
    }

    public static <C, T> CollectionsHaveToParArray<C, T> CollectionsHaveToParArray(C c, Function1<C, GenTraversableOnce<T>> function1) {
        return package$.MODULE$.CollectionsHaveToParArray(c, function1);
    }

    public static int MIN_FOR_COPY() {
        return package$.MODULE$.MIN_FOR_COPY();
    }

    public static double SQRT2() {
        return package$.MODULE$.SQRT2();
    }

    public static int availableProcessors() {
        return package$.MODULE$.availableProcessors();
    }

    public static TaskSupport defaultTaskSupport() {
        return package$.MODULE$.defaultTaskSupport();
    }

    public static <Coll> Coll setTaskSupport(Coll coll, TaskSupport taskSupport) {
        return (Coll) package$.MODULE$.setTaskSupport(coll, taskSupport);
    }

    public static int thresholdFromSize(int i, int i2) {
        return package$.MODULE$.thresholdFromSize(i, i2);
    }
}
