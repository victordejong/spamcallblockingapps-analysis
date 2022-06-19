package kotlin.jvm.internal;

import kotlin.reflect.AbstractC18551c;
import kotlin.reflect.KDeclarationContainer;
/* renamed from: kotlin.jvm.internal.u */
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/u.class */
public class C18529u extends AbstractC18528t {
    public C18529u(Class cls, String str, String str2, int i) {
        super(NO_RECEIVER, cls, str, str2, i);
    }

    public C18529u(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }

    public C18529u(KDeclarationContainer kDeclarationContainer, String str, String str2) {
        super(NO_RECEIVER, ((AbstractC18514g) kDeclarationContainer).mo1163a(), str, str2, !(kDeclarationContainer instanceof AbstractC18551c) ? 1 : 0);
    }

    @Override // kotlin.reflect.AbstractC20105l
    public Object get() {
        return getGetter().call(new Object[0]);
    }

    public void set(Object obj) {
        getSetter().call(obj);
    }
}
