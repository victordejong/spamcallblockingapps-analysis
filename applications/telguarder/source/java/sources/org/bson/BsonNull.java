package org.bson;
/* loaded from: classes-dex2jar.jar:org/bson/BsonNull.class */
public final class BsonNull extends BsonValue {
    public static final BsonNull VALUE = new BsonNull();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass();
    }

    @Override // org.bson.BsonValue
    public BsonType getBsonType() {
        return BsonType.NULL;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        return "BsonNull";
    }
}
