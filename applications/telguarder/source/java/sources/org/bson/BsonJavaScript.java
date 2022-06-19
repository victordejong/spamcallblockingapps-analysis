package org.bson;
/* loaded from: classes-dex2jar.jar:org/bson/BsonJavaScript.class */
public class BsonJavaScript extends BsonValue {
    private final String code;

    public BsonJavaScript(String str) {
        this.code = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.code.equals(((BsonJavaScript) obj).code);
    }

    @Override // org.bson.BsonValue
    public BsonType getBsonType() {
        return BsonType.JAVASCRIPT;
    }

    public String getCode() {
        return this.code;
    }

    public int hashCode() {
        return this.code.hashCode();
    }

    public String toString() {
        return "BsonJavaScript{code='" + this.code + "'}";
    }
}
