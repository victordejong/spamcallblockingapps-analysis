package scala.runtime;

import java.lang.reflect.Method;
import kotlin.text.Typography;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001)4Q!\u0001\u0002\u0003\t\u0019\u0011q\u0002U8ms6+G\u000f[8e\u0007\u0006\u001c\u0007.\u001a\u0006\u0003\u0007\u0011\tqA];oi&lWMC\u0001\u0006\u0003\u0015\u00198-\u00197b'\t\u0001q\u0001\u0005\u0002\t\u00135\t!!\u0003\u0002\u000b\u0005\tYQ*\u001a;i_\u0012\u001c\u0015m\u00195f\u0011!a\u0001A!A!\u0002\u00139\u0011\u0001\u00028fqR\u001c\u0001\u0001\u0003\u0005\u0010\u0001\t\u0005\t\u0015!\u0003\u0011\u0003!\u0011XmY3jm\u0016\u0014\bGA\t\u001c!\r\u0011r#G\u0007\u0002')\u0011A#F\u0001\u0005Y\u0006twMC\u0001\u0017\u0003\u0011Q\u0017M^1\n\u0005a\u0019\"!B\"mCN\u001c\bC\u0001\u000e\u001c\u0019\u0001!\u0011\u0002\b\b\u0002\u0002\u0003\u0005)\u0011A\u000f\u0003\u0007}#\u0003(\u0005\u0002\u001fEA\u0011q\u0004I\u0007\u0002\t%\u0011\u0011\u0005\u0002\u0002\b\u001d>$\b.\u001b8h!\ty2%\u0003\u0002%\t\t\u0019\u0011I\\=\t\u0011\u0019\u0002!\u0011!Q\u0001\n\u001d\na!\\3uQ>$\u0007C\u0001\u0015,\u001b\u0005I#B\u0001\u0016\u0014\u0003\u001d\u0011XM\u001a7fGRL!\u0001L\u0015\u0003\r5+G\u000f[8e\u0011!q\u0003A!A!\u0002\u0013y\u0013AC2p[BdW\r_5usB\u0011q\u0004M\u0005\u0003c\u0011\u00111!\u00138u\u0011\u0015\u0019\u0004\u0001\"\u00015\u0003\u0019a\u0014N\\5u}Q)QGN\u001c={A\u0011\u0001\u0002\u0001\u0005\u0006\u0019I\u0002\ra\u0002\u0005\u0006\u001fI\u0002\r\u0001\u000f\u0019\u0003sm\u00022AE\f;!\tQ2\bB\u0005\u001do\u0005\u0005\t\u0011!B\u0001;!)aE\ra\u0001O!)aF\ra\u0001_!)q\b\u0001C\u0005\u0001\u0006aa-\u001b8e\u0013:$XM\u001d8bYR\u0011q%\u0011\u0005\u0006\u0005z\u0002\raQ\u0001\fM>\u0014(+Z2fSZ,'\u000f\r\u0002E\rB\u0019!cF#\u0011\u0005i1E!C$B\u0003\u0003\u0005\tQ!\u0001\u001e\u0005\ryF%\u000f\u0015\u0003}%\u0003\"AS'\u000e\u0003-S!\u0001\u0014\u0003\u0002\u0015\u0005tgn\u001c;bi&|g.\u0003\u0002O\u0017\n9A/Y5me\u0016\u001c\u0007\"\u0002)\u0001\t\u0003\t\u0016\u0001\u00024j]\u0012$\"a\n*\t\u000b\t{\u0005\u0019A*1\u0005Q3\u0006c\u0001\n\u0018+B\u0011!D\u0016\u0003\n/J\u000b\t\u0011!A\u0003\u0002u\u0011Aa\u0018\u00132a!9\u0011\f\u0001b\u0001\n\u001bQ\u0016!D'bq\u000e{W\u000e\u001d7fq&$\u00180F\u0001\\\u001f\u0005aVD\u0001\u0001!\u0012\u0019q\u0006\u0001)A\u00077\u0006qQ*\u0019=D_6\u0004H.\u001a=jif\u0004\u0003\"\u00021\u0001\t\u0003\t\u0017aA1eIR\u0019qA\u00195\t\u000b\t{\u0006\u0019A21\u0005\u00114\u0007c\u0001\n\u0018KB\u0011!D\u001a\u0003\nO\n\f\t\u0011!A\u0003\u0002u\u0011Aa\u0018\u00132c!)\u0011n\u0018a\u0001O\u0005Iam\u001c:NKRDw\u000e\u001a")
/* loaded from: classes3-dex2jar.jar:scala/runtime/PolyMethodCache.class */
public final class PolyMethodCache extends MethodCache {
    private final int MaxComplexity;
    private final int complexity;
    private final Method method;
    private final MethodCache next;
    private final Class<?> receiver;

    public PolyMethodCache(MethodCache methodCache, Class<?> cls, Method method, int i) {
        this.next = methodCache;
        this.receiver = cls;
        this.method = method;
        this.complexity = i;
    }

    private final int MaxComplexity() {
        return Typography.nbsp;
    }

    private Method findInternal(Class<?> cls) {
        Method method;
        PolyMethodCache polyMethodCache = this;
        while (true) {
            PolyMethodCache polyMethodCache2 = polyMethodCache;
            if (cls != polyMethodCache2.receiver) {
                MethodCache methodCache = polyMethodCache2.next;
                if (!(methodCache instanceof PolyMethodCache)) {
                    method = methodCache.find(cls);
                    break;
                }
                polyMethodCache = (PolyMethodCache) methodCache;
            } else {
                method = polyMethodCache2.method;
                break;
            }
        }
        return method;
    }

    @Override // scala.runtime.MethodCache
    public MethodCache add(Class<?> cls, Method method) {
        int i = this.complexity;
        return i < 160 ? new PolyMethodCache(this, cls, method, i + 1) : new MegaMethodCache(method.getName(), method.getParameterTypes());
    }

    @Override // scala.runtime.MethodCache
    public Method find(Class<?> cls) {
        return findInternal(cls);
    }
}
