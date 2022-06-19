package scala.sys;

import scala.Function1;
import scala.reflect.ScalaSignature;
import scala.sys.Prop;
@ScalaSignature(bytes = "\u0006\u0001e2a!\u0001\u0002\u0002\u0002\t1!aC\"sK\u0006$xN]%na2T!a\u0001\u0003\u0002\u0007ML8OC\u0001\u0006\u0003\u0015\u00198-\u00197b+\t9acE\u0002\u0001\u00111\u0001\"!\u0003\u0006\u000e\u0003\u0011I!a\u0003\u0003\u0003\r\u0005s\u0017PU3g!\ri\u0011\u0003\u0006\b\u0003\u001d=i\u0011AA\u0005\u0003!\t\tA\u0001\u0015:pa&\u0011!c\u0005\u0002\b\u0007J,\u0017\r^8s\u0015\t\u0001\"\u0001\u0005\u0002\u0016-1\u0001AAB\f\u0001\t\u000b\u0007\u0011DA\u0001U\u0007\u0001\t\"AG\u000f\u0011\u0005%Y\u0012B\u0001\u000f\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"!\u0003\u0010\n\u0005}!!aA!os\"A\u0011\u0005\u0001B\u0001B\u0003%!%A\u0001g!\u0011I1%\n\u000b\n\u0005\u0011\"!!\u0003$v]\u000e$\u0018n\u001c82!\t1\u0013F\u0004\u0002\nO%\u0011\u0001\u0006B\u0001\u0007!J,G-\u001a4\n\u0005)Z#AB*ue&twM\u0003\u0002)\t!)Q\u0006\u0001C\u0001]\u00051A(\u001b8jiz\"\"a\f\u0019\u0011\u00079\u0001A\u0003C\u0003\"Y\u0001\u0007!\u0005C\u00033\u0001\u0011\u00051'A\u0003baBd\u0017\u0010\u0006\u00025oA\u0019a\"\u000e\u000b\n\u0005Y\u0012!\u0001\u0002)s_BDQ\u0001O\u0019A\u0002\u0015\n1a[3z\u0001")
/* loaded from: classes3-dex2jar.jar:scala/sys/CreatorImpl.class */
public abstract class CreatorImpl<T> implements Prop.Creator<T> {

    /* renamed from: f */
    private final Function1<String, T> f1634f;

    public CreatorImpl(Function1<String, T> function1) {
        this.f1634f = function1;
    }

    @Override // scala.sys.Prop.Creator
    public Prop<T> apply(String str) {
        return new PropImpl(str, this.f1634f);
    }
}
