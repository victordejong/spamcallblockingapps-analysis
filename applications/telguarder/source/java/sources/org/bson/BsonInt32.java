package org.bson;

import org.bson.types.Decimal128;
/* loaded from: classes-dex2jar.jar:org/bson/BsonInt32.class */
public final class BsonInt32 extends BsonNumber implements Comparable<BsonInt32> {
    private final int value;

    public BsonInt32(int i) {
        this.value = i;
    }

    public int compareTo(BsonInt32 bsonInt32) {
        int i = this.value;
        int i2 = bsonInt32.value;
        return i < i2 ? -1 : i == i2 ? 0 : 1;
    }

    @Override // org.bson.BsonNumber
    public Decimal128 decimal128Value() {
        return new Decimal128(this.value);
    }

    @Override // org.bson.BsonNumber
    public double doubleValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.value == ((BsonInt32) obj).value;
    }

    @Override // org.bson.BsonValue
    public BsonType getBsonType() {
        return BsonType.INT32;
    }

    public int getValue() {
        return this.value;
    }

    public int hashCode() {
        return this.value;
    }

    @Override // org.bson.BsonNumber
    public int intValue() {
        return this.value;
    }

    @Override // org.bson.BsonNumber
    public long longValue() {
        return this.value;
    }

    public String toString() {
        return "BsonInt32{value=" + this.value + '}';
    }
}
