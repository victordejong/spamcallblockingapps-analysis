package com.facebook.biddingkit.c;
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/c/c.class */
public enum c {
    FIRST_PRICE(1),
    SECOND_PRICE(2);
    
    private final int mValue;

    c(int i) {
        this.mValue = i;
    }

    public final int getValue() {
        return this.mValue;
    }
}
