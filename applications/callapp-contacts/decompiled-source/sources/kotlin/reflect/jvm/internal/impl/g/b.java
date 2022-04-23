package kotlin.reflect.jvm.internal.impl.g;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.w;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/b.class */
public interface b {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/g/b$a.class */
    public static final class a {
        public static String a(b bVar, w functionDescriptor) {
            p.d(bVar, "this");
            p.d(functionDescriptor, "functionDescriptor");
            if (!bVar.a(functionDescriptor)) {
                return bVar.a();
            }
            return null;
        }
    }

    String a();

    boolean a(w wVar);

    String b(w wVar);
}
