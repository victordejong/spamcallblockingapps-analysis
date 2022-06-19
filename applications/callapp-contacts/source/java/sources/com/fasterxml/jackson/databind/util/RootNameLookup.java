package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.type.ClassKey;
import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/util/RootNameLookup.class */
public class RootNameLookup implements Serializable {
    protected transient LRUMap<ClassKey, PropertyName> _rootNames = new LRUMap<>(20, 200);

    public PropertyName findRootName(JavaType javaType, MapperConfig<?> mapperConfig) {
        return findRootName(javaType.getRawClass(), mapperConfig);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0040, code lost:
        if (r0.hasSimpleName() == false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.databind.PropertyName findRootName(java.lang.Class<?> r5, com.fasterxml.jackson.databind.cfg.MapperConfig<?> r6) {
        /*
            r4 = this;
            com.fasterxml.jackson.databind.type.ClassKey r0 = new com.fasterxml.jackson.databind.type.ClassKey
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            r7 = r0
            r0 = r4
            com.fasterxml.jackson.databind.util.LRUMap<com.fasterxml.jackson.databind.type.ClassKey, com.fasterxml.jackson.databind.PropertyName> r0 = r0._rootNames
            r1 = r7
            java.lang.Object r0 = r0.get(r1)
            com.fasterxml.jackson.databind.PropertyName r0 = (com.fasterxml.jackson.databind.PropertyName) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L1e
            r0 = r8
            return r0
        L1e:
            r0 = r6
            r1 = r5
            com.fasterxml.jackson.databind.BeanDescription r0 = r0.introspectClassAnnotations(r1)
            r8 = r0
            r0 = r6
            com.fasterxml.jackson.databind.AnnotationIntrospector r0 = r0.getAnnotationIntrospector()
            r1 = r8
            com.fasterxml.jackson.databind.introspect.AnnotatedClass r1 = r1.getClassInfo()
            com.fasterxml.jackson.databind.PropertyName r0 = r0.findRootName(r1)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L43
            r0 = r8
            r6 = r0
            r0 = r8
            boolean r0 = r0.hasSimpleName()
            if (r0 != 0) goto L4b
        L43:
            r0 = r5
            java.lang.String r0 = r0.getSimpleName()
            com.fasterxml.jackson.databind.PropertyName r0 = com.fasterxml.jackson.databind.PropertyName.construct(r0)
            r6 = r0
        L4b:
            r0 = r4
            com.fasterxml.jackson.databind.util.LRUMap<com.fasterxml.jackson.databind.type.ClassKey, com.fasterxml.jackson.databind.PropertyName> r0 = r0._rootNames
            r1 = r7
            r2 = r6
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.util.RootNameLookup.findRootName(java.lang.Class, com.fasterxml.jackson.databind.cfg.MapperConfig):com.fasterxml.jackson.databind.PropertyName");
    }

    protected Object readResolve() {
        return new RootNameLookup();
    }
}
