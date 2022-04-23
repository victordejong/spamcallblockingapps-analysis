package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.util.VersionUtil;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.cfg.CoercionAction;
import com.fasterxml.jackson.databind.cfg.CoercionInputShape;
import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.Currency;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/FromStringDeserializer.class */
public abstract class FromStringDeserializer<T> extends StdScalarDeserializer<T> {

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std.class */
    public static class Std extends FromStringDeserializer<Object> {
        public static final int STD_CHARSET = 9;
        public static final int STD_CLASS = 4;
        public static final int STD_CURRENCY = 6;
        public static final int STD_FILE = 1;
        public static final int STD_INET_ADDRESS = 11;
        public static final int STD_INET_SOCKET_ADDRESS = 12;
        public static final int STD_JAVA_TYPE = 5;
        public static final int STD_LOCALE = 8;
        public static final int STD_PATTERN = 7;
        public static final int STD_TIME_ZONE = 10;
        public static final int STD_URI = 3;
        public static final int STD_URL = 2;
        private static final long serialVersionUID = 1;
        protected final int _kind;

        protected Std(Class<?> cls, int i) {
            super(cls);
            this._kind = i;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
        protected Object _deserialize(String str, DeserializationContext deserializationContext) throws IOException {
            switch (this._kind) {
                case 1:
                    return new File(str);
                case 2:
                    return new URL(str);
                case 3:
                    return URI.create(str);
                case 4:
                    try {
                        return deserializationContext.findClass(str);
                    } catch (Exception e) {
                        return deserializationContext.handleInstantiationProblem(this._valueClass, str, ClassUtil.getRootCause(e));
                    }
                case 5:
                    return deserializationContext.getTypeFactory().constructFromCanonical(str);
                case 6:
                    return Currency.getInstance(str);
                case 7:
                    return Pattern.compile(str);
                case 8:
                    int _firstHyphenOrUnderscore = _firstHyphenOrUnderscore(str);
                    if (_firstHyphenOrUnderscore < 0) {
                        return new Locale(str);
                    }
                    String substring = str.substring(0, _firstHyphenOrUnderscore);
                    String substring2 = str.substring(_firstHyphenOrUnderscore + 1);
                    int _firstHyphenOrUnderscore2 = _firstHyphenOrUnderscore(substring2);
                    return _firstHyphenOrUnderscore2 < 0 ? new Locale(substring, substring2) : new Locale(substring, substring2.substring(0, _firstHyphenOrUnderscore2), substring2.substring(_firstHyphenOrUnderscore2 + 1));
                case 9:
                    return Charset.forName(str);
                case 10:
                    return TimeZone.getTimeZone(str);
                case 11:
                    return InetAddress.getByName(str);
                case 12:
                    if (str.startsWith("[")) {
                        int lastIndexOf = str.lastIndexOf(93);
                        if (lastIndexOf != -1) {
                            int indexOf = str.indexOf(58, lastIndexOf);
                            return new InetSocketAddress(str.substring(0, lastIndexOf + 1), indexOf >= 0 ? Integer.parseInt(str.substring(indexOf + 1)) : 0);
                        }
                        throw new InvalidFormatException(deserializationContext.getParser(), "Bracketed IPv6 address must contain closing bracket", str, InetSocketAddress.class);
                    }
                    int indexOf2 = str.indexOf(58);
                    if (indexOf2 >= 0) {
                        int i = indexOf2 + 1;
                        if (str.indexOf(58, i) < 0) {
                            return new InetSocketAddress(str.substring(0, indexOf2), Integer.parseInt(str.substring(i)));
                        }
                    }
                    return new InetSocketAddress(str, 0);
                default:
                    VersionUtil.throwInternal();
                    return null;
            }
        }

        @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
        protected Object _deserializeFromEmptyStringDefault(DeserializationContext deserializationContext) throws IOException {
            return getEmptyValue(deserializationContext);
        }

        protected int _firstHyphenOrUnderscore(String str) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (charAt == '_' || charAt == '-') {
                    return i;
                }
            }
            return -1;
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            int i = this._kind;
            return i != 3 ? i != 8 ? FromStringDeserializer.super.getEmptyValue(deserializationContext) : Locale.ROOT : URI.create("");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/FromStringDeserializer$StringBuilderDeserializer.class */
    public static class StringBuilderDeserializer extends FromStringDeserializer<Object> {
        public StringBuilderDeserializer() {
            super(StringBuilder.class);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
        protected Object _deserialize(String str, DeserializationContext deserializationContext) throws IOException {
            return new StringBuilder(str);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            String valueAsString = jsonParser.getValueAsString();
            return valueAsString != null ? _deserialize(valueAsString, deserializationContext) : FromStringDeserializer.super.deserialize(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
            return new StringBuilder();
        }

        @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public LogicalType logicalType() {
            return LogicalType.Textual;
        }
    }

    public FromStringDeserializer(Class<?> cls) {
        super(cls);
    }

    public static FromStringDeserializer<?> findDeserializer(Class<?> cls) {
        int i;
        if (cls == File.class) {
            i = 1;
        } else if (cls == URL.class) {
            i = 2;
        } else if (cls == URI.class) {
            i = 3;
        } else if (cls == Class.class) {
            i = 4;
        } else if (cls == JavaType.class) {
            i = 5;
        } else if (cls == Currency.class) {
            i = 6;
        } else if (cls == Pattern.class) {
            i = 7;
        } else if (cls == Locale.class) {
            i = 8;
        } else if (cls == Charset.class) {
            i = 9;
        } else if (cls == TimeZone.class) {
            i = 10;
        } else if (cls == InetAddress.class) {
            i = 11;
        } else if (cls == InetSocketAddress.class) {
            i = 12;
        } else if (cls == StringBuilder.class) {
            return new StringBuilderDeserializer();
        } else {
            return null;
        }
        return new Std(cls, i);
    }

    public static Class<?>[] types() {
        return new Class[]{File.class, URL.class, URI.class, Class.class, JavaType.class, Currency.class, Pattern.class, Locale.class, Charset.class, TimeZone.class, InetAddress.class, InetSocketAddress.class, StringBuilder.class};
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract T _deserialize(String str, DeserializationContext deserializationContext) throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public T _deserializeEmbedded(Object obj, DeserializationContext deserializationContext) throws IOException {
        deserializationContext.reportInputMismatch(this, "Don't know how to convert embedded Object of type %s into %s", obj.getClass().getName(), this._valueClass.getName());
        return null;
    }

    @Deprecated
    protected final T _deserializeFromEmptyString() throws IOException {
        return null;
    }

    protected Object _deserializeFromEmptyString(DeserializationContext deserializationContext) throws IOException {
        CoercionAction findCoercionAction = deserializationContext.findCoercionAction(logicalType(), this._valueClass, CoercionInputShape.EmptyString);
        if (findCoercionAction == CoercionAction.Fail) {
            deserializationContext.reportInputMismatch(this, "Cannot coerce empty String (\"\") to %s (but could if enabling coercion using `CoercionConfig`)", _coercedTypeDesc());
        }
        return findCoercionAction == CoercionAction.AsNull ? getNullValue(deserializationContext) : findCoercionAction == CoercionAction.AsEmpty ? getEmptyValue(deserializationContext) : _deserializeFromEmptyStringDefault(deserializationContext);
    }

    protected Object _deserializeFromEmptyStringDefault(DeserializationContext deserializationContext) throws IOException {
        return getNullValue(deserializationContext);
    }

    protected Object _deserializeFromOther(JsonParser jsonParser, DeserializationContext deserializationContext, JsonToken jsonToken) throws IOException {
        if (jsonToken == JsonToken.START_ARRAY) {
            return _deserializeFromArray(jsonParser, deserializationContext);
        }
        if (jsonToken != JsonToken.VALUE_EMBEDDED_OBJECT) {
            return deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
        }
        Object embeddedObject = jsonParser.getEmbeddedObject();
        if (embeddedObject == null) {
            return null;
        }
        return this._valueClass.isAssignableFrom(embeddedObject.getClass()) ? embeddedObject : _deserializeEmbedded(embeddedObject, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public T deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String valueAsString = jsonParser.getValueAsString();
        String str = valueAsString;
        if (valueAsString == null) {
            JsonToken currentToken = jsonParser.currentToken();
            if (currentToken != JsonToken.START_OBJECT) {
                return (T) _deserializeFromOther(jsonParser, deserializationContext, currentToken);
            }
            str = deserializationContext.extractScalarFromObject(jsonParser, this, this._valueClass);
        }
        if (!str.isEmpty()) {
            String trim = str.trim();
            if (!trim.isEmpty()) {
                try {
                    return _deserialize(trim, deserializationContext);
                } catch (IllegalArgumentException | MalformedURLException e) {
                    String str2 = "not a valid textual representation";
                    String message = e.getMessage();
                    if (message != null) {
                        str2 = "not a valid textual representation, problem: " + message;
                    }
                    JsonMappingException weirdStringException = deserializationContext.weirdStringException(trim, this._valueClass, str2);
                    weirdStringException.initCause(e);
                    throw weirdStringException;
                }
            }
        }
        return (T) _deserializeFromEmptyString(deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public LogicalType logicalType() {
        return LogicalType.OtherScalar;
    }
}
