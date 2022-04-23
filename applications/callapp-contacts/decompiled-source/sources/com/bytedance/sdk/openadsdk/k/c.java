package com.bytedance.sdk.openadsdk.k;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/c.class */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final long f9701a;

    /* renamed from: b  reason: collision with root package name */
    private final long f9702b;

    /* renamed from: c  reason: collision with root package name */
    private final long f9703c;

    public long a(int i) {
        return i <= 0 ? this.f9701a : Math.min(this.f9701a + (this.f9702b * i), this.f9703c);
    }
}
