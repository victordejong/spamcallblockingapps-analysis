package com.appnext.core;
/* loaded from: classes-dex2jar.jar:com/appnext/core/ECPM.class */
public class ECPM {
    private String banner;
    private float ecpm;
    private float ppr;

    public ECPM(float f, float f2, String str) {
        this.ecpm = f;
        this.ppr = f2;
        this.banner = str;
    }

    public String getBanner() {
        return this.banner;
    }

    public float getEcpm() {
        return this.ecpm;
    }

    public float getPpr() {
        return this.ppr;
    }
}
