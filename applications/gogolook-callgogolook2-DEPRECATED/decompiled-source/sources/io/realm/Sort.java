package io.realm;
/* loaded from: classes3-dex2jar.jar:io/realm/Sort.class */
public enum Sort {
    ASCENDING(true),
    DESCENDING(false);
    
    public final boolean value;

    Sort(boolean z) {
        this.value = z;
    }

    public boolean getValue() {
        return this.value;
    }
}
