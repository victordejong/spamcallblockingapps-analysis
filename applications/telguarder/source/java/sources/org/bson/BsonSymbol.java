package org.bson;
/* loaded from: classes-dex2jar.jar:org/bson/BsonSymbol.class */
public class BsonSymbol extends BsonValue {
    private final String symbol;

    public BsonSymbol(String str) {
        if (str != null) {
            this.symbol = str;
            return;
        }
        throw new IllegalArgumentException("Value can not be null");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.symbol.equals(((BsonSymbol) obj).symbol);
    }

    @Override // org.bson.BsonValue
    public BsonType getBsonType() {
        return BsonType.SYMBOL;
    }

    public String getSymbol() {
        return this.symbol;
    }

    public int hashCode() {
        return this.symbol.hashCode();
    }

    public String toString() {
        return this.symbol;
    }
}
