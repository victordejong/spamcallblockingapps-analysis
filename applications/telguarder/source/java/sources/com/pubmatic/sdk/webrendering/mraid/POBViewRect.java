package com.pubmatic.sdk.webrendering.mraid;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/POBViewRect.class */
public class POBViewRect {

    /* renamed from: a */
    final boolean f1122a;

    /* renamed from: b */
    final String f1123b;

    /* renamed from: c */
    int f1124c;

    /* renamed from: d */
    int f1125d;

    /* renamed from: e */
    int f1126e;

    /* renamed from: f */
    int f1127f;

    public POBViewRect(int i, int i2, int i3, int i4, boolean z, String str) {
        this.f1124c = i;
        this.f1125d = i2;
        this.f1126e = i3;
        this.f1127f = i4;
        this.f1122a = z;
        this.f1123b = str;
    }

    public POBViewRect(boolean z, String str) {
        this.f1122a = z;
        this.f1123b = str;
    }

    public int getHeight() {
        return this.f1126e;
    }

    public String getStatusMsg() {
        return this.f1123b;
    }

    public int getWidth() {
        return this.f1127f;
    }

    public int getxPosition() {
        return this.f1124c;
    }

    public int getyPosition() {
        return this.f1125d;
    }

    public boolean isStatus() {
        return this.f1122a;
    }
}
