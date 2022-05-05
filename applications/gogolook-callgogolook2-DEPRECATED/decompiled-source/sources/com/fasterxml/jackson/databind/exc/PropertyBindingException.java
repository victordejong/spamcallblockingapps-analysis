package com.fasterxml.jackson.databind.exc;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.JsonMappingException;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/exc/PropertyBindingException.class */
public abstract class PropertyBindingException extends JsonMappingException {
    public transient String _propertiesAsString;
    public final Collection<Object> _propertyIds;

    public PropertyBindingException(JsonParser jsonParser, String str, JsonLocation jsonLocation, Class<?> cls, String str2, Collection<Object> collection) {
        super(jsonParser, str, jsonLocation);
        this._propertyIds = collection;
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
                    Iterator<Object> it = this._propertyIds.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        sb.append('\"');
                        sb.append(String.valueOf(it.next()));
                        sb.append('\"');
                        if (sb.length() > 1000) {
                            sb.append(" [truncated]");
                            break;
                        } else if (it.hasNext()) {
                            sb.append(UserProfile.CARD_CATE_SEPARATOR);
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
}
