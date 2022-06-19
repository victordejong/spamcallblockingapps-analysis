package p203p8;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Objects;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p029c4.C0821e;
import p104g6.C2906b;
import p203p8.AbstractC4049c;
import p213q8.AbstractC4166a;
import p213q8.AbstractC4168c;
/* renamed from: p8.g */
/* loaded from: classes2-dex2jar.jar:p8/g.class */
public class C4068g implements Cloneable {

    /* renamed from: m */
    public static Class[] f12745m;

    /* renamed from: n */
    public static Class[] f12746n;

    /* renamed from: o */
    public static Class[] f12747o;

    /* renamed from: a */
    public String f12750a;

    /* renamed from: b */
    public AbstractC4168c f12751b;

    /* renamed from: c */
    public Method f12752c;

    /* renamed from: d */
    public Method f12753d;

    /* renamed from: e */
    public Class f12754e;

    /* renamed from: f */
    public C4051d f12755f;

    /* renamed from: g */
    public final ReentrantReadWriteLock f12756g;

    /* renamed from: h */
    public final Object[] f12757h;

    /* renamed from: i */
    public AbstractC4071h f12758i;

    /* renamed from: j */
    public Object f12759j;

    /* renamed from: k */
    public static final AbstractC4071h f12743k = new C2906b();

    /* renamed from: l */
    public static final AbstractC4071h f12744l = new C0821e();

    /* renamed from: p */
    public static final HashMap<Class, HashMap<String, Method>> f12748p = new HashMap<>();

    /* renamed from: q */
    public static final HashMap<Class, HashMap<String, Method>> f12749q = new HashMap<>();

    /* renamed from: p8.g$b */
    /* loaded from: classes2-dex2jar.jar:p8/g$b.class */
    public static class C4070b extends C4068g {

        /* renamed from: r */
        public AbstractC4166a f12760r;

        /* renamed from: s */
        public C4048b f12761s = (C4048b) this.f12755f;

        /* renamed from: t */
        public float f12762t;

        public C4070b(String str, float... fArr) {
            super(str, (C4069a) null);
            C4068g.super.mo1450f(fArr);
        }

        public C4070b(AbstractC4168c abstractC4168c, float... fArr) {
            super(abstractC4168c, (C4069a) null);
            C4068g.super.mo1450f(fArr);
            if (abstractC4168c instanceof AbstractC4166a) {
                this.f12760r = (AbstractC4166a) this.f12751b;
            }
        }

        @Override // p203p8.C4068g
        /* renamed from: a */
        public void mo1454a(float f) {
            this.f12762t = this.f12761s.m1464b(f);
        }

        @Override // p203p8.C4068g
        /* renamed from: b */
        public C4068g mo1453b() {
            C4070b c4070b = (C4070b) C4068g.super.clone();
            c4070b.f12761s = (C4048b) c4070b.f12755f;
            return c4070b;
        }

        @Override // p203p8.C4068g
        /* renamed from: c */
        public Object mo1452c() {
            return Float.valueOf(this.f12762t);
        }

        @Override // p203p8.C4068g
        public Object clone() throws CloneNotSupportedException {
            C4070b c4070b = (C4070b) C4068g.super.clone();
            c4070b.f12761s = (C4048b) c4070b.f12755f;
            return c4070b;
        }

        @Override // p203p8.C4068g
        /* renamed from: e */
        public void mo1451e(Object obj) {
            AbstractC4166a abstractC4166a = this.f12760r;
            if (abstractC4166a != null) {
                abstractC4166a.mo1343c(obj, this.f12762t);
                return;
            }
            AbstractC4168c abstractC4168c = this.f12751b;
            if (abstractC4168c != null) {
                abstractC4168c.mo1340b(obj, Float.valueOf(this.f12762t));
            } else if (this.f12752c == null) {
            } else {
                try {
                    this.f12757h[0] = Float.valueOf(this.f12762t);
                    this.f12752c.invoke(obj, this.f12757h);
                } catch (IllegalAccessException e) {
                    e.toString();
                } catch (InvocationTargetException e2) {
                    e2.toString();
                }
            }
        }

        @Override // p203p8.C4068g
        /* renamed from: f */
        public void mo1450f(float... fArr) {
            C4068g.super.mo1450f(fArr);
            this.f12761s = (C4048b) this.f12755f;
        }

        @Override // p203p8.C4068g
        /* renamed from: g */
        public void mo1449g(Class cls) {
            if (this.f12751b != null) {
                return;
            }
            this.f12752c = m1455h(cls, C4068g.f12748p, "set", this.f12754e);
        }
    }

    static {
        Class cls = Float.TYPE;
        Class cls2 = Double.TYPE;
        Class cls3 = Integer.TYPE;
        f12745m = new Class[]{cls, Float.class, cls2, cls3, Double.class, Integer.class};
        f12746n = new Class[]{cls3, Integer.class, cls, cls2, Float.class, Double.class};
        f12747o = new Class[]{cls2, Double.class, cls, cls3, Float.class, Integer.class};
    }

    public C4068g(String str, C4069a c4069a) {
        this.f12752c = null;
        this.f12753d = null;
        this.f12755f = null;
        this.f12756g = new ReentrantReadWriteLock();
        this.f12757h = new Object[1];
        this.f12750a = str;
    }

