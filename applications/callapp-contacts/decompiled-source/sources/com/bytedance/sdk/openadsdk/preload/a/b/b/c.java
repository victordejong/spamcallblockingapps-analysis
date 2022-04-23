package com.bytedance.sdk.openadsdk.preload.a.b.b;

import com.bytedance.sdk.openadsdk.preload.a.m;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/b/c.class */
final class c extends b {

    /* renamed from: a  reason: collision with root package name */
    private static Class f9993a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f9994b = b();

    /* renamed from: c  reason: collision with root package name */
    private final Field f9995c = c();

    private static Object b() {
        Object obj = null;
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            f9993a = cls;
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            obj = declaredField.get(null);
        } catch (Exception e) {
        }
        return obj;
    }

    private static Field c() {
        try {
            return AccessibleObject.class.getDeclaredField("override");
        } catch (NoSuchFieldException e) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.a.b.b.b
    public final void a(AccessibleObject accessibleObject) {
        if (!b(accessibleObject)) {
            try {
                accessibleObject.setAccessible(true);
            } catch (SecurityException e) {
                throw new m("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e);
            }
        }
    }

    final boolean b(AccessibleObject accessibleObject) {
        if (this.f9994b == null || this.f9995c == null) {
            return false;
        }
        try {
            f9993a.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE).invoke(this.f9994b, accessibleObject, Long.valueOf(((Long) f9993a.getMethod("objectFieldOffset", Field.class).invoke(this.f9994b, this.f9995c)).longValue()), Boolean.TRUE);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
