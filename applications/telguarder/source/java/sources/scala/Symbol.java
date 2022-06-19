package scala;

import java.io.ObjectStreamException;
import scala.collection.mutable.StringBuilder;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u00114A!\u0001\u0002\u0003\u000b\t11+_7c_2T\u0011aA\u0001\u0006g\u000e\fG.Y\u0002\u0001'\r\u0001aA\u0003\t\u0003\u000f!i\u0011AA\u0005\u0003\u0013\t\u0011a!\u00118z%\u00164\u0007CA\u0004\f\u0013\ta!A\u0001\u0007TKJL\u0017\r\\5{C\ndW\r\u0003\u0005\u000f\u0001\t\u0015\r\u0011\"\u0001\u0010\u0003\u0011q\u0017-\\3\u0016\u0003A\u0001\"!\u0005\u000b\u000f\u0005\u001d\u0011\u0012BA\n\u0003\u0003\u0019\u0001&/\u001a3fM&\u0011QC\u0006\u0002\u0007'R\u0014\u0018N\\4\u000b\u0005M\u0011\u0001\u0002\u0003\r\u0001\u0005\u0003\u0005\u000b\u0011\u0002\t\u0002\u000b9\fW.\u001a\u0011\t\u000bi\u0001A\u0011B\u000e\u0002\rqJg.\u001b;?)\taR\u0004\u0005\u0002\b\u0001!)a\"\u0007a\u0001!!)q\u0004\u0001C!A\u0005AAo\\*ue&tw\rF\u0001\u0011\u0011\u0015\u0011\u0003\u0001\"\u0003$\u0003-\u0011X-\u00193SKN|GN^3\u0015\u0003\u0011\u0002\"aB\u0013\n\u0005\u0019\u0012!aA!os\"\u001a\u0011\u0005K\u001a\u0011\u0007\u001dI3&\u0003\u0002+\u0005\t1A\u000f\u001b:poN\u0004\"\u0001L\u0019\u000e\u00035R!AL\u0018\u0002\u0005%|'\"\u0001\u0019\u0002\t)\fg/Y\u0005\u0003e5\u0012Qc\u00142kK\u000e$8\u000b\u001e:fC6,\u0005pY3qi&|gnI\u0001,\u0011\u0015)\u0004\u0001\"\u00117\u0003!A\u0017m\u001d5D_\u0012,G#A\u001c\u0011\u0005\u001dA\u0014BA\u001d\u0003\u0005\rIe\u000e\u001e\u0005\u0006w\u0001!\t\u0005P\u0001\u0007KF,\u0018\r\\:\u0015\u0005u\u0002\u0005CA\u0004?\u0013\ty$AA\u0004C_>dW-\u00198\t\u000b\u0005S\u0004\u0019\u0001\u0013\u0002\u000b=$\b.\u001a:\b\u000b\r\u0013\u0001\u0012\u0001#\u0002\rMKXNY8m!\t9QIB\u0003\u0002\u0005!\u0005aiE\u0002F\u000f*\u0001Ba\u0002%\u00119%\u0011\u0011J\u0001\u0002\u0010+:L\u0017/^3oKN\u001c8)Y2iK\")!$\u0012C\u0001\u0017R\tA\tC\u0003N\u000b\u0012\u0005c*A\u0003baBd\u0017\u0010\u0006\u0002\u001d\u001f\")a\u0002\u0014a\u0001!!)\u0011+\u0012C\t%\u0006aa/\u00197vK\u001a\u0013x.\\&fsR\u0011Ad\u0015\u0005\u0006\u001dA\u0003\r\u0001\u0005\u0005\u0006+\u0016#\tBV\u0001\rW\u0016LhI]8n-\u0006dW/\u001a\u000b\u0003/j\u00032a\u0002-\u0011\u0013\tI&A\u0001\u0004PaRLwN\u001c\u0005\u00067R\u0003\r\u0001H\u0001\u0004gfl\u0007b\u0002\u0012F\u0003\u0003%I!\u0018\u000b\u0002=B\u0011qLY\u0007\u0002A*\u0011\u0011mL\u0001\u0005Y\u0006tw-\u0003\u0002dA\n1qJ\u00196fGR\u0004")
/* loaded from: classes3-dex2jar.jar:scala/Symbol.class */
public final class Symbol implements Serializable {
    private final String name;

    public Symbol(String str) {
        this.name = str;
    }

    public static Object apply(Object obj) {
        return Symbol$.MODULE$.apply((String) obj);
    }

    public static Symbol apply(String str) {
        return Symbol$.MODULE$.apply(str);
    }

    private Object readResolve() throws ObjectStreamException {
        return Symbol$.MODULE$.apply(name());
    }

    public static Option unapply(Object obj) {
        return Symbol$.MODULE$.unapply(obj);
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public int hashCode() {
        return name().hashCode();
    }

    public String name() {
        return this.name;
    }

    public String toString() {
        return new StringBuilder().append((Object) "'").append((Object) name()).toString();
    }
}
