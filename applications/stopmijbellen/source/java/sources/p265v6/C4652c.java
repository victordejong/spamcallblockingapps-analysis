package p265v6;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
/* renamed from: v6.c */
/* loaded from: classes-dex2jar.jar:v6/c.class */
public final class C4652c extends AbstractC4651b {

    /* renamed from: b */
    public final Object f14348b;

    public C4652c() {
        Object obj = null;
        try {
            Field declaredField = Class.forName("sun.misc.Unsafe").getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            obj = declaredField.get(null);
        } catch (Exception e) {
        }
        this.f14348b = obj;
        try {
            AccessibleObject.class.getDeclaredField("override");
        } catch (NoSuchFieldException e2) {
        }
    }
}
