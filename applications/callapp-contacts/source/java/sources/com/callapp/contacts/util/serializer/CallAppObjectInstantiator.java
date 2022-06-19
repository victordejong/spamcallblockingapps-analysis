package com.callapp.contacts.util.serializer;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.objenesis.p596a.AbstractC21005a;
import org.objenesis.p603b.C21024d;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/CallAppObjectInstantiator.class */
public class CallAppObjectInstantiator extends C21024d {

    /* renamed from: a */
    private Map<Class<?>, ObjectInstantiatorCreator> f28352a = new ConcurrentHashMap();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/CallAppObjectInstantiator$ObjectInstantiatorCreator.class */
    public interface ObjectInstantiatorCreator {
        /* renamed from: a */
        <T> AbstractC21005a<T> m26935a();
    }

    @Override // org.objenesis.p603b.C21024d, org.objenesis.p603b.AbstractC21022b
    /* renamed from: a */
    public final <T> AbstractC21005a<T> mo125a(Class<T> cls) {
        for (Class<?> cls2 : this.f28352a.keySet()) {
            if (cls2.isAssignableFrom(cls)) {
                boolean z = true;
                try {
                    if (cls.getConstructor(new Class[0]) != null) {
                        z = false;
                    }
                } catch (NoSuchMethodException e) {
                }
                if (z) {
                    return this.f28352a.get(cls2).m26935a();
                }
            }
        }
        return super.mo125a(cls);
    }
}
