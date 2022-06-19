package com.amazon.device.ads;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBLogLevel.class */
public enum DTBLogLevel {
    All(0),
    Trace(1),
    Debug(2),
    Info(3),
    Warn(4),
    Error(5),
    Fatal(6),
    Off(7);
    
    private int value;

    DTBLogLevel(int i) {
        this.value = i;
    }

    public final int intValue() {
        return this.value;
    }
}
