package com.razorpay;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/razorpay/CacheEntry.class */
public class CacheEntry implements Serializable {
    public String data;
    public long expiryTime;

    public CacheEntry(String str, long j) {
        this.data = str;
        this.expiryTime = j;
    }
}
