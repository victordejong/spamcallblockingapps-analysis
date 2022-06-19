package scala.concurrent;

import java.util.concurrent.TimeUnit;
import scala.None$;
import scala.Option;
import scala.Some;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u000114A!\u0001\u0002\u0001\u000f\t91+\u001f8d-\u0006\u0014(BA\u0002\u0005\u0003)\u0019wN\\2veJ,g\u000e\u001e\u0006\u0002\u000b\u0005)1oY1mC\u000e\u0001QC\u0001\u0005\u0015'\t\u0001\u0011\u0002\u0005\u0002\u000b\u00175\tA!\u0003\u0002\r\t\t1\u0011I\\=SK\u001aDQA\u0004\u0001\u0005\u0002=\ta\u0001P5oSRtD#\u0001\t\u0011\u0007E\u0001!#D\u0001\u0003!\t\u0019B\u0003\u0004\u0001\u0005\u000bU\u0001!\u0019\u0001\f\u0003\u0003\u0005\u000b\"a\u0006\u000e\u0011\u0005)A\u0012BA\r\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"AC\u000e\n\u0005q!!aA!os\"9a\u0004\u0001a\u0001\n\u0013y\u0012!C5t\t\u00164\u0017N\\3e+\u0005\u0001\u0003C\u0001\u0006\"\u0013\t\u0011CAA\u0004C_>dW-\u00198\t\u000f\u0011\u0002\u0001\u0019!C\u0005K\u0005i\u0011n\u001d#fM&tW\rZ0%KF$\"AJ\u0015\u0011\u0005)9\u0013B\u0001\u0015\u0005\u0005\u0011)f.\u001b;\t\u000f)\u001a\u0013\u0011!a\u0001A\u0005\u0019\u0001\u0010J\u0019\t\r1\u0002\u0001\u0015)\u0003!\u0003)I7\u000fR3gS:,G\r\t\u0005\b]\u0001\u0001\r\u0011\"\u00030\u0003\u00151\u0018\r\\;f+\u0005\u0001\u0004c\u0001\u00062%%\u0011!\u0007\u0002\u0002\u0007\u001fB$\u0018n\u001c8\t\u000fQ\u0002\u0001\u0019!C\u0005k\u0005Ia/\u00197vK~#S-\u001d\u000b\u0003MYBqAK\u001a\u0002\u0002\u0003\u0007\u0001\u0007\u0003\u00049\u0001\u0001\u0006K\u0001M\u0001\u0007m\u0006dW/\u001a\u0011\t\u000bi\u0002A\u0011A\u001e\u0002\u0007\u001d,G/F\u0001\u0013\u0011\u0015i\u0004\u0001\"\u0003?\u0003Q9\u0018-\u001b;NK\u0006\u001cXO]5oO\u0016c\u0017\r]:fIR\u0011qH\u0011\t\u0003\u0015\u0001K!!\u0011\u0003\u0003\t1{gn\u001a\u0005\u0006\u0007r\u0002\raP\u0001\bi&lWm\\;u\u0011\u0015Q\u0004\u0001\"\u0001F)\t\u0001d\tC\u0003D\t\u0002\u0007q\bC\u0003I\u0001\u0011\u0005\u0011*\u0001\u0003uC.,G#\u0001\n\t\u000b!\u0003A\u0011A&\u0015\u0005Ia\u0005\"B\"K\u0001\u0004y\u0004\"\u0002(\u0001\t\u0003y\u0015aA:fiR\u0011a\u0005\u0015\u0005\u0006#6\u0003\rAE\u0001\u0002q\"\"Qj\u0015,Y!\tQA+\u0003\u0002V\t\tQA-\u001a9sK\u000e\fG/\u001a3\"\u0003]\u000ba'V:fA\u0001\u0004X\u000f\u001e1!S:\u001cH/Z1eY\u0001\n7\u000f\t1tKR\u0004\u0007%[:!a>$XM\u001c;jC2d\u0017\u0010I3se>\u0014X\u0006\u001d:p]\u0016\f\u0013!W\u0001\u0007e9\n\u0004G\f\u0019\t\u000bm\u0003A\u0011\u0001/\u0002\u0007A,H\u000f\u0006\u0002';\")\u0011K\u0017a\u0001%!)q\f\u0001C\u0001?\u0005)\u0011n]*fi\")\u0011\r\u0001C\u0001E\u0006)QO\\:fiR\ta\u0005\u000b\u0003a'\u0012D\u0016%A3\u0002sU\u001bX\r\t1uC.,\u0007\rI5ogR,\u0017\r\u001a\u0017!CN\u0004\u0003-\u001e8tKR\u0004\u0007%[:!a>$XM\u001c;jC2d\u0017\u0010I3se>\u0014X\u0006\u001d:p]\u0016DQa\u001a\u0001\u0005\n!\faa]3u-\u0006dGC\u0001\u0014j\u0011\u0015\tf\r1\u0001\u0013\u0011\u0015Y\u0007\u0001\"\u0003c\u0003!)hn]3u-\u0006d\u0007")
/* loaded from: classes3-dex2jar.jar:scala/concurrent/SyncVar.class */
public class SyncVar<A> {
    private boolean isDefined = false;
    private Option<A> value = None$.MODULE$;

    private boolean isDefined() {
        return this.isDefined;
    }

    private void isDefined_$eq(boolean z) {
        this.isDefined = z;
    }

    private void setVal(A a) {
        synchronized (this) {
            isDefined_$eq(true);
            value_$eq(new Some(a));
            notifyAll();
        }
    }

    private void unsetVal() {
        synchronized (this) {
            isDefined_$eq(false);
            value_$eq(None$.MODULE$);
            notifyAll();
        }
    }

    private Option<A> value() {
        return this.value;
    }

    private void value_$eq(Option<A> option) {
        this.value = option;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    private long waitMeasuringElapsed(long j) {
        char c;
        if (j <= 0) {
            c = 0;
        } else {
            long nanoTime = System.nanoTime();
            wait(j);
            long nanoTime2 = System.nanoTime() - nanoTime;
            c = nanoTime2 < 0 ? (char) 0 : TimeUnit.NANOSECONDS.toMillis(nanoTime2);
        }
        return c;
    }

    public A get() {
        A a;
        synchronized (this) {
            while (!isDefined()) {
                wait();
            }
            a = value().get();
        }
        return a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public Option<A> get(long j) {
        Option<A> value;
        ?? r7 = j;
        synchronized (this) {
            while (!isDefined() && r7 > 0) {
                r7 -= waitMeasuringElapsed(r7);
            }
            value = value();
        }
        return value;
    }

    public boolean isSet() {
        boolean isDefined;
        synchronized (this) {
            isDefined = isDefined();
        }
        return isDefined;
    }

    public void put(A a) {
        synchronized (this) {
            while (isDefined()) {
                wait();
            }
            setVal(a);
        }
    }

    public void set(A a) {
        setVal(a);
    }

    public A take() {
        A a;
        synchronized (this) {
            a = get();
            unsetVal();
        }
        return a;
    }

    public A take(long j) {
        A a;
        synchronized (this) {
            a = get(j).get();
            unsetVal();
        }
        return a;
    }

    public void unset() {
        synchronized (this) {
            isDefined_$eq(false);
            value_$eq(None$.MODULE$);
            notifyAll();
        }
    }
}
