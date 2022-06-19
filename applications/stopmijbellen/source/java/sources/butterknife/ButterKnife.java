package butterknife;

import android.view.View;
import com.google.android.gms.internal.ads.C1676a;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.LinkedHashMap;
import java.util.Map;
import p017b2.C0719a;
/* loaded from: classes-dex2jar.jar:butterknife/ButterKnife.class */
public final class ButterKnife {

    /* renamed from: a */
    public static final Map<Class<?>, Constructor<? extends Unbinder>> f2883a = new LinkedHashMap();

    private ButterKnife() {
        throw new AssertionError("No instances.");
    }

    /* renamed from: a */
    public static Unbinder m7385a(Object obj, View view) {
        Constructor<? extends Unbinder> m7384b = m7384b(obj.getClass());
        if (m7384b == null) {
            int i = Unbinder.f2890a;
            return C0719a.f2772b;
        }
        try {
            return m7384b.newInstance(obj, view);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Unable to invoke " + m7384b, e);
        } catch (InstantiationException e2) {
            throw new RuntimeException("Unable to invoke " + m7384b, e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (!(cause instanceof Error)) {
                throw new RuntimeException("Unable to create binding instance.", cause);
            }
            throw ((Error) cause);
        }
    }

    /* renamed from: b */
    public static Constructor<? extends Unbinder> m7384b(Class<?> cls) {
        Constructor<? extends Unbinder> constructor;
        Map<Class<?>, Constructor<? extends Unbinder>> map = f2883a;
        Constructor<? extends Unbinder> constructor2 = (Constructor) ((LinkedHashMap) map).get(cls);
        if (constructor2 != null || map.containsKey(cls)) {
            return constructor2;
        }
        String name = cls.getName();
        if (name.startsWith("android.") || name.startsWith("java.") || name.startsWith("androidx.")) {
            return null;
        }
        try {
            ClassLoader classLoader = cls.getClassLoader();
            constructor = classLoader.loadClass(name + "_ViewBinding").getConstructor(cls, View.class);
        } catch (ClassNotFoundException e) {
            constructor = m7384b(cls.getSuperclass());
        } catch (NoSuchMethodException e2) {
            throw new RuntimeException(C1676a.m4789h("Unable to find binding constructor for ", name), e2);
        }
        f2883a.put(cls, constructor);
        return constructor;
    }
}
