package com.integralads.avid.library.mopub.session.internal;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/session/internal/MediaType.class */
public enum MediaType {
    DISPLAY("display"),
    VIDEO("video");
    
    public final String value;

    MediaType(String str) {
        this.value = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.value;
    }
}
