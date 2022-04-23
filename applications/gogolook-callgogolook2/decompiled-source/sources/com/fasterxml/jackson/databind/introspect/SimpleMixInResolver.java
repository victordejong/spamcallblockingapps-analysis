package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.type.ClassKey;
import java.io.Serializable;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/introspect/SimpleMixInResolver.class */
public class SimpleMixInResolver implements ClassIntrospector.MixInResolver, Serializable {
    public Map<ClassKey, Class<?>> _localMixIns;
    public final ClassIntrospector.MixInResolver _overrides;

    public SimpleMixInResolver(ClassIntrospector.MixInResolver mixInResolver) {
        this._overrides = mixInResolver;
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver
    public Class<?> findMixInClassFor(Class<?> cls) {
        ClassIntrospector.MixInResolver mixInResolver = this._overrides;
        Class<?> findMixInClassFor = mixInResolver == null ? null : mixInResolver.findMixInClassFor(cls);
        Class<?> cls2 = findMixInClassFor;
        if (findMixInClassFor == null) {
            Map<ClassKey, Class<?>> map = this._localMixIns;
            cls2 = findMixInClassFor;
            if (map != null) {
                cls2 = map.get(new ClassKey(cls));
            }
        }
        return cls2;
    }
}
