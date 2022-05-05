package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler.class */
public class UnwrappedPropertyHandler {
    public final List<SettableBeanProperty> _properties;

    public UnwrappedPropertyHandler() {
        this._properties = new ArrayList();
    }

    public UnwrappedPropertyHandler(List<SettableBeanProperty> list) {
        this._properties = list;
    }

    public void addProperty(SettableBeanProperty settableBeanProperty) {
        this._properties.add(settableBeanProperty);
    }

    public Object processUnwrapped(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, TokenBuffer tokenBuffer) throws IOException, JsonProcessingException {
        int size = this._properties.size();
        for (int i = 0; i < size; i++) {
            SettableBeanProperty settableBeanProperty = this._properties.get(i);
            JsonParser asParser = tokenBuffer.asParser();
            asParser.nextToken();
            settableBeanProperty.deserializeAndSet(asParser, deserializationContext, obj);
        }
        return obj;
    }

    public UnwrappedPropertyHandler renameAll(NameTransformer nameTransformer) {
        ArrayList arrayList = new ArrayList(this._properties.size());
        for (SettableBeanProperty settableBeanProperty : this._properties) {
            SettableBeanProperty withSimpleName = settableBeanProperty.withSimpleName(nameTransformer.transform(settableBeanProperty.getName()));
            JsonDeserializer<Object> valueDeserializer = withSimpleName.getValueDeserializer();
            SettableBeanProperty settableBeanProperty2 = withSimpleName;
            if (valueDeserializer != null) {
                JsonDeserializer<Object> unwrappingDeserializer = valueDeserializer.unwrappingDeserializer(nameTransformer);
                settableBeanProperty2 = withSimpleName;
                if (unwrappingDeserializer != valueDeserializer) {
                    settableBeanProperty2 = withSimpleName.withValueDeserializer(unwrappingDeserializer);
                }
            }
            arrayList.add(settableBeanProperty2);
        }
        return new UnwrappedPropertyHandler(arrayList);
    }
}
