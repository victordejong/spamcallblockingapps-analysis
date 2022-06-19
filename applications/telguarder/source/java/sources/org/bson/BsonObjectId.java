package org.bson;

import org.bson.types.ObjectId;
/* loaded from: classes-dex2jar.jar:org/bson/BsonObjectId.class */
public class BsonObjectId extends BsonValue implements Comparable<BsonObjectId> {
    private final ObjectId value;

    public BsonObjectId() {
        this(new ObjectId());
    }

    public BsonObjectId(ObjectId objectId) {
        if (objectId != null) {
            this.value = objectId;
            return;
        }
        throw new IllegalArgumentException("value may not be null");
    }

    public int compareTo(BsonObjectId bsonObjectId) {
        return this.value.compareTo(bsonObjectId.value);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.value.equals(((BsonObjectId) obj).value);
    }

    @Override // org.bson.BsonValue
    public BsonType getBsonType() {
        return BsonType.OBJECT_ID;
    }

    public ObjectId getValue() {
        return this.value;
    }

    public int hashCode() {
        return this.value.hashCode();
    }

    public String toString() {
        return "BsonObjectId{value=" + this.value.toHexString() + '}';
    }
}
