package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator.class */
public final class PropertyBasedCreator {
    protected final SettableBeanProperty[] _allProperties;
    protected final int _propertyCount;
    protected final HashMap<String, SettableBeanProperty> _propertyLookup;
    protected final ValueInstantiator _valueInstantiator;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator$CaseInsensitiveMap.class */
    public static class CaseInsensitiveMap extends HashMap<String, SettableBeanProperty> {
        protected final Locale _locale;

        @Deprecated
        public CaseInsensitiveMap() {
            this(Locale.getDefault());
        }

        public CaseInsensitiveMap(Locale locale) {
            this._locale = locale;
        }

        public static CaseInsensitiveMap construct(Locale locale) {
            return new CaseInsensitiveMap(locale);
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public SettableBeanProperty get(Object obj) {
            return (SettableBeanProperty) super.get((Object) ((String) obj).toLowerCase(this._locale));
        }

        public SettableBeanProperty put(String str, SettableBeanProperty settableBeanProperty) {
            return (SettableBeanProperty) super.put((CaseInsensitiveMap) str.toLowerCase(this._locale), (String) settableBeanProperty);
        }
    }

    protected PropertyBasedCreator(DeserializationContext deserializationContext, ValueInstantiator valueInstantiator, SettableBeanProperty[] settableBeanPropertyArr, boolean z, boolean z2) {
        this._valueInstantiator = valueInstantiator;
        if (z) {
            this._propertyLookup = CaseInsensitiveMap.construct(deserializationContext.getConfig().getLocale());
        } else {
            this._propertyLookup = new HashMap<>();
        }
        int length = settableBeanPropertyArr.length;
        this._propertyCount = length;
        this._allProperties = new SettableBeanProperty[length];
        int i = 0;
        if (z2) {
            DeserializationConfig config = deserializationContext.getConfig();
            int length2 = settableBeanPropertyArr.length;
            int i2 = 0;
            while (true) {
                i = 0;
                if (i2 >= length2) {
                    break;
                }
                SettableBeanProperty settableBeanProperty = settableBeanPropertyArr[i2];
                if (!settableBeanProperty.isIgnorable()) {
                    List<PropertyName> findAliases = settableBeanProperty.findAliases(config);
                    if (!findAliases.isEmpty()) {
                        for (PropertyName propertyName : findAliases) {
                            this._propertyLookup.put(propertyName.getSimpleName(), settableBeanProperty);
                        }
                    }
                }
                i2++;
            }
        }
        while (i < length) {
            SettableBeanProperty settableBeanProperty2 = settableBeanPropertyArr[i];
            this._allProperties[i] = settableBeanProperty2;
            if (!settableBeanProperty2.isIgnorable()) {
                this._propertyLookup.put(settableBeanProperty2.getName(), settableBeanProperty2);
            }
            i++;
        }
    }

    public static PropertyBasedCreator construct(DeserializationContext deserializationContext, ValueInstantiator valueInstantiator, SettableBeanProperty[] settableBeanPropertyArr, BeanPropertyMap beanPropertyMap) throws JsonMappingException {
        int length = settableBeanPropertyArr.length;
        SettableBeanProperty[] settableBeanPropertyArr2 = new SettableBeanProperty[length];
        for (int i = 0; i < length; i++) {
            SettableBeanProperty settableBeanProperty = settableBeanPropertyArr[i];
            SettableBeanProperty settableBeanProperty2 = settableBeanProperty;
            if (!settableBeanProperty.hasValueDeserializer()) {
                settableBeanProperty2 = settableBeanProperty;
                if (!settableBeanProperty.isInjectionOnly()) {
                    settableBeanProperty2 = settableBeanProperty.withValueDeserializer(deserializationContext.findContextualValueDeserializer(settableBeanProperty.getType(), settableBeanProperty));
                }
            }
            settableBeanPropertyArr2[i] = settableBeanProperty2;
        }
        return new PropertyBasedCreator(deserializationContext, valueInstantiator, settableBeanPropertyArr2, beanPropertyMap.isCaseInsensitive(), true);
    }

    public static PropertyBasedCreator construct(DeserializationContext deserializationContext, ValueInstantiator valueInstantiator, SettableBeanProperty[] settableBeanPropertyArr, boolean z) throws JsonMappingException {
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
        return new PropertyBasedCreator(deserializationContext, valueInstantiator, settableBeanPropertyArr2, z, false);
    }

    public final Object build(DeserializationContext deserializationContext, PropertyValueBuffer propertyValueBuffer) throws IOException {
        Object createFromObjectWith = this._valueInstantiator.createFromObjectWith(deserializationContext, this._allProperties, propertyValueBuffer);
        Object obj = createFromObjectWith;
        if (createFromObjectWith != null) {
            Object handleIdValue = propertyValueBuffer.handleIdValue(deserializationContext, createFromObjectWith);
            PropertyValue buffered = propertyValueBuffer.buffered();
            while (true) {
                PropertyValue propertyValue = buffered;
                obj = handleIdValue;
                if (propertyValue == null) {
                    break;
                }
                propertyValue.assign(handleIdValue);
                buffered = propertyValue.next;
            }
        }
        return obj;
    }

    public final SettableBeanProperty findCreatorProperty(int i) {
        for (SettableBeanProperty settableBeanProperty : this._propertyLookup.values()) {
            if (settableBeanProperty.getPropertyIndex() == i) {
                return settableBeanProperty;
            }
        }
        return null;
    }

    public final SettableBeanProperty findCreatorProperty(String str) {
        return this._propertyLookup.get(str);
    }

    public final Collection<SettableBeanProperty> properties() {
        return this._propertyLookup.values();
    }

    public final PropertyValueBuffer startBuilding(JsonParser jsonParser, DeserializationContext deserializationContext, ObjectIdReader objectIdReader) {
        return new PropertyValueBuffer(jsonParser, deserializationContext, this._propertyCount, objectIdReader);
    }
}
