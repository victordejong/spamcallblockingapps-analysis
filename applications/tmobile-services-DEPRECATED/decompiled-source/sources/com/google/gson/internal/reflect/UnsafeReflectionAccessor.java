package com.google.gson.internal.reflect;

import com.google.gson.JsonIOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/reflect/UnsafeReflectionAccessor.class */
final class UnsafeReflectionAccessor extends ReflectionAccessor {

    /* renamed from: d */
    private static Class f12191d;

    /* renamed from: b */
    private final Object f12192b = m8164d();

    /* renamed from: c */
    private final Field f12193c = m8165c();

    /* renamed from: c */
    private static Field m8165c() {
        try {
            return AccessibleObject.class.getDeclaredField("override");
        } catch (NoSuchFieldException e) {
            return null;
        }
    }

    /* renamed from: d */
    private static Object m8164d() {
        Object obj = null;
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            f12191d = cls;
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            obj = declaredField.get(null);
        } catch (Exception e) {
        }
        return obj;
    }

    @Override // com.google.gson.internal.reflect.ReflectionAccessor
    /* renamed from: b */
    public void mo8166b(AccessibleObject accessibleObject) {
        if (!m8163e(accessibleObject)) {
            try {
                accessibleObject.setAccessible(true);
            } catch (SecurityException e) {
                throw new JsonIOException("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e);
            }
        }
    }

    /* renamed from: e */
    boolean m8163e(AccessibleObject accessibleObject) {
        if (this.f12192b == null || this.f12193c == null) {
            return false;
        }
        try {
            f12191d.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE).invoke(this.f12192b, accessibleObject, Long.valueOf(((Long) f12191d.getMethod("objectFieldOffset", Field.class).invoke(this.f12192b, this.f12193c)).longValue()), Boolean.TRUE);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
