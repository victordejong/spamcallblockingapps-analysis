package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.impl.BeanAsArrayDeserializer;
import com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap;
import com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedCreator;
import com.fasterxml.jackson.databind.deser.impl.PropertyValueBuffer;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.IOException;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/BeanDeserializer.class */
public class BeanDeserializer extends BeanDeserializerBase implements Serializable {

    /* renamed from: com.fasterxml.jackson.databind.deser.BeanDeserializer$1 */
    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/BeanDeserializer$1.class */
    public static /* synthetic */ class C27251 {
        public static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$core$JsonToken = new int[JsonToken.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x007d -> B:51:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0081 -> B:45:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0085 -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0089 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008d -> B:49:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0091 -> B:43:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0095 -> B:39:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0099 -> B:33:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x009d -> B:47:0x0070). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_STRING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_NUMBER_INT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_NUMBER_FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_EMBEDDED_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_TRUE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_FALSE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_NULL.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.START_ARRAY.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.FIELD_NAME.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.END_OBJECT.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    public BeanDeserializer(BeanDeserializerBase beanDeserializerBase) {
        super(beanDeserializerBase, beanDeserializerBase._ignoreAllUnknown);
    }

    public BeanDeserializer(BeanDeserializerBase beanDeserializerBase, ObjectIdReader objectIdReader) {
        super(beanDeserializerBase, objectIdReader);
    }

    public BeanDeserializer(BeanDeserializerBase beanDeserializerBase, NameTransformer nameTransformer) {
        super(beanDeserializerBase, nameTransformer);
    }

    public BeanDeserializer(BeanDeserializerBase beanDeserializerBase, HashSet<String> hashSet) {
        super(beanDeserializerBase, hashSet);
    }

    public BeanDeserializer(BeanDeserializerBuilder beanDeserializerBuilder, BeanDescription beanDescription, BeanPropertyMap beanPropertyMap, Map<String, SettableBeanProperty> map, HashSet<String> hashSet, boolean z, boolean z2) {
        super(beanDeserializerBuilder, beanDescription, beanPropertyMap, map, hashSet, z, z2);
    }

    public final Object _deserializeOther(JsonParser jsonParser, DeserializationContext deserializationContext, JsonToken jsonToken) throws IOException {
        switch (C27251.$SwitchMap$com$fasterxml$jackson$core$JsonToken[jsonToken.ordinal()]) {
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
                return deserializeFromArray(jsonParser, deserializationContext);
            case 9:
            case 10:
                return this._vanillaProcessing ? vanillaDeserialize(jsonParser, deserializationContext, jsonToken) : this._objectIdReader != null ? deserializeWithObjectId(jsonParser, deserializationContext) : deserializeFromObject(jsonParser, deserializationContext);
            default:
                throw deserializationContext.mappingException(handledType());
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public Object _deserializeUsingPropertyBased(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        PropertyBasedCreator propertyBasedCreator = this._propertyBasedCreator;
        PropertyValueBuffer startBuilding = propertyBasedCreator.startBuilding(jsonParser, deserializationContext, this._objectIdReader);
        JsonToken currentToken = jsonParser.getCurrentToken();
        TokenBuffer tokenBuffer = null;
        while (currentToken == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.getCurrentName();
            jsonParser.nextToken();
            SettableBeanProperty findCreatorProperty = propertyBasedCreator.findCreatorProperty(currentName);
            if (findCreatorProperty != null) {
                tokenBuffer = tokenBuffer;
                if (startBuilding.assignParameter(findCreatorProperty, _deserializeWithErrorWrapping(jsonParser, deserializationContext, findCreatorProperty))) {
                    jsonParser.nextToken();
                    try {
                        Object build = propertyBasedCreator.build(deserializationContext, startBuilding);
                        if (build != null) {
                            jsonParser.setCurrentValue(build);
                            if (build.getClass() != this._beanType.getRawClass()) {
                                return handlePolymorphic(jsonParser, deserializationContext, build, tokenBuffer);
                            }
                            if (tokenBuffer != null) {
                                handleUnknownProperties(deserializationContext, build, tokenBuffer);
                            }
                            deserialize(jsonParser, deserializationContext, build);
                            return build;
                        }
                        throw deserializationContext.instantiationException(this._beanType.getRawClass(), "JSON Creator returned null");
                    } catch (Exception e) {
                        wrapInstantiationProblem(e, deserializationContext);
                        throw null;
                    }
                }
            } else if (startBuilding.readIdProperty(currentName)) {
                tokenBuffer = tokenBuffer;
            } else {
                SettableBeanProperty find = this._beanProperties.find(currentName);
                if (find != null) {
                    startBuilding.bufferProperty(find, _deserializeWithErrorWrapping(jsonParser, deserializationContext, find));
                    tokenBuffer = tokenBuffer;
                } else {
                    HashSet<String> hashSet = this._ignorableProps;
                    if (hashSet == null || !hashSet.contains(currentName)) {
                        SettableAnyProperty settableAnyProperty = this._anySetter;
                        if (settableAnyProperty != null) {
                            try {
                                startBuilding.bufferAnyProperty(settableAnyProperty, currentName, settableAnyProperty.deserialize(jsonParser, deserializationContext));
                                tokenBuffer = tokenBuffer;
                            } catch (Exception e2) {
                                wrapAndThrow(e2, this._beanType.getRawClass(), currentName, deserializationContext);
                                throw null;
                            }
                        } else {
                            tokenBuffer = tokenBuffer;
                            if (tokenBuffer == null) {
                                tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
                            }
                            tokenBuffer.writeFieldName(currentName);
                            tokenBuffer.copyCurrentStructure(jsonParser);
                        }
                    } else {
                        handleIgnoredProperty(jsonParser, deserializationContext, handledType(), currentName);
                        tokenBuffer = tokenBuffer;
                    }
                }
            }
            currentToken = jsonParser.nextToken();
        }
        try {
            Object build2 = propertyBasedCreator.build(deserializationContext, startBuilding);
            if (tokenBuffer != null) {
                if (build2.getClass() != this._beanType.getRawClass()) {
                    return handlePolymorphic(null, deserializationContext, build2, tokenBuffer);
                }
                handleUnknownProperties(deserializationContext, build2, tokenBuffer);
            }
            return build2;
        } catch (Exception e3) {
            wrapInstantiationProblem(e3, deserializationContext);
            throw null;
        }
    }

    public final Object _deserializeWithErrorWrapping(JsonParser jsonParser, DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty) throws IOException {
        try {
            return settableBeanProperty.deserialize(jsonParser, deserializationContext);
        } catch (Exception e) {
            wrapAndThrow(e, this._beanType.getRawClass(), settableBeanProperty.getName(), deserializationContext);
            throw null;
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializerBase asArrayDeserializer() {
        return new BeanAsArrayDeserializer(this, this._beanProperties.getPropertiesInInsertionOrder());
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (!jsonParser.isExpectedStartObjectToken()) {
            return _deserializeOther(jsonParser, deserializationContext, jsonParser.getCurrentToken());
        }
        if (this._vanillaProcessing) {
            return vanillaDeserialize(jsonParser, deserializationContext, jsonParser.nextToken());
        }
        jsonParser.nextToken();
        return this._objectIdReader != null ? deserializeWithObjectId(jsonParser, deserializationContext) : deserializeFromObject(jsonParser, deserializationContext);
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
            deserializeWithUnwrapped(jsonParser, deserializationContext, obj);
            return obj;
        } else if (this._externalTypeIdHandler != null) {
            deserializeWithExternalTypeId(jsonParser, deserializationContext, obj);
            return obj;
        } else {
            if (jsonParser.isExpectedStartObjectToken()) {
                String nextFieldName2 = jsonParser.nextFieldName();
                str = nextFieldName2;
                if (nextFieldName2 == null) {
                    return obj;
                }
            } else if (!jsonParser.hasTokenId(5)) {
                return obj;
            } else {
                str = jsonParser.getCurrentName();
            }
            String str2 = str;
            if (this._needViewProcesing) {
                Class<?> activeView = deserializationContext.getActiveView();
                str2 = str;
                if (activeView != null) {
                    deserializeWithView(jsonParser, deserializationContext, obj, activeView);
                    return obj;
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
                        throw null;
                    }
                } else {
                    handleUnknownVanilla(jsonParser, deserializationContext, obj, str2);
                }
                nextFieldName = jsonParser.nextFieldName();
                str2 = nextFieldName;
            } while (nextFieldName != null);
            return obj;
        }
    }

    public Object deserializeFromNull(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.requiresCustomCodec()) {
            TokenBuffer tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
            tokenBuffer.writeEndObject();
            JsonParser asParser = tokenBuffer.asParser(jsonParser);
            asParser.nextToken();
            Object vanillaDeserialize = this._vanillaProcessing ? vanillaDeserialize(asParser, deserializationContext, JsonToken.END_OBJECT) : deserializeFromObject(asParser, deserializationContext);
            asParser.close();
            return vanillaDeserialize;
        }
        throw deserializationContext.mappingException(handledType());
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public Object deserializeFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String nextFieldName;
        Class<?> activeView;
        Object objectId;
        ObjectIdReader objectIdReader = this._objectIdReader;
        if (objectIdReader != null && objectIdReader.maySerializeAsObject() && jsonParser.hasTokenId(5) && this._objectIdReader.isValidReferencePropertyName(jsonParser.getCurrentName(), jsonParser)) {
            return deserializeFromObjectId(jsonParser, deserializationContext);
        }
        if (!this._nonStandardCreation) {
            Object createUsingDefault = this._valueInstantiator.createUsingDefault(deserializationContext);
            jsonParser.setCurrentValue(createUsingDefault);
            if (jsonParser.canReadObjectId() && (objectId = jsonParser.getObjectId()) != null) {
                _handleTypedObjectId(jsonParser, deserializationContext, createUsingDefault, objectId);
            }
            if (this._injectables != null) {
                injectValues(deserializationContext, createUsingDefault);
            }
            if (this._needViewProcesing && (activeView = deserializationContext.getActiveView()) != null) {
                deserializeWithView(jsonParser, deserializationContext, createUsingDefault, activeView);
                return createUsingDefault;
            } else if (!jsonParser.hasTokenId(5)) {
                return createUsingDefault;
            } else {
                String currentName = jsonParser.getCurrentName();
                do {
                    jsonParser.nextToken();
                    SettableBeanProperty find = this._beanProperties.find(currentName);
                    if (find != null) {
                        try {
                            find.deserializeAndSet(jsonParser, deserializationContext, createUsingDefault);
                        } catch (Exception e) {
                            wrapAndThrow(e, createUsingDefault, currentName, deserializationContext);
                            throw null;
                        }
                    } else {
                        handleUnknownVanilla(jsonParser, deserializationContext, createUsingDefault, currentName);
                    }
                    nextFieldName = jsonParser.nextFieldName();
                    currentName = nextFieldName;
                } while (nextFieldName != null);
                return createUsingDefault;
            }
        } else if (this._unwrappedPropertyHandler != null) {
            return deserializeWithUnwrapped(jsonParser, deserializationContext);
        } else {
            if (this._externalTypeIdHandler != null) {
                return deserializeWithExternalTypeId(jsonParser, deserializationContext);
            }
            Object deserializeFromObjectUsingNonDefault = deserializeFromObjectUsingNonDefault(jsonParser, deserializationContext);
            if (this._injectables != null) {
                injectValues(deserializationContext, deserializeFromObjectUsingNonDefault);
            }
            return deserializeFromObjectUsingNonDefault;
        }
    }

    public Object deserializeUsingPropertyBasedWithExternalTypeId(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        ExternalTypeHandler start = this._externalTypeIdHandler.start();
        PropertyBasedCreator propertyBasedCreator = this._propertyBasedCreator;
        PropertyValueBuffer startBuilding = propertyBasedCreator.startBuilding(jsonParser, deserializationContext, this._objectIdReader);
        TokenBuffer tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
        tokenBuffer.writeStartObject();
        JsonToken currentToken = jsonParser.getCurrentToken();
        while (currentToken == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.getCurrentName();
            jsonParser.nextToken();
            SettableBeanProperty findCreatorProperty = propertyBasedCreator.findCreatorProperty(currentName);
            if (findCreatorProperty != null) {
                if (!start.handlePropertyValue(jsonParser, deserializationContext, currentName, null) && startBuilding.assignParameter(findCreatorProperty, _deserializeWithErrorWrapping(jsonParser, deserializationContext, findCreatorProperty))) {
                    JsonToken nextToken = jsonParser.nextToken();
                    try {
                        Object build = propertyBasedCreator.build(deserializationContext, startBuilding);
                        while (nextToken == JsonToken.FIELD_NAME) {
                            jsonParser.nextToken();
                            tokenBuffer.copyCurrentStructure(jsonParser);
                            nextToken = jsonParser.nextToken();
                        }
                        if (build.getClass() == this._beanType.getRawClass()) {
                            start.complete(jsonParser, deserializationContext, build);
                            return build;
                        }
                        throw deserializationContext.mappingException("Can not create polymorphic instances with unwrapped values");
                    } catch (Exception e) {
                        wrapAndThrow(e, this._beanType.getRawClass(), currentName, deserializationContext);
                        throw null;
                    }
                }
            } else if (!startBuilding.readIdProperty(currentName)) {
                SettableBeanProperty find = this._beanProperties.find(currentName);
                if (find != null) {
                    startBuilding.bufferProperty(find, find.deserialize(jsonParser, deserializationContext));
                } else if (!start.handlePropertyValue(jsonParser, deserializationContext, currentName, null)) {
                    HashSet<String> hashSet = this._ignorableProps;
                    if (hashSet == null || !hashSet.contains(currentName)) {
                        SettableAnyProperty settableAnyProperty = this._anySetter;
                        if (settableAnyProperty != null) {
                            startBuilding.bufferAnyProperty(settableAnyProperty, currentName, settableAnyProperty.deserialize(jsonParser, deserializationContext));
                        }
                    } else {
                        handleIgnoredProperty(jsonParser, deserializationContext, handledType(), currentName);
                    }
                }
            }
            currentToken = jsonParser.nextToken();
        }
        try {
            return start.complete(jsonParser, deserializationContext, startBuilding, propertyBasedCreator);
        } catch (Exception e2) {
            wrapInstantiationProblem(e2, deserializationContext);
            throw null;
        }
    }

    public Object deserializeUsingPropertyBasedWithUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        PropertyBasedCreator propertyBasedCreator = this._propertyBasedCreator;
        PropertyValueBuffer startBuilding = propertyBasedCreator.startBuilding(jsonParser, deserializationContext, this._objectIdReader);
        TokenBuffer tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
        tokenBuffer.writeStartObject();
        JsonToken currentToken = jsonParser.getCurrentToken();
        while (currentToken == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.getCurrentName();
            jsonParser.nextToken();
            SettableBeanProperty findCreatorProperty = propertyBasedCreator.findCreatorProperty(currentName);
            if (findCreatorProperty != null) {
                if (startBuilding.assignParameter(findCreatorProperty, _deserializeWithErrorWrapping(jsonParser, deserializationContext, findCreatorProperty))) {
                    JsonToken nextToken = jsonParser.nextToken();
                    try {
                        Object build = propertyBasedCreator.build(deserializationContext, startBuilding);
                        jsonParser.setCurrentValue(build);
                        while (nextToken == JsonToken.FIELD_NAME) {
                            jsonParser.nextToken();
                            tokenBuffer.copyCurrentStructure(jsonParser);
                            nextToken = jsonParser.nextToken();
                        }
                        tokenBuffer.writeEndObject();
                        if (build.getClass() == this._beanType.getRawClass()) {
                            this._unwrappedPropertyHandler.processUnwrapped(jsonParser, deserializationContext, build, tokenBuffer);
                            return build;
                        }
                        tokenBuffer.close();
                        throw deserializationContext.mappingException("Can not create polymorphic instances with unwrapped values");
                    } catch (Exception e) {
                        wrapInstantiationProblem(e, deserializationContext);
                        throw null;
                    }
                }
            } else if (!startBuilding.readIdProperty(currentName)) {
                SettableBeanProperty find = this._beanProperties.find(currentName);
                if (find != null) {
                    startBuilding.bufferProperty(find, _deserializeWithErrorWrapping(jsonParser, deserializationContext, find));
                } else {
                    HashSet<String> hashSet = this._ignorableProps;
                    if (hashSet == null || !hashSet.contains(currentName)) {
                        tokenBuffer.writeFieldName(currentName);
                        tokenBuffer.copyCurrentStructure(jsonParser);
                        SettableAnyProperty settableAnyProperty = this._anySetter;
                        if (settableAnyProperty != null) {
                            try {
                                startBuilding.bufferAnyProperty(settableAnyProperty, currentName, settableAnyProperty.deserialize(jsonParser, deserializationContext));
                            } catch (Exception e2) {
                                wrapAndThrow(e2, this._beanType.getRawClass(), currentName, deserializationContext);
                                throw null;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        handleIgnoredProperty(jsonParser, deserializationContext, handledType(), currentName);
                    }
                }
            } else {
                continue;
            }
            currentToken = jsonParser.nextToken();
        }
        try {
            Object build2 = propertyBasedCreator.build(deserializationContext, startBuilding);
            this._unwrappedPropertyHandler.processUnwrapped(jsonParser, deserializationContext, build2, tokenBuffer);
            return build2;
        } catch (Exception e3) {
            wrapInstantiationProblem(e3, deserializationContext);
            throw null;
        }
    }

    public Object deserializeWithExternalTypeId(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this._propertyBasedCreator != null) {
            return deserializeUsingPropertyBasedWithExternalTypeId(jsonParser, deserializationContext);
        }
        JsonDeserializer<Object> jsonDeserializer = this._delegateDeserializer;
        if (jsonDeserializer != null) {
            return this._valueInstantiator.createUsingDelegate(deserializationContext, jsonDeserializer.deserialize(jsonParser, deserializationContext));
        }
        Object createUsingDefault = this._valueInstantiator.createUsingDefault(deserializationContext);
        deserializeWithExternalTypeId(jsonParser, deserializationContext, createUsingDefault);
        return createUsingDefault;
    }

    public Object deserializeWithExternalTypeId(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        Class<?> activeView = this._needViewProcesing ? deserializationContext.getActiveView() : null;
        ExternalTypeHandler start = this._externalTypeIdHandler.start();
        JsonToken currentToken = jsonParser.getCurrentToken();
        while (currentToken == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.getCurrentName();
            JsonToken nextToken = jsonParser.nextToken();
            SettableBeanProperty find = this._beanProperties.find(currentName);
            if (find != null) {
                if (nextToken.isScalarValue()) {
                    start.handleTypePropertyValue(jsonParser, deserializationContext, currentName, obj);
                }
                if (activeView == null || find.visibleInView(activeView)) {
                    try {
                        find.deserializeAndSet(jsonParser, deserializationContext, obj);
                    } catch (Exception e) {
                        wrapAndThrow(e, obj, currentName, deserializationContext);
                        throw null;
                    }
                } else {
                    jsonParser.skipChildren();
                }
            } else {
                HashSet<String> hashSet = this._ignorableProps;
                if (hashSet != null && hashSet.contains(currentName)) {
                    handleIgnoredProperty(jsonParser, deserializationContext, obj, currentName);
                } else if (!start.handlePropertyValue(jsonParser, deserializationContext, currentName, obj)) {
                    SettableAnyProperty settableAnyProperty = this._anySetter;
                    if (settableAnyProperty != null) {
                        try {
                            settableAnyProperty.deserializeAndSet(jsonParser, deserializationContext, obj, currentName);
                        } catch (Exception e2) {
                            wrapAndThrow(e2, obj, currentName, deserializationContext);
                            throw null;
                        }
                    } else {
                        handleUnknownProperty(jsonParser, deserializationContext, obj, currentName);
                    }
                } else {
                    continue;
                }
            }
            currentToken = jsonParser.nextToken();
        }
        start.complete(jsonParser, deserializationContext, obj);
        return obj;
    }

    public Object deserializeWithUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonDeserializer<Object> jsonDeserializer = this._delegateDeserializer;
        if (jsonDeserializer != null) {
            return this._valueInstantiator.createUsingDelegate(deserializationContext, jsonDeserializer.deserialize(jsonParser, deserializationContext));
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
        Class<?> activeView = this._needViewProcesing ? deserializationContext.getActiveView() : null;
        String currentName = jsonParser.hasTokenId(5) ? jsonParser.getCurrentName() : null;
        while (currentName != null) {
            jsonParser.nextToken();
            SettableBeanProperty find = this._beanProperties.find(currentName);
            if (find == null) {
                HashSet<String> hashSet = this._ignorableProps;
                if (hashSet == null || !hashSet.contains(currentName)) {
                    tokenBuffer.writeFieldName(currentName);
                    tokenBuffer.copyCurrentStructure(jsonParser);
                    SettableAnyProperty settableAnyProperty = this._anySetter;
                    if (settableAnyProperty != null) {
                        try {
                            settableAnyProperty.deserializeAndSet(jsonParser, deserializationContext, createUsingDefault, currentName);
                        } catch (Exception e) {
                            wrapAndThrow(e, createUsingDefault, currentName, deserializationContext);
                            throw null;
                        }
                    } else {
                        continue;
                    }
                } else {
                    handleIgnoredProperty(jsonParser, deserializationContext, createUsingDefault, currentName);
                }
            } else if (activeView == null || find.visibleInView(activeView)) {
                try {
                    find.deserializeAndSet(jsonParser, deserializationContext, createUsingDefault);
                } catch (Exception e2) {
                    wrapAndThrow(e2, createUsingDefault, currentName, deserializationContext);
                    throw null;
                }
            } else {
                jsonParser.skipChildren();
            }
            currentName = jsonParser.nextFieldName();
        }
        tokenBuffer.writeEndObject();
        this._unwrappedPropertyHandler.processUnwrapped(jsonParser, deserializationContext, createUsingDefault, tokenBuffer);
        return createUsingDefault;
    }

    public Object deserializeWithUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        JsonToken currentToken = jsonParser.getCurrentToken();
        JsonToken jsonToken = currentToken;
        if (currentToken == JsonToken.START_OBJECT) {
            jsonToken = jsonParser.nextToken();
        }
        TokenBuffer tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
        tokenBuffer.writeStartObject();
        Class<?> activeView = this._needViewProcesing ? deserializationContext.getActiveView() : null;
        while (jsonToken == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.getCurrentName();
            SettableBeanProperty find = this._beanProperties.find(currentName);
            jsonParser.nextToken();
            if (find == null) {
                HashSet<String> hashSet = this._ignorableProps;
                if (hashSet == null || !hashSet.contains(currentName)) {
                    tokenBuffer.writeFieldName(currentName);
                    tokenBuffer.copyCurrentStructure(jsonParser);
                    SettableAnyProperty settableAnyProperty = this._anySetter;
                    if (settableAnyProperty != null) {
                        settableAnyProperty.deserializeAndSet(jsonParser, deserializationContext, obj, currentName);
                    }
                } else {
                    handleIgnoredProperty(jsonParser, deserializationContext, obj, currentName);
                }
            } else if (activeView == null || find.visibleInView(activeView)) {
                try {
                    find.deserializeAndSet(jsonParser, deserializationContext, obj);
                } catch (Exception e) {
                    wrapAndThrow(e, obj, currentName, deserializationContext);
                    throw null;
                }
            } else {
                jsonParser.skipChildren();
            }
            jsonToken = jsonParser.nextToken();
        }
        tokenBuffer.writeEndObject();
        this._unwrappedPropertyHandler.processUnwrapped(jsonParser, deserializationContext, obj, tokenBuffer);
        return obj;
    }

    public final Object deserializeWithView(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, Class<?> cls) throws IOException {
        String nextFieldName;
        if (!jsonParser.hasTokenId(5)) {
            return obj;
        }
        String currentName = jsonParser.getCurrentName();
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
                    throw null;
                }
            }
            nextFieldName = jsonParser.nextFieldName();
            currentName = nextFieldName;
        } while (nextFieldName != null);
        return obj;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public JsonDeserializer<Object> unwrappingDeserializer(NameTransformer nameTransformer) {
        return getClass() != BeanDeserializer.class ? this : new BeanDeserializer(this, nameTransformer);
    }

    public final Object vanillaDeserialize(JsonParser jsonParser, DeserializationContext deserializationContext, JsonToken jsonToken) throws IOException {
        String nextFieldName;
        Object createUsingDefault = this._valueInstantiator.createUsingDefault(deserializationContext);
        jsonParser.setCurrentValue(createUsingDefault);
        if (!jsonParser.hasTokenId(5)) {
            return createUsingDefault;
        }
        String currentName = jsonParser.getCurrentName();
        do {
            jsonParser.nextToken();
            SettableBeanProperty find = this._beanProperties.find(currentName);
            if (find != null) {
                try {
                    find.deserializeAndSet(jsonParser, deserializationContext, createUsingDefault);
                } catch (Exception e) {
                    wrapAndThrow(e, createUsingDefault, currentName, deserializationContext);
                    throw null;
                }
            } else {
                handleUnknownVanilla(jsonParser, deserializationContext, createUsingDefault, currentName);
            }
            nextFieldName = jsonParser.nextFieldName();
            currentName = nextFieldName;
        } while (nextFieldName != null);
        return createUsingDefault;
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializer withIgnorableProperties(HashSet<String> hashSet) {
        return new BeanDeserializer(this, hashSet);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public BeanDeserializer withObjectIdReader(ObjectIdReader objectIdReader) {
        return new BeanDeserializer(this, objectIdReader);
    }
}
