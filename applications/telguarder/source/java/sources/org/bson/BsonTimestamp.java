package org.bson;

import org.bson.internal.UnsignedLongs;
/* loaded from: classes-dex2jar.jar:org/bson/BsonTimestamp.class */
public final class BsonTimestamp extends BsonValue implements Comparable<BsonTimestamp> {
    private final long value;

    public BsonTimestamp() {
        this.value = 0L;
    }

    public BsonTimestamp(int i, int i2) {
        this.value = (i2 & 4294967295L) | (i << 32);
    }

    public BsonTimestamp(long j) {
        this.value = j;
    }

    public int compareTo(BsonTimestamp bsonTimestamp) {
        return UnsignedLongs.compare(this.value, bsonTimestamp.value);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.value == ((BsonTimestamp) obj).value;
    }

    @Override // org.bson.BsonValue
    public BsonType getBsonType() {
        return BsonType.TIMESTAMP;
    }

    public int getInc() {
        return (int) this.value;
    }

    public int getTime() {
        return (int) (this.value >> 32);
    }

    public long getValue() {
        return this.value;
    }

    public int hashCode() {
        long j = this.value;
        return (int) (j ^ (j >>> 32));
    }

    public String toString() {
        return "Timestamp{value=" + getValue() + ", seconds=" + getTime() + ", inc=" + getInc() + '}';
    }
}
