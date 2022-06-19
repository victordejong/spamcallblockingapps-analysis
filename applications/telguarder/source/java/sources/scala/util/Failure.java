package scala.util;

import scala.Function1;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$$less$colon$less;
import scala.Product;
import scala.Serializable;
import scala.collection.Iterator;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
import scala.util.control.NonFatal$;
@ScalaSignature(bytes = "\u0006\u0001\u0005-h\u0001B\u0001\u0003\u0005\u001e\u0011qAR1jYV\u0014XM\u0003\u0002\u0004\t\u0005!Q\u000f^5m\u0015\u0005)\u0011!B:dC2\f7\u0001A\u000b\u0003\u0011=\u0019B\u0001A\u0005\u001a9A\u0019!bC\u0007\u000e\u0003\tI!\u0001\u0004\u0002\u0003\u0007Q\u0013\u0018\u0010\u0005\u0002\u000f\u001f1\u0001AA\u0002\t\u0001\t\u000b\u0007\u0011CA\u0001U#\t\u0011b\u0003\u0005\u0002\u0014)5\tA!\u0003\u0002\u0016\t\t9aj\u001c;iS:<\u0007CA\n\u0018\u0013\tABAA\u0002B]f\u0004\"a\u0005\u000e\n\u0005m!!a\u0002)s_\u0012,8\r\u001e\t\u0003'uI!A\b\u0003\u0003\u0019M+'/[1mSj\f'\r\\3\t\u0011\u0001\u0002!Q3A\u0005\u0002\u0005\n\u0011\"\u001a=dKB$\u0018n\u001c8\u0016\u0003\t\u0002\"a\t\u0014\u000f\u0005M!\u0013BA\u0013\u0005\u0003\u001d\u0001\u0018mY6bO\u0016L!a\n\u0015\u0003\u0013QC'o\\<bE2,'BA\u0013\u0005\u0011!Q\u0003A!E!\u0002\u0013\u0011\u0013AC3yG\u0016\u0004H/[8oA!)A\u0006\u0001C\u0001[\u00051A(\u001b8jiz\"\"AL\u0018\u0011\u0007)\u0001Q\u0002C\u0003!W\u0001\u0007!\u0005C\u00032\u0001\u0011\u0005!'A\u0005jg\u001a\u000b\u0017\u000e\\;sKV\t1\u0007\u0005\u0002\u0014i%\u0011Q\u0007\u0002\u0002\b\u0005>|G.Z1o\u0011\u00159\u0004\u0001\"\u00013\u0003%I7oU;dG\u0016\u001c8\u000fC\u0003:\u0001\u0011\u0005!(A\u0006sK\u000e|g/\u001a:XSRDWCA\u001e?)\ta\u0014\tE\u0002\u000b\u0017u\u0002\"A\u0004 \u0005\u000b}B$\u0019\u0001!\u0003\u0003U\u000b\"!\u0004\f\t\u000b\tC\u0004\u0019A\"\u0002\u0003\u0019\u0004Ba\u0005##y%\u0011Q\t\u0002\u0002\u0010!\u0006\u0014H/[1m\rVt7\r^5p]\")q\t\u0001C\u0001\u0011\u0006\u0019q-\u001a;\u0016\u00035AQA\u0013\u0001\u0005\u0002-\u000bqA\u001a7bi6\u000b\u0007/\u0006\u0002M\u001fR\u0011Q\n\u0015\t\u0004\u0015-q\u0005C\u0001\bP\t\u0015y\u0014J1\u0001\u0012\u0011\u0015\u0011\u0015\n1\u0001R!\u0011\u0019\"+D'\n\u0005M#!!\u0003$v]\u000e$\u0018n\u001c82\u0011\u0015)\u0006\u0001\"\u0001W\u0003\u001d1G.\u0019;uK:,\"a\u0016.\u0015\u0005a[\u0006c\u0001\u0006\f3B\u0011aB\u0017\u0003\u0006\u007fQ\u0013\r!\u0005\u0005\u00069R\u0003\u001d!X\u0001\u0003KZ\u0004BAX1\u000e1:\u00111cX\u0005\u0003A\u0012\ta\u0001\u0015:fI\u00164\u0017B\u00012d\u0005A!C.Z:tI\r|Gn\u001c8%Y\u0016\u001c8O\u0003\u0002a\t!)Q\r\u0001C\u0001M\u00069am\u001c:fC\u000eDWCA4o)\tA7\u000e\u0005\u0002\u0014S&\u0011!\u000e\u0002\u0002\u0005+:LG\u000fC\u0003CI\u0002\u0007A\u000e\u0005\u0003\u0014%6i\u0007C\u0001\bo\t\u0015yDM1\u0001\u0012\u0011\u0015\u0001\b\u0001\"\u0001r\u0003\ri\u0017\r]\u000b\u0003eV$\"a\u001d<\u0011\u0007)YA\u000f\u0005\u0002\u000fk\u0012)qh\u001cb\u0001#!)!i\u001ca\u0001oB!1CU\u0007u\u0011\u0015I\b\u0001\"\u0001{\u0003\u00191\u0017\u000e\u001c;feR\u0011\u0011b\u001f\u0005\u0006yb\u0004\r!`\u0001\u0002aB!1CU\u00074\u0011\u0019y\b\u0001\"\u0001\u0002\u0002\u00059!/Z2pm\u0016\u0014X\u0003BA\u0002\u0003\u0013!B!!\u0002\u0002\fA!!bCA\u0004!\rq\u0011\u0011\u0002\u0003\u0006\u007fy\u0014\r\u0001\u0011\u0005\b\u0003\u001bq\b\u0019AA\b\u0003=\u0011Xm]2vK\u0016C8-\u001a9uS>t\u0007#B\nEE\u0005\u001d\u0001bBA\n\u0001\u0011\u0005\u0011QC\u0001\u0007M\u0006LG.\u001a3\u0016\u0005\u0005]\u0001c\u0001\u0006\fE!I\u00111\u0004\u0001\u0002\u0002\u0013\u0005\u0011QD\u0001\u0005G>\u0004\u00180\u0006\u0003\u0002 \u0005\u0015B\u0003BA\u0011\u0003O\u0001BA\u0003\u0001\u0002$A\u0019a\"!\n\u0005\rA\tIB1\u0001\u0012\u0011!\u0001\u0013\u0011\u0004I\u0001\u0002\u0004\u0011\u0003\"CA\u0016\u0001E\u0005I\u0011AA\u0017\u00039\u0019w\u000e]=%I\u00164\u0017-\u001e7uIE*B!a\f\u0002FU\u0011\u0011\u0011\u0007\u0016\u0004E\u0005M2FAA\u001b!\u0011\t9$!\u0011\u000e\u0005\u0005e\"\u0002BA\u001e\u0003{\t\u0011\"\u001e8dQ\u0016\u001c7.\u001a3\u000b\u0007\u0005}B!\u0001\u0006b]:|G/\u0019;j_:LA!a\u0011\u0002:\t\tRO\\2iK\u000e\\W\r\u001a,be&\fgnY3\u0005\rA\tIC1\u0001\u0012\u0011%\tI\u0005AA\u0001\n\u0003\nY%A\u0007qe>$Wo\u0019;Qe\u00164\u0017\u000e_\u000b\u0003\u0003\u001b\u0002B!a\u0014\u0002Z5\u0011\u0011\u0011\u000b\u0006\u0005\u0003'\n)&\u0001\u0003mC:<'BAA,\u0003\u0011Q\u0017M^1\n\t\u0005m\u0013\u0011\u000b\u0002\u0007'R\u0014\u0018N\\4\t\u0013\u0005}\u0003!!A\u0005\u0002\u0005\u0005\u0014\u0001\u00049s_\u0012,8\r^!sSRLXCAA2!\r\u0019\u0012QM\u0005\u0004\u0003O\"!aA%oi\"I\u00111\u000e\u0001\u0002\u0002\u0013\u0005\u0011QN\u0001\u000faJ|G-^2u\u000b2,W.\u001a8u)\r1\u0012q\u000e\u0005\u000b\u0003c\nI'!AA\u0002\u0005\r\u0014a\u0001=%c!I\u0011Q\u000f\u0001\u0002\u0002\u0013\u0005\u0013qO\u0001\u0010aJ|G-^2u\u0013R,'/\u0019;peV\u0011\u0011\u0011\u0010\t\u0006\u0003w\n\tIF\u0007\u0003\u0003{R1!a \u0005\u0003)\u0019w\u000e\u001c7fGRLwN\\\u0005\u0005\u0003\u0007\u000biH\u0001\u0005Ji\u0016\u0014\u0018\r^8s\u0011%\t9\tAA\u0001\n\u0003\tI)\u0001\u0005dC:,\u0015/^1m)\r\u0019\u00141\u0012\u0005\n\u0003c\n))!AA\u0002YA\u0011\"a$\u0001\u0003\u0003%\t%!%\u0002\u0011!\f7\u000f[\"pI\u0016$\"!a\u0019\t\u0013\u0005U\u0005!!A\u0005B\u0005]\u0015\u0001\u0003;p'R\u0014\u0018N\\4\u0015\u0005\u00055\u0003\"CAN\u0001\u0005\u0005I\u0011IAO\u0003\u0019)\u0017/^1mgR\u00191'a(\t\u0013\u0005E\u0014\u0011TA\u0001\u0002\u00041r!CAR\u0005\u0005\u0005\t\u0012AAS\u0003\u001d1\u0015-\u001b7ve\u0016\u00042ACAT\r!\t!!!A\t\u0002\u0005%6#BAT\u0003Wc\u0002cA\n\u0002.&\u0019\u0011q\u0016\u0003\u0003\r\u0005s\u0017PU3g\u0011\u001da\u0013q\u0015C\u0001\u0003g#\"!!*\t\u0015\u0005U\u0015qUA\u0001\n\u000b\n9\n\u0003\u0006\u0002:\u0006\u001d\u0016\u0011!CA\u0003w\u000bQ!\u00199qYf,B!!0\u0002DR!\u0011qXAc!\u0011Q\u0001!!1\u0011\u00079\t\u0019\r\u0002\u0004\u0011\u0003o\u0013\r!\u0005\u0005\u0007A\u0005]\u0006\u0019\u0001\u0012\t\u0015\u0005%\u0017qUA\u0001\n\u0003\u000bY-A\u0004v]\u0006\u0004\b\u000f\\=\u0016\t\u00055\u0017Q\u001c\u000b\u0005\u0003\u001f\f)\u000e\u0005\u0003\u0014\u0003#\u0014\u0013bAAj\t\t1q\n\u001d;j_:D!\"a6\u0002H\u0006\u0005\t\u0019AAm\u0003\rAH\u0005\r\t\u0005\u0015\u0001\tY\u000eE\u0002\u000f\u0003;$a\u0001EAd\u0005\u0004\t\u0002BCAq\u0003O\u000b\t\u0011\"\u0003\u0002d\u0006Y!/Z1e%\u0016\u001cx\u000e\u001c<f)\t\t)\u000f\u0005\u0003\u0002P\u0005\u001d\u0018\u0002BAu\u0003#\u0012aa\u00142kK\u000e$\b")
/* loaded from: classes3-dex2jar.jar:scala/util/Failure.class */
public final class Failure<T> extends Try<T> implements Product, Serializable {
    private final Throwable exception;

