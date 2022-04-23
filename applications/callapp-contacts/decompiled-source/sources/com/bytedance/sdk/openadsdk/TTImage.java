package com.bytedance.sdk.openadsdk;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTImage.class */
public class TTImage {

    /* renamed from: a  reason: collision with root package name */
    private int f8416a;

    /* renamed from: b  reason: collision with root package name */
    private int f8417b;

    /* renamed from: c  reason: collision with root package name */
    private String f8418c;

    public TTImage(int i, int i2, String str) {
        this.f8416a = i;
        this.f8417b = i2;
        this.f8418c = str;
    }

    public int getHeight() {
        return this.f8416a;
    }

    public String getImageUrl() {
        return this.f8418c;
    }

    public int getWidth() {
        return this.f8417b;
    }

    public boolean isValid() {
        String str;
        return this.f8416a > 0 && this.f8417b > 0 && (str = this.f8418c) != null && str.length() > 0;
    }
}
