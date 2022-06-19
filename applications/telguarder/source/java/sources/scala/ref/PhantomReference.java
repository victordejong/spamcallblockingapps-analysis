package scala.ref;

import scala.Function0;
import scala.Option;
import scala.Proxy;
import scala.ref.Reference;
import scala.ref.ReferenceWrapper;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001q2A!\u0001\u0002\u0001\u000f\t\u0001\u0002\u000b[1oi>l'+\u001a4fe\u0016t7-\u001a\u0006\u0003\u0007\u0011\t1A]3g\u0015\u0005)\u0011!B:dC2\f7\u0001A\u000b\u0003\u0011M\u00192\u0001A\u0005\u000e!\tQ1\"D\u0001\u0005\u0013\taAA\u0001\u0004B]f\u0014VM\u001a\t\u0004\u001d=\tR\"\u0001\u0002\n\u0005A\u0011!\u0001\u0005*fM\u0016\u0014XM\\2f/J\f\u0007\u000f]3s!\t\u00112\u0003\u0004\u0001\u0005\rQ\u0001AQ1\u0001\u0016\u0005\u0005!\u0016C\u0001\f\n!\tQq#\u0003\u0002\u0019\t\t9aj\u001c;iS:<\u0007\u0002\u0003\u000e\u0001\u0005\u0003\u0005\u000b\u0011B\t\u0002\u000bY\fG.^3\t\u0011q\u0001!\u0011!Q\u0001\nu\tQ!];fk\u0016\u00042A\u0004\u0010\u0012\u0013\ty\"A\u0001\bSK\u001a,'/\u001a8dKF+X-^3\t\u000b\u0005\u0002A\u0011\u0001\u0012\u0002\rqJg.\u001b;?)\r\u0019C%\n\t\u0004\u001d\u0001\t\u0002\"\u0002\u000e!\u0001\u0004\t\u0002\"\u0002\u000f!\u0001\u0004i\u0002bB\u0014\u0001\u0005\u0004%\t\u0001K\u0001\u000bk:$WM\u001d7zS:<W#A\u00151\u0005)\u001a\u0004cA\u00162e5\tAF\u0003\u0002\u0004[)\u0011afL\u0001\u0005Y\u0006twMC\u00011\u0003\u0011Q\u0017M^1\n\u0005\u0005a\u0003C\u0001\n4\t%!T'!A\u0001\u0002\u000b\u00051HA\u0002`IEBaA\u000e\u0001!\u0002\u00139\u0014aC;oI\u0016\u0014H._5oO\u0002\u0002$\u0001\u000f\u001e\u0011\u0007-\n\u0014\b\u0005\u0002\u0013u\u0011IA'NA\u0001\u0002\u0003\u0015\taO\t\u0003-E\u0001")
/* loaded from: classes3-dex2jar.jar:scala/ref/PhantomReference.class */
public class PhantomReference<T> implements ReferenceWrapper<T> {
    private final java.lang.ref.PhantomReference<? extends T> underlying;

    public PhantomReference(T t, ReferenceQueue<T> referenceQueue) {
        Function0.Cclass.$init$(this);
        Reference.Cclass.$init$(this);
        Proxy.Cclass.$init$(this);
        ReferenceWrapper.Cclass.$init$(this);
        this.underlying = new PhantomReferenceWithWrapper(t, referenceQueue, this);
    }

    @Override // scala.ref.ReferenceWrapper, scala.ref.Reference, scala.Function0
    public T apply() {
        return (T) ReferenceWrapper.Cclass.apply(this);
    }

    @Override // scala.Function0
    public byte apply$mcB$sp() {
        byte unboxToByte;
        unboxToByte = BoxesRunTime.unboxToByte(apply());
        return unboxToByte;
    }

    @Override // scala.Function0
    public char apply$mcC$sp() {
        char unboxToChar;
        unboxToChar = BoxesRunTime.unboxToChar(apply());
        return unboxToChar;
    }

    @Override // scala.Function0
    public double apply$mcD$sp() {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply());
        return unboxToDouble;
    }

    @Override // scala.Function0
    public float apply$mcF$sp() {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply());
        return unboxToFloat;
    }

    @Override // scala.Function0
    public int apply$mcI$sp() {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply());
        return unboxToInt;
    }

    @Override // scala.Function0
    public long apply$mcJ$sp() {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply());
        return unboxToLong;
    }

    @Override // scala.Function0
    public short apply$mcS$sp() {
        short unboxToShort;
        unboxToShort = BoxesRunTime.unboxToShort(apply());
        return unboxToShort;
    }

    @Override // scala.Function0
    public void apply$mcV$sp() {
        apply();
    }

    @Override // scala.Function0
    public boolean apply$mcZ$sp() {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply());
        return unboxToBoolean;
    }

    @Override // scala.ref.ReferenceWrapper, scala.ref.Reference
    public void clear() {
        ReferenceWrapper.Cclass.clear(this);
    }

    @Override // scala.ref.ReferenceWrapper, scala.ref.Reference
    public boolean enqueue() {
        return ReferenceWrapper.Cclass.enqueue(this);
    }

    @Override // scala.Proxy
    public boolean equals(Object obj) {
        return Proxy.Cclass.equals(this, obj);
    }

    @Override // scala.ref.ReferenceWrapper, scala.ref.Reference
    public Option<T> get() {
        return ReferenceWrapper.Cclass.get(this);
    }

    @Override // scala.Proxy
    public int hashCode() {
        return Proxy.Cclass.hashCode(this);
    }

    @Override // scala.ref.ReferenceWrapper, scala.ref.Reference
    public boolean isEnqueued() {
        return ReferenceWrapper.Cclass.isEnqueued(this);
    }

    @Override // scala.ref.ReferenceWrapper, scala.Proxy
    public java.lang.ref.Reference<? extends T> self() {
        return ReferenceWrapper.Cclass.self(this);
    }

    @Override // scala.ref.Reference, scala.Function0, scala.Proxy
    public String toString() {
        return Proxy.Cclass.toString(this);
    }

    @Override // scala.ref.ReferenceWrapper
    public java.lang.ref.PhantomReference<? extends T> underlying() {
        return this.underlying;
    }
}
