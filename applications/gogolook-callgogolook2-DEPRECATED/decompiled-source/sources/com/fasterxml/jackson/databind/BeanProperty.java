package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.Named;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/BeanProperty.class */
public interface BeanProperty extends Named {

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/BeanProperty$Std.class */
    public static class Std implements BeanProperty {
        public final Annotations _contextAnnotations;
        public final AnnotatedMember _member;
        public final PropertyMetadata _metadata;
        public final PropertyName _name;
        public final JavaType _type;
        public final PropertyName _wrapperName;

        public Std(Std std, JavaType javaType) {
            this(std._name, javaType, std._wrapperName, std._contextAnnotations, std._member, std._metadata);
        }

        public Std(PropertyName propertyName, JavaType javaType, PropertyName propertyName2, Annotations annotations, AnnotatedMember annotatedMember, PropertyMetadata propertyMetadata) {
            this._name = propertyName;
            this._type = javaType;
            this._wrapperName = propertyName2;
            this._metadata = propertyMetadata;
            this._member = annotatedMember;
            this._contextAnnotations = annotations;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public JsonFormat.Value findPropertyFormat(MapperConfig<?> mapperConfig, Class<?> cls) {
            AnnotatedMember annotatedMember;
            JsonFormat.Value defaultPropertyFormat = mapperConfig.getDefaultPropertyFormat(cls);
            AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
            if (annotationIntrospector == null || (annotatedMember = this._member) == null) {
                return defaultPropertyFormat;
            }
            JsonFormat.Value findFormat = annotationIntrospector.findFormat(annotatedMember);
            return findFormat == null ? defaultPropertyFormat : defaultPropertyFormat.withOverrides(findFormat);
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public JsonInclude.Value findPropertyInclusion(MapperConfig<?> mapperConfig, Class<?> cls) {
            AnnotatedMember annotatedMember;
            JsonInclude.Value defaultPropertyInclusion = mapperConfig.getDefaultPropertyInclusion(cls);
            AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
            if (annotationIntrospector == null || (annotatedMember = this._member) == null) {
                return defaultPropertyInclusion;
            }
            JsonInclude.Value findPropertyInclusion = annotationIntrospector.findPropertyInclusion(annotatedMember);
            return findPropertyInclusion == null ? defaultPropertyInclusion : defaultPropertyInclusion.withOverrides(findPropertyInclusion);
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public AnnotatedMember getMember() {
            return this._member;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public PropertyMetadata getMetadata() {
            return this._metadata;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public JavaType getType() {
            return this._type;
        }

        public PropertyName getWrapperName() {
            return this._wrapperName;
        }

        public Std withType(JavaType javaType) {
            return new Std(this, javaType);
        }
    }

    static {
        new JsonFormat.Value();
        JsonInclude.Value.empty();
    }

    JsonFormat.Value findPropertyFormat(MapperConfig<?> mapperConfig, Class<?> cls);

    JsonInclude.Value findPropertyInclusion(MapperConfig<?> mapperConfig, Class<?> cls);

    AnnotatedMember getMember();

    PropertyMetadata getMetadata();

    JavaType getType();
}
