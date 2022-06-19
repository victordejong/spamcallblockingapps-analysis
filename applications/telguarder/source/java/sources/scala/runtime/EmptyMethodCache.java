package scala.runtime;

import java.lang.reflect.Method;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001m2Q!\u0001\u0002\u0003\t\u0019\u0011\u0001#R7qiflU\r\u001e5pI\u000e\u000b7\r[3\u000b\u0005\r!\u0011a\u0002:v]RLW.\u001a\u0006\u0002\u000b\u0005)1oY1mCN\u0011\u0001a\u0002\t\u0003\u0011%i\u0011AA\u0005\u0003\u0015\t\u00111\"T3uQ>$7)Y2iK\")A\u0002\u0001C\u0001\u001d\u00051A(\u001b8jiz\u001a\u0001\u0001F\u0001\u0010!\tA\u0001\u0001C\u0003\u0012\u0001\u0011\u0005!#\u0001\u0003gS:$GCA\n\u001e!\t!2$D\u0001\u0016\u0015\t1r#A\u0004sK\u001adWm\u0019;\u000b\u0005aI\u0012\u0001\u00027b]\u001eT\u0011AG\u0001\u0005U\u00064\u0018-\u0003\u0002\u001d+\t1Q*\u001a;i_\u0012DQA\b\tA\u0002}\t1BZ8s%\u0016\u001cW-\u001b<feB\u0012\u0001E\n\t\u0004C\t\"S\"A\f\n\u0005\r:\"!B\"mCN\u001c\bCA\u0013'\u0019\u0001!\u0011bJ\u000f\u0002\u0002\u0003\u0005)\u0011\u0001\u0015\u0003\u0007}#3'\u0005\u0002*[A\u0011!fK\u0007\u0002\t%\u0011A\u0006\u0002\u0002\b\u001d>$\b.\u001b8h!\tQc&\u0003\u00020\t\t\u0019\u0011I\\=\t\u000bE\u0002A\u0011\u0001\u001a\u0002\u0007\u0005$G\rF\u0002\bgeBQA\b\u0019A\u0002Q\u0002$!N\u001c\u0011\u0007\u0005\u0012c\u0007\u0005\u0002&o\u0011I\u0001hMA\u0001\u0002\u0003\u0015\t\u0001\u000b\u0002\u0004?\u0012\"\u0004\"\u0002\u001e1\u0001\u0004\u0019\u0012!\u00034pe6+G\u000f[8e\u0001")
/* loaded from: classes3-dex2jar.jar:scala/runtime/EmptyMethodCache.class */
public final class EmptyMethodCache extends MethodCache {
    @Override // scala.runtime.MethodCache
    public MethodCache add(Class<?> cls, Method method) {
        return new PolyMethodCache(this, cls, method, 1);
    }

    @Override // scala.runtime.MethodCache
    public Method find(Class<?> cls) {
        return null;
    }
}
