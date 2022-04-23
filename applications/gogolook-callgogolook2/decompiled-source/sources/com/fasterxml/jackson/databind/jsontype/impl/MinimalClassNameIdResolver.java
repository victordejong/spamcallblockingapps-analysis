package com.fasterxml.jackson.databind.jsontype.impl;

import androidx.media2.session.MediaSessionImplBase;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeFactory;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/impl/MinimalClassNameIdResolver.class */
public class MinimalClassNameIdResolver extends ClassNameIdResolver {
    public final String _basePackageName;
    public final String _basePackagePrefix;

    public MinimalClassNameIdResolver(JavaType javaType, TypeFactory typeFactory) {
        super(javaType, typeFactory);
        String name = javaType.getRawClass().getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf < 0) {
            this._basePackageName = "";
            this._basePackagePrefix = MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM;
            return;
        }
        this._basePackagePrefix = name.substring(0, lastIndexOf + 1);
        this._basePackageName = name.substring(0, lastIndexOf);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.ClassNameIdResolver
    public JavaType _typeFromId(String str, TypeFactory typeFactory) {
        String str2 = str;
        if (str.startsWith(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM)) {
            StringBuilder sb = new StringBuilder(str.length() + this._basePackageName.length());
            if (this._basePackageName.length() == 0) {
                sb.append(str.substring(1));
            } else {
                sb.append(this._basePackageName);
                sb.append(str);
            }
            str2 = sb.toString();
        }
        return super._typeFromId(str2, typeFactory);
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
