package com.bytedance.sdk.openadsdk.p176k.p182f;

import java.io.Serializable;
/* renamed from: com.bytedance.sdk.openadsdk.k.f.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/f/b.class */
public class C5021b implements Serializable {

    /* renamed from: a */
    public String f18194a;

    /* renamed from: b */
    public int f18195b = 204800;

    /* renamed from: c */
    public String f18196c;

    /* renamed from: a */
    public C5021b m33275a(int i) {
        if (i > 0) {
            this.f18195b = i;
        }
        return this;
    }

    /* renamed from: a */
    public C5021b m33274a(String str) {
        this.f18194a = str;
        return this;
    }

    /* renamed from: b */
    public C5021b m33273b(String str) {
        this.f18196c = str;
        return this;
    }

    public String toString() {
        return "VideoUrlModel{url='" + this.f18194a + "', maxPreloadSize=" + this.f18195b + ", fileNameKey='" + this.f18196c + "'}";
    }
}
