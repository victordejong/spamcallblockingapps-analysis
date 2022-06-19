package com.bytedance.sdk.openadsdk;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTImage.class */
public class TTImage {

    /* renamed from: a */
    private int f15611a;

    /* renamed from: b */
    private int f15612b;

    /* renamed from: c */
    private String f15613c;

    public TTImage(int i, int i2, String str) {
        this.f15611a = i;
        this.f15612b = i2;
        this.f15613c = str;
    }

    public int getHeight() {
        return this.f15611a;
    }

    public String getImageUrl() {
        return this.f15613c;
    }

    public int getWidth() {
        return this.f15612b;
    }

    public boolean isValid() {
        String str;
        return this.f15611a > 0 && this.f15612b > 0 && (str = this.f15613c) != null && str.length() > 0;
    }
}
