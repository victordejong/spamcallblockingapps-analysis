package org.bson;

import org.bson.types.ObjectId;
/* loaded from: classes-dex2jar.jar:org/bson/BsonDbPointer.class */
public class BsonDbPointer extends BsonValue {

    /* renamed from: id */
    private final ObjectId f1337id;
    private final String namespace;

    public BsonDbPointer(String str, ObjectId objectId) {
        if (str != null) {
            if (objectId == null) {
                throw new IllegalArgumentException("id can not be null");
            }
            this.namespace = str;
            this.f1337id = objectId;
            return;
        }
        throw new IllegalArgumentException("namespace can not be null");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BsonDbPointer bsonDbPointer = (BsonDbPointer) obj;
        return this.f1337id.equals(bsonDbPointer.f1337id) && this.namespace.equals(bsonDbPointer.namespace);
    }

    @Override // org.bson.BsonValue
    public BsonType getBsonType() {
        return BsonType.DB_POINTER;
    }

    public ObjectId getId() {
        return this.f1337id;
    }

    public String getNamespace() {
        return this.namespace;
    }

    public int hashCode() {
        return (this.namespace.hashCode() * 31) + this.f1337id.hashCode();
    }

    public String toString() {
        return "BsonDbPointer{namespace='" + this.namespace + "', id=" + this.f1337id + '}';
    }
}
