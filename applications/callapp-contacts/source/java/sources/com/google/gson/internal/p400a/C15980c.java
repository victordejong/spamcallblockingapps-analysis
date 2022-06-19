package com.google.gson.internal.p400a;

import com.google.gson.JsonIOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
/* renamed from: com.google.gson.internal.a.c */
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/a/c.class */
final class C15980c extends AbstractC15979b {

    /* renamed from: a */
    private static Class f56639a;

    /* renamed from: b */
    private final Object f56640b = m7951b();

    /* renamed from: c */
    private final Field f56641c = m7949c();

    /* renamed from: b */
    private static Object m7951b() {
        Object obj = null;
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            f56639a = cls;
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            obj = declaredField.get(null);
        } catch (Exception e) {
        }
        return obj;
    }

    /* renamed from: b */
    private boolean m7950b(AccessibleObject accessibleObject) {
        if (this.f56640b == null || this.f56641c == null) {
            return false;
        }
        try {
            f56639a.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE).invoke(this.f56640b, accessibleObject, Long.valueOf(((Long) f56639a.getMethod("objectFieldOffset", Field.class).invoke(this.f56640b, this.f56641c)).longValue()), Boolean.TRUE);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: c */
    private static Field m7949c() {
        try {
            return AccessibleObject.class.getDeclaredField("override");
        } catch (NoSuchFieldException e) {
            return null;
        }
    }

    @Override // com.google.gson.internal.p400a.AbstractC15979b
    /* renamed from: a */
    public final void mo7952a(AccessibleObject accessibleObject) {
        if (!m7950b(accessibleObject)) {
            try {
                accessibleObject.setAccessible(true);
            } catch (SecurityException e) {
                throw new JsonIOException("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e);
            }
        }
    }
}
