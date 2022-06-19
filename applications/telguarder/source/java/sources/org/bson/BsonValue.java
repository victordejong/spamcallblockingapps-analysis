package org.bson;
/* loaded from: classes-dex2jar.jar:org/bson/BsonValue.class */
public abstract class BsonValue {
    private void throwIfInvalidType(BsonType bsonType) {
        if (getBsonType() == bsonType) {
            return;
        }
        throw new BsonInvalidOperationException(String.format("Value expected to be of type %s is of unexpected type %s", bsonType, getBsonType()));
    }

    public BsonArray asArray() {
        throwIfInvalidType(BsonType.ARRAY);
        return (BsonArray) this;
    }

    public BsonBinary asBinary() {
        throwIfInvalidType(BsonType.BINARY);
        return (BsonBinary) this;
    }

    public BsonBoolean asBoolean() {
        throwIfInvalidType(BsonType.BOOLEAN);
        return (BsonBoolean) this;
    }

    public BsonDbPointer asDBPointer() {
        throwIfInvalidType(BsonType.DB_POINTER);
        return (BsonDbPointer) this;
    }

    public BsonDateTime asDateTime() {
        throwIfInvalidType(BsonType.DATE_TIME);
        return (BsonDateTime) this;
    }

    public BsonDecimal128 asDecimal128() {
        throwIfInvalidType(BsonType.DECIMAL128);
        return (BsonDecimal128) this;
    }

    public BsonDocument asDocument() {
        throwIfInvalidType(BsonType.DOCUMENT);
        return (BsonDocument) this;
    }

    public BsonDouble asDouble() {
        throwIfInvalidType(BsonType.DOUBLE);
        return (BsonDouble) this;
    }

    public BsonInt32 asInt32() {
        throwIfInvalidType(BsonType.INT32);
        return (BsonInt32) this;
    }

    public BsonInt64 asInt64() {
        throwIfInvalidType(BsonType.INT64);
        return (BsonInt64) this;
    }

    public BsonJavaScript asJavaScript() {
        throwIfInvalidType(BsonType.JAVASCRIPT);
        return (BsonJavaScript) this;
    }

    public BsonJavaScriptWithScope asJavaScriptWithScope() {
        throwIfInvalidType(BsonType.JAVASCRIPT_WITH_SCOPE);
        return (BsonJavaScriptWithScope) this;
    }

    public BsonNumber asNumber() {
        if (getBsonType() == BsonType.INT32 || getBsonType() == BsonType.INT64 || getBsonType() == BsonType.DOUBLE) {
            return (BsonNumber) this;
        }
        throw new BsonInvalidOperationException(String.format("Value expected to be of a numerical BSON type is of unexpected type %s", getBsonType()));
    }

    public BsonObjectId asObjectId() {
        throwIfInvalidType(BsonType.OBJECT_ID);
        return (BsonObjectId) this;
    }

    public BsonRegularExpression asRegularExpression() {
        throwIfInvalidType(BsonType.REGULAR_EXPRESSION);
        return (BsonRegularExpression) this;
    }

    public BsonString asString() {
        throwIfInvalidType(BsonType.STRING);
        return (BsonString) this;
    }

    public BsonSymbol asSymbol() {
        throwIfInvalidType(BsonType.SYMBOL);
        return (BsonSymbol) this;
    }

    public BsonTimestamp asTimestamp() {
        throwIfInvalidType(BsonType.TIMESTAMP);
        return (BsonTimestamp) this;
    }

    public abstract BsonType getBsonType();

    public boolean isArray() {
        return this instanceof BsonArray;
    }

    public boolean isBinary() {
        return this instanceof BsonBinary;
    }

    public boolean isBoolean() {
        return this instanceof BsonBoolean;
    }

    public boolean isDBPointer() {
        return this instanceof BsonDbPointer;
    }

    public boolean isDateTime() {
        return this instanceof BsonDateTime;
    }

    public boolean isDecimal128() {
        return this instanceof BsonDecimal128;
    }

    public boolean isDocument() {
        return this instanceof BsonDocument;
    }

    public boolean isDouble() {
        return this instanceof BsonDouble;
    }

    public boolean isInt32() {
        return this instanceof BsonInt32;
    }

    public boolean isInt64() {
        return this instanceof BsonInt64;
    }

    public boolean isJavaScript() {
        return this instanceof BsonJavaScript;
    }

    public boolean isJavaScriptWithScope() {
        return this instanceof BsonJavaScriptWithScope;
    }

    public boolean isNull() {
        return this instanceof BsonNull;
    }

    public boolean isNumber() {
        return isInt32() || isInt64() || isDouble();
    }

    public boolean isObjectId() {
        return this instanceof BsonObjectId;
    }

    public boolean isRegularExpression() {
        return this instanceof BsonRegularExpression;
    }

    public boolean isString() {
        return this instanceof BsonString;
    }

    public boolean isSymbol() {
        return this instanceof BsonSymbol;
    }

    public boolean isTimestamp() {
        return this instanceof BsonTimestamp;
    }
}
