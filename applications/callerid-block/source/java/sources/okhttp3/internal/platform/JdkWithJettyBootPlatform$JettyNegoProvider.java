package okhttp3.internal.platform;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.List;
import okhttp3.internal.Util;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider.class */
class JdkWithJettyBootPlatform$JettyNegoProvider implements InvocationHandler {
    private final List<String> protocols;
    String selected;
    boolean unsupported;

    JdkWithJettyBootPlatform$JettyNegoProvider(List<String> list) {
        this.protocols = list;
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        Object obj2;
        String name = method.getName();
        Class<?> returnType = method.getReturnType();
        String[] strArr = objArr;
        if (objArr == null) {
            strArr = Util.EMPTY_STRING_ARRAY;
        }
        if (!name.equals("supports") || Boolean.TYPE != returnType) {
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.unsupported = true;
                return null;
            } else if (name.equals("protocols") && strArr.length == 0) {
                return this.protocols;
            } else {
                if ((!name.equals("selectProtocol") && !name.equals("select")) || String.class != returnType || strArr.length != 1 || !(strArr[0] instanceof List)) {
                    if ((!name.equals("protocolSelected") && !name.equals("selected")) || strArr.length != 1) {
                        return method.invoke(this, strArr);
                    }
                    this.selected = (String) strArr[0];
                    return null;
                }
                List list = (List) strArr[0];
                int size = list.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        obj2 = this.protocols.get(0);
                        break;
                    } else if (this.protocols.contains(list.get(i))) {
                        obj2 = list.get(i);
                        break;
                    } else {
                        i++;
                    }
                }
                String str = (String) obj2;
                this.selected = str;
                return str;
            }
        }
        return Boolean.TRUE;
    }
}
