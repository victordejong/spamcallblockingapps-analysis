package org.bson.types;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:org/bson/types/MinKey.class */
public final class MinKey implements Serializable {
    private static final long serialVersionUID = 4075901136671855684L;

    public boolean equals(Object obj) {
        return obj instanceof MinKey;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        return "MinKey";
    }
}
