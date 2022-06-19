package scala.runtime;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001}3A!\u0001\u0002\u0003\u000f\tI1\u000b\u001e:j]\u001e\fE\r\u001a\u0006\u0003\u0007\u0011\tqA];oi&lWMC\u0001\u0006\u0003\u0015\u00198-\u00197b\u0007\u0001\u0019\"\u0001\u0001\u0005\u0011\u0005%QQ\"\u0001\u0003\n\u0005-!!AB!osZ\u000bG\u000e\u0003\u0005\u000e\u0001\t\u0015\r\u0011\"\u0001\u000f\u0003\u0011\u0019X\r\u001c4\u0016\u0003=\u0001\"!\u0003\t\n\u0005E!!aA!os\"A1\u0003\u0001B\u0001B\u0003%q\"A\u0003tK24\u0007\u0005C\u0003\u0016\u0001\u0011\u0005a#\u0001\u0004=S:LGO\u0010\u000b\u0003/e\u0001\"\u0001\u0007\u0001\u000e\u0003\tAQ!\u0004\u000bA\u0002=AQa\u0007\u0001\u0005\u0002q\tQ\u0001\n9mkN$\"!H\u0013\u0011\u0005y\u0019S\"A\u0010\u000b\u0005\u0001\n\u0013\u0001\u00027b]\u001eT\u0011AI\u0001\u0005U\u00064\u0018-\u0003\u0002%?\t11\u000b\u001e:j]\u001eDQA\n\u000eA\u0002\u001d\nQa\u001c;iKJ\u0004\"\u0001K\u0016\u000f\u0005%I\u0013B\u0001\u0016\u0005\u0003\u0019\u0001&/\u001a3fM&\u0011A\u0005\f\u0006\u0003U\u0011AqA\f\u0001\u0002\u0002\u0013\u0005s&\u0001\u0005iCND7i\u001c3f)\u0005\u0001\u0004CA\u00052\u0013\t\u0011DAA\u0002J]RDq\u0001\u000e\u0001\u0002\u0002\u0013\u0005S'\u0001\u0004fcV\fGn\u001d\u000b\u0003me\u0002\"!C\u001c\n\u0005a\"!a\u0002\"p_2,\u0017M\u001c\u0005\buM\n\t\u00111\u0001\u0010\u0003\rAH%\r\u0015\u0005\u0001qz\u0014\t\u0005\u0002\n{%\u0011a\b\u0002\u0002\u000bI\u0016\u0004(/Z2bi\u0016$\u0017%\u0001!\u0002)U\u001bX\r\t)sK\u0012,gML*ue&tw-\u00113eC\u0005\u0011\u0015A\u0002\u001a/cEr\u0003gB\u0004E\u0005\u0005\u0005\t\u0012A#\u0002\u0013M#(/\u001b8h\u0003\u0012$\u0007C\u0001\rG\r\u001d\t!!!A\t\u0002\u001d\u001b\"A\u0012%\u0011\u0005%I\u0015B\u0001&\u0005\u0005\u0019\te.\u001f*fM\")QC\u0012C\u0001\u0019R\tQ\tC\u0003O\r\u0012\u0015q*A\b%a2,8\u000fJ3yi\u0016t7/[8o)\t\u0001&\u000b\u0006\u0002\u001e#\")a%\u0014a\u0001O!)1+\u0014a\u0001/\u0005)A\u0005\u001e5jg\"9QKRA\u0001\n\u000b1\u0016A\u00055bg\"\u001cu\u000eZ3%Kb$XM\\:j_:$\"aL,\t\u000bM#\u0006\u0019A\f\t\u000fe3\u0015\u0011!C\u00035\u0006\u0001R-];bYN$S\r\u001f;f]NLwN\u001c\u000b\u00037v#\"A\u000e/\t\u000fiB\u0016\u0011!a\u0001\u001f!)1\u000b\u0017a\u0001/!\"a\tP B\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/StringAdd.class */
public final class StringAdd {
    private final Object self;

    public StringAdd(Object obj) {
        this.self = obj;
    }

    public String $plus(String str) {
        return StringAdd$.MODULE$.$plus$extension(self(), str);
    }

    public boolean equals(Object obj) {
        return StringAdd$.MODULE$.equals$extension(self(), obj);
    }

    public int hashCode() {
        return StringAdd$.MODULE$.hashCode$extension(self());
    }

    public Object self() {
        return this.self;
    }
}