    public Failure(Throwable th) {
        this.exception = th;
        Product.Cclass.$init$(this);
    }

    public static <T> Failure<T> apply(Throwable th) {
        return Failure$.MODULE$.apply(th);
    }

    public static <T> Option<Throwable> unapply(Failure<T> failure) {
        return Failure$.MODULE$.unapply(failure);
    }

    @Override // scala.Equals
    public boolean canEqual(Object obj) {
        return obj instanceof Failure;
    }

    public <T> Failure<T> copy(Throwable th) {
        return new Failure<>(th);
    }

    public <T> Throwable copy$default$1() {
        return exception();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0044, code lost:
        if ((r0 != null ? r0.equals(r0) : r0 == null) != false) goto L16;
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
            if (r0 == r1) goto L47
            r0 = r5
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof scala.util.Failure
            if (r0 == 0) goto L49
            r0 = r4
            scala.util.Failure r0 = (scala.util.Failure) r0
            r7 = r0
            r0 = r3
            java.lang.Throwable r0 = r0.exception()
            r4 = r0
            r0 = r7
            java.lang.Throwable r0 = r0.exception()
            r7 = r0
            r0 = r4
            if (r0 != 0) goto L2e
            r0 = r7
            if (r0 == 0) goto L37
            goto L3d
        L2e:
            r0 = r4
            r1 = r7
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L3d
        L37:
            r0 = 1
            r8 = r0
            goto L40
        L3d:
            r0 = 0
            r8 = r0
        L40:
            r0 = r5
            r6 = r0
            r0 = r8
            if (r0 == 0) goto L49
        L47:
            r0 = 1
            r6 = r0
        L49:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.util.Failure.equals(java.lang.Object):boolean");
    }

