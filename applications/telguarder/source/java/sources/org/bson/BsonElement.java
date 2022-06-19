package org.bson;
/* loaded from: classes-dex2jar.jar:org/bson/BsonElement.class */
public class BsonElement {
    private final String name;
    private final BsonValue value;

    public BsonElement(String str, BsonValue bsonValue) {
        this.name = str;
        this.value = bsonValue;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BsonElement bsonElement = (BsonElement) obj;
        if (getName() != null) {
            if (!getName().equals(bsonElement.getName())) {
                return false;
            }
        } else if (bsonElement.getName() != null) {
            return false;
        }
        return getValue() != null ? getValue().equals(bsonElement.getValue()) : bsonElement.getValue() == null;
    }

    public String getName() {
        return this.name;
    }

    public BsonValue getValue() {
        return this.value;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = getName() != null ? getName().hashCode() : 0;
        if (getValue() != null) {
            i = getValue().hashCode();
        }
        return (hashCode * 31) + i;
    }
}
