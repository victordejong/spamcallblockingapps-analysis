package androidx.core.graphics;

import android.graphics.Typeface;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.core.graphics.h */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/h.class */
public final class C0849h extends C0848g {
    @Override // androidx.core.graphics.C0848g
    /* renamed from: a */
    protected final Typeface mo44320a(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f3608a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f3614g.invoke(null, newInstance, "sans-serif", -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // androidx.core.graphics.C0848g
    /* renamed from: a */
    protected final Method mo44321a(Class<?> cls) throws NoSuchMethodException {
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), String.class, Integer.TYPE, Integer.TYPE);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
