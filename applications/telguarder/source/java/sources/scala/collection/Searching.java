package scala.collection;

import scala.Product;
import scala.Serializable;
import scala.collection.generic.IsSeqLike;
import scala.math.Ordering;
import scala.math.package$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
import scala.runtime.Statics;
@ScalaSignature(bytes = "\u0006\u0001\tms!B\u0001\u0003\u0011\u00039\u0011!C*fCJ\u001c\u0007.\u001b8h\u0015\t\u0019A!\u0001\u0006d_2dWm\u0019;j_:T\u0011!B\u0001\u0006g\u000e\fG.Y\u0002\u0001!\tA\u0011\"D\u0001\u0003\r\u0015Q!\u0001#\u0001\f\u0005%\u0019V-\u0019:dQ&twm\u0005\u0002\n\u0019A\u0011QBD\u0007\u0002\t%\u0011q\u0002\u0002\u0002\u0007\u0003:L(+\u001a4\t\u000bEIA\u0011\u0001\n\u0002\rqJg.\u001b;?)\u00059a!\u0002\u000b\n\u0003C)\"\u0001D*fCJ\u001c\u0007NU3tk2$8CA\n\r\u0011\u0015\t2\u0003\"\u0001\u0018)\u0005A\u0002CA\r\u0014\u001b\u0005I\u0001\"B\u000e\u0014\r\u0003a\u0012AD5og\u0016\u0014H/[8o!>Lg\u000e^\u000b\u0002;A\u0011QBH\u0005\u0003?\u0011\u00111!\u00138uS\r\u0019\u0012\u0005\u001d\u0004\u0005E%\u00015EA\u0003G_VtGm\u0005\u0003\"1\u0011:\u0003CA\u0007&\u0013\t1CAA\u0004Qe>$Wo\u0019;\u0011\u00055A\u0013BA\u0015\u0005\u00051\u0019VM]5bY&T\u0018M\u00197f\u0011!Y\u0013E!f\u0001\n\u0003a\u0012A\u00034pk:$\u0017J\u001c3fq\"AQ&\tB\tB\u0003%Q$A\u0006g_VtG-\u00138eKb\u0004\u0003\"B\t\"\t\u0003yCC\u0001\u00192!\tI\u0012\u0005C\u0003,]\u0001\u0007Q\u0004C\u0003\u001cC\u0011\u0005C\u0004C\u00045C\u0005\u0005I\u0011A\u001b\u0002\t\r|\u0007/\u001f\u000b\u0003aYBqaK\u001a\u0011\u0002\u0003\u0007Q\u0004C\u00049CE\u0005I\u0011A\u001d\u0002\u001d\r|\u0007/\u001f\u0013eK\u001a\fW\u000f\u001c;%cU\t!H\u000b\u0002\u001ew-\nA\b\u0005\u0002>\u00056\taH\u0003\u0002@\u0001\u0006IQO\\2iK\u000e\\W\r\u001a\u0006\u0003\u0003\u0012\t!\"\u00198o_R\fG/[8o\u0013\t\u0019eHA\tv]\u000eDWmY6fIZ\u000b'/[1oG\u0016Dq!R\u0011\u0002\u0002\u0013\u0005c)A\u0007qe>$Wo\u0019;Qe\u00164\u0017\u000e_\u000b\u0002\u000fB\u0011\u0001*T\u0007\u0002\u0013*\u0011!jS\u0001\u0005Y\u0006twMC\u0001M\u0003\u0011Q\u0017M^1\n\u00059K%AB*ue&tw\rC\u0004QC\u0005\u0005I\u0011\u0001\u000f\u0002\u0019A\u0014x\u000eZ;di\u0006\u0013\u0018\u000e^=\t\u000fI\u000b\u0013\u0011!C\u0001'\u0006q\u0001O]8ek\u000e$X\t\\3nK:$HC\u0001+X!\tiQ+\u0003\u0002W\t\t\u0019\u0011I\\=\t\u000fa\u000b\u0016\u0011!a\u0001;\u0005\u0019\u0001\u0010J\u0019\t\u000fi\u000b\u0013\u0011!C!7\u0006y\u0001O]8ek\u000e$\u0018\n^3sCR|'/F\u0001]!\rAQ\fV\u0005\u0003=\n\u0011\u0001\"\u0013;fe\u0006$xN\u001d\u0005\bA\u0006\n\t\u0011\"\u0001b\u0003!\u0019\u0017M\\#rk\u0006dGC\u00012f!\ti1-\u0003\u0002e\t\t9!i\\8mK\u0006t\u0007b\u0002-`\u0003\u0003\u0005\r\u0001\u0016\u0005\bO\u0006\n\t\u0011\"\u0011i\u0003!A\u0017m\u001d5D_\u0012,G#A\u000f\t\u000f)\f\u0013\u0011!C!W\u0006AAo\\*ue&tw\rF\u0001H\u0011\u001di\u0017%!A\u0005B9\fa!Z9vC2\u001cHC\u00012p\u0011\u001dAF.!AA\u0002Q3A!]\u0005Ae\nq\u0011J\\:feRLwN\u001c)pS:$8\u0003\u00029\u0019I\u001dB\u0001b\u00079\u0003\u0016\u0004%\t\u0001\b\u0005\tkB\u0014\t\u0012)A\u0005;\u0005y\u0011N\\:feRLwN\u001c)pS:$\b\u0005C\u0003\u0012a\u0012\u0005q\u000f\u0006\u0002ysB\u0011\u0011\u0004\u001d\u0005\u00067Y\u0004\r!\b\u0005\biA\f\t\u0011\"\u0001|)\tAH\u0010C\u0004\u001cuB\u0005\t\u0019A\u000f\t\u000fa\u0002\u0018\u0013!C\u0001s!9Q\t]A\u0001\n\u00032\u0005b\u0002)q\u0003\u0003%\t\u0001\b\u0005\t%B\f\t\u0011\"\u0001\u0002\u0004Q\u0019A+!\u0002\t\u0011a\u000b\t!!AA\u0002uAqA\u00179\u0002\u0002\u0013\u00053\f\u0003\u0005aa\u0006\u0005I\u0011AA\u0006)\r\u0011\u0017Q\u0002\u0005\t1\u0006%\u0011\u0011!a\u0001)\"9q\r]A\u0001\n\u0003B\u0007b\u00026q\u0003\u0003%\te\u001b\u0005\t[B\f\t\u0011\"\u0011\u0002\u0016Q\u0019!-a\u0006\t\u0011a\u000b\u0019\"!AA\u0002Q;\u0011\"a\u0007\n\u0003\u0003E\t!!\b\u0002\u000b\u0019{WO\u001c3\u0011\u0007e\tyB\u0002\u0005#\u0013\u0005\u0005\t\u0012AA\u0011'\u0015\ty\"a\t(!\u0019\t)#a\u000b\u001ea5\u0011\u0011q\u0005\u0006\u0004\u0003S!\u0011a\u0002:v]RLW.Z\u0005\u0005\u0003[\t9CA\tBEN$(/Y2u\rVt7\r^5p]FBq!EA\u0010\t\u0003\t\t\u0004\u0006\u0002\u0002\u001e!A!.a\b\u0002\u0002\u0013\u00153\u000e\u0003\u0006\u00028\u0005}\u0011\u0011!CA\u0003s\tQ!\u00199qYf$2\u0001MA\u001e\u0011\u0019Y\u0013Q\u0007a\u0001;!Q\u0011qHA\u0010\u0003\u0003%\t)!\u0011\u0002\u000fUt\u0017\r\u001d9msR!\u00111IA%!\u0011i\u0011QI\u000f\n\u0007\u0005\u001dCA\u0001\u0004PaRLwN\u001c\u0005\n\u0003\u0017\ni$!AA\u0002A\n1\u0001\u001f\u00131\u0011)\ty%a\b\u0002\u0002\u0013%\u0011\u0011K\u0001\fe\u0016\fGMU3t_24X\r\u0006\u0002\u0002TA\u0019\u0001*!\u0016\n\u0007\u0005]\u0013J\u0001\u0004PE*,7\r^\u0004\n\u00037J\u0011\u0011!E\u0001\u0003;\na\"\u00138tKJ$\u0018n\u001c8Q_&tG\u000fE\u0002\u001a\u0003?2\u0001\"]\u0005\u0002\u0002#\u0005\u0011\u0011M\n\u0006\u0003?\n\u0019g\n\t\u0007\u0003K\tY#\b=\t\u000fE\ty\u0006\"\u0001\u0002hQ\u0011\u0011Q\f\u0005\tU\u0006}\u0013\u0011!C#W\"Q\u0011qGA0\u0003\u0003%\t)!\u001c\u0015\u0007a\fy\u0007\u0003\u0004\u001c\u0003W\u0002\r!\b\u0005\u000b\u0003\u007f\ty&!A\u0005\u0002\u0006MD\u0003BA\"\u0003kB\u0011\"a\u0013\u0002r\u0005\u0005\t\u0019\u0001=\t\u0015\u0005=\u0013qLA\u0001\n\u0013\t\tF\u0002\u0004\u0002|%\u0001\u0011Q\u0010\u0002\u000b'\u0016\f'o\u00195J[BdWCBA@\u0003#\u000byjE\u0002\u0002z1A1\"a!\u0002z\t\u0015\r\u0011\"\u0001\u0002\u0006\u0006!1m\u001c7m+\t\t9\tE\u0004\t\u0003\u0013\u000bi)!(\n\u0007\u0005-%AA\u0004TKFd\u0015n[3\u0011\t\u0005=\u0015\u0011\u0013\u0007\u0001\t!\t\u0019*!\u001fC\u0002\u0005U%!A!\u0012\u0007\u0005]E\u000bE\u0002\u000e\u00033K1!a'\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004B!a$\u0002 \u0012A\u0011\u0011UA=\u0005\u0004\t)J\u0001\u0003SKB\u0014\bbCAS\u0003s\u0012\t\u0011)A\u0005\u0003\u000f\u000bQaY8mY\u0002Bq!EA=\t\u0003\tI\u000b\u0006\u0003\u0002,\u00065\u0006cB\r\u0002z\u00055\u0015Q\u0014\u0005\t\u0003\u0007\u000b9\u000b1\u0001\u0002\b\"A\u0011\u0011WA=\t\u000b\t\u0019,\u0001\u0004tK\u0006\u00148\r[\u000b\u0005\u0003k\u000bY\r\u0006\u0003\u00028\u0006EGc\u0001\r\u0002:\"A\u00111XAX\u0001\b\ti,A\u0002pe\u0012\u0004b!a0\u0002F\u0006%WBAAa\u0015\r\t\u0019\rB\u0001\u0005[\u0006$\b.\u0003\u0003\u0002H\u0006\u0005'\u0001C(sI\u0016\u0014\u0018N\\4\u0011\t\u0005=\u00151\u001a\u0003\t\u0003\u001b\fyK1\u0001\u0002P\n\t!)E\u0002\u0002\u000eRC\u0001\"a5\u00020\u0002\u0007\u0011\u0011Z\u0001\u0005K2,W\u000e\u0003\u0005\u00022\u0006eDQAAl+\u0011\tI.a9\u0015\u0011\u0005m\u0017Q]At\u0003W$2\u0001GAo\u0011!\tY,!6A\u0004\u0005}\u0007CBA`\u0003\u000b\f\t\u000f\u0005\u0003\u0002\u0010\u0006\rH\u0001CAg\u0003+\u0014\r!a4\t\u0011\u0005M\u0017Q\u001ba\u0001\u0003CDq!!;\u0002V\u0002\u0007Q$\u0001\u0003ge>l\u0007bBAw\u0003+\u0004\r!H\u0001\u0003i>D\u0001\"!=\u0002z\u0011%\u00111_\u0001\rE&t\u0017M]=TK\u0006\u00148\r[\u000b\u0005\u0003k\fy\u0010\u0006\u0005\u0002x\n\u0005!1\u0001B\u0003)\rA\u0012\u0011 \u0005\t\u0003w\u000by\u000fq\u0001\u0002|B1\u0011qXAc\u0003{\u0004B!a$\u0002��\u0012A\u0011QZAx\u0005\u0004\ty\r\u0003\u0005\u0002T\u0006=\b\u0019AA\u007f\u0011\u001d\tI/a<A\u0002uAq!!<\u0002p\u0002\u0007Q\u0004\u000b\u0003\u0002p\n%\u0001\u0003\u0002B\u0006\u0005\u001bi\u0011\u0001Q\u0005\u0004\u0005\u001f\u0001%a\u0002;bS2\u0014Xm\u0019\u0005\t\u0005'\tI\b\"\u0003\u0003\u0016\u0005aA.\u001b8fCJ\u001cV-\u0019:dQV!!q\u0003B\u0011)!\u0011IBa\t\u0003.\t=Bc\u0001\r\u0003\u001c!A\u00111\u0018B\t\u0001\b\u0011i\u0002\u0005\u0004\u0002@\u0006\u0015'q\u0004\t\u0005\u0003\u001f\u0013\t\u0003\u0002\u0005\u0002N\nE!\u0019AAh\u0011!\u0011)C!\u0005A\u0002\t\u001d\u0012!A2\u0011\u000f!\u0011I#!$\u0002\u001e&\u0019!1\u0006\u0002\u0003\u000fM+\u0017OV5fo\"A\u00111\u001bB\t\u0001\u0004\u0011y\u0002C\u0004\u00032\tE\u0001\u0019A\u000f\u0002\r=4gm]3u\u0011\u001d\t\t,\u0003C\u0002\u0005k)bAa\u000e\u0003T\teC\u0003\u0002B\u001d\u0005/\"BAa\u000f\u0003BA9\u0011$!\u001f\u0003>\tE\u0003\u0003\u0002B \u0005+rA!a$\u0003B!A!1\tB\u001a\u0001\b\u0011)%\u0001\u0002geB1!q\tB'\u0005#j!A!\u0013\u000b\u0007\t-#!A\u0004hK:,'/[2\n\t\t=#\u0011\n\u0002\n\u0013N\u001cV-\u001d'jW\u0016\u0004B!a$\u0003T\u0011A\u0011\u0011\u0015B\u001a\u0005\u0004\t)*\u0003\u0003\u0002\u0014\n5\u0003\u0002CAB\u0005g\u0001\rA!\u0015\u0005\u0011\u0005M%1\u0007b\u0001\u0003+\u0003")
/* loaded from: classes3-dex2jar.jar:scala/collection/Searching.class */
public final class Searching {

