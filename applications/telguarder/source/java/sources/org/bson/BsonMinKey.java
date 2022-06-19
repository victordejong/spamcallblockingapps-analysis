package org.bson;
/* loaded from: classes-dex2jar.jar:org/bson/BsonMinKey.class */
public final class BsonMinKey extends BsonValue {
    public boolean equals(Object obj) {
        return obj instanceof BsonMinKey;
    }

    @Override // org.bson.BsonValue
    public BsonType getBsonType() {
        return BsonType.MIN_KEY;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        return "BsonMinKey";
    }
}
