package ba;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.internal.ads.C1676a;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.greenrobot.eventbus.EventBusException;
import p075da.AbstractC2501a;
/* renamed from: ba.n */
/* loaded from: classes2-dex2jar.jar:ba/n.class */
public class C0765n {

    /* renamed from: a */
    public static final Map<Class<?>, List<C0764m>> f2871a = new ConcurrentHashMap();

    /* renamed from: b */
    public static final C0766a[] f2872b = new C0766a[4];

    /* renamed from: ba.n$a */
    /* loaded from: classes2-dex2jar.jar:ba/n$a.class */
    public static class C0766a {

        /* renamed from: a */
        public final List<C0764m> f2873a = new ArrayList();

        /* renamed from: b */
        public final Map<Class, Object> f2874b = new HashMap();

        /* renamed from: c */
        public final Map<String, Class> f2875c = new HashMap();

        /* renamed from: d */
        public final StringBuilder f2876d = new StringBuilder(128);

        /* renamed from: e */
        public Class<?> f2877e;

        /* renamed from: f */
        public boolean f2878f;

        /* renamed from: g */
        public AbstractC2501a f2879g;

        /* renamed from: a */
        public boolean m7388a(Method method, Class<?> cls) {
            Object put = this.f2874b.put(cls, method);
            if (put == null) {
                return true;
            }
            if (put instanceof Method) {
                if (!m7387b((Method) put, cls)) {
                    throw new IllegalStateException();
                }
                this.f2874b.put(cls, this);
            }
            return m7387b(method, cls);
        }

        /* renamed from: b */
        public final boolean m7387b(Method method, Class<?> cls) {
            this.f2876d.setLength(0);
            this.f2876d.append(method.getName());
            StringBuilder sb = this.f2876d;
            sb.append('>');
            sb.append(cls.getName());
            String sb2 = this.f2876d.toString();
            Class<?> declaringClass = method.getDeclaringClass();
            Class put = this.f2875c.put(sb2, declaringClass);
            if (put == null || put.isAssignableFrom(declaringClass)) {
                return true;
            }
            this.f2875c.put(sb2, put);
            return false;
        }

        /* renamed from: c */
        public void m7386c() {
            if (this.f2878f) {
                this.f2877e = null;
                return;
            }
            Class<? super Object> superclass = this.f2877e.getSuperclass();
            this.f2877e = superclass;
            String name = superclass.getName();
            if (!name.startsWith("java.") && !name.startsWith("javax.") && !name.startsWith("android.") && !name.startsWith("androidx.")) {
                return;
            }
            this.f2877e = null;
        }
    }

    public C0765n(List<Object> list, boolean z, boolean z2) {
    }

    /* renamed from: a */
    public final void m7391a(C0766a c0766a) {
        Method[] methodArr;
        AbstractC0762k abstractC0762k;
        try {
            methodArr = c0766a.f2877e.getDeclaredMethods();
        } catch (Throwable th) {
            try {
                methodArr = c0766a.f2877e.getMethods();
                c0766a.f2878f = true;
            } catch (LinkageError e) {
                StringBuilder m8752j = C0082b.m8752j("Could not inspect methods of ");
                m8752j.append(c0766a.f2877e.getName());
                throw new EventBusException(C1676a.m4789h(m8752j.toString(), ". Please make this class visible to EventBus annotation processor to avoid reflection."), e);
            }
        }
        for (Method method : methodArr) {
            int modifiers = method.getModifiers();
            if ((modifiers & 1) != 0 && (modifiers & 5192) == 0) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1 && (abstractC0762k = (AbstractC0762k) method.getAnnotation(AbstractC0762k.class)) != null) {
                    Class<?> cls = parameterTypes[0];
                    if (c0766a.m7388a(method, cls)) {
                        c0766a.f2873a.add(new C0764m(method, cls, abstractC0762k.threadMode(), abstractC0762k.priority(), abstractC0762k.sticky()));
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public final List<C0764m> m7390b(C0766a c0766a) {
        ArrayList arrayList = new ArrayList(c0766a.f2873a);
        c0766a.f2873a.clear();
        c0766a.f2874b.clear();
        c0766a.f2875c.clear();
        int i = 0;
        c0766a.f2876d.setLength(0);
        c0766a.f2877e = null;
        c0766a.f2878f = false;
        c0766a.f2879g = null;
        synchronized (f2872b) {
            while (true) {
                if (i >= 4) {
                    break;
                }
                C0766a[] c0766aArr = f2872b;
                if (c0766aArr[i] == null) {
                    c0766aArr[i] = c0766a;
                    break;
                }
                i++;
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public final C0766a m7389c() {
        synchronized (f2872b) {
            for (int i = 0; i < 4; i++) {
                C0766a[] c0766aArr = f2872b;
                C0766a c0766a = c0766aArr[i];
                if (c0766a != null) {
                    c0766aArr[i] = null;
                    return c0766a;
                }
            }
            return new C0766a();
        }
    }
}
