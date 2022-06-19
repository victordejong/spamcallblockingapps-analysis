package com.bytedance.sdk.openadsdk.preload.p193a.p195b.p198b;

import com.bytedance.sdk.openadsdk.preload.p193a.C5263m;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.b.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/b/c.class */
final class C5195c extends AbstractC5194b {

    /* renamed from: a */
    private static Class f18530a;

    /* renamed from: b */
    private final Object f18531b = m32859b();

    /* renamed from: c */
    private final Field f18532c = m32857c();

    /* renamed from: b */
    private static Object m32859b() {
        Object obj = null;
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            f18530a = cls;
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            obj = declaredField.get(null);
        } catch (Exception e) {
        }
        return obj;
    }

    /* renamed from: c */
    private static Field m32857c() {
        try {
            return AccessibleObject.class.getDeclaredField("override");
        } catch (NoSuchFieldException e) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.p198b.AbstractC5194b
    /* renamed from: a */
    public final void mo32860a(AccessibleObject accessibleObject) {
        if (!m32858b(accessibleObject)) {
            try {
                accessibleObject.setAccessible(true);
            } catch (SecurityException e) {
                throw new C5263m("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e);
            }
        }
    }

    /* renamed from: b */
    final boolean m32858b(AccessibleObject accessibleObject) {
        if (this.f18531b == null || this.f18532c == null) {
            return false;
        }
        try {
            f18530a.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE).invoke(this.f18531b, accessibleObject, Long.valueOf(((Long) f18530a.getMethod("objectFieldOffset", Field.class).invoke(this.f18531b, this.f18532c)).longValue()), Boolean.TRUE);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