    public C4068g(AbstractC4168c abstractC4168c, C4069a c4069a) {
        this.f12752c = null;
        this.f12753d = null;
        this.f12755f = null;
        this.f12756g = new ReentrantReadWriteLock();
        this.f12757h = new Object[1];
        this.f12751b = abstractC4168c;
        if (abstractC4168c != null) {
            this.f12750a = abstractC4168c.f13141a;
        }
    }

    /* renamed from: a */
    public void mo1454a(float f) {
        this.f12759j = Float.valueOf(((C4048b) this.f12755f).m1464b(f));
    }

    /* renamed from: b */
    public C4068g clone() {
        try {
            C4068g c4068g = (C4068g) super.clone();
            c4068g.f12750a = this.f12750a;
            c4068g.f12751b = this.f12751b;
            c4068g.f12755f = ((C4048b) this.f12755f).clone();
            c4068g.f12758i = this.f12758i;
            return c4068g;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    /* renamed from: c */
    public Object mo1452c() {
        return this.f12759j;
    }

    /* renamed from: d */
    public final Method m1456d(Class cls, String str, Class cls2) {
        Method method;
        Class<?>[] clsArr;
        String str2 = this.f12750a;
        String str3 = str;
        if (str2 != null) {
            str3 = str2.length() == 0 ? str : str + Character.toUpperCase(str2.charAt(0)) + str2.substring(1);
        }
        if (cls2 == null) {
            try {
                method = cls.getMethod(str3, null);
            } catch (NoSuchMethodException e) {
                method = null;
                try {
                    Method declaredMethod = cls.getDeclaredMethod(str3, null);
                    method = declaredMethod;
                    declaredMethod.setAccessible(true);
                    method = declaredMethod;
                } catch (NoSuchMethodException e2) {
                    e.toString();
                }
            }
        } else {
            Class<?>[] clsArr2 = new Class[1];
            method = null;
            for (Class<?> cls3 : this.f12754e.equals(Float.class) ? f12745m : this.f12754e.equals(Integer.class) ? f12746n : this.f12754e.equals(Double.class) ? f12747o : new Class[]{this.f12754e}) {
                clsArr2[0] = cls3;
                try {
                    Method method2 = cls.getMethod(str3, clsArr2);
                    method = method2;
                    this.f12754e = cls3;
                    return method2;
                } catch (NoSuchMethodException e3) {
                    try {
                        Method declaredMethod2 = cls.getDeclaredMethod(str3, clsArr2);
                        declaredMethod2.setAccessible(true);
                        method = declaredMethod2;
                        this.f12754e = cls3;
                        return declaredMethod2;
                    } catch (NoSuchMethodException e4) {
                    }
                }
            }
            Objects.toString(this.f12754e);
        }
        return method;
    }

    /* renamed from: e */
    public void mo1451e(Object obj) {
        AbstractC4168c abstractC4168c = this.f12751b;
        if (abstractC4168c != null) {
            abstractC4168c.mo1340b(obj, mo1452c());
        }
        if (this.f12752c != null) {
            try {
                this.f12757h[0] = mo1452c();
                this.f12752c.invoke(obj, this.f12757h);
            } catch (IllegalAccessException e) {
                e.toString();
            } catch (InvocationTargetException e2) {
                e2.toString();
            }
        }
    }

    /* renamed from: f */
    public void mo1450f(float... fArr) {
        this.f12754e = Float.TYPE;
        int length = fArr.length;
        AbstractC4049c.C4050a[] c4050aArr = new AbstractC4049c.C4050a[Math.max(length, 2)];
        if (length == 1) {
            c4050aArr[0] = new AbstractC4049c.C4050a(0.0f);
            c4050aArr[1] = new AbstractC4049c.C4050a(1.0f, fArr[0]);
        } else {
            c4050aArr[0] = new AbstractC4049c.C4050a(0.0f, fArr[0]);
            for (int i = 1; i < length; i++) {
                c4050aArr[i] = new AbstractC4049c.C4050a(i / (length - 1), fArr[i]);
            }
        }
        this.f12755f = new C4048b(c4050aArr);
    }

    /* renamed from: g */
    public void mo1449g(Class cls) {
        this.f12752c = m1455h(cls, f12748p, "set", this.f12754e);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: h */
    public final Method m1455h(Class cls, HashMap<Class, HashMap<String, Method>> hashMap, String str, Class cls2) {
        try {
            this.f12756g.writeLock().lock();
            HashMap<String, Method> hashMap2 = hashMap.get(cls);
            Method method = hashMap2 != null ? hashMap2.get(this.f12750a) : null;
            Method method2 = method;
            if (method == null) {
                method2 = m1456d(cls, str, cls2);
                HashMap<String, Method> hashMap3 = hashMap2;
                if (hashMap2 == null) {
                    hashMap3 = new HashMap<>();
                    hashMap.put(cls, hashMap3);
                }
                hashMap3.put(this.f12750a, method2);
            }
            this.f12756g.writeLock().unlock();
            return method2;
        } catch (Throwable th) {
            this.f12756g.writeLock().unlock();
            throw th;
        }
    }

    public String toString() {
        return this.f12750a + ": " + this.f12755f.toString();
    }
}
