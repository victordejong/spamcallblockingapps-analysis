package org.bson;
/* loaded from: classes-dex2jar.jar:org/bson/BsonType.class */
public enum BsonType {
    END_OF_DOCUMENT(0),
    DOUBLE(1),
    STRING(2),
    DOCUMENT(3),
    ARRAY(4),
    BINARY(5),
    UNDEFINED(6),
    OBJECT_ID(7),
    BOOLEAN(8),
    DATE_TIME(9),
    NULL(10),
    REGULAR_EXPRESSION(11),
    DB_POINTER(12),
    JAVASCRIPT(13),
    SYMBOL(14),
    JAVASCRIPT_WITH_SCOPE(15),
    INT32(16),
    TIMESTAMP(17),
    INT64(18),
    DECIMAL128(19),
    MIN_KEY(255),
    MAX_KEY(127);
    
    private final int value;
    private static final BsonType[] LOOKUP_TABLE = new BsonType[MIN_KEY.getValue() + 1];

    static {
        BsonType[] values;
        for (BsonType bsonType : values()) {
            LOOKUP_TABLE[bsonType.getValue()] = bsonType;
        }
    }

    BsonType(int i) {
        this.value = i;
    }

    public static BsonType findByValue(int i) {
        return LOOKUP_TABLE[i & 255];
    }

    public int getValue() {
        return this.value;
    }

    public boolean isContainer() {
        return this == DOCUMENT || this == ARRAY;
    }
}
