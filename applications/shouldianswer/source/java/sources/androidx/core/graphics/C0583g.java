package androidx.core.graphics;

import android.graphics.Typeface;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.core.graphics.g */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/g.class */
public class C0583g extends C0582f {
    @Override // androidx.core.graphics.C0582f
    /* renamed from: a */
    protected Typeface mo6095a(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f1958a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f1964g.invoke(null, newInstance, "sans-serif", -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // androidx.core.graphics.C0582f
    /* renamed from: f */
    protected Method mo6094f(Class cls) {
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), String.class, Integer.TYPE, Integer.TYPE);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
