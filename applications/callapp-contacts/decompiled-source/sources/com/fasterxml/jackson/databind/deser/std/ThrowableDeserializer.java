package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.BeanDeserializer;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/ThrowableDeserializer.class */
public class ThrowableDeserializer extends BeanDeserializer {
    protected static final String PROP_NAME_MESSAGE = "message";
    private static final long serialVersionUID = 1;

    public ThrowableDeserializer(BeanDeserializer beanDeserializer) {
        super(beanDeserializer);
        this._vanillaProcessing = false;
    }

    protected ThrowableDeserializer(BeanDeserializer beanDeserializer, NameTransformer nameTransformer) {
        super(beanDeserializer, nameTransformer);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializer, com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public Object deserializeFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this._propertyBasedCreator != null) {
            return _deserializeUsingPropertyBased(jsonParser, deserializationContext);
        }
        if (this._delegateDeserializer != null) {
            return this._valueInstantiator.createUsingDelegate(deserializationContext, this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
        }
        int i = 0;
        if (this._beanType.isAbstract()) {
            return deserializationContext.handleMissingInstantiator(handledType(), getValueInstantiator(), jsonParser, "abstract type (need to add/enable type information?)", new Object[0]);
        }
        boolean canCreateFromString = this._valueInstantiator.canCreateFromString();
        boolean canCreateUsingDefault = this._valueInstantiator.canCreateUsingDefault();
        if (!(canCreateFromString || canCreateUsingDefault)) {
            return deserializationContext.handleMissingInstantiator(handledType(), getValueInstantiator(), jsonParser, "Throwable needs a default constructor, a single-String-arg constructor; or explicit @JsonCreator", new Object[0]);
        }
        Object obj = null;
        Object[] objArr = null;
        int i2 = 0;
        while (!jsonParser.hasToken(JsonToken.END_OBJECT)) {
            String currentName = jsonParser.currentName();
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
            } else if (PROP_NAME_MESSAGE.equals(currentName) && canCreateFromString) {
                Object createFromString = this._valueInstantiator.createFromString(deserializationContext, jsonParser.getValueAsString());
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
            } else if (this._ignorableProps != null && this._ignorableProps.contains(currentName)) {
                jsonParser.skipChildren();
                objArr = objArr;
                i2 = i2;
            } else if (this._anySetter != null) {
                this._anySetter.deserializeAndSet(jsonParser, deserializationContext, obj, currentName);
                objArr = objArr;
                i2 = i2;
            } else {
                handleUnknownProperty(jsonParser, deserializationContext, obj, currentName);
                i2 = i2;
                objArr = objArr;
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

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializer, com.fasterxml.jackson.databind.deser.BeanDeserializerBase, com.fasterxml.jackson.databind.JsonDeserializer
    public JsonDeserializer<Object> unwrappingDeserializer(NameTransformer nameTransformer) {
        return getClass() != ThrowableDeserializer.class ? this : new ThrowableDeserializer(this, nameTransformer);
    }
}
