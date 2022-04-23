package p081h.p203i.p384e.p386w.p389n;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import p081h.p203i.p384e.C10105k;
/* renamed from: h.i.e.w.n.c */
/* loaded from: classes2-dex2jar.jar:h/i/e/w/n/c.class */
public final class C10172c extends AbstractC10171b {

    /* renamed from: d */
    public static Class f22902d;

    /* renamed from: b */
    public final Object f22903b = m13281c();

    /* renamed from: c */
    public final Field f22904c = m13283b();

    /* renamed from: b */
    public static Field m13283b() {
        try {
            return AccessibleObject.class.getDeclaredField("override");
        } catch (NoSuchFieldException e) {
            return null;
        }
    }

    /* renamed from: c */
    public static Object m13281c() {
        try {
            f22902d = Class.forName("sun.misc.Unsafe");
            Field declaredField = f22902d.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception e) {
            return null;
        }
    }

    @Override // p081h.p203i.p384e.p386w.p389n.AbstractC10171b
    /* renamed from: a */
    public void mo13284a(AccessibleObject accessibleObject) {
        if (!m13282b(accessibleObject)) {
            try {
                accessibleObject.setAccessible(true);
            } catch (SecurityException e) {
                throw new C10105k("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e);
            }
        }
    }

    /* renamed from: b */
    public boolean m13282b(AccessibleObject accessibleObject) {
        if (this.f22903b == null || this.f22904c == null) {
            return false;
        }
        try {
            f22902d.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE).invoke(this.f22903b, accessibleObject, Long.valueOf(((Long) f22902d.getMethod("objectFieldOffset", Field.class).invoke(this.f22903b, this.f22904c)).longValue()), true);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
