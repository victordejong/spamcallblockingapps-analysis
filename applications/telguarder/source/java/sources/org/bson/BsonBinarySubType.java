package org.bson;
/* loaded from: classes-dex2jar.jar:org/bson/BsonBinarySubType.class */
public enum BsonBinarySubType {
    BINARY((byte) 0),
    FUNCTION((byte) 1),
    OLD_BINARY((byte) 2),
    UUID_LEGACY((byte) 3),
    UUID_STANDARD((byte) 4),
    MD5((byte) 5),
    USER_DEFINED(Byte.MIN_VALUE);
    
    private final byte value;

    BsonBinarySubType(byte b) {
        this.value = b;
    }

    public static boolean isUuid(byte b) {
        return b == UUID_LEGACY.getValue() || b == UUID_STANDARD.getValue();
    }

    public byte getValue() {
        return this.value;
    }
}
