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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v103, types: [java.lang.Object[]] */
    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializer, com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public Object deserializeFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        int i;
        int i2;
        SettableBeanProperty[] settableBeanPropertyArr;
        if (this._propertyBasedCreator != null) {
            return _deserializeUsingPropertyBased(jsonParser, deserializationContext);
        }
        if (this._delegateDeserializer != null) {
            return this._valueInstantiator.createUsingDelegate(deserializationContext, this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
        }
        if (this._beanType.isAbstract()) {
            return deserializationContext.handleMissingInstantiator(handledType(), getValueInstantiator(), jsonParser, "abstract type (need to add/enable type information?)", new Object[0]);
        }
        boolean canCreateFromString = this._valueInstantiator.canCreateFromString();
        boolean canCreateUsingDefault = this._valueInstantiator.canCreateUsingDefault();
        if (!canCreateFromString && !canCreateUsingDefault) {
            return deserializationContext.handleMissingInstantiator(handledType(), getValueInstantiator(), jsonParser, "Throwable needs a default constructor, a single-String-arg constructor; or explicit @JsonCreator", new Object[0]);
        }
        Object obj = null;
        SettableBeanProperty[] settableBeanPropertyArr2 = null;
        int i3 = 0;
        while (true) {
            i = i3;
            if (jsonParser.hasToken(JsonToken.END_OBJECT)) {
                break;
            }
            String currentName = jsonParser.currentName();
            SettableBeanProperty find = this._beanProperties.find(currentName);
            jsonParser.nextToken();
            if (find != null) {
                if (obj != null) {
                    find.deserializeAndSet(jsonParser, deserializationContext, obj);
                    settableBeanPropertyArr = settableBeanPropertyArr2;
                    i2 = i;
                } else {
                    settableBeanPropertyArr = settableBeanPropertyArr2;
                    if (settableBeanPropertyArr2 == null) {
                        int size = this._beanProperties.size();
                        settableBeanPropertyArr = new Object[size + size];
                    }
                    int i4 = i + 1;
                    settableBeanPropertyArr[i] = find;
                    i2 = i4 + 1;
                    settableBeanPropertyArr[i4] = find.deserialize(jsonParser, deserializationContext);
                }
            } else if (PROP_NAME_MESSAGE.equals(currentName) && canCreateFromString) {
                Object createFromString = this._valueInstantiator.createFromString(deserializationContext, jsonParser.getValueAsString());
                obj = createFromString;
                settableBeanPropertyArr = settableBeanPropertyArr2;
                i2 = i;
                if (settableBeanPropertyArr2 != null) {
                    for (int i5 = 0; i5 < i; i5 += 2) {
                        settableBeanPropertyArr2[i5].set(createFromString, settableBeanPropertyArr2[i5 + 1]);
                    }
                    settableBeanPropertyArr = null;
                    obj = createFromString;
                    i2 = i;
                }
            } else if (this._ignorableProps != null && this._ignorableProps.contains(currentName)) {
                jsonParser.skipChildren();
                settableBeanPropertyArr = settableBeanPropertyArr2;
                i2 = i;
            } else if (this._anySetter != null) {
                this._anySetter.deserializeAndSet(jsonParser, deserializationContext, obj, currentName);
                settableBeanPropertyArr = settableBeanPropertyArr2;
                i2 = i;
            } else {
                handleUnknownProperty(jsonParser, deserializationContext, obj, currentName);
                i2 = i;
                settableBeanPropertyArr = settableBeanPropertyArr2;
            }
            jsonParser.nextToken();
            settableBeanPropertyArr2 = settableBeanPropertyArr;
            i3 = i2;
        }
        Object obj2 = obj;
        if (obj == null) {
            Object createFromString2 = canCreateFromString ? this._valueInstantiator.createFromString(deserializationContext, null) : this._valueInstantiator.createUsingDefault(deserializationContext);
            obj2 = createFromString2;
            if (settableBeanPropertyArr2 != null) {
                int i6 = 0;
                while (true) {
                    obj2 = createFromString2;
                    if (i6 >= i) {
                        break;
                    }
                    settableBeanPropertyArr2[i6].set(createFromString2, settableBeanPropertyArr2[i6 + 1]);
                    i6 += 2;
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