    /* loaded from: classes3-dex2jar.jar:scala/collection/Searching$Found.class */
    public static class Found extends SearchResult implements Product, Serializable {
        private final int foundIndex;

        public Found(int i) {
            this.foundIndex = i;
            Product.Cclass.$init$(this);
        }

        @Override // scala.Equals
        public boolean canEqual(Object obj) {
            return obj instanceof Found;
        }

        public Found copy(int i) {
            return new Found(i);
        }

        public int copy$default$1() {
            return foundIndex();
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0035, code lost:
            if ((foundIndex() == r0.foundIndex() && r0.canEqual(r3)) != false) goto L14;
         */
        @Override // scala.Equals
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = 0
                r5 = r0
                r0 = r3
                r1 = r4
                if (r0 == r1) goto L38
                r0 = r5
                r6 = r0
                r0 = r4
                boolean r0 = r0 instanceof scala.collection.Searching.Found
                if (r0 == 0) goto L3a
                r0 = r4
                scala.collection.Searching$Found r0 = (scala.collection.Searching.Found) r0
                r4 = r0
                r0 = r3
                int r0 = r0.foundIndex()
                r1 = r4
                int r1 = r1.foundIndex()
                if (r0 != r1) goto L2e
                r0 = r4
                r1 = r3
                boolean r0 = r0.canEqual(r1)
                if (r0 == 0) goto L2e
                r0 = 1
                r7 = r0
                goto L31
            L2e:
                r0 = 0
                r7 = r0
            L31:
                r0 = r5
                r6 = r0
                r0 = r7
                if (r0 == 0) goto L3a
            L38:
                r0 = 1
                r6 = r0
            L3a:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.Searching.Found.equals(java.lang.Object):boolean");
        }

