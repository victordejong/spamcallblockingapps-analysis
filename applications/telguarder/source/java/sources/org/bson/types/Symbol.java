package org.bson.types;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:org/bson/types/Symbol.class */
public class Symbol implements Serializable {
    private static final long serialVersionUID = 1326269319883146072L;
    private final String symbol;

    public Symbol(String str) {
        this.symbol = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.symbol.equals(((Symbol) obj).symbol);
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
