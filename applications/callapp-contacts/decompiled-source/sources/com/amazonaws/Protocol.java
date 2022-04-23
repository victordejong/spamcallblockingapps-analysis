package com.amazonaws;

import com.mopub.common.Constants;
/* loaded from: classes-dex2jar.jar:com/amazonaws/Protocol.class */
public enum Protocol {
    HTTP("http"),
    HTTPS(Constants.HTTPS);
    
    private final String protocol;

    Protocol(String str) {
        this.protocol = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.protocol;
    }
}
