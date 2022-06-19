package p020b.p041h.p042e;

import android.graphics.Typeface;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: b.h.e.h */
/* loaded from: classes-dex2jar.jar:b/h/e/h.class */
public class C1532h extends C1531g {
    @Override // p020b.p041h.p042e.C1531g
    /* renamed from: l */
    protected Typeface mo29798l(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f6071g, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f6077m.invoke(null, newInstance, "sans-serif", -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // p020b.p041h.p042e.C1531g
    /* renamed from: x */
    protected Method mo29797x(Class<?> cls) {
        Class<?> cls2 = Array.newInstance(cls, 1).getClass();
        Class cls3 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", cls2, String.class, cls3, cls3);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
