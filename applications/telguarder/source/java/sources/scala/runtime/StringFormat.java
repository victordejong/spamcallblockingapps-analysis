package scala.runtime;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001u3A!\u0001\u0002\u0003\u000f\ta1\u000b\u001e:j]\u001e4uN]7bi*\u00111\u0001B\u0001\beVtG/[7f\u0015\u0005)\u0011!B:dC2\f7\u0001A\n\u0003\u0001!\u0001\"!\u0003\u0006\u000e\u0003\u0011I!a\u0003\u0003\u0003\r\u0005s\u0017PV1m\u0011!i\u0001A!b\u0001\n\u0003q\u0011\u0001B:fY\u001a,\u0012a\u0004\t\u0003\u0013AI!!\u0005\u0003\u0003\u0007\u0005s\u0017\u0010\u0003\u0005\u0014\u0001\t\u0005\t\u0015!\u0003\u0010\u0003\u0015\u0019X\r\u001c4!\u0011\u0015)\u0002\u0001\"\u0001\u0017\u0003\u0019a\u0014N\\5u}Q\u0011q#\u0007\t\u00031\u0001i\u0011A\u0001\u0005\u0006\u001bQ\u0001\ra\u0004\u0005\u00067\u0001!\t\u0001H\u0001\nM>\u0014X.\u0019;uK\u0012$\"!\b\u0013\u0011\u0005y\tcBA\u0005 \u0013\t\u0001C!\u0001\u0004Qe\u0016$WMZ\u0005\u0003E\r\u0012aa\u0015;sS:<'B\u0001\u0011\u0005\u0011\u0015)#\u00041\u0001\u001e\u0003\u00191W\u000e^:ue\"\u0012!d\n\t\u0003\u0013!J!!\u000b\u0003\u0003\r%tG.\u001b8f\u0011\u001dY\u0003!!A\u0005B1\n\u0001\u0002[1tQ\u000e{G-\u001a\u000b\u0002[A\u0011\u0011BL\u0005\u0003_\u0011\u00111!\u00138u\u0011\u001d\t\u0004!!A\u0005BI\na!Z9vC2\u001cHCA\u001a7!\tIA'\u0003\u00026\t\t9!i\\8mK\u0006t\u0007bB\u001c1\u0003\u0003\u0005\raD\u0001\u0004q\u0012\n\u0004\u0006\u0002\u0001:yy\u0002\"!\u0003\u001e\n\u0005m\"!A\u00033faJ,7-\u0019;fI\u0006\nQ(A\fVg\u0016\u0004\u0003K]3eK\u001at3\u000b\u001e:j]\u001e4uN]7bi\u0006\nq(\u0001\u00043]E\nd\u0006M\u0004\b\u0003\n\t\t\u0011#\u0001C\u00031\u0019FO]5oO\u001a{'/\\1u!\tA2IB\u0004\u0002\u0005\u0005\u0005\t\u0012\u0001#\u0014\u0005\r+\u0005CA\u0005G\u0013\t9EA\u0001\u0004B]f\u0014VM\u001a\u0005\u0006+\r#\t!\u0013\u000b\u0002\u0005\")1j\u0011C\u0003\u0019\u0006\u0019bm\u001c:nCR$X\r\u001a\u0013fqR,gn]5p]R\u0011Qj\u0014\u000b\u0003;9CQ!\n&A\u0002uAQ\u0001\u0015&A\u0002]\tQ\u0001\n;iSND#AS\u0014\t\u000fM\u001b\u0015\u0011!C\u0003)\u0006\u0011\u0002.Y:i\u0007>$W\rJ3yi\u0016t7/[8o)\taS\u000bC\u0003Q%\u0002\u0007q\u0003C\u0004X\u0007\u0006\u0005IQ\u0001-\u0002!\u0015\fX/\u00197tI\u0015DH/\u001a8tS>tGCA-\\)\t\u0019$\fC\u00048-\u0006\u0005\t\u0019A\b\t\u000bA3\u0006\u0019A\f)\t\rKDH\u0010")
/* loaded from: classes3-dex2jar.jar:scala/runtime/StringFormat.class */
public final class StringFormat {
    private final Object self;

    public StringFormat(Object obj) {
        this.self = obj;
    }

    public boolean equals(Object obj) {
        return StringFormat$.MODULE$.equals$extension(self(), obj);
    }

    public String formatted(String str) {
        return StringFormat$.MODULE$.formatted$extension(self(), str);
    }

    public int hashCode() {
        return StringFormat$.MODULE$.hashCode$extension(self());
    }

    public Object self() {
        return this.self;
    }
}
