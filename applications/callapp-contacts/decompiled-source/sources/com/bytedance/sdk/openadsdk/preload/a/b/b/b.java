package com.bytedance.sdk.openadsdk.preload.a.b.b;

import com.bytedance.sdk.openadsdk.preload.a.b.e;
import java.lang.reflect.AccessibleObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/b/b.class */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static final b f9990a;

    static {
        f9990a = e.a() < 9 ? new a() : new c();
    }

    public static b a() {
        return f9990a;
    }

    public abstract void a(AccessibleObject accessibleObject);
}
