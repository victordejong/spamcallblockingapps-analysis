package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.DatabindContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver.class */
public class MinimalClassNameIdResolver extends ClassNameIdResolver {
    protected final String _basePackageName;
    protected final String _basePackagePrefix;

    protected MinimalClassNameIdResolver(JavaType javaType, TypeFactory typeFactory, PolymorphicTypeValidator polymorphicTypeValidator) {
        super(javaType, typeFactory, polymorphicTypeValidator);
        String name = javaType.getRawClass().getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf < 0) {
            this._basePackageName = "";
            this._basePackagePrefix = ".";
            return;
        }
        this._basePackagePrefix = name.substring(0, lastIndexOf + 1);
        this._basePackageName = name.substring(0, lastIndexOf);
    }

    public static MinimalClassNameIdResolver construct(JavaType javaType, MapperConfig<?> mapperConfig, PolymorphicTypeValidator polymorphicTypeValidator) {
        return new MinimalClassNameIdResolver(javaType, mapperConfig.getTypeFactory(), polymorphicTypeValidator);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.jsontype.impl.ClassNameIdResolver
    public JavaType _typeFromId(String str, DatabindContext databindContext) throws IOException {
        String str2 = str;
        if (str.startsWith(".")) {
            StringBuilder sb = new StringBuilder(str.length() + this._basePackageName.length());
            if (this._basePackageName.isEmpty()) {
                sb.append(str.substring(1));
            } else {
                sb.append(this._basePackageName);
                sb.append(str);
            }
            str2 = sb.toString();
        }
        return super._typeFromId(str2, databindContext);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.ClassNameIdResolver, com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public JsonTypeInfo.Id getMechanism() {
        return JsonTypeInfo.Id.MINIMAL_CLASS;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.ClassNameIdResolver, com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public String idFromValue(Object obj) {
        String name = obj.getClass().getName();
        String str = name;
        if (name.startsWith(this._basePackagePrefix)) {
            str = name.substring(this._basePackagePrefix.length() - 1);
        }
        return str;
    }
}