    public Throwable exception() {
        return this.exception;
    }

    @Override // scala.util.Try
    public Try<Throwable> failed() {
        return new Success(exception());
    }

    @Override // scala.util.Try
    public Try<T> filter(Function1<T, Object> function1) {
        return this;
    }

    @Override // scala.util.Try
    public <U> Try<U> flatMap(Function1<T, Try<U>> function1) {
        return this;
    }

    @Override // scala.util.Try
    public <U> Try<U> flatten(Predef$$less$colon$less<T, Try<U>> predef$$less$colon$less) {
        return this;
    }

    @Override // scala.util.Try
    public <U> void foreach(Function1<T, U> function1) {
    }

    @Override // scala.util.Try
    public T get() {
        throw exception();
    }

    public int hashCode() {
        return ScalaRunTime$.MODULE$._hashCode(this);
    }

    @Override // scala.util.Try
    public boolean isFailure() {
        return true;
    }

    @Override // scala.util.Try
    public boolean isSuccess() {
        return false;
    }

    @Override // scala.util.Try
    public <U> Try<U> map(Function1<T, U> function1) {
        return this;
    }

    @Override // scala.Product
    public int productArity() {
        return 1;
    }

    @Override // scala.Product
    public Object productElement(int i) {
        if (i == 0) {
            return exception();
        }
        throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
    }

