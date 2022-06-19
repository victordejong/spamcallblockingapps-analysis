package org.bson;

import java.util.Arrays;
import java.util.UUID;
import org.bson.assertions.Assertions;
import org.bson.internal.UuidHelper;
/* loaded from: classes-dex2jar.jar:org/bson/BsonBinary.class */
public class BsonBinary extends BsonValue {
    private final byte[] data;
    private final byte type;

    public BsonBinary(byte b, byte[] bArr) {
        if (bArr != null) {
            this.type = b;
            this.data = bArr;
            return;
        }
        throw new IllegalArgumentException("data may not be null");
    }

    public BsonBinary(UUID uuid) {
        this(uuid, UuidRepresentation.STANDARD);
    }

    public BsonBinary(UUID uuid, UuidRepresentation uuidRepresentation) {
        if (uuid != null) {
            if (uuidRepresentation == null) {
                throw new IllegalArgumentException("uuidRepresentation may not be null");
            }
            this.data = UuidHelper.encodeUuidToBinary(uuid, uuidRepresentation);
            this.type = uuidRepresentation == UuidRepresentation.STANDARD ? BsonBinarySubType.UUID_STANDARD.getValue() : BsonBinarySubType.UUID_LEGACY.getValue();
            return;
        }
        throw new IllegalArgumentException("uuid may not be null");
    }

    public BsonBinary(BsonBinarySubType bsonBinarySubType, byte[] bArr) {
        if (bsonBinarySubType != null) {
            if (bArr == null) {
                throw new IllegalArgumentException("data may not be null");
            }
            this.type = bsonBinarySubType.getValue();
            this.data = bArr;
            return;
        }
        throw new IllegalArgumentException("type may not be null");
    }

    public BsonBinary(byte[] bArr) {
        this(BsonBinarySubType.BINARY, bArr);
    }

    public static BsonBinary clone(BsonBinary bsonBinary) {
        return new BsonBinary(bsonBinary.type, (byte[]) bsonBinary.data.clone());
    }

    public UUID asUuid() {
        if (BsonBinarySubType.isUuid(this.type)) {
            if (this.type != BsonBinarySubType.UUID_STANDARD.getValue()) {
                throw new BsonInvalidOperationException("uuidRepresentation must be set to return the correct UUID.");
            }
            return UuidHelper.decodeBinaryToUuid((byte[]) this.data.clone(), this.type, UuidRepresentation.STANDARD);
        }
        throw new BsonInvalidOperationException("type must be a UUID subtype.");
    }

    public UUID asUuid(UuidRepresentation uuidRepresentation) {
        Assertions.notNull("uuidRepresentation", uuidRepresentation);
        if (this.type == (uuidRepresentation == UuidRepresentation.STANDARD ? BsonBinarySubType.UUID_STANDARD.getValue() : BsonBinarySubType.UUID_LEGACY.getValue())) {
            return UuidHelper.decodeBinaryToUuid((byte[]) this.data.clone(), this.type, uuidRepresentation);
        }
        throw new BsonInvalidOperationException("uuidRepresentation does not match current uuidRepresentation.");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BsonBinary bsonBinary = (BsonBinary) obj;
        return Arrays.equals(this.data, bsonBinary.data) && this.type == bsonBinary.type;
    }

    @Override // org.bson.BsonValue
    public BsonType getBsonType() {
        return BsonType.BINARY;
    }

    public byte[] getData() {
        return this.data;
    }

    public byte getType() {
        return this.type;
    }

    public int hashCode() {
        return (this.type * 31) + Arrays.hashCode(this.data);
    }

    public String toString() {
        return "BsonBinary{type=" + ((int) this.type) + ", data=" + Arrays.toString(this.data) + '}';
    }
}
