package org.bson.json;

import org.bson.BsonDouble;
import org.bson.types.Decimal128;
/* loaded from: classes3-dex2jar.jar:org/bson/json/JsonToken.class */
public class JsonToken {
    private final JsonTokenType type;
    private final Object value;

    public JsonToken(JsonTokenType jsonTokenType, Object obj) {
        this.value = obj;
        this.type = jsonTokenType;
    }

    public JsonTokenType getType() {
        return this.type;
    }

    public Object getValue() {
        return this.value;
    }

    public <T> T getValue(Class<T> cls) {
        try {
            if (Long.class == cls) {
                Object obj = this.value;
                if (obj instanceof Integer) {
                    return cls.cast(Long.valueOf(((Integer) obj).longValue()));
                }
                if (obj instanceof String) {
                    return cls.cast(Long.valueOf((String) obj));
                }
            } else if (Integer.class == cls) {
                Object obj2 = this.value;
                if (obj2 instanceof String) {
                    return cls.cast(Integer.valueOf((String) obj2));
                }
            } else if (Double.class == cls) {
                Object obj3 = this.value;
                if (obj3 instanceof String) {
                    return cls.cast(Double.valueOf((String) obj3));
                }
            } else if (Decimal128.class == cls) {
                Object obj4 = this.value;
                if (obj4 instanceof Integer) {
                    return cls.cast(new Decimal128(((Integer) this.value).intValue()));
                }
                if (obj4 instanceof Long) {
                    return cls.cast(new Decimal128(((Long) this.value).longValue()));
                }
                if (obj4 instanceof Double) {
                    return cls.cast(new BsonDouble(((Double) obj4).doubleValue()).decimal128Value());
                }
                if (obj4 instanceof String) {
                    return cls.cast(Decimal128.parse((String) obj4));
                }
            }
            return cls.cast(this.value);
        } catch (Exception e) {
            throw new JsonParseException(String.format("Exception converting value '%s' to type %s", this.value, cls.getName()), e);
        }
    }
}
