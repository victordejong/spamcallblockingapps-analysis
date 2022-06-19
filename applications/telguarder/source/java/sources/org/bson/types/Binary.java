package org.bson.types;

import java.io.Serializable;
import java.util.Arrays;
import org.bson.BsonBinarySubType;
/* loaded from: classes3-dex2jar.jar:org/bson/types/Binary.class */
public class Binary implements Serializable {
    private static final long serialVersionUID = 7902997490338209467L;
    private final byte[] data;
    private final byte type;

    public Binary(byte b, byte[] bArr) {
        this.type = b;
        this.data = (byte[]) bArr.clone();
    }

    public Binary(BsonBinarySubType bsonBinarySubType, byte[] bArr) {
        this(bsonBinarySubType.getValue(), bArr);
    }

    public Binary(byte[] bArr) {
        this(BsonBinarySubType.BINARY, bArr);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Binary binary = (Binary) obj;
        return this.type == binary.type && Arrays.equals(this.data, binary.data);
    }

    public byte[] getData() {
        return (byte[]) this.data.clone();
    }

    public byte getType() {
        return this.type;
    }

    public int hashCode() {
        return (this.type * 31) + Arrays.hashCode(this.data);
    }

    public int length() {
        return this.data.length;
    }
}
