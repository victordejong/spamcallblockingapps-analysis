package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.IOException;
import java.util.BitSet;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/jsontype/impl/AsDeductionTypeDeserializer.class */
public class AsDeductionTypeDeserializer extends AsPropertyTypeDeserializer {
    private static final long serialVersionUID = 1;
    private final Map<String, Integer> fieldBitIndex;
    private final Map<BitSet, String> subtypeFingerprints;

    public AsDeductionTypeDeserializer(JavaType javaType, TypeIdResolver typeIdResolver, JavaType javaType2, DeserializationConfig deserializationConfig, Collection<NamedType> collection) {
        super(javaType, typeIdResolver, null, false, javaType2, null);
        this.fieldBitIndex = new HashMap();
        this.subtypeFingerprints = buildFingerprints(deserializationConfig, collection);
    }

    public AsDeductionTypeDeserializer(AsDeductionTypeDeserializer asDeductionTypeDeserializer, BeanProperty beanProperty) {
        super(asDeductionTypeDeserializer, beanProperty);
        this.fieldBitIndex = asDeductionTypeDeserializer.fieldBitIndex;
        this.subtypeFingerprints = asDeductionTypeDeserializer.subtypeFingerprints;
    }

    private static void prune(List<BitSet> list, int i) {
        Iterator<BitSet> it2 = list.iterator();
        while (it2.hasNext()) {
            if (!it2.next().get(i)) {
                it2.remove();
            }
        }
    }

    protected Map<BitSet, String> buildFingerprints(DeserializationConfig deserializationConfig, Collection<NamedType> collection) {
        boolean isEnabled = deserializationConfig.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES);
        HashMap hashMap = new HashMap();
        int i = 0;
        for (NamedType namedType : collection) {
            List<BeanPropertyDefinition> findProperties = deserializationConfig.introspect(deserializationConfig.getTypeFactory().constructType(namedType.getType())).findProperties();
            BitSet bitSet = new BitSet(findProperties.size() + i);
            for (BeanPropertyDefinition beanPropertyDefinition : findProperties) {
                String name = beanPropertyDefinition.getName();
                String str = name;
                if (isEnabled) {
                    str = name.toLowerCase();
                }
                Integer num = this.fieldBitIndex.get(str);
                i = i;
                Integer num2 = num;
                if (num == null) {
                    num2 = Integer.valueOf(i);
                    this.fieldBitIndex.put(str, Integer.valueOf(i));
                    i++;
                }
                bitSet.set(num2.intValue());
            }
            String str2 = (String) hashMap.put(bitSet, namedType.getType().getName());
            if (str2 != null) {
                throw new IllegalStateException(String.format("Subtypes %s and %s have the same signature and cannot be uniquely deduced.", str2, namedType.getType().getName()));
            }
        }
        return hashMap;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.AsPropertyTypeDeserializer, com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeDeserializer, com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public Object deserializeTypedFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonToken jsonToken;
        JsonToken currentToken = jsonParser.currentToken();
        if (currentToken == JsonToken.START_OBJECT) {
            jsonToken = jsonParser.nextToken();
        } else {
            jsonToken = currentToken;
            if (currentToken != JsonToken.FIELD_NAME) {
                return _deserializeTypedUsingDefaultImpl(jsonParser, deserializationContext, null, "Unexpected input");
            }
        }
        LinkedList linkedList = new LinkedList(this.subtypeFingerprints.keySet());
        TokenBuffer tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
        boolean isEnabled = deserializationContext.isEnabled(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES);
        while (jsonToken == JsonToken.FIELD_NAME) {
            String currentName = jsonParser.currentName();
            String str = currentName;
            if (isEnabled) {
                str = currentName.toLowerCase();
            }
            tokenBuffer.copyCurrentStructure(jsonParser);
            Integer num = this.fieldBitIndex.get(str);
            if (num != null) {
                prune(linkedList, num.intValue());
                if (linkedList.size() == 1) {
                    return _deserializeTypedForId(jsonParser, deserializationContext, tokenBuffer, this.subtypeFingerprints.get(linkedList.get(0)));
                }
            }
            jsonToken = jsonParser.nextToken();
        }
        return _deserializeTypedUsingDefaultImpl(jsonParser, deserializationContext, tokenBuffer, String.format("Cannot deduce unique subtype of %s (%d candidates match)", ClassUtil.getTypeDescription(this._baseType), Integer.valueOf(linkedList.size())));
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.AsPropertyTypeDeserializer, com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeDeserializer, com.fasterxml.jackson.databind.jsontype.impl.TypeDeserializerBase, com.fasterxml.jackson.databind.jsontype.TypeDeserializer
    public TypeDeserializer forProperty(BeanProperty beanProperty) {
        return beanProperty == this._property ? this : new AsDeductionTypeDeserializer(this, beanProperty);
    }
}
