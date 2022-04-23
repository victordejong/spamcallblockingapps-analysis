package com.fasterxml.jackson.databind.exc;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/exc/PropertyBindingException.class */
public abstract class PropertyBindingException extends MismatchedInputException {
    private static final int MAX_DESC_LENGTH = 1000;
    protected transient String _propertiesAsString;
    protected final Collection<Object> _propertyIds;
    protected final String _propertyName;
    protected final Class<?> _referringClass;

    /* JADX INFO: Access modifiers changed from: protected */
    public PropertyBindingException(JsonParser jsonParser, String str, JsonLocation jsonLocation, Class<?> cls, String str2, Collection<Object> collection) {
        super(jsonParser, str, jsonLocation);
        this._referringClass = cls;
        this._propertyName = str2;
        this._propertyIds = collection;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public PropertyBindingException(String str, JsonLocation jsonLocation, Class<?> cls, String str2, Collection<Object> collection) {
        this(null, str, jsonLocation, cls, str2, collection);
    }

    public Collection<Object> getKnownPropertyIds() {
        Collection<Object> collection = this._propertyIds;
        if (collection == null) {
            return null;
        }
        return Collections.unmodifiableCollection(collection);
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException
    public String getMessageSuffix() {
        String str = this._propertiesAsString;
        String str2 = str;
        if (str == null) {
            str2 = str;
            if (this._propertyIds != null) {
                StringBuilder sb = new StringBuilder(100);
                int size = this._propertyIds.size();
                if (size != 1) {
                    sb.append(" (");
                    sb.append(size);
                    sb.append(" known properties: ");
                    Iterator<Object> it2 = this._propertyIds.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        sb.append('\"');
                        sb.append(String.valueOf(it2.next()));
                        sb.append('\"');
                        if (sb.length() > 1000) {
                            sb.append(" [truncated]");
                            break;
                        } else if (it2.hasNext()) {
                            sb.append(", ");
                        }
                    }
                } else {
                    sb.append(" (one known property: \"");
                    sb.append(String.valueOf(this._propertyIds.iterator().next()));
                    sb.append('\"');
                }
                sb.append("])");
                str2 = sb.toString();
                this._propertiesAsString = str2;
            }
        }
        return str2;
    }

    public String getPropertyName() {
        return this._propertyName;
    }

    public Class<?> getReferringClass() {
        return this._referringClass;
    }
}
