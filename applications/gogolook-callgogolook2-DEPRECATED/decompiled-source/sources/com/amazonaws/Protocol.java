package com.amazonaws;
/* loaded from: classes-dex2jar.jar:com/amazonaws/Protocol.class */
public enum Protocol {
    HTTP("http"),
    HTTPS("https");
    
    public final String protocol;

    Protocol(String str) {
        this.protocol = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.protocol;
    }
}
