package org.bson.types;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:org/bson/types/Code.class */
public class Code implements Serializable {
    private static final long serialVersionUID = 475535263314046697L;
    private final String code;

    public Code(String str) {
        this.code = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.code.equals(((Code) obj).code);
    }

    public String getCode() {
        return this.code;
    }

    public int hashCode() {
        return this.code.hashCode();
    }

    public String toString() {
        return "Code{code='" + this.code + "'}";
    }
}
