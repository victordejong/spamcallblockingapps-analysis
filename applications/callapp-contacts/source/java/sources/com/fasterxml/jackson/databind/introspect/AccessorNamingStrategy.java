package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/AccessorNamingStrategy.class */
public abstract class AccessorNamingStrategy {

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider.class */
    public static abstract class Provider implements Serializable {
        public abstract AccessorNamingStrategy forBuilder(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass, BeanDescription beanDescription);

        public abstract AccessorNamingStrategy forPOJO(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass);

        public abstract AccessorNamingStrategy forRecord(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass);
    }

    public abstract String findNameForIsGetter(AnnotatedMethod annotatedMethod, String str);

    public abstract String findNameForMutator(AnnotatedMethod annotatedMethod, String str);

    public abstract String findNameForRegularGetter(AnnotatedMethod annotatedMethod, String str);

    public abstract String modifyFieldName(AnnotatedField annotatedField, String str);
}
