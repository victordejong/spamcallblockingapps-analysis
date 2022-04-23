package com.bytedance.sdk.openadsdk.k.f;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/f/b.class */
public class b implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public String f9755a;

    /* renamed from: b  reason: collision with root package name */
    public int f9756b = 204800;

    /* renamed from: c  reason: collision with root package name */
    public String f9757c;

    public b a(int i) {
        if (i > 0) {
            this.f9756b = i;
        }
        return this;
    }

    public b a(String str) {
        this.f9755a = str;
        return this;
    }

    public b b(String str) {
        this.f9757c = str;
        return this;
    }

    public String toString() {
        return "VideoUrlModel{url='" + this.f9755a + "', maxPreloadSize=" + this.f9756b + ", fileNameKey='" + this.f9757c + "'}";
    }
}
