package com.google.gson.internal.reflect;

import com.google.gson.internal.JavaVersion;
import java.lang.reflect.AccessibleObject;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/reflect/ReflectionAccessor.class */
public abstract class ReflectionAccessor {

    /* renamed from: a */
    private static final ReflectionAccessor f12190a;

    static {
        f12190a = JavaVersion.m8326c() < 9 ? new PreJava9ReflectionAccessor() : new UnsafeReflectionAccessor();
    }

    /* renamed from: a */
    public static ReflectionAccessor m8167a() {
        return f12190a;
    }

    /* renamed from: b */
    public abstract void mo8166b(AccessibleObject accessibleObject);
}
