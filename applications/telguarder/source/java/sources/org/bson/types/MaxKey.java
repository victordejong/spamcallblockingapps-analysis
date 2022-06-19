package org.bson.types;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:org/bson/types/MaxKey.class */
public final class MaxKey implements Serializable {
    private static final long serialVersionUID = 5123414776151687185L;

    public boolean equals(Object obj) {
        return obj instanceof MaxKey;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        return "MaxKey";
    }
}
