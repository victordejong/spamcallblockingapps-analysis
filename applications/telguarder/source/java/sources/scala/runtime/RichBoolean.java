package scala.runtime;

import scala.Proxy;
import scala.math.Ordered;
import scala.math.Ordering;
import scala.reflect.ScalaSignature;
import scala.runtime.OrderedProxy;
@ScalaSignature(bytes = "\u0006\u0001]3A!\u0001\u0002\u0003\u000f\tY!+[2i\u0005>|G.Z1o\u0015\t\u0019A!A\u0004sk:$\u0018.\\3\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001aE\u0002\u0001\u00111\u0001\"!\u0003\u0006\u000e\u0003\u0011I!a\u0003\u0003\u0003\r\u0005s\u0017PV1m!\ria\u0002E\u0007\u0002\u0005%\u0011qB\u0001\u0002\r\u001fJ$WM]3e!J|\u00070\u001f\t\u0003\u0013EI!A\u0005\u0003\u0003\u000f\t{w\u000e\\3b]\"AA\u0003\u0001BC\u0002\u0013\u0005Q#\u0001\u0003tK24W#\u0001\t\t\u0011]\u0001!\u0011!Q\u0001\nA\tQa]3mM\u0002BQ!\u0007\u0001\u0005\u0002i\ta\u0001P5oSRtDCA\u000e\u001d!\ti\u0001\u0001C\u0003\u00151\u0001\u0007\u0001\u0003C\u0003\u001f\u0001\u0011Eq$A\u0002pe\u0012,\u0012\u0001\t\b\u0003C5r!A\t\u0016\u000f\u0005\rBcB\u0001\u0013(\u001b\u0005)#B\u0001\u0014\u0007\u0003\u0019a$o\\8u}%\tQ!\u0003\u0002*\t\u0005!Q.\u0019;i\u0013\tYC&\u0001\u0005Pe\u0012,'/\u001b8h\u0015\tIC!\u0003\u0002/_\u00059!i\\8mK\u0006t'BA\u0016-\u0011\u001d\t\u0004!!A\u0005BI\n\u0001\u0002[1tQ\u000e{G-\u001a\u000b\u0002gA\u0011\u0011\u0002N\u0005\u0003k\u0011\u00111!\u00138u\u0011\u001d9\u0004!!A\u0005Ba\na!Z9vC2\u001cHC\u0001\t:\u0011\u001dQd'!AA\u0002m\n1\u0001\u001f\u00132!\tIA(\u0003\u0002>\t\t\u0019\u0011I\\=\b\u000f}\u0012\u0011\u0011!E\u0001\u0001\u0006Y!+[2i\u0005>|G.Z1o!\ti\u0011IB\u0004\u0002\u0005\u0005\u0005\t\u0012\u0001\"\u0014\u0005\u0005\u001b\u0005CA\u0005E\u0013\t)EA\u0001\u0004B]f\u0014VM\u001a\u0005\u00063\u0005#\ta\u0012\u000b\u0002\u0001\")\u0011*\u0011C\u0003\u0015\u0006iqN\u001d3%Kb$XM\\:j_:$\"\u0001I&\t\u000b1C\u0005\u0019A\u000e\u0002\u000b\u0011\"\b.[:\t\u000f9\u000b\u0015\u0011!C\u0003\u001f\u0006\u0011\u0002.Y:i\u0007>$W\rJ3yi\u0016t7/[8o)\t\u0011\u0004\u000bC\u0003M\u001b\u0002\u00071\u0004C\u0004S\u0003\u0006\u0005IQA*\u0002!\u0015\fX/\u00197tI\u0015DH/\u001a8tS>tGC\u0001+W)\t\u0001R\u000bC\u0004;#\u0006\u0005\t\u0019A\u001e\t\u000b1\u000b\u0006\u0019A\u000e")
/* loaded from: classes3-dex2jar.jar:scala/runtime/RichBoolean.class */
public final class RichBoolean implements OrderedProxy<Object> {
    private final boolean self;

    public RichBoolean(boolean z) {
        this.self = z;
        Ordered.Cclass.$init$(this);
        Proxy.Cclass.$init$(this);
    }

    @Override // scala.math.Ordered
    public boolean $greater(Object obj) {
        return Ordered.Cclass.$greater(this, obj);
    }

    @Override // scala.math.Ordered
    public boolean $greater$eq(Object obj) {
        return Ordered.Cclass.$greater$eq(this, obj);
    }

    @Override // scala.math.Ordered
    public boolean $less(Object obj) {
        return Ordered.Cclass.$less(this, obj);
    }

    @Override // scala.math.Ordered
    public boolean $less$eq(Object obj) {
        return Ordered.Cclass.$less$eq(this, obj);
    }

    @Override // scala.runtime.OrderedProxy, scala.math.Ordered
    public int compare(Object obj) {
        return OrderedProxy.Cclass.compare(this, obj);
    }

    @Override // scala.math.Ordered, java.lang.Comparable
    public int compareTo(Object obj) {
        return Ordered.Cclass.compareTo(this, obj);
    }

    @Override // scala.Proxy
    public boolean equals(Object obj) {
        return RichBoolean$.MODULE$.equals$extension(self(), obj);
    }

    @Override // scala.Proxy
    public int hashCode() {
        return RichBoolean$.MODULE$.hashCode$extension(self());
    }

    @Override // scala.runtime.OrderedProxy
    public Ordering<Object> ord() {
        return RichBoolean$.MODULE$.ord$extension(self());
    }

    @Override // scala.Proxy.Typed, scala.Proxy
    public boolean self() {
        return this.self;
    }

    @Override // scala.Proxy
    public String toString() {
        return Proxy.Cclass.toString(this);
    }
}
