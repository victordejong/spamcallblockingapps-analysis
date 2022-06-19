package org.bson.codecs;

import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.bson.BsonDbPointer;
import org.bson.BsonRegularExpression;
import org.bson.BsonTimestamp;
import org.bson.BsonType;
import org.bson.BsonUndefined;
import org.bson.Document;
import org.bson.types.Binary;
import org.bson.types.Code;
import org.bson.types.CodeWithScope;
import org.bson.types.Decimal128;
import org.bson.types.MaxKey;
import org.bson.types.MinKey;
import org.bson.types.ObjectId;
import org.bson.types.Symbol;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/BsonTypeClassMap.class */
public class BsonTypeClassMap {
    private final Map<BsonType, Class<?>> map;

    public BsonTypeClassMap() {
        this(Collections.emptyMap());
    }

    public BsonTypeClassMap(Map<BsonType, Class<?>> map) {
        HashMap hashMap = new HashMap();
        this.map = hashMap;
        addDefaults();
        hashMap.putAll(map);
    }

    private void addDefaults() {
        this.map.put(BsonType.ARRAY, List.class);
        this.map.put(BsonType.BINARY, Binary.class);
        this.map.put(BsonType.BOOLEAN, Boolean.class);
        this.map.put(BsonType.DATE_TIME, Date.class);
        this.map.put(BsonType.DB_POINTER, BsonDbPointer.class);
        this.map.put(BsonType.DOCUMENT, Document.class);
        this.map.put(BsonType.DOUBLE, Double.class);
        this.map.put(BsonType.INT32, Integer.class);
        this.map.put(BsonType.INT64, Long.class);
        this.map.put(BsonType.DECIMAL128, Decimal128.class);
        this.map.put(BsonType.MAX_KEY, MaxKey.class);
        this.map.put(BsonType.MIN_KEY, MinKey.class);
        this.map.put(BsonType.JAVASCRIPT, Code.class);
        this.map.put(BsonType.JAVASCRIPT_WITH_SCOPE, CodeWithScope.class);
        this.map.put(BsonType.OBJECT_ID, ObjectId.class);
        this.map.put(BsonType.REGULAR_EXPRESSION, BsonRegularExpression.class);
        this.map.put(BsonType.STRING, String.class);
        this.map.put(BsonType.SYMBOL, Symbol.class);
        this.map.put(BsonType.TIMESTAMP, BsonTimestamp.class);
        this.map.put(BsonType.UNDEFINED, BsonUndefined.class);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.map.equals(((BsonTypeClassMap) obj).map);
    }

    public Class<?> get(BsonType bsonType) {
        return this.map.get(bsonType);
    }

    public int hashCode() {
        return this.map.hashCode();
    }

    public Set<BsonType> keys() {
        return this.map.keySet();
    }
}
