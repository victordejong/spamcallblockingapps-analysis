package com.bytedance.sdk.openadsdk.preload.p193a.p195b.p198b;

import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5213e;
import java.lang.reflect.AccessibleObject;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.b.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/b/b.class */
public abstract class AbstractC5194b {

    /* renamed from: a */
    private static final AbstractC5194b f18529a;

    static {
        f18529a = C5213e.m32840a() < 9 ? new C5193a() : new C5195c();
    }

    /* renamed from: a */
    public static AbstractC5194b m32861a() {
        return f18529a;
    }

    /* renamed from: a */
    public abstract void mo32860a(AccessibleObject accessibleObject);
}
