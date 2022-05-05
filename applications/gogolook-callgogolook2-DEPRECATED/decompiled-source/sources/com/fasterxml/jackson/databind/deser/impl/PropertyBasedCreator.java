package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import java.io.IOException;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator.class */
public final class PropertyBasedCreator {
    public final SettableBeanProperty[] _allProperties;
    public final int _propertyCount;
    public final HashMap<String, SettableBeanProperty> _propertyLookup = new HashMap<>();
    public final ValueInstantiator _valueInstantiator;

    public PropertyBasedCreator(ValueInstantiator valueInstantiator, SettableBeanProperty[] settableBeanPropertyArr) {
        this._valueInstantiator = valueInstantiator;
        int length = settableBeanPropertyArr.length;
        this._propertyCount = length;
        this._allProperties = new SettableBeanProperty[length];
        for (int i = 0; i < length; i++) {
            SettableBeanProperty settableBeanProperty = settableBeanPropertyArr[i];
            this._allProperties[i] = settableBeanProperty;
            this._propertyLookup.put(settableBeanProperty.getName(), settableBeanProperty);
        }
    }

    public static PropertyBasedCreator construct(DeserializationContext deserializationContext, ValueInstantiator valueInstantiator, SettableBeanProperty[] settableBeanPropertyArr) throws JsonMappingException {
        int length = settableBeanPropertyArr.length;
        SettableBeanProperty[] settableBeanPropertyArr2 = new SettableBeanProperty[length];
        for (int i = 0; i < length; i++) {
            SettableBeanProperty settableBeanProperty = settableBeanPropertyArr[i];
            SettableBeanProperty settableBeanProperty2 = settableBeanProperty;
            if (!settableBeanProperty.hasValueDeserializer()) {
                settableBeanProperty2 = settableBeanProperty.withValueDeserializer(deserializationContext.findContextualValueDeserializer(settableBeanProperty.getType(), settableBeanProperty));
            }
            settableBeanPropertyArr2[i] = settableBeanProperty2;
        }
        return new PropertyBasedCreator(valueInstantiator, settableBeanPropertyArr2);
    }

    public Object build(DeserializationContext deserializationContext, PropertyValueBuffer propertyValueBuffer) throws IOException {
        Object createFromObjectWith = this._valueInstantiator.createFromObjectWith(deserializationContext, propertyValueBuffer.getParameters(this._allProperties));
        Object obj = createFromObjectWith;
        if (createFromObjectWith != null) {
            Object handleIdValue = propertyValueBuffer.handleIdValue(deserializationContext, createFromObjectWith);
            PropertyValue buffered = propertyValueBuffer.buffered();
            while (true) {
                obj = handleIdValue;
                if (buffered == null) {
                    break;
                }
                buffered.assign(handleIdValue);
                buffered = buffered.next;
            }
        }
        return obj;
    }

    public SettableBeanProperty findCreatorProperty(String str) {
        return this._propertyLookup.get(str);
    }

    public PropertyValueBuffer startBuilding(JsonParser jsonParser, DeserializationContext deserializationContext, ObjectIdReader objectIdReader) {
        return new PropertyValueBuffer(jsonParser, deserializationContext, this._propertyCount, objectIdReader);
    }
}
