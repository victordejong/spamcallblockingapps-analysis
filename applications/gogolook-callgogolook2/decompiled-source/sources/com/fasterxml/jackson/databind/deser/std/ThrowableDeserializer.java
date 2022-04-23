package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.BeanDeserializer;
import com.fasterxml.jackson.databind.deser.SettableAnyProperty;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/ThrowableDeserializer.class */
public class ThrowableDeserializer extends BeanDeserializer {
    public ThrowableDeserializer(BeanDeserializer beanDeserializer) {
        super(beanDeserializer);
        this._vanillaProcessing = false;
    }

    public ThrowableDeserializer(BeanDeserializer beanDeserializer, NameTransformer nameTransformer) {
        super(beanDeserializer, nameTransformer);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializer, com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public Object deserializeFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this._propertyBasedCreator != null) {
            return _deserializeUsingPropertyBased(jsonParser, deserializationContext);
        }
        JsonDeserializer<Object> jsonDeserializer = this._delegateDeserializer;
        if (jsonDeserializer != null) {
            return this._valueInstantiator.createUsingDelegate(deserializationContext, jsonDeserializer.deserialize(jsonParser, deserializationContext));
        }
        if (!this._beanType.isAbstract()) {
            boolean canCreateFromString = this._valueInstantiator.canCreateFromString();
            boolean canCreateUsingDefault = this._valueInstantiator.canCreateUsingDefault();
            if (canCreateFromString || canCreateUsingDefault) {
                int i = 0;
                Object obj = null;
                Object[] objArr = null;
                int i2 = 0;
                while (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
                    String currentName = jsonParser.getCurrentName();
                    SettableBeanProperty find = this._beanProperties.find(currentName);
                    jsonParser.nextToken();
                    if (find != null) {
                        if (obj != null) {
                            find.deserializeAndSet(jsonParser, deserializationContext, obj);
                            objArr = objArr;
                            i2 = i2;
                        } else {
                            objArr = objArr;
                            if (objArr == null) {
                                int size = this._beanProperties.size();
                                objArr = new Object[size + size];
                            }
                            int i3 = i2 + 1;
                            objArr[i2] = find;
                            i2 = i3 + 1;
                            objArr[i3] = find.deserialize(jsonParser, deserializationContext);
                        }
                    } else if (!"message".equals(currentName) || !canCreateFromString) {
                        HashSet<String> hashSet = this._ignorableProps;
                        if (hashSet == null || !hashSet.contains(currentName)) {
                            SettableAnyProperty settableAnyProperty = this._anySetter;
                            if (settableAnyProperty != null) {
                                settableAnyProperty.deserializeAndSet(jsonParser, deserializationContext, obj, currentName);
                                objArr = objArr;
                                i2 = i2;
                            } else {
                                handleUnknownProperty(jsonParser, deserializationContext, obj, currentName);
                                i2 = i2;
                                objArr = objArr;
                            }
                        } else {
                            jsonParser.skipChildren();
                            objArr = objArr;
                            i2 = i2;
                        }
                    } else {
                        Object createFromString = this._valueInstantiator.createFromString(deserializationContext, jsonParser.getText());
                        obj = createFromString;
                        objArr = objArr;
                        i2 = i2;
                        if (objArr != null) {
                            for (int i4 = 0; i4 < i2; i4 += 2) {
                                ((SettableBeanProperty) objArr[i4]).set(createFromString, objArr[i4 + 1]);
                            }
                            objArr = null;
                            obj = createFromString;
                            i2 = i2;
                        }
                    }
                    jsonParser.nextToken();
                }
                Object obj2 = obj;
                if (obj == null) {
                    Object createFromString2 = canCreateFromString ? this._valueInstantiator.createFromString(deserializationContext, null) : this._valueInstantiator.createUsingDefault(deserializationContext);
                    obj2 = createFromString2;
                    if (objArr != null) {
                        while (true) {
                            obj2 = createFromString2;
                            if (i >= i2) {
                                break;
                            }
                            ((SettableBeanProperty) objArr[i]).set(createFromString2, objArr[i + 1]);
                            i += 2;
                        }
                    }
                }
                return obj2;
            }
            throw JsonMappingException.from(jsonParser, "Can not deserialize Throwable of type " + this._beanType + " without having a default contructor, a single-String-arg constructor; or explicit @JsonCreator");
        }
        throw JsonMappingException.from(jsonParser, "Can not instantiate abstract type " + this._beanType + " (need to add/enable type information?)");
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public JsonDeserializer<Object> unwrappingDeserializer(NameTransformer nameTransformer) {
        return ThrowableDeserializer.class != ThrowableDeserializer.class ? this : new ThrowableDeserializer(this, nameTransformer);
    }
}
