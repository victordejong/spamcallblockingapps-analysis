package com.callapp.contacts.util.serializer;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.objenesis.a.a;
import org.objenesis.b.d;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/CallAppObjectInstantiator.class */
public class CallAppObjectInstantiator extends d {

    /* renamed from: a  reason: collision with root package name */
    private Map<Class<?>, ObjectInstantiatorCreator> f16267a = new ConcurrentHashMap();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/CallAppObjectInstantiator$ObjectInstantiatorCreator.class */
    public interface ObjectInstantiatorCreator {
        <T> a<T> a();
    }

    @Override // org.objenesis.b.d, org.objenesis.b.b
    public final <T> a<T> a(Class<T> cls) {
        for (Class<?> cls2 : this.f16267a.keySet()) {
            if (cls2.isAssignableFrom(cls)) {
                boolean z = true;
                try {
                    if (cls.getConstructor(new Class[0]) != null) {
                        z = false;
                    }
                } catch (NoSuchMethodException e) {
                }
                if (z) {
                    return this.f16267a.get(cls2).a();
                }
            }
        }
        return super.a(cls);
    }
}
