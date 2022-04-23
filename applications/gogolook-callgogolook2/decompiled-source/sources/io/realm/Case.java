package io.realm;
/* loaded from: classes3-dex2jar.jar:io/realm/Case.class */
public enum Case {
    SENSITIVE(true),
    INSENSITIVE(false);
    
    public final boolean value;

    Case(boolean z) {
        this.value = z;
    }

    public boolean getValue() {
        return this.value;
    }
}
