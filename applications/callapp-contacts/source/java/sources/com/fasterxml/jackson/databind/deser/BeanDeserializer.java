package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.cfg.CoercionAction;
import com.fasterxml.jackson.databind.deser.impl.BeanAsArrayDeserializer;
import com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap;
import com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedCreator;
import com.fasterxml.jackson.databind.deser.impl.PropertyValueBuffer;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId;
import com.fasterxml.jackson.databind.util.IgnorePropertiesUtil;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/BeanDeserializer.class */
public class BeanDeserializer extends BeanDeserializerBase implements Serializable {
    private static final long serialVersionUID = 1;
    private volatile transient NameTransformer _currentlyTransforming;
    protected transient Exception _nullFromCreator;

    /* renamed from: com.fasterxml.jackson.databind.deser.BeanDeserializer$1 */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/BeanDeserializer$1.class */
    public static /* synthetic */ class C105281 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$core$JsonToken;
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a7 -> B:49:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00ab -> B:45:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00af -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b3 -> B:53:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b7 -> B:61:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00bb -> B:59:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00bf -> B:67:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c3 -> B:63:0x006a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c7 -> B:47:0x0076). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00cb -> B:43:0x0082). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00cf -> B:55:0x008e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d3 -> B:51:0x009a). Please submit an issue!!! */
        static {
            int[] iArr = new int[CoercionAction.values().length];
            $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction = iArr;
            try {
                iArr[CoercionAction.AsEmpty.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction[CoercionAction.AsNull.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction[CoercionAction.TryConvert.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[JsonToken.values().length];
            $SwitchMap$com$fasterxml$jackson$core$JsonToken = iArr2;
            try {
                iArr2[JsonToken.VALUE_STRING.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_NUMBER_INT.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_NUMBER_FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_EMBEDDED_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_TRUE.ordinal()] = 5;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_FALSE.ordinal()] = 6;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_NULL.ordinal()] = 7;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.START_ARRAY.ordinal()] = 8;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.FIELD_NAME.ordinal()] = 9;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.END_OBJECT.ordinal()] = 10;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/BeanDeserializer$BeanReferring.class */
    public static class BeanReferring extends ReadableObjectId.Referring {
        private Object _bean;
        private final DeserializationContext _context;
        private final SettableBeanProperty _prop;

        BeanReferring(DeserializationContext deserializationContext, UnresolvedForwardReference unresolvedForwardReference, JavaType javaType, PropertyValueBuffer propertyValueBuffer, SettableBeanProperty settableBeanProperty) {
            super(unresolvedForwardReference, javaType);
            this._context = deserializationContext;
            this._prop = settableBeanProperty;
        }

        @Override // com.fasterxml.jackson.databind.deser.impl.ReadableObjectId.Referring
        public void handleResolvedForwardReference(Object obj, Object obj2) throws IOException {
            if (this._bean == null) {
                DeserializationContext deserializationContext = this._context;
                SettableBeanProperty settableBeanProperty = this._prop;
                deserializationContext.reportInputMismatch(settableBeanProperty, "Cannot resolve ObjectId forward reference using property '%s' (of type %s): Bean not yet resolved", settableBeanProperty.getName(), this._prop.getDeclaringClass().getName());
            }
            this._prop.set(this._bean, obj2);
        }

        public void setBean(Object obj) {
            this._bean = obj;
        }
    }

    public BeanDeserializer(BeanDeserializerBase beanDeserializerBase) {
        super(beanDeserializerBase, beanDeserializerBase._ignoreAllUnknown);
    }

    public BeanDeserializer(BeanDeserializerBase beanDeserializerBase, BeanPropertyMap beanPropertyMap) {
        super(beanDeserializerBase, beanPropertyMap);
    }

    public BeanDeserializer(BeanDeserializerBase beanDeserializerBase, ObjectIdReader objectIdReader) {
        super(beanDeserializerBase, objectIdReader);
    }

    public BeanDeserializer(BeanDeserializerBase beanDeserializerBase, NameTransformer nameTransformer) {
        super(beanDeserializerBase, nameTransformer);
    }

    @Deprecated
    public BeanDeserializer(BeanDeserializerBase beanDeserializerBase, Set<String> set) {
        super(beanDeserializerBase, set);
    }

    public BeanDeserializer(BeanDeserializerBase beanDeserializerBase, Set<String> set, Set<String> set2) {
        super(beanDeserializerBase, set, set2);
    }

    protected BeanDeserializer(BeanDeserializerBase beanDeserializerBase, boolean z) {
        super(beanDeserializerBase, z);
    }

    public BeanDeserializer(BeanDeserializerBuilder beanDeserializerBuilder, BeanDescription beanDescription, BeanPropertyMap beanPropertyMap, Map<String, SettableBeanProperty> map, HashSet<String> hashSet, boolean z, Set<String> set, boolean z2) {
        super(beanDeserializerBuilder, beanDescription, beanPropertyMap, map, hashSet, z, set, z2);
    }

    @Deprecated
    public BeanDeserializer(BeanDeserializerBuilder beanDeserializerBuilder, BeanDescription beanDescription, BeanPropertyMap beanPropertyMap, Map<String, SettableBeanProperty> map, HashSet<String> hashSet, boolean z, boolean z2) {
        super(beanDeserializerBuilder, beanDescription, beanPropertyMap, map, hashSet, z, null, z2);
    }

    private BeanReferring handleUnresolvedReference(DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty, PropertyValueBuffer propertyValueBuffer, UnresolvedForwardReference unresolvedForwardReference) throws JsonMappingException {
        BeanReferring beanReferring = new BeanReferring(deserializationContext, unresolvedForwardReference, settableBeanProperty.getType(), propertyValueBuffer, settableBeanProperty);
        unresolvedForwardReference.getRoid().appendReferring(beanReferring);
        return beanReferring;
    }

    private final Object vanillaDeserialize(JsonParser jsonParser, DeserializationContext deserializationContext, JsonToken jsonToken) throws IOException {
        String nextFieldName;
        Object createUsingDefault = this._valueInstantiator.createUsingDefault(deserializationContext);
        jsonParser.setCurrentValue(createUsingDefault);
        if (jsonParser.hasTokenId(5)) {
            String currentName = jsonParser.currentName();
            do {
                jsonParser.nextToken();
                SettableBeanProperty find = this._beanProperties.find(currentName);
                if (find != null) {
                    try {
                        find.deserializeAndSet(jsonParser, deserializationContext, createUsingDefault);
                    } catch (Exception e) {
                        wrapAndThrow(e, createUsingDefault, currentName, deserializationContext);
                    }
                } else {
                    handleUnknownVanilla(jsonParser, deserializationContext, createUsingDefault, currentName);
                }
                nextFieldName = jsonParser.nextFieldName();
                currentName = nextFieldName;
            } while (nextFieldName != null);
            return createUsingDefault;
        }
        return createUsingDefault;
    }

    protected Exception _creatorReturnedNullException() {
        if (this._nullFromCreator == null) {
            this._nullFromCreator = new NullPointerException("JSON Creator returned null");
        }
        return this._nullFromCreator;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer
    public Object _deserializeFromArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonDeserializer<Object> jsonDeserializer = this._arrayDelegateDeserializer;
        JsonDeserializer<Object> jsonDeserializer2 = jsonDeserializer;
        if (jsonDeserializer == null) {
            jsonDeserializer2 = this._delegateDeserializer;
            if (jsonDeserializer2 == null) {
                CoercionAction _findCoercionFromEmptyArray = _findCoercionFromEmptyArray(deserializationContext);
                boolean isEnabled = deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS);
                if (isEnabled || _findCoercionFromEmptyArray != CoercionAction.Fail) {
                    if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                        int i = C105281.$SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction[_findCoercionFromEmptyArray.ordinal()];
                        return i != 1 ? (i == 2 || i == 3) ? getNullValue(deserializationContext) : deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), JsonToken.START_ARRAY, jsonParser, (String) null, new Object[0]) : getEmptyValue(deserializationContext);
                    } else if (isEnabled) {
                        Object deserialize = deserialize(jsonParser, deserializationContext);
                        if (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                            handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                        }
                        return deserialize;
                    }
                }
                return deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
            }
        }
        Object createUsingArrayDelegate = this._valueInstantiator.createUsingArrayDelegate(deserializationContext, jsonDeserializer2.deserialize(jsonParser, deserializationContext));
        if (this._injectables != null) {
            injectValues(deserializationContext, createUsingArrayDelegate);
        }
        return createUsingArrayDelegate;
    }

    protected final Object _deserializeOther(JsonParser jsonParser, DeserializationContext deserializationContext, JsonToken jsonToken) throws IOException {
        if (jsonToken != null) {
            switch (C105281.$SwitchMap$com$fasterxml$jackson$core$JsonToken[jsonToken.ordinal()]) {
                case 1:
                    return deserializeFromString(jsonParser, deserializationContext);
                case 2:
                    return deserializeFromNumber(jsonParser, deserializationContext);
                case 3:
                    return deserializeFromDouble(jsonParser, deserializationContext);
                case 4:
                    return deserializeFromEmbedded(jsonParser, deserializationContext);
                case 5:
                case 6:
                    return deserializeFromBoolean(jsonParser, deserializationContext);
                case 7:
                    return deserializeFromNull(jsonParser, deserializationContext);
                case 8:
                    return _deserializeFromArray(jsonParser, deserializationContext);
                case 9:
                case 10:
                    return this._vanillaProcessing ? vanillaDeserialize(jsonParser, deserializationContext, jsonToken) : this._objectIdReader != null ? deserializeWithObjectId(jsonParser, deserializationContext) : deserializeFromObject(jsonParser, deserializationContext);
            }
        }
        return deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public Object _deserializeUsingPropertyBased(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object obj;
        TokenBuffer tokenBuffer;
        ArrayList arrayList;
        Object obj2;
        PropertyBasedCreator propertyBasedCreator = this._propertyBasedCreator;
        PropertyValueBuffer startBuilding = propertyBasedCreator.startBuilding(jsonParser, deserializationContext, this._objectIdReader);
        Class<?> activeView = this._needViewProcesing ? deserializationContext.getActiveView() : null;
        JsonToken currentToken = jsonParser.currentToken();
        ArrayList<BeanReferring> arrayList2 = null;
        TokenBuffer tokenBuffer2 = null;
        while (true) {
            TokenBuffer tokenBuffer3 = tokenBuffer2;
            if (currentToken != JsonToken.FIELD_NAME) {
                try {
                    obj = propertyBasedCreator.build(deserializationContext, startBuilding);
                } catch (Exception e) {
                    wrapInstantiationProblem(e, deserializationContext);
                    obj = null;
                }
                if (this._injectables != null) {
                    injectValues(deserializationContext, obj);
                }
                if (arrayList2 != null) {
                    for (BeanReferring beanReferring : arrayList2) {
                        beanReferring.setBean(obj);
                    }
                }
                Object obj3 = obj;
                if (tokenBuffer3 != null) {
                    if (obj.getClass() != this._beanType.getRawClass()) {
                        return handlePolymorphic(null, deserializationContext, obj, tokenBuffer3);
                    }
                    obj3 = handleUnknownProperties(deserializationContext, obj, tokenBuffer3);
                }
                return obj3;
            }
            String currentName = jsonParser.currentName();
            jsonParser.nextToken();
            SettableBeanProperty findCreatorProperty = propertyBasedCreator.findCreatorProperty(currentName);
            if (startBuilding.readIdProperty(currentName)) {
                arrayList = arrayList2;
                tokenBuffer = tokenBuffer3;
                if (findCreatorProperty == null) {
                    continue;
                    currentToken = jsonParser.nextToken();
                    arrayList2 = arrayList;
                    tokenBuffer2 = tokenBuffer;
                }
            }
            if (findCreatorProperty == null) {
                SettableBeanProperty find = this._beanProperties.find(currentName);
                if (find != null) {
                    try {
                        startBuilding.bufferProperty(find, _deserializeWithErrorWrapping(jsonParser, deserializationContext, find));
                        arrayList = arrayList2;
                        tokenBuffer = tokenBuffer3;
                    } catch (UnresolvedForwardReference e2) {
                        BeanReferring handleUnresolvedReference = handleUnresolvedReference(deserializationContext, find, startBuilding, e2);
                        arrayList = arrayList2;
                        if (arrayList2 == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(handleUnresolvedReference);
                        tokenBuffer = tokenBuffer3;
                    }
                } else if (IgnorePropertiesUtil.shouldIgnore(currentName, this._ignorableProps, this._includableProps)) {
                    handleIgnoredProperty(jsonParser, deserializationContext, handledType(), currentName);
                    arrayList = arrayList2;
                    tokenBuffer = tokenBuffer3;
                } else if (this._anySetter != null) {
                    try {
                        startBuilding.bufferAnyProperty(this._anySetter, currentName, this._anySetter.deserialize(jsonParser, deserializationContext));
                        arrayList = arrayList2;
                        tokenBuffer = tokenBuffer3;
                    } catch (Exception e3) {
                        wrapAndThrow(e3, this._beanType.getRawClass(), currentName, deserializationContext);
                        arrayList = arrayList2;
                        tokenBuffer = tokenBuffer3;
                    }
                } else {
                    TokenBuffer tokenBuffer4 = tokenBuffer3;
                    if (tokenBuffer3 == null) {
                        tokenBuffer4 = new TokenBuffer(jsonParser, deserializationContext);
                    }
                    tokenBuffer4.writeFieldName(currentName);
                    tokenBuffer4.copyCurrentStructure(jsonParser);
                    tokenBuffer = tokenBuffer4;
                    arrayList = arrayList2;
                }
            } else if (activeView == null || findCreatorProperty.visibleInView(activeView)) {
                arrayList = arrayList2;
                tokenBuffer = tokenBuffer3;
                if (startBuilding.assignParameter(findCreatorProperty, _deserializeWithErrorWrapping(jsonParser, deserializationContext, findCreatorProperty))) {
                    jsonParser.nextToken();
                    try {
                        obj2 = propertyBasedCreator.build(deserializationContext, startBuilding);
                    } catch (Exception e4) {
                        obj2 = wrapInstantiationProblem(e4, deserializationContext);
                    }
                    if (obj2 == null) {
                        return deserializationContext.handleInstantiationProblem(handledType(), null, _creatorReturnedNullException());
                    }
                    jsonParser.setCurrentValue(obj2);
                    if (obj2.getClass() != this._beanType.getRawClass()) {
                        return handlePolymorphic(jsonParser, deserializationContext, obj2, tokenBuffer3);
                    }
                    Object obj4 = obj2;
                    if (tokenBuffer3 != null) {
                        obj4 = handleUnknownProperties(deserializationContext, obj2, tokenBuffer3);
                    }
                    return deserialize(jsonParser, deserializationContext, obj4);
                }
            } else {
                jsonParser.skipChildren();
                arrayList = arrayList2;
                tokenBuffer = tokenBuffer3;
            }
            currentToken = jsonParser.nextToken();
            arrayList2 = arrayList;
            tokenBuffer2 = tokenBuffer;
        }
    }

    protected final Object _deserializeWithErrorWrapping(JsonParser jsonParser, DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty) throws IOException {
        try {
            return settableBeanProperty.deserialize(jsonParser, deserializationContext);
        } catch (Exception e) {
            wrapAndThrow(e, this._beanType.getRawClass(), settableBeanProperty.getName(), deserializationContext);
            return null;
        }
    }

    protected Object _deserializeWithExternalTypeId(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, ExternalTypeHandler externalTypeHandler) throws IOException {
        Class<?> activeView = this._needViewProcesing ? deserializationContext.getActiveView() : null;
        JsonToken currentToken = jsonParser.currentToken();
        while (currentToken == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.currentName();
            JsonToken nextToken = jsonParser.nextToken();
            SettableBeanProperty find = this._beanProperties.find(currentName);
            if (find != null) {
                if (nextToken.isScalarValue()) {
                    externalTypeHandler.handleTypePropertyValue(jsonParser, deserializationContext, currentName, obj);
                }
                if (activeView == null || find.visibleInView(activeView)) {
                    try {
                        find.deserializeAndSet(jsonParser, deserializationContext, obj);
                    } catch (Exception e) {
                        wrapAndThrow(e, obj, currentName, deserializationContext);
                    }
                } else {
                    jsonParser.skipChildren();
                }
            } else if (IgnorePropertiesUtil.shouldIgnore(currentName, this._ignorableProps, this._includableProps)) {
                handleIgnoredProperty(jsonParser, deserializationContext, obj, currentName);
            } else if (!externalTypeHandler.handlePropertyValue(jsonParser, deserializationContext, currentName, obj)) {
                if (this._anySetter != null) {
                    try {
                        this._anySetter.deserializeAndSet(jsonParser, deserializationContext, obj, currentName);
                    } catch (Exception e2) {
                        wrapAndThrow(e2, obj, currentName, deserializationContext);
                    }
                } else {
                    handleUnknownProperty(jsonParser, deserializationContext, obj, currentName);
                }
            }
            currentToken = jsonParser.nextToken();
        }
        return externalTypeHandler.complete(jsonParser, deserializationContext, obj);
    }

    @Deprecated
    protected Object _missingToken(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        throw deserializationContext.endOfInputException(handledType());
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    protected BeanDeserializerBase asArrayDeserializer() {
        return new BeanAsArrayDeserializer(this, this._beanProperties.getPropertiesInInsertionOrder());
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.isExpectedStartObjectToken()) {
            if (this._vanillaProcessing) {
                return vanillaDeserialize(jsonParser, deserializationContext, jsonParser.nextToken());
            }
            jsonParser.nextToken();
            return this._objectIdReader != null ? deserializeWithObjectId(jsonParser, deserializationContext) : deserializeFromObject(jsonParser, deserializationContext);
        }
        return _deserializeOther(jsonParser, deserializationContext, jsonParser.currentToken());
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        String str;
        String nextFieldName;
        jsonParser.setCurrentValue(obj);
        if (this._injectables != null) {
            injectValues(deserializationContext, obj);
        }
        if (this._unwrappedPropertyHandler != null) {
            return deserializeWithUnwrapped(jsonParser, deserializationContext, obj);
        }
        if (this._externalTypeIdHandler != null) {
            return deserializeWithExternalTypeId(jsonParser, deserializationContext, obj);
        }
        if (jsonParser.isExpectedStartObjectToken()) {
            String nextFieldName2 = jsonParser.nextFieldName();
            str = nextFieldName2;
            if (nextFieldName2 == null) {
                return obj;
            }
        } else if (!jsonParser.hasTokenId(5)) {
            return obj;
        } else {
            str = jsonParser.currentName();
        }
        String str2 = str;
        if (this._needViewProcesing) {
            Class<?> activeView = deserializationContext.getActiveView();
            str2 = str;
            if (activeView != null) {
                return deserializeWithView(jsonParser, deserializationContext, obj, activeView);
            }
        }
        do {
            jsonParser.nextToken();
            SettableBeanProperty find = this._beanProperties.find(str2);
            if (find != null) {
                try {
                    find.deserializeAndSet(jsonParser, deserializationContext, obj);
                } catch (Exception e) {
                    wrapAndThrow(e, obj, str2, deserializationContext);
                }
            } else {
                handleUnknownVanilla(jsonParser, deserializationContext, obj, str2);
            }
            nextFieldName = jsonParser.nextFieldName();
            str2 = nextFieldName;
        } while (nextFieldName != null);
        return obj;
    }

    protected Object deserializeFromNull(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.requiresCustomCodec()) {
            TokenBuffer tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
            tokenBuffer.writeEndObject();
            JsonParser asParser = tokenBuffer.asParser(jsonParser);
            asParser.nextToken();
            Object vanillaDeserialize = this._vanillaProcessing ? vanillaDeserialize(asParser, deserializationContext, JsonToken.END_OBJECT) : deserializeFromObject(asParser, deserializationContext);
            asParser.close();
            return vanillaDeserialize;
        }
        return deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public Object deserializeFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String nextFieldName;
        Class<?> activeView;
        Object objectId;
        if (this._objectIdReader == null || !this._objectIdReader.maySerializeAsObject() || !jsonParser.hasTokenId(5) || !this._objectIdReader.isValidReferencePropertyName(jsonParser.currentName(), jsonParser)) {
            if (this._nonStandardCreation) {
                return this._unwrappedPropertyHandler != null ? deserializeWithUnwrapped(jsonParser, deserializationContext) : this._externalTypeIdHandler != null ? deserializeWithExternalTypeId(jsonParser, deserializationContext) : deserializeFromObjectUsingNonDefault(jsonParser, deserializationContext);
            }
            Object createUsingDefault = this._valueInstantiator.createUsingDefault(deserializationContext);
            jsonParser.setCurrentValue(createUsingDefault);
            if (jsonParser.canReadObjectId() && (objectId = jsonParser.getObjectId()) != null) {
                _handleTypedObjectId(jsonParser, deserializationContext, createUsingDefault, objectId);
            }
            if (this._injectables != null) {
                injectValues(deserializationContext, createUsingDefault);
            }
            if (this._needViewProcesing && (activeView = deserializationContext.getActiveView()) != null) {
                return deserializeWithView(jsonParser, deserializationContext, createUsingDefault, activeView);
            }
            if (!jsonParser.hasTokenId(5)) {
                return createUsingDefault;
            }
            String currentName = jsonParser.currentName();
            do {
                jsonParser.nextToken();
                SettableBeanProperty find = this._beanProperties.find(currentName);
                if (find != null) {
                    try {
                        find.deserializeAndSet(jsonParser, deserializationContext, createUsingDefault);
                    } catch (Exception e) {
                        wrapAndThrow(e, createUsingDefault, currentName, deserializationContext);
                    }
                } else {
                    handleUnknownVanilla(jsonParser, deserializationContext, createUsingDefault, currentName);
                }
                nextFieldName = jsonParser.nextFieldName();
                currentName = nextFieldName;
            } while (nextFieldName != null);
            return createUsingDefault;
        }
        return deserializeFromObjectId(jsonParser, deserializationContext);
    }

    protected Object deserializeUsingPropertyBasedWithExternalTypeId(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        ExternalTypeHandler start = this._externalTypeIdHandler.start();
        PropertyBasedCreator propertyBasedCreator = this._propertyBasedCreator;
        PropertyValueBuffer startBuilding = propertyBasedCreator.startBuilding(jsonParser, deserializationContext, this._objectIdReader);
        Class<?> activeView = this._needViewProcesing ? deserializationContext.getActiveView() : null;
        JsonToken currentToken = jsonParser.currentToken();
        while (currentToken == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.currentName();
            JsonToken nextToken = jsonParser.nextToken();
            SettableBeanProperty findCreatorProperty = propertyBasedCreator.findCreatorProperty(currentName);
            if (!startBuilding.readIdProperty(currentName) || findCreatorProperty != null) {
                if (findCreatorProperty == null) {
                    SettableBeanProperty find = this._beanProperties.find(currentName);
                    if (find != null) {
                        if (nextToken.isScalarValue()) {
                            start.handleTypePropertyValue(jsonParser, deserializationContext, currentName, null);
                        }
                        if (activeView == null || find.visibleInView(activeView)) {
                            startBuilding.bufferProperty(find, find.deserialize(jsonParser, deserializationContext));
                        } else {
                            jsonParser.skipChildren();
                        }
                    } else if (!start.handlePropertyValue(jsonParser, deserializationContext, currentName, null)) {
                        if (IgnorePropertiesUtil.shouldIgnore(currentName, this._ignorableProps, this._includableProps)) {
                            handleIgnoredProperty(jsonParser, deserializationContext, handledType(), currentName);
                        } else if (this._anySetter != null) {
                            startBuilding.bufferAnyProperty(this._anySetter, currentName, this._anySetter.deserialize(jsonParser, deserializationContext));
                        } else {
                            handleUnknownProperty(jsonParser, deserializationContext, this._valueClass, currentName);
                        }
                    }
                } else if (!start.handlePropertyValue(jsonParser, deserializationContext, currentName, null) && startBuilding.assignParameter(findCreatorProperty, _deserializeWithErrorWrapping(jsonParser, deserializationContext, findCreatorProperty))) {
                    jsonParser.nextToken();
                    try {
                        Object build = propertyBasedCreator.build(deserializationContext, startBuilding);
                        return build.getClass() != this._beanType.getRawClass() ? deserializationContext.reportBadDefinition(this._beanType, String.format("Cannot create polymorphic instances with external type ids (%s -> %s)", this._beanType, build.getClass())) : _deserializeWithExternalTypeId(jsonParser, deserializationContext, build, start);
                    } catch (Exception e) {
                        wrapAndThrow(e, this._beanType.getRawClass(), currentName, deserializationContext);
                    }
                }
            }
            currentToken = jsonParser.nextToken();
        }
        try {
            return start.complete(jsonParser, deserializationContext, startBuilding, propertyBasedCreator);
        } catch (Exception e2) {
            return wrapInstantiationProblem(e2, deserializationContext);
        }
    }

    protected Object deserializeUsingPropertyBasedWithUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object obj;
        PropertyBasedCreator propertyBasedCreator = this._propertyBasedCreator;
        PropertyValueBuffer startBuilding = propertyBasedCreator.startBuilding(jsonParser, deserializationContext, this._objectIdReader);
        TokenBuffer tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
        tokenBuffer.writeStartObject();
        JsonToken currentToken = jsonParser.currentToken();
        while (currentToken == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.currentName();
            jsonParser.nextToken();
            SettableBeanProperty findCreatorProperty = propertyBasedCreator.findCreatorProperty(currentName);
            if (!startBuilding.readIdProperty(currentName) || findCreatorProperty != null) {
                if (findCreatorProperty == null) {
                    SettableBeanProperty find = this._beanProperties.find(currentName);
                    if (find != null) {
                        startBuilding.bufferProperty(find, _deserializeWithErrorWrapping(jsonParser, deserializationContext, find));
                    } else if (IgnorePropertiesUtil.shouldIgnore(currentName, this._ignorableProps, this._includableProps)) {
                        handleIgnoredProperty(jsonParser, deserializationContext, handledType(), currentName);
                    } else if (this._anySetter == null) {
                        tokenBuffer.writeFieldName(currentName);
                        tokenBuffer.copyCurrentStructure(jsonParser);
                    } else {
                        TokenBuffer asCopyOfValue = TokenBuffer.asCopyOfValue(jsonParser);
                        tokenBuffer.writeFieldName(currentName);
                        tokenBuffer.append(asCopyOfValue);
                        try {
                            startBuilding.bufferAnyProperty(this._anySetter, currentName, this._anySetter.deserialize(asCopyOfValue.asParserOnFirstToken(), deserializationContext));
                        } catch (Exception e) {
                            wrapAndThrow(e, this._beanType.getRawClass(), currentName, deserializationContext);
                        }
                    }
                } else if (startBuilding.assignParameter(findCreatorProperty, _deserializeWithErrorWrapping(jsonParser, deserializationContext, findCreatorProperty))) {
                    JsonToken nextToken = jsonParser.nextToken();
                    try {
                        obj = propertyBasedCreator.build(deserializationContext, startBuilding);
                    } catch (Exception e2) {
                        obj = wrapInstantiationProblem(e2, deserializationContext);
                    }
                    jsonParser.setCurrentValue(obj);
                    while (nextToken == JsonToken.FIELD_NAME) {
                        tokenBuffer.copyCurrentStructure(jsonParser);
                        nextToken = jsonParser.nextToken();
                    }
                    if (nextToken != JsonToken.END_OBJECT) {
                        deserializationContext.reportWrongTokenException(this, JsonToken.END_OBJECT, "Attempted to unwrap '%s' value", handledType().getName());
                    }
                    tokenBuffer.writeEndObject();
                    if (obj.getClass() == this._beanType.getRawClass()) {
                        return this._unwrappedPropertyHandler.processUnwrapped(jsonParser, deserializationContext, obj, tokenBuffer);
                    }
                    deserializationContext.reportInputMismatch(findCreatorProperty, "Cannot create polymorphic instances with unwrapped values", new Object[0]);
                    return null;
                }
            }
            currentToken = jsonParser.nextToken();
        }
        try {
            return this._unwrappedPropertyHandler.processUnwrapped(jsonParser, deserializationContext, propertyBasedCreator.build(deserializationContext, startBuilding), tokenBuffer);
        } catch (Exception e3) {
            wrapInstantiationProblem(e3, deserializationContext);
            return null;
        }
    }

    protected Object deserializeWithExternalTypeId(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return this._propertyBasedCreator != null ? deserializeUsingPropertyBasedWithExternalTypeId(jsonParser, deserializationContext) : this._delegateDeserializer != null ? this._valueInstantiator.createUsingDelegate(deserializationContext, this._delegateDeserializer.deserialize(jsonParser, deserializationContext)) : deserializeWithExternalTypeId(jsonParser, deserializationContext, this._valueInstantiator.createUsingDefault(deserializationContext));
    }

    protected Object deserializeWithExternalTypeId(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        return _deserializeWithExternalTypeId(jsonParser, deserializationContext, obj, this._externalTypeIdHandler.start());
    }

    protected Object deserializeWithUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this._delegateDeserializer != null) {
            return this._valueInstantiator.createUsingDelegate(deserializationContext, this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
        }
        if (this._propertyBasedCreator != null) {
            return deserializeUsingPropertyBasedWithUnwrapped(jsonParser, deserializationContext);
        }
        TokenBuffer tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
        tokenBuffer.writeStartObject();
        Object createUsingDefault = this._valueInstantiator.createUsingDefault(deserializationContext);
        jsonParser.setCurrentValue(createUsingDefault);
        if (this._injectables != null) {
            injectValues(deserializationContext, createUsingDefault);
        }
        String str = null;
        Class<?> activeView = this._needViewProcesing ? deserializationContext.getActiveView() : null;
        if (jsonParser.hasTokenId(5)) {
            str = jsonParser.currentName();
        }
        while (str != null) {
            jsonParser.nextToken();
            SettableBeanProperty find = this._beanProperties.find(str);
            if (find != null) {
                if (activeView == null || find.visibleInView(activeView)) {
                    try {
                        find.deserializeAndSet(jsonParser, deserializationContext, createUsingDefault);
                    } catch (Exception e) {
                        wrapAndThrow(e, createUsingDefault, str, deserializationContext);
                    }
                } else {
                    jsonParser.skipChildren();
                }
            } else if (IgnorePropertiesUtil.shouldIgnore(str, this._ignorableProps, this._includableProps)) {
                handleIgnoredProperty(jsonParser, deserializationContext, createUsingDefault, str);
            } else if (this._anySetter == null) {
                tokenBuffer.writeFieldName(str);
                tokenBuffer.copyCurrentStructure(jsonParser);
            } else {
                TokenBuffer asCopyOfValue = TokenBuffer.asCopyOfValue(jsonParser);
                tokenBuffer.writeFieldName(str);
                tokenBuffer.append(asCopyOfValue);
                try {
                    this._anySetter.deserializeAndSet(asCopyOfValue.asParserOnFirstToken(), deserializationContext, createUsingDefault, str);
                } catch (Exception e2) {
                    wrapAndThrow(e2, createUsingDefault, str, deserializationContext);
                }
            }
            str = jsonParser.nextFieldName();
        }
        tokenBuffer.writeEndObject();
        this._unwrappedPropertyHandler.processUnwrapped(jsonParser, deserializationContext, createUsingDefault, tokenBuffer);
        return createUsingDefault;
    }

    protected Object deserializeWithUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        JsonToken currentToken = jsonParser.currentToken();
        JsonToken jsonToken = currentToken;
        if (currentToken == JsonToken.START_OBJECT) {
            jsonToken = jsonParser.nextToken();
        }
        TokenBuffer tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
        tokenBuffer.writeStartObject();
        Class<?> activeView = this._needViewProcesing ? deserializationContext.getActiveView() : null;
        while (jsonToken == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.currentName();
            SettableBeanProperty find = this._beanProperties.find(currentName);
            jsonParser.nextToken();
            if (find != null) {
                if (activeView == null || find.visibleInView(activeView)) {
                    try {
                        find.deserializeAndSet(jsonParser, deserializationContext, obj);
                    } catch (Exception e) {
                        wrapAndThrow(e, obj, currentName, deserializationContext);
                    }
                } else {
                    jsonParser.skipChildren();
                }
            } else if (IgnorePropertiesUtil.shouldIgnore(currentName, this._ignorableProps, this._includableProps)) {
                handleIgnoredProperty(jsonParser, deserializationContext, obj, currentName);
            } else if (this._anySetter == null) {
                tokenBuffer.writeFieldName(currentName);
                tokenBuffer.copyCurrentStructure(jsonParser);
            } else {
                TokenBuffer asCopyOfValue = TokenBuffer.asCopyOfValue(jsonParser);
                tokenBuffer.writeFieldName(currentName);
                tokenBuffer.append(asCopyOfValue);
                try {
                    this._anySetter.deserializeAndSet(asCopyOfValue.asParserOnFirstToken(), deserializationContext, obj, currentName);
                } catch (Exception e2) {
                    wrapAndThrow(e2, obj, currentName, deserializationContext);
                }
            }
            jsonToken = jsonParser.nextToken();
        }
        tokenBuffer.writeEndObject();
        this._unwrappedPropertyHandler.processUnwrapped(jsonParser, deserializationContext, obj, tokenBuffer);
        return obj;
    }

    protected final Object deserializeWithView(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, Class<?> cls) throws IOException {
        String nextFieldName;
        if (jsonParser.hasTokenId(5)) {
            String currentName = jsonParser.currentName();
            do {
                jsonParser.nextToken();
                SettableBeanProperty find = this._beanProperties.find(currentName);
                if (find == null) {
                    handleUnknownVanilla(jsonParser, deserializationContext, obj, currentName);
                } else if (!find.visibleInView(cls)) {
                    jsonParser.skipChildren();
                } else {
                    try {
                        find.deserializeAndSet(jsonParser, deserializationContext, obj);
                    } catch (Exception e) {
                        wrapAndThrow(e, obj, currentName, deserializationContext);
                    }
                }
                nextFieldName = jsonParser.nextFieldName();
                currentName = nextFieldName;
            } while (nextFieldName != null);
            return obj;
        }
        return obj;
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase, com.fasterxml.jackson.databind.JsonDeserializer
    public JsonDeserializer<Object> unwrappingDeserializer(NameTransformer nameTransformer) {
        if (getClass() == BeanDeserializer.class && this._currentlyTransforming != nameTransformer) {
            this._currentlyTransforming = nameTransformer;
            try {
                return new BeanDeserializer(this, nameTransformer);
            } finally {
                this._currentlyTransforming = null;
            }
        }
        return this;
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializerBase withBeanProperties(BeanPropertyMap beanPropertyMap) {
        return new BeanDeserializer(this, beanPropertyMap);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializer withByNameInclusion(Set<String> set, Set<String> set2) {
        return new BeanDeserializer(this, set, set2);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializerBase withIgnoreAllUnknown(boolean z) {
        return new BeanDeserializer(this, z);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializer withObjectIdReader(ObjectIdReader objectIdReader) {
        return new BeanDeserializer(this, objectIdReader);
    }
}
