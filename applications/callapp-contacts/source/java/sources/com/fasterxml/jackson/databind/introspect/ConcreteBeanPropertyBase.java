package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase.class */
public abstract class ConcreteBeanPropertyBase implements BeanProperty, Serializable {
    protected transient List<PropertyName> _aliases;
    protected final PropertyMetadata _metadata;

    public ConcreteBeanPropertyBase(PropertyMetadata propertyMetadata) {
        this._metadata = propertyMetadata == null ? PropertyMetadata.STD_REQUIRED_OR_OPTIONAL : propertyMetadata;
    }

    public ConcreteBeanPropertyBase(ConcreteBeanPropertyBase concreteBeanPropertyBase) {
        this._metadata = concreteBeanPropertyBase._metadata;
    }

    public List<PropertyName> findAliases(MapperConfig<?> mapperConfig) {
        List<PropertyName> list = this._aliases;
        List<PropertyName> list2 = list;
        if (list == null) {
            AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
            List<PropertyName> list3 = list;
            if (annotationIntrospector != null) {
                AnnotatedMember member = getMember();
                list3 = list;
                if (member != null) {
                    list3 = annotationIntrospector.findPropertyAliases(member);
                }
            }
            List<PropertyName> list4 = list3;
            if (list3 == null) {
                list4 = Collections.emptyList();
            }
            this._aliases = list4;
            list2 = list4;
        }
        return list2;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public JsonFormat.Value findPropertyFormat(MapperConfig<?> mapperConfig, Class<?> cls) {
        AnnotatedMember member;
        JsonFormat.Value defaultPropertyFormat = mapperConfig.getDefaultPropertyFormat(cls);
        AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        JsonFormat.Value findFormat = (annotationIntrospector == null || (member = getMember()) == null) ? null : annotationIntrospector.findFormat(member);
        if (defaultPropertyFormat != null) {
            return findFormat == null ? defaultPropertyFormat : defaultPropertyFormat.withOverrides(findFormat);
        }
        JsonFormat.Value value = findFormat;
        if (findFormat == null) {
            value = EMPTY_FORMAT;
        }
        return value;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public JsonInclude.Value findPropertyInclusion(MapperConfig<?> mapperConfig, Class<?> cls) {
        AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        AnnotatedMember member = getMember();
        if (member == null) {
            return mapperConfig.getDefaultPropertyInclusion(cls);
        }
        JsonInclude.Value defaultInclusion = mapperConfig.getDefaultInclusion(cls, member.getRawType());
        if (annotationIntrospector == null) {
            return defaultInclusion;
        }
        JsonInclude.Value findPropertyInclusion = annotationIntrospector.findPropertyInclusion(member);
        return defaultInclusion == null ? findPropertyInclusion : defaultInclusion.withOverrides(findPropertyInclusion);
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public PropertyMetadata getMetadata() {
        return this._metadata;
    }

    public boolean isRequired() {
        return this._metadata.isRequired();
    }
}
