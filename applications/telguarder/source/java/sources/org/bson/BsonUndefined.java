package org.bson;
/* loaded from: classes-dex2jar.jar:org/bson/BsonUndefined.class */
public final class BsonUndefined extends BsonValue {
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass();
    }

    @Override // org.bson.BsonValue
    public BsonType getBsonType() {
        return BsonType.UNDEFINED;
    }

    public int hashCode() {
        return 0;
    }
}
