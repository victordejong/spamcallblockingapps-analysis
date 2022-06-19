package org.bson;
/* loaded from: classes-dex2jar.jar:org/bson/BsonString.class */
public class BsonString extends BsonValue implements Comparable<BsonString> {
    private final String value;

    public BsonString(String str) {
        if (str != null) {
            this.value = str;
            return;
        }
        throw new IllegalArgumentException("Value can not be null");
    }

    public int compareTo(BsonString bsonString) {
        return this.value.compareTo(bsonString.value);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.value.equals(((BsonString) obj).value);
    }

    @Override // org.bson.BsonValue
    public BsonType getBsonType() {
        return BsonType.STRING;
    }

    public String getValue() {
        return this.value;
    }

    public int hashCode() {
        return this.value.hashCode();
    }

    public String toString() {
        return "BsonString{value='" + this.value + "'}";
    }
}
