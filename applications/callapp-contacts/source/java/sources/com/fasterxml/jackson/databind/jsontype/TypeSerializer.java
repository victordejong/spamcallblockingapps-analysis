package com.fasterxml.jackson.databind.jsontype;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.core.util.VersionUtil;
import com.fasterxml.jackson.databind.BeanProperty;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/TypeSerializer.class */
public abstract class TypeSerializer {

    /* renamed from: com.fasterxml.jackson.databind.jsontype.TypeSerializer$1 */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/TypeSerializer$1.class */
    public static /* synthetic */ class C105511 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[JsonTypeInfo.EnumC10517As.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As = iArr;
            try {
                iArr[JsonTypeInfo.EnumC10517As.EXISTING_PROPERTY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[JsonTypeInfo.EnumC10517As.EXTERNAL_PROPERTY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[JsonTypeInfo.EnumC10517As.PROPERTY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[JsonTypeInfo.EnumC10517As.WRAPPER_ARRAY.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[JsonTypeInfo.EnumC10517As.WRAPPER_OBJECT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    protected final void _writeLegacySuffix(JsonGenerator jsonGenerator, WritableTypeId writableTypeId) throws IOException {
        writableTypeId.wrapperWritten = !jsonGenerator.canWriteTypeId();
        writeTypeSuffix(jsonGenerator, writableTypeId);
    }

    public abstract TypeSerializer forProperty(BeanProperty beanProperty);

    public abstract String getPropertyName();

    public abstract TypeIdResolver getTypeIdResolver();

    public abstract JsonTypeInfo.EnumC10517As getTypeInclusion();

    public WritableTypeId typeId(Object obj, JsonToken jsonToken) {
        WritableTypeId writableTypeId = new WritableTypeId(obj, jsonToken);
        int i = C105511.$SwitchMap$com$fasterxml$jackson$annotation$JsonTypeInfo$As[getTypeInclusion().ordinal()];
        if (i == 1) {
            writableTypeId.include = WritableTypeId.Inclusion.PAYLOAD_PROPERTY;
            writableTypeId.asProperty = getPropertyName();
        } else if (i == 2) {
            writableTypeId.include = WritableTypeId.Inclusion.PARENT_PROPERTY;
            writableTypeId.asProperty = getPropertyName();
        } else if (i == 3) {
            writableTypeId.include = WritableTypeId.Inclusion.METADATA_PROPERTY;
            writableTypeId.asProperty = getPropertyName();
        } else if (i == 4) {
            writableTypeId.include = WritableTypeId.Inclusion.WRAPPER_ARRAY;
        } else if (i != 5) {
            VersionUtil.throwInternal();
        } else {
            writableTypeId.include = WritableTypeId.Inclusion.WRAPPER_OBJECT;
        }
        return writableTypeId;
    }

    public WritableTypeId typeId(Object obj, JsonToken jsonToken, Object obj2) {
        WritableTypeId typeId = typeId(obj, jsonToken);
        typeId.f34289id = obj2;
        return typeId;
    }

    public WritableTypeId typeId(Object obj, Class<?> cls, JsonToken jsonToken) {
        WritableTypeId typeId = typeId(obj, jsonToken);
        typeId.forValueType = cls;
        return typeId;
    }

    @Deprecated
    public void writeCustomTypePrefixForArray(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        writeTypePrefix(jsonGenerator, typeId(obj, JsonToken.START_ARRAY, str));
    }

    @Deprecated
    public void writeCustomTypePrefixForObject(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        writeTypePrefix(jsonGenerator, typeId(obj, JsonToken.START_OBJECT, str));
    }

    @Deprecated
    public void writeCustomTypePrefixForScalar(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        writeTypePrefix(jsonGenerator, typeId(obj, JsonToken.VALUE_STRING, str));
    }

    @Deprecated
    public void writeCustomTypeSuffixForArray(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        _writeLegacySuffix(jsonGenerator, typeId(obj, JsonToken.START_ARRAY, str));
    }

    @Deprecated
    public void writeCustomTypeSuffixForObject(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        _writeLegacySuffix(jsonGenerator, typeId(obj, JsonToken.START_OBJECT, str));
    }

    @Deprecated
    public void writeCustomTypeSuffixForScalar(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        _writeLegacySuffix(jsonGenerator, typeId(obj, JsonToken.VALUE_STRING, str));
    }

    public abstract WritableTypeId writeTypePrefix(JsonGenerator jsonGenerator, WritableTypeId writableTypeId) throws IOException;

    @Deprecated
    public void writeTypePrefixForArray(Object obj, JsonGenerator jsonGenerator) throws IOException {
        writeTypePrefix(jsonGenerator, typeId(obj, JsonToken.START_ARRAY));
    }

    @Deprecated
    public void writeTypePrefixForArray(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
        writeTypePrefix(jsonGenerator, typeId(obj, cls, JsonToken.START_ARRAY));
    }

    @Deprecated
    public void writeTypePrefixForObject(Object obj, JsonGenerator jsonGenerator) throws IOException {
        writeTypePrefix(jsonGenerator, typeId(obj, JsonToken.START_OBJECT));
    }

    @Deprecated
    public void writeTypePrefixForObject(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
        writeTypePrefix(jsonGenerator, typeId(obj, cls, JsonToken.START_OBJECT));
    }

    @Deprecated
    public void writeTypePrefixForScalar(Object obj, JsonGenerator jsonGenerator) throws IOException {
        writeTypePrefix(jsonGenerator, typeId(obj, JsonToken.VALUE_STRING));
    }

    @Deprecated
    public void writeTypePrefixForScalar(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
        writeTypePrefix(jsonGenerator, typeId(obj, cls, JsonToken.VALUE_STRING));
    }

    public abstract WritableTypeId writeTypeSuffix(JsonGenerator jsonGenerator, WritableTypeId writableTypeId) throws IOException;

    @Deprecated
    public void writeTypeSuffixForArray(Object obj, JsonGenerator jsonGenerator) throws IOException {
        _writeLegacySuffix(jsonGenerator, typeId(obj, JsonToken.START_ARRAY));
    }

    @Deprecated
    public void writeTypeSuffixForObject(Object obj, JsonGenerator jsonGenerator) throws IOException {
        _writeLegacySuffix(jsonGenerator, typeId(obj, JsonToken.START_OBJECT));
    }

    @Deprecated
    public void writeTypeSuffixForScalar(Object obj, JsonGenerator jsonGenerator) throws IOException {
        _writeLegacySuffix(jsonGenerator, typeId(obj, JsonToken.VALUE_STRING));
    }
}
