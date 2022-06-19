package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonIncludeProperties;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.ContextualKeyDeserializer;
import com.fasterxml.jackson.databind.deser.NullValueProvider;
import com.fasterxml.jackson.databind.deser.ResolvableDeserializer;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.UnresolvedForwardReference;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedCreator;
import com.fasterxml.jackson.databind.deser.impl.PropertyValueBuffer;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.IgnorePropertiesUtil;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
@JacksonStdImpl
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/MapDeserializer.class */
public class MapDeserializer extends ContainerDeserializerBase<Map<Object, Object>> implements ContextualDeserializer, ResolvableDeserializer {
    private static final long serialVersionUID = 1;
    protected JsonDeserializer<Object> _delegateDeserializer;
    protected final boolean _hasDefaultCreator;
    protected Set<String> _ignorableProperties;
    protected Set<String> _includableProperties;
    protected IgnorePropertiesUtil.Checker _inclusionChecker;
    protected final KeyDeserializer _keyDeserializer;
    protected PropertyBasedCreator _propertyBasedCreator;
    protected boolean _standardStringKey;
    protected final JsonDeserializer<Object> _valueDeserializer;
    protected final ValueInstantiator _valueInstantiator;
    protected final TypeDeserializer _valueTypeDeserializer;

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring.class */
    public static class MapReferring extends ReadableObjectId.Referring {
        private final MapReferringAccumulator _parent;
        public final Object key;
        public final Map<Object, Object> next = new LinkedHashMap();

        MapReferring(MapReferringAccumulator mapReferringAccumulator, UnresolvedForwardReference unresolvedForwardReference, Class<?> cls, Object obj) {
            super(unresolvedForwardReference, cls);
            this._parent = mapReferringAccumulator;
            this.key = obj;
        }

