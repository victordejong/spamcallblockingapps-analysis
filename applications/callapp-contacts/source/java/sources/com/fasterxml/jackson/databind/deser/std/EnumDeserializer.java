package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.cfg.CoercionAction;
import com.fasterxml.jackson.databind.cfg.CoercionInputShape;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.CompactStringObjectMap;
import com.fasterxml.jackson.databind.util.EnumResolver;
import java.io.IOException;
import java.util.Objects;
@JacksonStdImpl
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/EnumDeserializer.class */
public class EnumDeserializer extends StdScalarDeserializer<Object> implements ContextualDeserializer {
    private static final long serialVersionUID = 1;
    protected final Boolean _caseInsensitive;
    private final Enum<?> _enumDefaultValue;
    protected Object[] _enumsByIndex;
    protected final CompactStringObjectMap _lookupByName;
    protected CompactStringObjectMap _lookupByToString;

    /* renamed from: com.fasterxml.jackson.databind.deser.std.EnumDeserializer$1 */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/EnumDeserializer$1.class */
    public static /* synthetic */ class C105311 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[CoercionAction.values().length];
            $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction = iArr;
            try {
                iArr[CoercionAction.AsNull.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction[CoercionAction.AsEmpty.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction[CoercionAction.TryConvert.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    protected EnumDeserializer(EnumDeserializer enumDeserializer, Boolean bool) {
        super(enumDeserializer);
        this._lookupByName = enumDeserializer._lookupByName;
        this._enumsByIndex = enumDeserializer._enumsByIndex;
        this._enumDefaultValue = enumDeserializer._enumDefaultValue;
        this._caseInsensitive = bool;
    }

    @Deprecated
    public EnumDeserializer(EnumResolver enumResolver) {
        this(enumResolver, (Boolean) null);
    }

    public EnumDeserializer(EnumResolver enumResolver, Boolean bool) {
        super(enumResolver.getEnumClass());
        this._lookupByName = enumResolver.constructLookup();
        this._enumsByIndex = enumResolver.getRawEnums();
        this._enumDefaultValue = enumResolver.getDefaultValue();
        this._caseInsensitive = bool;
    }

    private final Object _deserializeAltString(JsonParser jsonParser, DeserializationContext deserializationContext, CompactStringObjectMap compactStringObjectMap, String str) throws IOException {
        char charAt;
        String trim = str.trim();
        if (trim.isEmpty()) {
            int i = C105311.$SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction[(str.isEmpty() ? _checkCoercionFail(deserializationContext, _findCoercionFromEmptyString(deserializationContext), handledType(), str, "empty String (\"\")") : _checkCoercionFail(deserializationContext, _findCoercionFromBlankString(deserializationContext), handledType(), str, "blank String (all whitespace)")).ordinal()];
            if (i != 2 && i != 3) {
                return null;
            }
            return getEmptyValue(deserializationContext);
        }
        if (Boolean.TRUE.equals(this._caseInsensitive)) {
            Object findCaseInsensitive = compactStringObjectMap.findCaseInsensitive(trim);
            if (findCaseInsensitive != null) {
                return findCaseInsensitive;
            }
        } else if (!deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_NUMBERS_FOR_ENUMS) && (charAt = trim.charAt(0)) >= '0' && charAt <= '9') {
            try {
                int parseInt = Integer.parseInt(trim);
                if (!deserializationContext.isEnabled(MapperFeature.ALLOW_COERCION_OF_SCALARS)) {
                    return deserializationContext.handleWeirdStringValue(_enumClass(), trim, "value looks like quoted Enum index, but `MapperFeature.ALLOW_COERCION_OF_SCALARS` prevents use", new Object[0]);
                }
                if (parseInt >= 0) {
                    Object[] objArr = this._enumsByIndex;
                    if (parseInt < objArr.length) {
                        return objArr[parseInt];
                    }
                }
            } catch (NumberFormatException e) {
            }
        }
        if (this._enumDefaultValue != null && deserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE)) {
            return this._enumDefaultValue;
        }
        if (deserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_AS_NULL)) {
            return null;
        }
        return deserializationContext.handleWeirdStringValue(_enumClass(), trim, "not one of the values accepted for Enum class: %s", compactStringObjectMap.keys());
    }

    @Deprecated
    public static JsonDeserializer<?> deserializerForCreator(DeserializationConfig deserializationConfig, Class<?> cls, AnnotatedMethod annotatedMethod) {
        return deserializerForCreator(deserializationConfig, cls, annotatedMethod, null, null);
    }

    public static JsonDeserializer<?> deserializerForCreator(DeserializationConfig deserializationConfig, Class<?> cls, AnnotatedMethod annotatedMethod, ValueInstantiator valueInstantiator, SettableBeanProperty[] settableBeanPropertyArr) {
        if (deserializationConfig.canOverrideAccessModifiers()) {
            ClassUtil.checkAndFixAccess(annotatedMethod.getMember(), deserializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        return new FactoryBasedEnumDeserializer(cls, annotatedMethod, annotatedMethod.getParameterType(0), valueInstantiator, settableBeanPropertyArr);
    }

    public static JsonDeserializer<?> deserializerForNoArgsCreator(DeserializationConfig deserializationConfig, Class<?> cls, AnnotatedMethod annotatedMethod) {
        if (deserializationConfig.canOverrideAccessModifiers()) {
            ClassUtil.checkAndFixAccess(annotatedMethod.getMember(), deserializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        return new FactoryBasedEnumDeserializer(cls, annotatedMethod);
    }

    protected Object _deserializeOther(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return jsonParser.hasToken(JsonToken.START_ARRAY) ? _deserializeFromArray(jsonParser, deserializationContext) : deserializationContext.handleUnexpectedToken(_enumClass(), jsonParser);
    }

    protected Class<?> _enumClass() {
        return handledType();
    }

    protected Object _fromInteger(JsonParser jsonParser, DeserializationContext deserializationContext, int i) throws IOException {
        CoercionAction findCoercionAction = deserializationContext.findCoercionAction(logicalType(), handledType(), CoercionInputShape.Integer);
        if (findCoercionAction == CoercionAction.Fail) {
            if (deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_NUMBERS_FOR_ENUMS)) {
                return deserializationContext.handleWeirdNumberValue(_enumClass(), Integer.valueOf(i), "not allowed to deserialize Enum value out of number: disable DeserializationConfig.DeserializationFeature.FAIL_ON_NUMBERS_FOR_ENUMS to allow", new Object[0]);
            }
            Class<?> handledType = handledType();
            _checkCoercionFail(deserializationContext, findCoercionAction, handledType, Integer.valueOf(i), "Integer value (" + i + ")");
        }
        int i2 = C105311.$SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction[findCoercionAction.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                return getEmptyValue(deserializationContext);
            }
            if (i >= 0) {
                Object[] objArr = this._enumsByIndex;
                if (i < objArr.length) {
                    return objArr[i];
                }
            }
            if (this._enumDefaultValue != null && deserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE)) {
                return this._enumDefaultValue;
            }
            if (deserializationContext.isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_AS_NULL)) {
                return null;
            }
            return deserializationContext.handleWeirdNumberValue(_enumClass(), Integer.valueOf(i), "index value outside legal index range [0..%s]", Integer.valueOf(this._enumsByIndex.length - 1));
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0042, code lost:
        if (r12 == null) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.lang.Object _fromString(com.fasterxml.jackson.core.JsonParser r7, com.fasterxml.jackson.databind.DeserializationContext r8, java.lang.String r9) throws java.io.IOException {
        /*
            r6 = this;
            r0 = r8
            com.fasterxml.jackson.databind.DeserializationFeature r1 = com.fasterxml.jackson.databind.DeserializationFeature.READ_ENUMS_USING_TO_STRING
            boolean r0 = r0.isEnabled(r1)
            if (r0 == 0) goto L14
            r0 = r6
            r1 = r8
            com.fasterxml.jackson.databind.util.CompactStringObjectMap r0 = r0._getToStringLookup(r1)
            r10 = r0
            goto L1a
        L14:
            r0 = r6
            com.fasterxml.jackson.databind.util.CompactStringObjectMap r0 = r0._lookupByName
            r10 = r0
        L1a:
            r0 = r10
            r1 = r9
            java.lang.Object r0 = r0.find(r1)
            r11 = r0
            r0 = r11
            r12 = r0
            r0 = r11
            if (r0 != 0) goto L56
            r0 = r9
            java.lang.String r0 = r0.trim()
            r11 = r0
            r0 = r11
            r1 = r9
            if (r0 == r1) goto L4b
            r0 = r10
            r1 = r11
            java.lang.Object r0 = r0.find(r1)
            r12 = r0
            r0 = r12
            if (r0 != 0) goto L48
            goto L4b
        L48:
            goto L56
        L4b:
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r10
            r4 = r11
            java.lang.Object r0 = r0._deserializeAltString(r1, r2, r3, r4)
            return r0
        L56:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.std.EnumDeserializer._fromString(com.fasterxml.jackson.core.JsonParser, com.fasterxml.jackson.databind.DeserializationContext, java.lang.String):java.lang.Object");
    }

    protected CompactStringObjectMap _getToStringLookup(DeserializationContext deserializationContext) {
        CompactStringObjectMap compactStringObjectMap = this._lookupByToString;
        CompactStringObjectMap compactStringObjectMap2 = compactStringObjectMap;
        if (compactStringObjectMap == null) {
            synchronized (this) {
                compactStringObjectMap2 = EnumResolver.constructUsingToString(deserializationContext.getConfig(), _enumClass()).constructLookup();
            }
            this._lookupByToString = compactStringObjectMap2;
        }
        return compactStringObjectMap2;
    }

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        Boolean findFormatFeature = findFormatFeature(deserializationContext, beanProperty, handledType(), JsonFormat.Feature.ACCEPT_CASE_INSENSITIVE_PROPERTIES);
        Boolean bool = findFormatFeature;
        if (findFormatFeature == null) {
            bool = this._caseInsensitive;
        }
        return withResolved(bool);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return jsonParser.hasToken(JsonToken.VALUE_STRING) ? _fromString(jsonParser, deserializationContext, jsonParser.getText()) : jsonParser.hasToken(JsonToken.VALUE_NUMBER_INT) ? _fromInteger(jsonParser, deserializationContext, jsonParser.getIntValue()) : jsonParser.isExpectedStartObjectToken() ? _fromString(jsonParser, deserializationContext, deserializationContext.extractScalarFromObject(jsonParser, this, this._valueClass)) : _deserializeOther(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Object getEmptyValue(DeserializationContext deserializationContext) throws JsonMappingException {
        return this._enumDefaultValue;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public boolean isCachable() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public LogicalType logicalType() {
        return LogicalType.Enum;
    }

    public EnumDeserializer withResolved(Boolean bool) {
        return Objects.equals(this._caseInsensitive, bool) ? this : new EnumDeserializer(this, bool);
    }
}
