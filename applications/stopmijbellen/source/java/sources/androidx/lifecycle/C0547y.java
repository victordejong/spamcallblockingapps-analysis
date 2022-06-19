package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;
import p104g6.C2906b;
/* renamed from: androidx.lifecycle.y */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/y.class */
public class C0547y extends C2906b {

    /* renamed from: j */
    public static C0547y f2084j;

    /* renamed from: i */
    public Application f2085i;

    public C0547y(Application application) {
        this.f2085i = application;
    }

    @Override // p104g6.C2906b, androidx.lifecycle.AbstractC0548z
    /* renamed from: a */
    public <T extends AbstractC0546x> T mo2864a(Class<T> cls) {
        if (C0505a.class.isAssignableFrom(cls)) {
            try {
                return cls.getConstructor(Application.class).newInstance(this.f2085i);
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Cannot create an instance of " + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Cannot create an instance of " + cls, e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException("Cannot create an instance of " + cls, e3);
            } catch (InvocationTargetException e4) {
                throw new RuntimeException("Cannot create an instance of " + cls, e4);
            }
        }
        return (T) super.mo2864a(cls);
    }
}
