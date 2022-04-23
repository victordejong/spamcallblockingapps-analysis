package com.dropbox.core;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/o.class */
public enum o {
    ONLINE("online"),
    OFFLINE("offline");
    
    private String string;

    o(String str) {
        this.string = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.string;
    }
}
