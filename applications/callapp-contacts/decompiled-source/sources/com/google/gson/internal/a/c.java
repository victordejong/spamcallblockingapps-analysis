package com.google.gson.internal.a;

import com.google.gson.JsonIOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/a/c.class */
final class c extends b {

    /* renamed from: a  reason: collision with root package name */
    private static Class f32683a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f32684b = b();

    /* renamed from: c  reason: collision with root package name */
    private final Field f32685c = c();

    private static Object b() {
        Object obj = null;
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            f32683a = cls;
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            obj = declaredField.get(null);
        } catch (Exception e) {
        }
        return obj;
    }

    private boolean b(AccessibleObject accessibleObject) {
        if (this.f32684b == null || this.f32685c == null) {
            return false;
        }
        try {
            f32683a.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE).invoke(this.f32684b, accessibleObject, Long.valueOf(((Long) f32683a.getMethod("objectFieldOffset", Field.class).invoke(this.f32684b, this.f32685c)).longValue()), Boolean.TRUE);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private static Field c() {
        try {
            return AccessibleObject.class.getDeclaredField("override");
        } catch (NoSuchFieldException e) {
            return null;
        }
    }

    @Override // com.google.gson.internal.a.b
    public final void a(AccessibleObject accessibleObject) {
        if (!b(accessibleObject)) {
            try {
                accessibleObject.setAccessible(true);
            } catch (SecurityException e) {
                throw new JsonIOException("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e);
            }
        }
    }
}
