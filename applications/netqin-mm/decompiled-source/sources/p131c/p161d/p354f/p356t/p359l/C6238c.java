package p131c.p161d.p354f.p356t.p359l;

import com.google.gson.JsonIOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
/* renamed from: c.d.f.t.l.c */
/* loaded from: classes2-dex2jar.jar:c/d/f/t/l/c.class */
public final class C6238c extends AbstractC6237b {

    /* renamed from: d */
    public static Class f19811d;

    /* renamed from: b */
    public final Object f19812b = m21837c();

    /* renamed from: c */
    public final Field f19813c = m21839b();

    /* renamed from: b */
    public static Field m21839b() {
        try {
            return AccessibleObject.class.getDeclaredField("override");
        } catch (NoSuchFieldException e) {
            return null;
        }
    }

    /* renamed from: c */
    public static Object m21837c() {
        Object obj = null;
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            f19811d = cls;
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            obj = declaredField.get(null);
        } catch (Exception e) {
        }
        return obj;
    }

    @Override // p131c.p161d.p354f.p356t.p359l.AbstractC6237b
    /* renamed from: a */
    public void mo21840a(AccessibleObject accessibleObject) {
        if (!m21838b(accessibleObject)) {
            try {
                accessibleObject.setAccessible(true);
            } catch (SecurityException e) {
                throw new JsonIOException("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e);
            }
        }
    }

    /* renamed from: b */
    public boolean m21838b(AccessibleObject accessibleObject) {
        if (this.f19812b == null || this.f19813c == null) {
            return false;
        }
        try {
            f19811d.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE).invoke(this.f19812b, accessibleObject, Long.valueOf(((Long) f19811d.getMethod("objectFieldOffset", Field.class).invoke(this.f19812b, this.f19813c)).longValue()), true);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
