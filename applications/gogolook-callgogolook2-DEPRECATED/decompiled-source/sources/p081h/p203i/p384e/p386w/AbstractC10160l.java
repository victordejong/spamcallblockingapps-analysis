package p081h.p203i.p384e.p386w;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
/* renamed from: h.i.e.w.l */
/* loaded from: classes2-dex2jar.jar:h/i/e/w/l.class */
public abstract class AbstractC10160l {

    /* renamed from: h.i.e.w.l$a */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/l$a.class */
    public class C10161a extends AbstractC10160l {

        /* renamed from: a */
        public final /* synthetic */ Method f22884a;

        /* renamed from: b */
        public final /* synthetic */ Object f22885b;

        public C10161a(Method method, Object obj) {
            this.f22884a = method;
            this.f22885b = obj;
        }

        @Override // p081h.p203i.p384e.p386w.AbstractC10160l
        /* renamed from: a */
        public <T> T mo13298a(Class<T> cls) throws Exception {
            AbstractC10160l.m13299b(cls);
            return (T) this.f22884a.invoke(this.f22885b, cls);
        }
    }

    /* renamed from: h.i.e.w.l$b */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/l$b.class */
    public class C10162b extends AbstractC10160l {

        /* renamed from: a */
        public final /* synthetic */ Method f22886a;

        /* renamed from: b */
        public final /* synthetic */ int f22887b;

        public C10162b(Method method, int i) {
            this.f22886a = method;
            this.f22887b = i;
        }

        @Override // p081h.p203i.p384e.p386w.AbstractC10160l
        /* renamed from: a */
        public <T> T mo13298a(Class<T> cls) throws Exception {
            AbstractC10160l.m13299b(cls);
            return (T) this.f22886a.invoke(null, cls, Integer.valueOf(this.f22887b));
        }
    }

    /* renamed from: h.i.e.w.l$c */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/l$c.class */
    public class C10163c extends AbstractC10160l {

        /* renamed from: a */
        public final /* synthetic */ Method f22888a;

        public C10163c(Method method) {
            this.f22888a = method;
        }

        @Override // p081h.p203i.p384e.p386w.AbstractC10160l
        /* renamed from: a */
        public <T> T mo13298a(Class<T> cls) throws Exception {
            AbstractC10160l.m13299b(cls);
            return (T) this.f22888a.invoke(null, cls, Object.class);
        }
    }

    /* renamed from: h.i.e.w.l$d */
    /* loaded from: classes2-dex2jar.jar:h/i/e/w/l$d.class */
    public class C10164d extends AbstractC10160l {
        @Override // p081h.p203i.p384e.p386w.AbstractC10160l
        /* renamed from: a */
        public <T> T mo13298a(Class<T> cls) {
            throw new UnsupportedOperationException("Cannot allocate " + cls);
        }
    }

    /* renamed from: a */
    public static AbstractC10160l m13300a() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return new C10161a(cls.getMethod("allocateInstance", Class.class), declaredField.get(null));
        } catch (Exception e) {
            try {
                Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                declaredMethod.setAccessible(true);
                int intValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                declaredMethod2.setAccessible(true);
                return new C10162b(declaredMethod2, intValue);
            } catch (Exception e2) {
                try {
                    Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                    declaredMethod3.setAccessible(true);
                    return new C10163c(declaredMethod3);
                } catch (Exception e3) {
                    return new C10164d();
                }
            }
        }
    }

    /* renamed from: b */
    public static void m13299b(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            throw new UnsupportedOperationException("Interface can't be instantiated! Interface name: " + cls.getName());
        } else if (Modifier.isAbstract(modifiers)) {
            throw new UnsupportedOperationException("Abstract class can't be instantiated! Class name: " + cls.getName());
        }
    }

    /* renamed from: a */
    public abstract <T> T mo13298a(Class<T> cls) throws Exception;
}