        @Override // com.fasterxml.jackson.databind.deser.impl.ReadableObjectId.Referring
        public void handleResolvedForwardReference(Object obj, Object obj2) throws IOException {
            this._parent.resolveForwardReference(obj, obj2);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator.class */
    public static final class MapReferringAccumulator {
        private List<MapReferring> _accumulator = new ArrayList();
        private Map<Object, Object> _result;
        private final Class<?> _valueType;

        public MapReferringAccumulator(Class<?> cls, Map<Object, Object> map) {
            this._valueType = cls;
            this._result = map;
        }

        public final ReadableObjectId.Referring handleUnresolvedReference(UnresolvedForwardReference unresolvedForwardReference, Object obj) {
            MapReferring mapReferring = new MapReferring(this, unresolvedForwardReference, this._valueType, obj);
            this._accumulator.add(mapReferring);
            return mapReferring;
        }

        public final void put(Object obj, Object obj2) {
            if (this._accumulator.isEmpty()) {
                this._result.put(obj, obj2);
                return;
            }
            List<MapReferring> list = this._accumulator;
            list.get(list.size() - 1).next.put(obj, obj2);
        }

        public final void resolveForwardReference(Object obj, Object obj2) throws IOException {
            Iterator<MapReferring> it2 = this._accumulator.iterator();
            Map<Object, Object> map = this._result;
            while (true) {
                Map<Object, Object> map2 = map;
                if (!it2.hasNext()) {
                    throw new IllegalArgumentException("Trying to resolve a forward reference with id [" + obj + "] that wasn't previously seen as unresolved.");
                }
                MapReferring next = it2.next();
                if (next.hasId(obj)) {
                    it2.remove();
                    map2.put(next.key, obj2);
                    map2.putAll(next.next);
                    return;
                }
                map = next.next;
            }
        }
    }

    public MapDeserializer(JavaType javaType, ValueInstantiator valueInstantiator, KeyDeserializer keyDeserializer, JsonDeserializer<Object> jsonDeserializer, TypeDeserializer typeDeserializer) {
        super(javaType, (NullValueProvider) null, (Boolean) null);
        this._keyDeserializer = keyDeserializer;
        this._valueDeserializer = jsonDeserializer;
        this._valueTypeDeserializer = typeDeserializer;
        this._valueInstantiator = valueInstantiator;
        this._hasDefaultCreator = valueInstantiator.canCreateUsingDefault();
        this._delegateDeserializer = null;
        this._propertyBasedCreator = null;
        this._standardStringKey = _isStdKeyDeser(javaType, keyDeserializer);
        this._inclusionChecker = null;
    }

    protected MapDeserializer(MapDeserializer mapDeserializer) {
        super(mapDeserializer);
        this._keyDeserializer = mapDeserializer._keyDeserializer;
        this._valueDeserializer = mapDeserializer._valueDeserializer;
        this._valueTypeDeserializer = mapDeserializer._valueTypeDeserializer;
        this._valueInstantiator = mapDeserializer._valueInstantiator;
        this._propertyBasedCreator = mapDeserializer._propertyBasedCreator;
        this._delegateDeserializer = mapDeserializer._delegateDeserializer;
        this._hasDefaultCreator = mapDeserializer._hasDefaultCreator;
        this._ignorableProperties = mapDeserializer._ignorableProperties;
        this._includableProperties = mapDeserializer._includableProperties;
        this._inclusionChecker = mapDeserializer._inclusionChecker;
        this._standardStringKey = mapDeserializer._standardStringKey;
    }

    protected MapDeserializer(MapDeserializer mapDeserializer, KeyDeserializer keyDeserializer, JsonDeserializer<Object> jsonDeserializer, TypeDeserializer typeDeserializer, NullValueProvider nullValueProvider, Set<String> set) {
        this(mapDeserializer, keyDeserializer, jsonDeserializer, typeDeserializer, nullValueProvider, set, null);
    }

    protected MapDeserializer(MapDeserializer mapDeserializer, KeyDeserializer keyDeserializer, JsonDeserializer<Object> jsonDeserializer, TypeDeserializer typeDeserializer, NullValueProvider nullValueProvider, Set<String> set, Set<String> set2) {
        super(mapDeserializer, nullValueProvider, mapDeserializer._unwrapSingle);
        this._keyDeserializer = keyDeserializer;
        this._valueDeserializer = jsonDeserializer;
        this._valueTypeDeserializer = typeDeserializer;
        this._valueInstantiator = mapDeserializer._valueInstantiator;
        this._propertyBasedCreator = mapDeserializer._propertyBasedCreator;
        this._delegateDeserializer = mapDeserializer._delegateDeserializer;
        this._hasDefaultCreator = mapDeserializer._hasDefaultCreator;
        this._ignorableProperties = set;
        this._includableProperties = set2;
        this._inclusionChecker = IgnorePropertiesUtil.buildCheckerIfNeeded(set, set2);
        this._standardStringKey = _isStdKeyDeser(this._containerType, keyDeserializer);
    }

    private void handleUnresolvedReference(DeserializationContext deserializationContext, MapReferringAccumulator mapReferringAccumulator, Object obj, UnresolvedForwardReference unresolvedForwardReference) throws JsonMappingException {
        if (mapReferringAccumulator == null) {
            deserializationContext.reportInputMismatch(this, "Unresolved forward reference but no identity info: ".concat(String.valueOf(unresolvedForwardReference)), new Object[0]);
        }
        unresolvedForwardReference.getRoid().appendReferring(mapReferringAccumulator.handleUnresolvedReference(unresolvedForwardReference, obj));
    }

    public Map<Object, Object> _deserializeUsingCreator(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object obj;
        PropertyBasedCreator propertyBasedCreator = this._propertyBasedCreator;
        PropertyValueBuffer startBuilding = propertyBasedCreator.startBuilding(jsonParser, deserializationContext, null);
        JsonDeserializer<Object> jsonDeserializer = this._valueDeserializer;
        TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
        String nextFieldName = jsonParser.isExpectedStartObjectToken() ? jsonParser.nextFieldName() : jsonParser.hasToken(JsonToken.FIELD_NAME) ? jsonParser.currentName() : null;
        while (true) {
            String str = nextFieldName;
            if (str == null) {
                try {
                    return (Map) propertyBasedCreator.build(deserializationContext, startBuilding);
                } catch (Exception e) {
                    wrapAndThrow(deserializationContext, e, this._containerType.getRawClass(), str);
                    return null;
                }
            }
            JsonToken nextToken = jsonParser.nextToken();
            IgnorePropertiesUtil.Checker checker = this._inclusionChecker;
            if (checker == null || !checker.shouldIgnore(str)) {
                SettableBeanProperty findCreatorProperty = propertyBasedCreator.findCreatorProperty(str);
                if (findCreatorProperty == null) {
                    Object deserializeKey = this._keyDeserializer.deserializeKey(str, deserializationContext);
                    try {
                        if (nextToken != JsonToken.VALUE_NULL) {
                            obj = typeDeserializer == null ? jsonDeserializer.deserialize(jsonParser, deserializationContext) : jsonDeserializer.deserializeWithType(jsonParser, deserializationContext, typeDeserializer);
                        } else if (!this._skipNullValues) {
                            obj = this._nullProvider.getNullValue(deserializationContext);
                        }
                        startBuilding.bufferMapProperty(deserializeKey, obj);
                    } catch (Exception e2) {
                        wrapAndThrow(deserializationContext, e2, this._containerType.getRawClass(), str);
                        return null;
                    }
                } else if (startBuilding.assignParameter(findCreatorProperty, findCreatorProperty.deserialize(jsonParser, deserializationContext))) {
                    jsonParser.nextToken();
                    try {
                        Map<Object, Object> map = (Map) propertyBasedCreator.build(deserializationContext, startBuilding);
                        _readAndBind(jsonParser, deserializationContext, map);
                        return map;
                    } catch (Exception e3) {
                        return (Map) wrapAndThrow(deserializationContext, e3, this._containerType.getRawClass(), str);
                    }
                }
            } else {
                jsonParser.skipChildren();
            }
            nextFieldName = jsonParser.nextFieldName();
        }
    }

    protected final boolean _isStdKeyDeser(JavaType javaType, KeyDeserializer keyDeserializer) {
        JavaType keyType;
        if (keyDeserializer == null || (keyType = javaType.getKeyType()) == null) {
            return true;
        }
        Class<?> rawClass = keyType.getRawClass();
        return (rawClass == String.class || rawClass == Object.class) && isDefaultKeyDeserializer(keyDeserializer);
    }

    protected final void _readAndBind(JsonParser jsonParser, DeserializationContext deserializationContext, Map<Object, Object> map) throws IOException {
        String str;
        Object obj;
        KeyDeserializer keyDeserializer = this._keyDeserializer;
        JsonDeserializer<Object> jsonDeserializer = this._valueDeserializer;
        TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
        boolean z = jsonDeserializer.getObjectIdReader() != null;
        MapReferringAccumulator mapReferringAccumulator = z ? new MapReferringAccumulator(this._containerType.getContentType().getRawClass(), map) : null;
        if (jsonParser.isExpectedStartObjectToken()) {
            str = jsonParser.nextFieldName();
        } else {
            JsonToken currentToken = jsonParser.currentToken();
            if (currentToken != JsonToken.FIELD_NAME) {
                if (currentToken == JsonToken.END_OBJECT) {
                    return;
                }
                deserializationContext.reportWrongTokenException(this, JsonToken.FIELD_NAME, (String) null, new Object[0]);
            }
            str = jsonParser.currentName();
        }
        while (true) {
            String str2 = str;
            if (str2 != null) {
                Object deserializeKey = keyDeserializer.deserializeKey(str2, deserializationContext);
                JsonToken nextToken = jsonParser.nextToken();
                IgnorePropertiesUtil.Checker checker = this._inclusionChecker;
                if (checker == null || !checker.shouldIgnore(str2)) {
                    try {
                        if (nextToken != JsonToken.VALUE_NULL) {
                            obj = typeDeserializer == null ? jsonDeserializer.deserialize(jsonParser, deserializationContext) : jsonDeserializer.deserializeWithType(jsonParser, deserializationContext, typeDeserializer);
                        } else if (!this._skipNullValues) {
                            obj = this._nullProvider.getNullValue(deserializationContext);
                        }
                        if (z) {
                            mapReferringAccumulator.put(deserializeKey, obj);
                        } else {
                            map.put(deserializeKey, obj);
                        }
                    } catch (UnresolvedForwardReference e) {
                        handleUnresolvedReference(deserializationContext, mapReferringAccumulator, deserializeKey, e);
                    } catch (Exception e2) {
                        wrapAndThrow(deserializationContext, e2, map, str2);
                    }
                } else {
                    jsonParser.skipChildren();
                }
                str = jsonParser.nextFieldName();
            } else {
                return;
            }
        }
    }

    protected final void _readAndBindStringKeyMap(JsonParser jsonParser, DeserializationContext deserializationContext, Map<Object, Object> map) throws IOException {
        String str;
        Object obj;
        JsonDeserializer<Object> jsonDeserializer = this._valueDeserializer;
        TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
        boolean z = jsonDeserializer.getObjectIdReader() != null;
        MapReferringAccumulator mapReferringAccumulator = z ? new MapReferringAccumulator(this._containerType.getContentType().getRawClass(), map) : null;
        if (jsonParser.isExpectedStartObjectToken()) {
            str = jsonParser.nextFieldName();
        } else {
            JsonToken currentToken = jsonParser.currentToken();
            if (currentToken == JsonToken.END_OBJECT) {
                return;
            }
            if (currentToken != JsonToken.FIELD_NAME) {
                deserializationContext.reportWrongTokenException(this, JsonToken.FIELD_NAME, (String) null, new Object[0]);
            }
            str = jsonParser.currentName();
        }
        while (true) {
            String str2 = str;
            if (str2 != null) {
                JsonToken nextToken = jsonParser.nextToken();
                IgnorePropertiesUtil.Checker checker = this._inclusionChecker;
                if (checker == null || !checker.shouldIgnore(str2)) {
                    try {
                        if (nextToken != JsonToken.VALUE_NULL) {
                            obj = typeDeserializer == null ? jsonDeserializer.deserialize(jsonParser, deserializationContext) : jsonDeserializer.deserializeWithType(jsonParser, deserializationContext, typeDeserializer);
                        } else if (!this._skipNullValues) {
                            obj = this._nullProvider.getNullValue(deserializationContext);
                        }
                        if (z) {
                            mapReferringAccumulator.put(str2, obj);
                        } else {
                            map.put(str2, obj);
                        }
                    } catch (UnresolvedForwardReference e) {
                        handleUnresolvedReference(deserializationContext, mapReferringAccumulator, str2, e);
                    } catch (Exception e2) {
                        wrapAndThrow(deserializationContext, e2, map, str2);
                    }
                } else {
                    jsonParser.skipChildren();
                }
                str = jsonParser.nextFieldName();
            } else {
                return;
            }
        }
    }

    protected final void _readAndUpdate(JsonParser jsonParser, DeserializationContext deserializationContext, Map<Object, Object> map) throws IOException {
        String str;
        KeyDeserializer keyDeserializer = this._keyDeserializer;
        JsonDeserializer<Object> jsonDeserializer = this._valueDeserializer;
        TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
        if (jsonParser.isExpectedStartObjectToken()) {
            str = jsonParser.nextFieldName();
        } else {
            JsonToken currentToken = jsonParser.currentToken();
            if (currentToken == JsonToken.END_OBJECT) {
                return;
            }
            if (currentToken != JsonToken.FIELD_NAME) {
                deserializationContext.reportWrongTokenException(this, JsonToken.FIELD_NAME, (String) null, new Object[0]);
            }
            str = jsonParser.currentName();
        }
        while (true) {
            String str2 = str;
            if (str2 != null) {
                Object deserializeKey = keyDeserializer.deserializeKey(str2, deserializationContext);
                JsonToken nextToken = jsonParser.nextToken();
                IgnorePropertiesUtil.Checker checker = this._inclusionChecker;
                if (checker == null || !checker.shouldIgnore(str2)) {
                    try {
                        if (nextToken != JsonToken.VALUE_NULL) {
                            Object obj = map.get(deserializeKey);
                            Object deserialize = obj != null ? typeDeserializer == null ? jsonDeserializer.deserialize(jsonParser, deserializationContext, obj) : jsonDeserializer.deserializeWithType(jsonParser, deserializationContext, typeDeserializer, obj) : typeDeserializer == null ? jsonDeserializer.deserialize(jsonParser, deserializationContext) : jsonDeserializer.deserializeWithType(jsonParser, deserializationContext, typeDeserializer);
                            if (deserialize != obj) {
                                map.put(deserializeKey, deserialize);
                            }
                        } else if (!this._skipNullValues) {
                            map.put(deserializeKey, this._nullProvider.getNullValue(deserializationContext));
                        }
                    } catch (Exception e) {
                        wrapAndThrow(deserializationContext, e, map, str2);
                    }
                } else {
                    jsonParser.skipChildren();
                }
                str = jsonParser.nextFieldName();
            } else {
                return;
            }
        }
    }

    protected final void _readAndUpdateStringKeyMap(JsonParser jsonParser, DeserializationContext deserializationContext, Map<Object, Object> map) throws IOException {
        String str;
        JsonDeserializer<Object> jsonDeserializer = this._valueDeserializer;
        TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
        if (jsonParser.isExpectedStartObjectToken()) {
            str = jsonParser.nextFieldName();
        } else {
            JsonToken currentToken = jsonParser.currentToken();
            if (currentToken == JsonToken.END_OBJECT) {
                return;
            }
            if (currentToken != JsonToken.FIELD_NAME) {
                deserializationContext.reportWrongTokenException(this, JsonToken.FIELD_NAME, (String) null, new Object[0]);
            }
            str = jsonParser.currentName();
        }
        while (true) {
            String str2 = str;
            if (str2 != null) {
                JsonToken nextToken = jsonParser.nextToken();
                IgnorePropertiesUtil.Checker checker = this._inclusionChecker;
                if (checker == null || !checker.shouldIgnore(str2)) {
                    try {
                        if (nextToken != JsonToken.VALUE_NULL) {
                            Object obj = map.get(str2);
                            Object deserialize = obj != null ? typeDeserializer == null ? jsonDeserializer.deserialize(jsonParser, deserializationContext, obj) : jsonDeserializer.deserializeWithType(jsonParser, deserializationContext, typeDeserializer, obj) : typeDeserializer == null ? jsonDeserializer.deserialize(jsonParser, deserializationContext) : jsonDeserializer.deserializeWithType(jsonParser, deserializationContext, typeDeserializer);
                            if (deserialize != obj) {
                                map.put(str2, deserialize);
                            }
                        } else if (!this._skipNullValues) {
                            map.put(str2, this._nullProvider.getNullValue(deserializationContext));
                        }
                    } catch (Exception e) {
                        wrapAndThrow(deserializationContext, e, map, str2);
                    }
                } else {
                    jsonParser.skipChildren();
                }
                str = jsonParser.nextFieldName();
            } else {
                return;
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        KeyDeserializer keyDeserializer;
        Set<String> set;
        HashSet hashSet;
        HashSet hashSet2;
        KeyDeserializer keyDeserializer2 = this._keyDeserializer;
        if (keyDeserializer2 == null) {
            keyDeserializer = deserializationContext.findKeyDeserializer(this._containerType.getKeyType(), beanProperty);
        } else {
            keyDeserializer = keyDeserializer2;
            if (keyDeserializer2 instanceof ContextualKeyDeserializer) {
                keyDeserializer = ((ContextualKeyDeserializer) keyDeserializer2).createContextual(deserializationContext, beanProperty);
            }
        }
        JsonDeserializer<?> jsonDeserializer = this._valueDeserializer;
        JsonDeserializer<?> jsonDeserializer2 = jsonDeserializer;
        if (beanProperty != null) {
            jsonDeserializer2 = findConvertingContentDeserializer(deserializationContext, beanProperty, jsonDeserializer);
        }
        JavaType contentType = this._containerType.getContentType();
        JsonDeserializer<Object> findContextualValueDeserializer = jsonDeserializer2 == null ? deserializationContext.findContextualValueDeserializer(contentType, beanProperty) : deserializationContext.handleSecondaryContextualization(jsonDeserializer2, beanProperty, contentType);
        TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
        TypeDeserializer typeDeserializer2 = typeDeserializer;
        if (typeDeserializer != null) {
            typeDeserializer2 = typeDeserializer.forProperty(beanProperty);
        }
        Set<String> set2 = this._ignorableProperties;
        Set<String> set3 = this._includableProperties;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        Set<String> set4 = set2;
        if (_neitherNull(annotationIntrospector, beanProperty)) {
            AnnotatedMember member = beanProperty.getMember();
            set4 = set2;
            if (member != null) {
                DeserializationConfig config = deserializationContext.getConfig();
                JsonIgnoreProperties.Value findPropertyIgnoralByName = annotationIntrospector.findPropertyIgnoralByName(config, member);
                HashSet hashSet3 = set2;
                if (findPropertyIgnoralByName != null) {
                    Set<String> findIgnoredForDeserialization = findPropertyIgnoralByName.findIgnoredForDeserialization();
                    hashSet3 = set2;
                    if (!findIgnoredForDeserialization.isEmpty()) {
                        HashSet hashSet4 = set2 == null ? new HashSet() : new HashSet(set2);
                        Iterator<String> it2 = findIgnoredForDeserialization.iterator();
                        while (true) {
                            hashSet3 = hashSet4;
                            if (!it2.hasNext()) {
                                break;
                            }
                            hashSet4.add(it2.next());
                        }
                    }
                }
                JsonIncludeProperties.Value findPropertyInclusionByName = annotationIntrospector.findPropertyInclusionByName(config, member);
                set4 = hashSet3;
                if (findPropertyInclusionByName != null) {
                    Set<String> included = findPropertyInclusionByName.getIncluded();
                    set4 = hashSet3;
                    if (included != null) {
                        HashSet hashSet5 = new HashSet();
                        if (set3 != null) {
                            Iterator<String> it3 = included.iterator();
                            while (true) {
                                hashSet2 = hashSet5;
                                if (!it3.hasNext()) {
                                    break;
                                }
                                String next = it3.next();
                                if (set3.contains(next)) {
                                    hashSet5.add(next);
                                }
                            }
                        } else {
                            hashSet2 = new HashSet(included);
                        }
                        set = hashSet3;
                        hashSet = hashSet2;
                        return withResolved(keyDeserializer, typeDeserializer2, findContextualValueDeserializer, findContentNullProvider(deserializationContext, beanProperty, findContextualValueDeserializer), set, hashSet);
                    }
                }
            }
        }
        hashSet = set3;
        set = set4;
        return withResolved(keyDeserializer, typeDeserializer2, findContextualValueDeserializer, findContentNullProvider(deserializationContext, beanProperty, findContextualValueDeserializer), set, hashSet);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Map<Object, Object> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this._propertyBasedCreator != null) {
            return _deserializeUsingCreator(jsonParser, deserializationContext);
        }
        JsonDeserializer<Object> jsonDeserializer = this._delegateDeserializer;
        if (jsonDeserializer != null) {
            return (Map) this._valueInstantiator.createUsingDelegate(deserializationContext, jsonDeserializer.deserialize(jsonParser, deserializationContext));
        }
        if (!this._hasDefaultCreator) {
            return (Map) deserializationContext.handleMissingInstantiator(getMapClass(), getValueInstantiator(), jsonParser, "no default constructor found", new Object[0]);
        }
        int currentTokenId = jsonParser.currentTokenId();
        if (currentTokenId != 1 && currentTokenId != 2) {
            if (currentTokenId == 3) {
                return _deserializeFromArray(jsonParser, deserializationContext);
            }
            if (currentTokenId != 5) {
                return currentTokenId != 6 ? (Map) deserializationContext.handleUnexpectedToken(getValueType(deserializationContext), jsonParser) : _deserializeFromString(jsonParser, deserializationContext);
            }
        }
        Map<Object, Object> map = (Map) this._valueInstantiator.createUsingDefault(deserializationContext);
        if (this._standardStringKey) {
            _readAndBindStringKeyMap(jsonParser, deserializationContext, map);
            return map;
        }
        _readAndBind(jsonParser, deserializationContext, map);
        return map;
    }

    public Map<Object, Object> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Map<Object, Object> map) throws IOException {
        jsonParser.setCurrentValue(map);
        JsonToken currentToken = jsonParser.currentToken();
        if (currentToken == JsonToken.START_OBJECT || currentToken == JsonToken.FIELD_NAME) {
            if (this._standardStringKey) {
                _readAndUpdateStringKeyMap(jsonParser, deserializationContext, map);
                return map;
            }
            _readAndUpdate(jsonParser, deserializationContext, map);
            return map;
        }
        return (Map) deserializationContext.handleUnexpectedToken(getMapClass(), jsonParser);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromObject(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase
    public JsonDeserializer<Object> getContentDeserializer() {
        return this._valueDeserializer;
    }

    public final Class<?> getMapClass() {
        return this._containerType.getRawClass();
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer
    public ValueInstantiator getValueInstantiator() {
        return this._valueInstantiator;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase, com.fasterxml.jackson.databind.deser.std.StdDeserializer
    public JavaType getValueType() {
        return this._containerType;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public boolean isCachable() {
        return this._valueDeserializer == null && this._keyDeserializer == null && this._valueTypeDeserializer == null && this._ignorableProperties == null && this._includableProperties == null;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public LogicalType logicalType() {
        return LogicalType.Map;
    }

    @Override // com.fasterxml.jackson.databind.deser.ResolvableDeserializer
    public void resolve(DeserializationContext deserializationContext) throws JsonMappingException {
        if (this._valueInstantiator.canCreateUsingDelegate()) {
            JavaType delegateType = this._valueInstantiator.getDelegateType(deserializationContext.getConfig());
            if (delegateType == null) {
                deserializationContext.reportBadDefinition(this._containerType, String.format("Invalid delegate-creator definition for %s: value instantiator (%s) returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'", this._containerType, this._valueInstantiator.getClass().getName()));
            }
            this._delegateDeserializer = findDeserializer(deserializationContext, delegateType, null);
        } else if (this._valueInstantiator.canCreateUsingArrayDelegate()) {
            JavaType arrayDelegateType = this._valueInstantiator.getArrayDelegateType(deserializationContext.getConfig());
            if (arrayDelegateType == null) {
                deserializationContext.reportBadDefinition(this._containerType, String.format("Invalid delegate-creator definition for %s: value instantiator (%s) returned true for 'canCreateUsingArrayDelegate()', but null for 'getArrayDelegateType()'", this._containerType, this._valueInstantiator.getClass().getName()));
            }
            this._delegateDeserializer = findDeserializer(deserializationContext, arrayDelegateType, null);
        }
        if (this._valueInstantiator.canCreateFromObjectWith()) {
            this._propertyBasedCreator = PropertyBasedCreator.construct(deserializationContext, this._valueInstantiator, this._valueInstantiator.getFromObjectArguments(deserializationContext.getConfig()), deserializationContext.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES));
        }
        this._standardStringKey = _isStdKeyDeser(this._containerType, this._keyDeserializer);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
        if (r5.size() == 0) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setIgnorableProperties(java.util.Set<java.lang.String> r5) {
        /*
            r4 = this;
            r0 = r5
            if (r0 == 0) goto Lf
            r0 = r5
            r6 = r0
            r0 = r5
            int r0 = r0.size()
            if (r0 != 0) goto L11
        Lf:
            r0 = 0
            r6 = r0
        L11:
            r0 = r4
            r1 = r6
            r0._ignorableProperties = r1
            r0 = r4
            r1 = r6
            r2 = r4
            java.util.Set<java.lang.String> r2 = r2._includableProperties
            com.fasterxml.jackson.databind.util.IgnorePropertiesUtil$Checker r1 = com.fasterxml.jackson.databind.util.IgnorePropertiesUtil.buildCheckerIfNeeded(r1, r2)
            r0._inclusionChecker = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.std.MapDeserializer.setIgnorableProperties(java.util.Set):void");
    }

    @Deprecated
    public void setIgnorableProperties(String[] strArr) {
        HashSet arrayToSet = (strArr == null || strArr.length == 0) ? null : ArrayBuilders.arrayToSet(strArr);
        this._ignorableProperties = arrayToSet;
        this._inclusionChecker = IgnorePropertiesUtil.buildCheckerIfNeeded(arrayToSet, this._includableProperties);
    }

    public void setIncludableProperties(Set<String> set) {
        this._includableProperties = set;
        this._inclusionChecker = IgnorePropertiesUtil.buildCheckerIfNeeded(this._ignorableProperties, set);
    }

    protected MapDeserializer withResolved(KeyDeserializer keyDeserializer, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer, NullValueProvider nullValueProvider, Set<String> set) {
        return withResolved(keyDeserializer, typeDeserializer, jsonDeserializer, nullValueProvider, set, this._includableProperties);
    }

    protected MapDeserializer withResolved(KeyDeserializer keyDeserializer, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer, NullValueProvider nullValueProvider, Set<String> set, Set<String> set2) {
        return (this._keyDeserializer == keyDeserializer && this._valueDeserializer == jsonDeserializer && this._valueTypeDeserializer == typeDeserializer && this._nullProvider == nullValueProvider && this._ignorableProperties == set && this._includableProperties == set2) ? this : new MapDeserializer(this, keyDeserializer, jsonDeserializer, typeDeserializer, nullValueProvider, set, set2);
    }
}
