package com.google.gson.internal.a;

import com.google.gson.internal.e;
import java.lang.reflect.AccessibleObject;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/a/b.class */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static final b f32682a;

    static {
        f32682a = e.a() < 9 ? new a() : new c();
    }

    public static b a() {
        return f32682a;
    }

    public abstract void a(AccessibleObject accessibleObject);
}
