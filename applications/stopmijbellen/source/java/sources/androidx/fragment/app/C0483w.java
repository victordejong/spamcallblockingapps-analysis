package androidx.fragment.app;

import android.support.p012v4.media.C0082b;
import androidx.fragment.app.Fragment;
import p226s.C4263g;
/* renamed from: androidx.fragment.app.w */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/w.class */
public class C0483w {

    /* renamed from: a */
    public static final C4263g<ClassLoader, C4263g<String, Class<?>>> f1953a = new C4263g<>();

    /* renamed from: b */
    public static Class<?> m8053b(ClassLoader classLoader, String str) throws ClassNotFoundException {
        C4263g<ClassLoader, C4263g<String, Class<?>>> c4263g = f1953a;
        C4263g<String, Class<?>> orDefault = c4263g.getOrDefault(classLoader, null);
        C4263g<String, Class<?>> c4263g2 = orDefault;
        if (orDefault == null) {
            c4263g2 = new C4263g<>();
            c4263g.put(classLoader, c4263g2);
        }
        Class<?> orDefault2 = c4263g2.getOrDefault(str, null);
        Class<?> cls = orDefault2;
        if (orDefault2 == null) {
            cls = Class.forName(str, false, classLoader);
            c4263g2.put(str, cls);
        }
        return cls;
    }

    /* renamed from: c */
    public static Class<? extends Fragment> m8052c(ClassLoader classLoader, String str) {
        try {
            return m8053b(classLoader, str);
        } catch (ClassCastException e) {
            throw new Fragment.InstantiationException(C0082b.m8755g("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), e);
        } catch (ClassNotFoundException e2) {
            throw new Fragment.InstantiationException(C0082b.m8755g("Unable to instantiate fragment ", str, ": make sure class name exists"), e2);
        }
    }

    /* renamed from: a */
    public Fragment mo8054a(ClassLoader classLoader, String str) {
        throw null;
    }
}
