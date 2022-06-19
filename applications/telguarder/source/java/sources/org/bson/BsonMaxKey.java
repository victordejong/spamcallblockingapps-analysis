package org.bson;
/* loaded from: classes-dex2jar.jar:org/bson/BsonMaxKey.class */
public final class BsonMaxKey extends BsonValue {
    public boolean equals(Object obj) {
        return obj instanceof BsonMaxKey;
    }

    @Override // org.bson.BsonValue
    public BsonType getBsonType() {
        return BsonType.MAX_KEY;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        return "BsonMaxKey";
    }
}
