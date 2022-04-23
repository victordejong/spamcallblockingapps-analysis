package com.google.common.collect;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/BoundType.class */
public enum BoundType {
    OPEN(false),
    CLOSED(true);
    
    public final boolean inclusive;

    BoundType(boolean z) {
        this.inclusive = z;
    }

    public static BoundType forBoolean(boolean z) {
        return z ? CLOSED : OPEN;
    }

    public BoundType flip() {
        return forBoolean(!this.inclusive);
    }
}