    @Override // scala.Product
    public Iterator<Object> productIterator() {
        return ScalaRunTime$.MODULE$.typedProductIterator(this);
    }

    @Override // scala.Product
    public String productPrefix() {
        return "Failure";
    }

    @Override // scala.util.Try
    public <U> Try<U> recover(PartialFunction<Throwable, U> partialFunction) {
        Failure<T> failure;
        try {
            failure = partialFunction.isDefinedAt(exception()) ? Try$.MODULE$.apply(new Failure$$anonfun$recover$1(this, partialFunction)) : this;
        } catch (Throwable th) {
            Option<Throwable> unapply = NonFatal$.MODULE$.unapply(th);
            if (unapply.isEmpty()) {
                throw th;
            }
            failure = new Failure<>(unapply.get());
        }
        return failure;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [scala.util.Try] */
    @Override // scala.util.Try
    public <U> Try<U> recoverWith(PartialFunction<Throwable, Try<U>> partialFunction) {
        Failure<T> failure;
        try {
            failure = partialFunction.isDefinedAt(exception()) ? (Try) ((Try<U>) partialFunction.apply(exception())) : this;
        } catch (Throwable th) {
            Option<Throwable> unapply = NonFatal$.MODULE$.unapply(th);
            if (unapply.isEmpty()) {
                throw th;
            }
            failure = new Failure<>(unapply.get());
        }
        return failure;
    }

    public String toString() {
        return ScalaRunTime$.MODULE$._toString(this);
    }
}
