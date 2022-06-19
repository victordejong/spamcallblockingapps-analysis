package org.bson;
/* loaded from: classes-dex2jar.jar:org/bson/BsonBoolean.class */
public final class BsonBoolean extends BsonValue implements Comparable<BsonBoolean> {
    private final boolean value;
    public static final BsonBoolean TRUE = new BsonBoolean(true);
    public static final BsonBoolean FALSE = new BsonBoolean(false);

    public BsonBoolean(boolean z) {
        this.value = z;
    }

    public static BsonBoolean valueOf(boolean z) {
        return z ? TRUE : FALSE;
    }

    public int compareTo(BsonBoolean bsonBoolean) {
        return Boolean.valueOf(this.value).compareTo(Boolean.valueOf(bsonBoolean.value));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.value == ((BsonBoolean) obj).value;
    }

    @Override // org.bson.BsonValue
    public BsonType getBsonType() {
        return BsonType.BOOLEAN;
    }

    public boolean getValue() {
        return this.value;
    }

    public int hashCode() {
        return this.value ? 1 : 0;
    }

    public String toString() {
        return "BsonBoolean{value=" + this.value + '}';
    }
}
