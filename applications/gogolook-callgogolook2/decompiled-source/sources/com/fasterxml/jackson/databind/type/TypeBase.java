package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializable;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/type/TypeBase.class */
public abstract class TypeBase extends JavaType implements JsonSerializable {
    public static final TypeBindings NO_BINDINGS = TypeBindings.emptyBindings();
    public final TypeBindings _bindings;
    public volatile transient String _canonicalName;
    public final JavaType _superClass;
    public final JavaType[] _superInterfaces;

    public TypeBase(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, int i, Object obj, Object obj2, boolean z) {
        super(cls, i, obj, obj2, z);
        this._bindings = typeBindings == null ? NO_BINDINGS : typeBindings;
        this._superClass = javaType;
        this._superInterfaces = javaTypeArr;
    }

    public static StringBuilder _classSignature(Class<?> cls, StringBuilder sb, boolean z) {
        if (!cls.isPrimitive()) {
            sb.append('L');
            String name = cls.getName();
            int length = name.length();
            for (int i = 0; i < length; i++) {
                char charAt = name.charAt(i);
                char c = charAt;
                if (charAt == '.') {
                    c = '/';
                }
                sb.append(c);
            }
            if (z) {
                sb.append(';');
            }
        } else if (cls == Boolean.TYPE) {
            sb.append('Z');
        } else if (cls == Byte.TYPE) {
            sb.append('B');
        } else if (cls == Short.TYPE) {
            sb.append('S');
        } else if (cls == Character.TYPE) {
            sb.append('C');
        } else if (cls == Integer.TYPE) {
            sb.append('I');
        } else if (cls == Long.TYPE) {
            sb.append('J');
        } else if (cls == Float.TYPE) {
            sb.append('F');
        } else if (cls == Double.TYPE) {
            sb.append('D');
        } else if (cls == Void.TYPE) {
            sb.append('V');
        } else {
            throw new IllegalStateException("Unrecognized primitive type: " + cls.getName());
        }
        return sb;
    }

    public String buildCanonicalName() {
        return this._class.getName();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType containedType(int i) {
        return this._bindings.getBoundType(i);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public int containedTypeCount() {
        return this._bindings.size();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public final JavaType findSuperType(Class<?> cls) {
        JavaType findSuperType;
        JavaType[] javaTypeArr;
        if (cls == this._class) {
            return this;
        }
        if (cls.isInterface() && (javaTypeArr = this._superInterfaces) != null) {
            int length = javaTypeArr.length;
            for (int i = 0; i < length; i++) {
                JavaType findSuperType2 = this._superInterfaces[i].findSuperType(cls);
                if (findSuperType2 != null) {
                    return findSuperType2;
                }
            }
        }
        JavaType javaType = this._superClass;
        if (javaType == null || (findSuperType = javaType.findSuperType(cls)) == null) {
            return null;
        }
        return findSuperType;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public TypeBindings getBindings() {
        return this._bindings;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public List<JavaType> getInterfaces() {
        int length;
        JavaType[] javaTypeArr = this._superInterfaces;
        if (!(javaTypeArr == null || (length = javaTypeArr.length) == 0)) {
            return length != 1 ? Arrays.asList(javaTypeArr) : Collections.singletonList(javaTypeArr[0]);
        }
        return Collections.emptyList();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType getSuperClass() {
        return this._superClass;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public <T> T getTypeHandler() {
        return (T) this._typeHandler;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public <T> T getValueHandler() {
        return (T) this._valueHandler;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializable
    public void serialize(JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        jsonGenerator.writeString(toCanonical());
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializable
    public void serializeWithType(JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException, JsonProcessingException {
        typeSerializer.writeTypePrefixForScalar(this, jsonGenerator);
        serialize(jsonGenerator, serializerProvider);
        typeSerializer.writeTypeSuffixForScalar(this, jsonGenerator);
    }

    @Override // com.fasterxml.jackson.core.type.ResolvedType
    public String toCanonical() {
        String str = this._canonicalName;
        String str2 = str;
        if (str == null) {
            str2 = buildCanonicalName();
        }
        return str2;
    }
}
