package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.DatabindContext;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.IOException;
import java.util.EnumMap;
import java.util.EnumSet;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver.class */
public class ClassNameIdResolver extends TypeIdResolverBase {
    private static final String JAVA_UTIL_PKG = "java.util.";
    protected final PolymorphicTypeValidator _subTypeValidator;

    @Deprecated
    protected ClassNameIdResolver(JavaType javaType, TypeFactory typeFactory) {
        this(javaType, typeFactory, LaissezFaireSubTypeValidator.instance);
    }

    public ClassNameIdResolver(JavaType javaType, TypeFactory typeFactory, PolymorphicTypeValidator polymorphicTypeValidator) {
        super(javaType, typeFactory);
        this._subTypeValidator = polymorphicTypeValidator;
    }

    public static ClassNameIdResolver construct(JavaType javaType, MapperConfig<?> mapperConfig, PolymorphicTypeValidator polymorphicTypeValidator) {
        return new ClassNameIdResolver(javaType, mapperConfig.getTypeFactory(), polymorphicTypeValidator);
    }

    protected String _idFrom(Object obj, Class<?> cls, TypeFactory typeFactory) {
        String str;
        Class<? super Object> cls2 = cls;
        if (ClassUtil.isEnumType(cls)) {
            cls2 = cls;
            if (!cls.isEnum()) {
                cls2 = cls.getSuperclass();
            }
        }
        String name = cls2.getName();
        if (!name.startsWith(JAVA_UTIL_PKG)) {
            str = name;
            if (name.indexOf(36) >= 0) {
                str = name;
                if (ClassUtil.getOuterClass(cls2) != null) {
                    str = name;
                    if (ClassUtil.getOuterClass(this._baseType.getRawClass()) == null) {
                        str = this._baseType.getRawClass().getName();
                    }
                }
            }
        } else if (obj instanceof EnumSet) {
            str = typeFactory.constructCollectionType(EnumSet.class, ClassUtil.findEnumType((EnumSet) obj)).toCanonical();
        } else {
            str = name;
            if (obj instanceof EnumMap) {
                str = typeFactory.constructMapType(EnumMap.class, ClassUtil.findEnumType((EnumMap) obj), Object.class).toCanonical();
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JavaType _typeFromId(String str, DatabindContext databindContext) throws IOException {
        JavaType resolveAndValidateSubType = databindContext.resolveAndValidateSubType(this._baseType, str, this._subTypeValidator);
        return (resolveAndValidateSubType != null || !(databindContext instanceof DeserializationContext)) ? resolveAndValidateSubType : ((DeserializationContext) databindContext).handleUnknownTypeId(this._baseType, str, this, "no such class found");
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.TypeIdResolverBase, com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public String getDescForKnownTypeIds() {
        return "class name used as type id";
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public JsonTypeInfo.Id getMechanism() {
        return JsonTypeInfo.Id.CLASS;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public String idFromValue(Object obj) {
        return _idFrom(obj, obj.getClass(), this._typeFactory);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public String idFromValueAndType(Object obj, Class<?> cls) {
        return _idFrom(obj, cls, this._typeFactory);
    }

    public void registerSubtype(Class<?> cls, String str) {
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.TypeIdResolverBase, com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public JavaType typeFromId(DatabindContext databindContext, String str) throws IOException {
        return _typeFromId(str, databindContext);
    }
}
