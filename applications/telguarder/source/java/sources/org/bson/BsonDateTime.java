package org.bson;
/* loaded from: classes-dex2jar.jar:org/bson/BsonDateTime.class */
public class BsonDateTime extends BsonValue implements Comparable<BsonDateTime> {
    private final long value;

    public BsonDateTime(long j) {
        this.value = j;
    }

    public int compareTo(BsonDateTime bsonDateTime) {
        return Long.valueOf(this.value).compareTo(Long.valueOf(bsonDateTime.value));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.value == ((BsonDateTime) obj).value;
    }

    @Override // org.bson.BsonValue
    public BsonType getBsonType() {
        return BsonType.DATE_TIME;
    }

    public long getValue() {
        return this.value;
    }

    public int hashCode() {
        long j = this.value;
        return (int) (j ^ (j >>> 32));
    }

    public String toString() {
        return "BsonDateTime{value=" + this.value + '}';
    }
}
