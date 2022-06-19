package p087f0;

import android.graphics.Typeface;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: f0.i */
/* loaded from: classes-dex2jar.jar:f0/i.class */
public class C2704i extends C2703h {
    @Override // p087f0.C2703h
    /* renamed from: j */
    public Typeface mo3229j(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f9291g, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f9297m.invoke(null, newInstance, "sans-serif", -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // p087f0.C2703h
    /* renamed from: p */
    public Method mo3228p(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Array.newInstance(cls, 1).getClass();
        Class cls3 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", cls2, String.class, cls3, cls3);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
