package scala.ref;

import scala.Function0;
import scala.Option;
import scala.Proxy;
import scala.ref.Reference;
import scala.ref.ReferenceWrapper;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001}2A!\u0001\u0002\u0001\u000f\ti1k\u001c4u%\u00164WM]3oG\u0016T!a\u0001\u0003\u0002\u0007I,gMC\u0001\u0006\u0003\u0015\u00198-\u00197b\u0007\u0001)\"\u0001C\n\u0014\u0007\u0001IQ\u0002\u0005\u0002\u000b\u00175\tA!\u0003\u0002\r\t\t1\u0011I\\=SK\u001a\u00042AD\b\u0012\u001b\u0005\u0011\u0011B\u0001\t\u0003\u0005A\u0011VMZ3sK:\u001cWm\u0016:baB,'\u000f\u0005\u0002\u0013'1\u0001AA\u0002\u000b\u0001\t\u000b\u0007QCA\u0001U#\t1\u0012\u0002\u0005\u0002\u000b/%\u0011\u0001\u0004\u0002\u0002\b\u001d>$\b.\u001b8h\u0011!Q\u0002A!A!\u0002\u0013\t\u0012!\u0002<bYV,\u0007\u0002\u0003\u000f\u0001\u0005\u0003\u0005\u000b\u0011B\u000f\u0002\u000bE,X-^3\u0011\u00079q\u0012#\u0003\u0002 \u0005\tq!+\u001a4fe\u0016t7-Z)vKV,\u0007\"B\u0011\u0001\t\u0003\u0011\u0013A\u0002\u001fj]&$h\bF\u0002$I\u0015\u00022A\u0004\u0001\u0012\u0011\u0015Q\u0002\u00051\u0001\u0012\u0011\u0015a\u0002\u00051\u0001\u001e\u0011\u0015\t\u0003\u0001\"\u0001()\t\u0019\u0003\u0006C\u0003\u001bM\u0001\u0007\u0011\u0003C\u0004+\u0001\t\u0007I\u0011A\u0016\u0002\u0015UtG-\u001a:ms&tw-F\u0001-a\tic\u0007E\u0002/iUj\u0011a\f\u0006\u0003\u0007AR!!\r\u001a\u0002\t1\fgn\u001a\u0006\u0002g\u0005!!.\u0019<b\u0013\t\tq\u0006\u0005\u0002\u0013m\u0011Iq\u0007OA\u0001\u0002\u0003\u0015\tA\u0010\u0002\u0004?\u0012\n\u0004BB\u001d\u0001A\u0003%!(A\u0006v]\u0012,'\u000f\\=j]\u001e\u0004\u0003GA\u001e>!\rqC\u0007\u0010\t\u0003%u\"\u0011b\u000e\u001d\u0002\u0002\u0003\u0005)\u0011\u0001 \u0012\u0005Y\t\u0002")
/* loaded from: classes3-dex2jar.jar:scala/ref/SoftReference.class */
public class SoftReference<T> implements ReferenceWrapper<T> {
    private final java.lang.ref.SoftReference<? extends T> underlying;

    public SoftReference(T t) {
        this(t, null);
    }

    public SoftReference(T t, ReferenceQueue<T> referenceQueue) {
        Function0.Cclass.$init$(this);
        Reference.Cclass.$init$(this);
        Proxy.Cclass.$init$(this);
        ReferenceWrapper.Cclass.$init$(this);
        this.underlying = new SoftReferenceWithWrapper(t, referenceQueue, this);
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
    public java.lang.ref.SoftReference<? extends T> underlying() {
        return this.underlying;
    }
}
