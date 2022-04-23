package kotlin.jvm.internal;

import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.c;
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/u.class */
public class u extends t {
    public u(Class cls, String str, String str2, int i) {
        super(NO_RECEIVER, cls, str, str2, i);
    }

    public u(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }

    public u(KDeclarationContainer kDeclarationContainer, String str, String str2) {
        super(NO_RECEIVER, ((g) kDeclarationContainer).a(), str, str2, !(kDeclarationContainer instanceof c) ? 1 : 0);
    }

    @Override // kotlin.reflect.l
    public Object get() {
        return getGetter().call(new Object[0]);
    }

    public void set(Object obj) {
        getSetter().call(obj);
    }
}
