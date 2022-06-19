package org.bson.codecs;

import java.util.HashMap;
import java.util.Map;
import org.bson.BsonArray;
import org.bson.BsonBinary;
import org.bson.BsonBoolean;
import org.bson.BsonDateTime;
import org.bson.BsonDbPointer;
import org.bson.BsonDecimal128;
import org.bson.BsonDocument;
import org.bson.BsonDocumentWrapper;
import org.bson.BsonDouble;
import org.bson.BsonInt32;
import org.bson.BsonInt64;
import org.bson.BsonJavaScript;
import org.bson.BsonJavaScriptWithScope;
import org.bson.BsonMaxKey;
import org.bson.BsonMinKey;
import org.bson.BsonNull;
import org.bson.BsonObjectId;
import org.bson.BsonRegularExpression;
import org.bson.BsonString;
import org.bson.BsonSymbol;
import org.bson.BsonTimestamp;
import org.bson.BsonType;
import org.bson.BsonUndefined;
import org.bson.BsonValue;
import org.bson.RawBsonDocument;
import org.bson.codecs.configuration.CodecProvider;
import org.bson.codecs.configuration.CodecRegistry;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/BsonValueCodecProvider.class */
public class BsonValueCodecProvider implements CodecProvider {
    private static final BsonTypeClassMap DEFAULT_BSON_TYPE_CLASS_MAP;
    private final Map<Class<?>, Codec<?>> codecs = new HashMap();

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(BsonType.NULL, BsonNull.class);
        hashMap.put(BsonType.ARRAY, BsonArray.class);
        hashMap.put(BsonType.BINARY, BsonBinary.class);
        hashMap.put(BsonType.BOOLEAN, BsonBoolean.class);
        hashMap.put(BsonType.DATE_TIME, BsonDateTime.class);
        hashMap.put(BsonType.DB_POINTER, BsonDbPointer.class);
        hashMap.put(BsonType.DOCUMENT, BsonDocument.class);
        hashMap.put(BsonType.DOUBLE, BsonDouble.class);
        hashMap.put(BsonType.INT32, BsonInt32.class);
        hashMap.put(BsonType.INT64, BsonInt64.class);
        hashMap.put(BsonType.DECIMAL128, BsonDecimal128.class);
        hashMap.put(BsonType.MAX_KEY, BsonMaxKey.class);
        hashMap.put(BsonType.MIN_KEY, BsonMinKey.class);
        hashMap.put(BsonType.JAVASCRIPT, BsonJavaScript.class);
        hashMap.put(BsonType.JAVASCRIPT_WITH_SCOPE, BsonJavaScriptWithScope.class);
        hashMap.put(BsonType.OBJECT_ID, BsonObjectId.class);
        hashMap.put(BsonType.REGULAR_EXPRESSION, BsonRegularExpression.class);
        hashMap.put(BsonType.STRING, BsonString.class);
        hashMap.put(BsonType.SYMBOL, BsonSymbol.class);
        hashMap.put(BsonType.TIMESTAMP, BsonTimestamp.class);
        hashMap.put(BsonType.UNDEFINED, BsonUndefined.class);
        DEFAULT_BSON_TYPE_CLASS_MAP = new BsonTypeClassMap(hashMap);
    }

    public BsonValueCodecProvider() {
        addCodecs();
    }

    private <T extends BsonValue> void addCodec(Codec<T> codec) {
        this.codecs.put(codec.getEncoderClass(), codec);
    }

    private void addCodecs() {
        addCodec(new BsonNullCodec());
        addCodec(new BsonBinaryCodec());
        addCodec(new BsonBooleanCodec());
        addCodec(new BsonDateTimeCodec());
        addCodec(new BsonDBPointerCodec());
        addCodec(new BsonDoubleCodec());
        addCodec(new BsonInt32Codec());
        addCodec(new BsonInt64Codec());
        addCodec(new BsonDecimal128Codec());
        addCodec(new BsonMinKeyCodec());
        addCodec(new BsonMaxKeyCodec());
        addCodec(new BsonJavaScriptCodec());
        addCodec(new BsonObjectIdCodec());
        addCodec(new BsonRegularExpressionCodec());
        addCodec(new BsonStringCodec());
        addCodec(new BsonSymbolCodec());
        addCodec(new BsonTimestampCodec());
        addCodec(new BsonUndefinedCodec());
    }

    public static BsonTypeClassMap getBsonTypeClassMap() {
        return DEFAULT_BSON_TYPE_CLASS_MAP;
    }

    public static Class<? extends BsonValue> getClassForBsonType(BsonType bsonType) {
        return DEFAULT_BSON_TYPE_CLASS_MAP.get(bsonType);
    }

    @Override // org.bson.codecs.configuration.CodecProvider
    public <T> Codec<T> get(Class<T> cls, CodecRegistry codecRegistry) {
        if (this.codecs.containsKey(cls)) {
            return (Codec<T>) this.codecs.get(cls);
        }
        if (cls == BsonJavaScriptWithScope.class) {
            return new BsonJavaScriptWithScopeCodec(codecRegistry.get(BsonDocument.class));
        }
        if (cls == BsonValue.class) {
            return new BsonValueCodec(codecRegistry);
        }
        if (cls == BsonDocumentWrapper.class) {
            return new BsonDocumentWrapperCodec(codecRegistry.get(BsonDocument.class));
        }
        if (cls == RawBsonDocument.class) {
            return new RawBsonDocumentCodec();
        }
        if (BsonDocument.class.isAssignableFrom(cls)) {
            return new BsonDocumentCodec(codecRegistry);
        }
        if (!BsonArray.class.isAssignableFrom(cls)) {
            return null;
        }
        return new BsonArrayCodec(codecRegistry);
    }
}
