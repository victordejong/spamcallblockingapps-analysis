package scala.collection.script;

import scala.Product;
import scala.Serializable;
import scala.collection.Iterator;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
@ScalaSignature(bytes = "\u0006\u0001\u0005%a\u0001B\u0001\u0003\u0001&\u0011QAU3tKRT!a\u0001\u0003\u0002\rM\u001c'/\u001b9u\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\tQQcE\u0003\u0001\u0017=q\u0012\u0005\u0005\u0002\r\u001b5\ta!\u0003\u0002\u000f\r\t1\u0011I\\=SK\u001a\u00042\u0001E\t\u0014\u001b\u0005\u0011\u0011B\u0001\n\u0003\u0005\u001diUm]:bO\u0016\u0004\"\u0001F\u000b\r\u0001\u00111a\u0003\u0001CC\u0002]\u0011\u0011!Q\t\u00031m\u0001\"\u0001D\r\n\u0005i1!a\u0002(pi\"Lgn\u001a\t\u0003\u0019qI!!\b\u0004\u0003\u0007\u0005s\u0017\u0010\u0005\u0002\r?%\u0011\u0001E\u0002\u0002\b!J|G-^2u!\ta!%\u0003\u0002$\r\ta1+\u001a:jC2L'0\u00192mK\")Q\u0005\u0001C\u0001M\u00051A(\u001b8jiz\"\u0012a\n\t\u0004!\u0001\u0019\u0002bB\u0015\u0001\u0003\u0003%\tAK\u0001\u0005G>\u0004\u00180\u0006\u0002,]Q\tA\u0006E\u0002\u0011\u00015\u0002\"\u0001\u0006\u0018\u0005\u000bYA#\u0019A\f\t\u000fA\u0002\u0011\u0011!C!c\u0005i\u0001O]8ek\u000e$\bK]3gSb,\u0012A\r\t\u0003gaj\u0011\u0001\u000e\u0006\u0003kY\nA\u0001\\1oO*\tq'\u0001\u0003kCZ\f\u0017BA\u001d5\u0005\u0019\u0019FO]5oO\"91\bAA\u0001\n\u0003a\u0014\u0001\u00049s_\u0012,8\r^!sSRLX#A\u001f\u0011\u00051q\u0014BA \u0007\u0005\rIe\u000e\u001e\u0005\b\u0003\u0002\t\t\u0011\"\u0001C\u00039\u0001(o\u001c3vGR,E.Z7f]R$\"aG\"\t\u000f\u0011\u0003\u0015\u0011!a\u0001{\u0005\u0019\u0001\u0010J\u0019\t\u000f\u0019\u0003\u0011\u0011!C!\u000f\u0006y\u0001O]8ek\u000e$\u0018\n^3sCR|'/F\u0001I!\rI%jG\u0007\u0002\t%\u00111\n\u0002\u0002\t\u0013R,'/\u0019;pe\"9Q\nAA\u0001\n\u0003q\u0015\u0001C2b]\u0016\u000bX/\u00197\u0015\u0005=\u0013\u0006C\u0001\u0007Q\u0013\t\tfAA\u0004C_>dW-\u00198\t\u000f\u0011c\u0015\u0011!a\u00017!9A\u000bAA\u0001\n\u0003*\u0016\u0001\u00035bg\"\u001cu\u000eZ3\u0015\u0003uBqa\u0016\u0001\u0002\u0002\u0013\u0005\u0003,\u0001\u0005u_N#(/\u001b8h)\u0005\u0011\u0004b\u0002.\u0001\u0003\u0003%\teW\u0001\u0007KF,\u0018\r\\:\u0015\u0005=c\u0006b\u0002#Z\u0003\u0003\u0005\ra\u0007\u0015\u0005\u0001y\u000b7\r\u0005\u0002\r?&\u0011\u0001M\u0002\u0002\u000bI\u0016\u0004(/Z2bi\u0016$\u0017%\u00012\u00021M\u001b'/\u001b9uS:<\u0007%[:!I\u0016\u0004(/Z2bi\u0016$g&I\u0001e\u0003\u0019\u0011d&M\u0019/a\u001d9aMAA\u0001\u0012\u00039\u0017!\u0002*fg\u0016$\bC\u0001\ti\r\u001d\t!!!A\t\u0002%\u001c2\u0001[\u0006\"\u0011\u0015)\u0003\u000e\"\u0001l)\u00059\u0007bB,i\u0003\u0003%)\u0005\u0017\u0005\b]\"\f\t\u0011\"!p\u0003\u0015\t\u0007\u000f\u001d7z+\t\u00018\u000fF\u0001r!\r\u0001\u0002A\u001d\t\u0003)M$QAF7C\u0002]Aq!\u001e5\u0002\u0002\u0013\u0005e/A\u0004v]\u0006\u0004\b\u000f\\=\u0016\u0005]dHCA(y\u0011\u001dIH/!AA\u0002i\f1\u0001\u001f\u00131!\r\u0001\u0002a\u001f\t\u0003)q$QA\u0006;C\u0002]AqA 5\u0002\u0002\u0013%q0A\u0006sK\u0006$'+Z:pYZ,GCAA\u0001!\r\u0019\u00141A\u0005\u0004\u0003\u000b!$AB(cU\u0016\u001cG\u000f\u000b\u0003i=\u0006\u001c\u0007")
/* loaded from: classes3-dex2jar.jar:scala/collection/script/Reset.class */
public class Reset<A> implements Message<A>, Product, Serializable {
    public Reset() {
        Product.Cclass.$init$(this);
    }

    public static <A> Reset<A> apply() {
        return Reset$.MODULE$.apply();
    }

    public static <A> boolean unapply(Reset<A> reset) {
        return Reset$.MODULE$.unapply(reset);
    }

    @Override // scala.Equals
    public boolean canEqual(Object obj) {
        return obj instanceof Reset;
    }

    public <A> Reset<A> copy() {
        return new Reset<>();
    }

    @Override // scala.Equals
    public boolean equals(Object obj) {
        return (obj instanceof Reset) && ((Reset) obj).canEqual(this);
    }

    public int hashCode() {
        return ScalaRunTime$.MODULE$._hashCode(this);
    }

    @Override // scala.Product
    public int productArity() {
        return 0;
    }

    @Override // scala.Product
    public Object productElement(int i) {
        throw new IndexOutOfBoundsException(BoxesRunTime.boxToInteger(i).toString());
    }

    @Override // scala.Product
    public Iterator<Object> productIterator() {
        return ScalaRunTime$.MODULE$.typedProductIterator(this);
    }

    @Override // scala.Product
    public String productPrefix() {
        return "Reset";
    }

    public String toString() {
        return ScalaRunTime$.MODULE$._toString(this);
    }
}
