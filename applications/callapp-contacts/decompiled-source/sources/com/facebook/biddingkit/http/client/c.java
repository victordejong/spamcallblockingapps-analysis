package com.facebook.biddingkit.http.client;
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/http/client/c.class */
public enum c {
    GET(true, false),
    POST(true, true);
    
    private boolean doInput;
    private boolean doOutput;

    c(boolean z, boolean z2) {
        this.doInput = z;
        this.doOutput = z2;
    }

    public final boolean getDoInput() {
        return this.doInput;
    }

    public final boolean getDoOutput() {
        return this.doOutput;
    }

    public final String getMethodName() {
        return toString();
    }
}