        public int foundIndex() {
            return this.foundIndex;
        }

        public int hashCode() {
            return Statics.finalizeHash(Statics.mix(-889275714, foundIndex()), 1);
        }

        @Override // scala.collection.Searching.SearchResult
        public int insertionPoint() {
            return foundIndex();
        }

        @Override // scala.Product
        public int productArity() {
            return 1;
        }

        @Override // scala.Product
        public Object productElement(int i) {
            if (i == 0) {
                return BoxesRunTime.boxToInteger(foundIndex());
            }
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }

        @Override // scala.Product
        public Iterator<Object> productIterator() {
            return ScalaRunTime$.MODULE$.typedProductIterator(this);
        }

        @Override // scala.Product
        public String productPrefix() {
            return "Found";
        }

        public String toString() {
            return ScalaRunTime$.MODULE$._toString(this);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/Searching$InsertionPoint.class */
    public static class InsertionPoint extends SearchResult implements Product, Serializable {
        private final int insertionPoint;

        public InsertionPoint(int i) {
            this.insertionPoint = i;
            Product.Cclass.$init$(this);
        }

        @Override // scala.Equals
        public boolean canEqual(Object obj) {
            return obj instanceof InsertionPoint;
        }

        public InsertionPoint copy(int i) {
            return new InsertionPoint(i);
        }

        public int copy$default$1() {
            return insertionPoint();
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0035, code lost:
            if ((insertionPoint() == r0.insertionPoint() && r0.canEqual(r3)) != false) goto L14;
         */
        @Override // scala.Equals
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = 0
                r5 = r0
                r0 = r3
                r1 = r4
                if (r0 == r1) goto L38
                r0 = r5
                r6 = r0
                r0 = r4
                boolean r0 = r0 instanceof scala.collection.Searching.InsertionPoint
                if (r0 == 0) goto L3a
                r0 = r4
                scala.collection.Searching$InsertionPoint r0 = (scala.collection.Searching.InsertionPoint) r0
                r4 = r0
                r0 = r3
                int r0 = r0.insertionPoint()
                r1 = r4
                int r1 = r1.insertionPoint()
                if (r0 != r1) goto L2e
                r0 = r4
                r1 = r3
                boolean r0 = r0.canEqual(r1)
                if (r0 == 0) goto L2e
                r0 = 1
                r7 = r0
                goto L31
            L2e:
                r0 = 0
                r7 = r0
            L31:
                r0 = r5
                r6 = r0
                r0 = r7
                if (r0 == 0) goto L3a
            L38:
                r0 = 1
                r6 = r0
            L3a:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: scala.collection.Searching.InsertionPoint.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            return Statics.finalizeHash(Statics.mix(-889275714, insertionPoint()), 1);
        }

        @Override // scala.collection.Searching.SearchResult
        public int insertionPoint() {
            return this.insertionPoint;
        }

        @Override // scala.Product
        public int productArity() {
            return 1;
        }

        @Override // scala.Product
        public Object productElement(int i) {
            if (i == 0) {
                return BoxesRunTime.boxToInteger(insertionPoint());
            }
            throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
        }

        @Override // scala.Product
        public Iterator<Object> productIterator() {
            return ScalaRunTime$.MODULE$.typedProductIterator(this);
        }

        @Override // scala.Product
        public String productPrefix() {
            return "InsertionPoint";
        }

        public String toString() {
            return ScalaRunTime$.MODULE$._toString(this);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/Searching$SearchImpl.class */
    public static class SearchImpl<A, Repr> {
        private final SeqLike<A, Repr> coll;

        public SearchImpl(SeqLike<A, Repr> seqLike) {
            this.coll = seqLike;
        }

        private <B> SearchResult binarySearch(B b, int i, int i2, Ordering<B> ordering) {
            SearchResult insertionPoint;
            while (true) {
                if (i2 == i) {
                    insertionPoint = new InsertionPoint(i);
                    break;
                }
                int i3 = (((i2 - i) - 1) / 2) + i;
                int signum = package$.MODULE$.signum(ordering.compare(b, coll().apply(i3)));
                if (signum == -1) {
                    i2 = i3;
                } else if (signum != 1) {
                    insertionPoint = new Found(i3);
                    break;
                } else {
                    i = i3 + 1;
                }
            }
            return insertionPoint;
        }

        private <B> SearchResult linearSearch(SeqView<A, Repr> seqView, B b, int i, Ordering<B> ordering) {
            Iterator<A> it = seqView.iterator();
            while (it.hasNext()) {
                A next = it.next();
                if (ordering.equiv(b, next)) {
                    return new Found(i);
                }
                if (ordering.mo36lt(b, next)) {
                    return new InsertionPoint(i);
                }
                i++;
            }
            return new InsertionPoint(i);
        }

        public SeqLike<A, Repr> coll() {
            return this.coll;
        }

        public final <B> SearchResult search(B b, int i, int i2, Ordering<B> ordering) {
            return coll() instanceof IndexedSeq ? binarySearch(b, i, i2, ordering) : linearSearch(coll().view(i, i2), b, i, ordering);
        }

        public final <B> SearchResult search(B b, Ordering<B> ordering) {
            return coll() instanceof IndexedSeq ? binarySearch(b, 0, coll().length(), ordering) : linearSearch(coll().view(), b, 0, ordering);
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/Searching$SearchResult.class */
    public static abstract class SearchResult {
        public abstract int insertionPoint();
    }

    public static <Repr, A> SearchImpl<Object, Repr> search(Repr repr, IsSeqLike<Repr> isSeqLike) {
        return Searching$.MODULE$.search(repr, isSeqLike);
    }
}
