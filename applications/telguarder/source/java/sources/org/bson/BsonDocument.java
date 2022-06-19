package org.bson;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.io.StringWriter;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.bson.codecs.BsonDocumentCodec;
import org.bson.codecs.DecoderContext;
import org.bson.codecs.EncoderContext;
import org.bson.codecs.configuration.CodecRegistry;
import org.bson.conversions.Bson;
import org.bson.json.JsonReader;
import org.bson.json.JsonWriter;
import org.bson.json.JsonWriterSettings;
import org.bson.p028io.BasicOutputBuffer;
/* loaded from: classes-dex2jar.jar:org/bson/BsonDocument.class */
public class BsonDocument extends BsonValue implements Map<String, BsonValue>, Cloneable, Bson, Serializable {
    private static final long serialVersionUID = 1;
    private final Map<String, BsonValue> map = new LinkedHashMap();

    /* renamed from: org.bson.BsonDocument$1 */
    /* loaded from: classes-dex2jar.jar:org/bson/BsonDocument$1.class */
    public static /* synthetic */ class C25281 {
        static final /* synthetic */ int[] $SwitchMap$org$bson$BsonType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[BsonType.values().length];
            $SwitchMap$org$bson$BsonType = iArr;
            try {
                iArr[BsonType.DOCUMENT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.BINARY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.JAVASCRIPT_WITH_SCOPE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:org/bson/BsonDocument$SerializationProxy.class */
    private static class SerializationProxy implements Serializable {
        private static final long serialVersionUID = 1;
        private final byte[] bytes;

        SerializationProxy(BsonDocument bsonDocument) {
            BasicOutputBuffer basicOutputBuffer = new BasicOutputBuffer();
            new BsonDocumentCodec().encode((BsonWriter) new BsonBinaryWriter(basicOutputBuffer), bsonDocument, EncoderContext.builder().build());
            this.bytes = new byte[basicOutputBuffer.size()];
            Iterator<ByteBuf> it = basicOutputBuffer.getByteBuffers().iterator();
            int i = 0;
            while (true) {
                int i2 = i;
                if (it.hasNext()) {
                    ByteBuf next = it.next();
                    System.arraycopy(next.array(), next.position(), this.bytes, i2, next.limit());
                    i = i2 + next.position();
                } else {
                    return;
                }
            }
        }

        private Object readResolve() {
            return new BsonDocumentCodec().decode((BsonReader) new BsonBinaryReader(ByteBuffer.wrap(this.bytes).order(ByteOrder.LITTLE_ENDIAN)), DecoderContext.builder().build());
        }
    }

    public BsonDocument() {
    }

    public BsonDocument(String str, BsonValue bsonValue) {
        put(str, bsonValue);
    }

    public BsonDocument(List<BsonElement> list) {
        for (BsonElement bsonElement : list) {
            put(bsonElement.getName(), bsonElement.getValue());
        }
    }

    public static BsonDocument parse(String str) {
        return new BsonDocumentCodec().decode((BsonReader) new JsonReader(str), DecoderContext.builder().build());
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Proxy required");
    }

    private void throwIfKeyAbsent(Object obj) {
        if (containsKey(obj)) {
            return;
        }
        throw new BsonInvalidOperationException("Document does not contain key " + obj);
    }

    private Object writeReplace() {
        return new SerializationProxy(this);
    }

    public BsonDocument append(String str, BsonValue bsonValue) {
        put(str, bsonValue);
        return this;
    }

    public BsonReader asBsonReader() {
        return new BsonDocumentReader(this);
    }

    @Override // java.util.Map
    public void clear() {
        this.map.clear();
    }

    public BsonDocument clone() {
        BsonDocument bsonDocument = new BsonDocument();
        for (Map.Entry<String, BsonValue> entry : entrySet()) {
            int i = C25281.$SwitchMap$org$bson$BsonType[entry.getValue().getBsonType().ordinal()];
            if (i == 1) {
                bsonDocument.put(entry.getKey(), (BsonValue) entry.getValue().asDocument().clone());
            } else if (i == 2) {
                bsonDocument.put(entry.getKey(), (BsonValue) entry.getValue().asArray().clone());
            } else if (i == 3) {
                bsonDocument.put(entry.getKey(), (BsonValue) BsonBinary.clone(entry.getValue().asBinary()));
            } else if (i != 4) {
                bsonDocument.put(entry.getKey(), entry.getValue());
            } else {
                bsonDocument.put(entry.getKey(), (BsonValue) BsonJavaScriptWithScope.clone(entry.getValue().asJavaScriptWithScope()));
            }
        }
        return bsonDocument;
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return this.map.containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return this.map.containsValue(obj);
    }

    @Override // java.util.Map
    public Set<Map.Entry<String, BsonValue>> entrySet() {
        return this.map.entrySet();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BsonDocument) {
            return entrySet().equals(((BsonDocument) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map
    public BsonValue get(Object obj) {
        return this.map.get(obj);
    }

    public BsonValue get(Object obj, BsonValue bsonValue) {
        BsonValue bsonValue2 = get(obj);
        if (bsonValue2 != null) {
            bsonValue = bsonValue2;
        }
        return bsonValue;
    }

    public BsonArray getArray(Object obj) {
        throwIfKeyAbsent(obj);
        return get(obj).asArray();
    }

    public BsonArray getArray(Object obj, BsonArray bsonArray) {
        return !containsKey(obj) ? bsonArray : get(obj).asArray();
    }

    public BsonBinary getBinary(Object obj) {
        throwIfKeyAbsent(obj);
        return get(obj).asBinary();
    }

    public BsonBinary getBinary(Object obj, BsonBinary bsonBinary) {
        return !containsKey(obj) ? bsonBinary : get(obj).asBinary();
    }

    public BsonBoolean getBoolean(Object obj) {
        throwIfKeyAbsent(obj);
        return get(obj).asBoolean();
    }

    public BsonBoolean getBoolean(Object obj, BsonBoolean bsonBoolean) {
        return !containsKey(obj) ? bsonBoolean : get(obj).asBoolean();
    }

    @Override // org.bson.BsonValue
    public BsonType getBsonType() {
        return BsonType.DOCUMENT;
    }

    public BsonDateTime getDateTime(Object obj) {
        throwIfKeyAbsent(obj);
        return get(obj).asDateTime();
    }

    public BsonDateTime getDateTime(Object obj, BsonDateTime bsonDateTime) {
        return !containsKey(obj) ? bsonDateTime : get(obj).asDateTime();
    }

    public BsonDecimal128 getDecimal128(Object obj) {
        throwIfKeyAbsent(obj);
        return get(obj).asDecimal128();
    }

    public BsonDecimal128 getDecimal128(Object obj, BsonDecimal128 bsonDecimal128) {
        return !containsKey(obj) ? bsonDecimal128 : get(obj).asDecimal128();
    }

    public BsonDocument getDocument(Object obj) {
        throwIfKeyAbsent(obj);
        return get(obj).asDocument();
    }

    public BsonDocument getDocument(Object obj, BsonDocument bsonDocument) {
        return !containsKey(obj) ? bsonDocument : get(obj).asDocument();
    }

    public BsonDouble getDouble(Object obj) {
        throwIfKeyAbsent(obj);
        return get(obj).asDouble();
    }

    public BsonDouble getDouble(Object obj, BsonDouble bsonDouble) {
        return !containsKey(obj) ? bsonDouble : get(obj).asDouble();
    }

    public String getFirstKey() {
        return keySet().iterator().next();
    }

    public BsonInt32 getInt32(Object obj) {
        throwIfKeyAbsent(obj);
        return get(obj).asInt32();
    }

    public BsonInt32 getInt32(Object obj, BsonInt32 bsonInt32) {
        return !containsKey(obj) ? bsonInt32 : get(obj).asInt32();
    }

    public BsonInt64 getInt64(Object obj) {
        throwIfKeyAbsent(obj);
        return get(obj).asInt64();
    }

    public BsonInt64 getInt64(Object obj, BsonInt64 bsonInt64) {
        return !containsKey(obj) ? bsonInt64 : get(obj).asInt64();
    }

    public BsonNumber getNumber(Object obj) {
        throwIfKeyAbsent(obj);
        return get(obj).asNumber();
    }

    public BsonNumber getNumber(Object obj, BsonNumber bsonNumber) {
        return !containsKey(obj) ? bsonNumber : get(obj).asNumber();
    }

    public BsonObjectId getObjectId(Object obj) {
        throwIfKeyAbsent(obj);
        return get(obj).asObjectId();
    }

    public BsonObjectId getObjectId(Object obj, BsonObjectId bsonObjectId) {
        return !containsKey(obj) ? bsonObjectId : get(obj).asObjectId();
    }

    public BsonRegularExpression getRegularExpression(Object obj) {
        throwIfKeyAbsent(obj);
        return get(obj).asRegularExpression();
    }

    public BsonRegularExpression getRegularExpression(Object obj, BsonRegularExpression bsonRegularExpression) {
        return !containsKey(obj) ? bsonRegularExpression : get(obj).asRegularExpression();
    }

    public BsonString getString(Object obj) {
        throwIfKeyAbsent(obj);
        return get(obj).asString();
    }

    public BsonString getString(Object obj, BsonString bsonString) {
        return !containsKey(obj) ? bsonString : get(obj).asString();
    }

    public BsonTimestamp getTimestamp(Object obj) {
        throwIfKeyAbsent(obj);
        return get(obj).asTimestamp();
    }

    public BsonTimestamp getTimestamp(Object obj, BsonTimestamp bsonTimestamp) {
        return !containsKey(obj) ? bsonTimestamp : get(obj).asTimestamp();
    }

    @Override // java.util.Map
    public int hashCode() {
        return entrySet().hashCode();
    }

    public boolean isArray(Object obj) {
        if (!containsKey(obj)) {
            return false;
        }
        return get(obj).isArray();
    }

    public boolean isBinary(Object obj) {
        if (!containsKey(obj)) {
            return false;
        }
        return get(obj).isBinary();
    }

    public boolean isBoolean(Object obj) {
        if (!containsKey(obj)) {
            return false;
        }
        return get(obj).isBoolean();
    }

    public boolean isDateTime(Object obj) {
        if (!containsKey(obj)) {
            return false;
        }
        return get(obj).isDateTime();
    }

    public boolean isDecimal128(Object obj) {
        if (!containsKey(obj)) {
            return false;
        }
        return get(obj).isDecimal128();
    }

    public boolean isDocument(Object obj) {
        if (!containsKey(obj)) {
            return false;
        }
        return get(obj).isDocument();
    }

    public boolean isDouble(Object obj) {
        if (!containsKey(obj)) {
            return false;
        }
        return get(obj).isDouble();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    public boolean isInt32(Object obj) {
        if (!containsKey(obj)) {
            return false;
        }
        return get(obj).isInt32();
    }

    public boolean isInt64(Object obj) {
        if (!containsKey(obj)) {
            return false;
        }
        return get(obj).isInt64();
    }

    public boolean isNull(Object obj) {
        if (!containsKey(obj)) {
            return false;
        }
        return get(obj).isNull();
    }

    public boolean isNumber(Object obj) {
        if (!containsKey(obj)) {
            return false;
        }
        return get(obj).isNumber();
    }

    public boolean isObjectId(Object obj) {
        if (!containsKey(obj)) {
            return false;
        }
        return get(obj).isObjectId();
    }

    public boolean isString(Object obj) {
        if (!containsKey(obj)) {
            return false;
        }
        return get(obj).isString();
    }

    public boolean isTimestamp(Object obj) {
        if (!containsKey(obj)) {
            return false;
        }
        return get(obj).isTimestamp();
    }

    @Override // java.util.Map
    public Set<String> keySet() {
        return this.map.keySet();
    }

    public BsonValue put(String str, BsonValue bsonValue) {
        if (bsonValue != null) {
            if (str.contains("��")) {
                throw new BSONException(String.format("BSON cstring '%s' is not valid because it contains a null character at index %d", str, Integer.valueOf(str.indexOf(0))));
            }
            return this.map.put(str, bsonValue);
        }
        throw new IllegalArgumentException(String.format("The value for key %s can not be null", str));
    }

    @Override // java.util.Map
    public void putAll(Map<? extends String, ? extends BsonValue> map) {
        for (Map.Entry<? extends String, ? extends BsonValue> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public BsonValue remove(Object obj) {
        return this.map.remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return this.map.size();
    }

    @Override // org.bson.conversions.Bson
    public <C> BsonDocument toBsonDocument(Class<C> cls, CodecRegistry codecRegistry) {
        return this;
    }

    public String toJson() {
        return toJson(new JsonWriterSettings());
    }

    public String toJson(JsonWriterSettings jsonWriterSettings) {
        StringWriter stringWriter = new StringWriter();
        new BsonDocumentCodec().encode((BsonWriter) new JsonWriter(stringWriter, jsonWriterSettings), this, EncoderContext.builder().build());
        return stringWriter.toString();
    }

    public String toString() {
        return toJson();
    }

    @Override // java.util.Map
    public Collection<BsonValue> values() {
        return this.map.values();
    }
}
