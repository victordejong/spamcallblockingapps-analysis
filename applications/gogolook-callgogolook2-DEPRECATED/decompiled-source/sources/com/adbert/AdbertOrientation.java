package com.adbert;
/* loaded from: classes-dex2jar.jar:com/adbert/AdbertOrientation.class */
public enum AdbertOrientation {
    LAND(0),
    PORT(1),
    NORMAL(2);
    
    public int code;

    AdbertOrientation(int i) {
        this.code = i;
    }

    public int getValue() {
        return this.code;
    }
}
