package com.nineoldandroids.p064a;

import android.util.Log;
import com.nineoldandroids.util.AbstractC1441a;
import com.nineoldandroids.util.AbstractC1443c;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* renamed from: com.nineoldandroids.a.j */
/* loaded from: classes-dex2jar.jar:com/nineoldandroids/a/j.class */
public class C1428j implements Cloneable {

    /* renamed from: i */
    private static final AbstractC1431k f3924i = new C1408e();

    /* renamed from: j */
    private static final AbstractC1431k f3925j = new C1406c();

    /* renamed from: k */
    private static Class[] f3926k = {Float.TYPE, Float.class, Double.TYPE, Integer.TYPE, Double.class, Integer.class};

    /* renamed from: l */
    private static Class[] f3927l = {Integer.TYPE, Integer.class, Float.TYPE, Double.TYPE, Float.class, Double.class};

    /* renamed from: m */
    private static Class[] f3928m = {Double.TYPE, Double.class, Float.TYPE, Integer.TYPE, Float.class, Integer.class};

    /* renamed from: n */
    private static final HashMap<Class, HashMap<String, Method>> f3929n = new HashMap<>();

    /* renamed from: o */
    private static final HashMap<Class, HashMap<String, Method>> f3930o = new HashMap<>();

    /* renamed from: a */
    String f3931a;

    /* renamed from: b */
    protected AbstractC1443c f3932b;

    /* renamed from: c */
    Method f3933c;

    /* renamed from: d */
    Class f3934d;

    /* renamed from: e */
    C1411g f3935e;

    /* renamed from: f */
    final ReentrantReadWriteLock f3936f;

    /* renamed from: g */
    final Object[] f3937g;

    /* renamed from: h */
    private Method f3938h;

    /* renamed from: p */
    private AbstractC1431k f3939p;

    /* renamed from: q */
    private Object f3940q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.nineoldandroids.a.j$a */
    /* loaded from: classes-dex2jar.jar:com/nineoldandroids/a/j$a.class */
    public static class C1430a extends C1428j {

        /* renamed from: h */
        C1407d f3941h;

        /* renamed from: i */
        float f3942i;

        /* renamed from: j */
        private AbstractC1441a f3943j;

        public C1430a(AbstractC1443c abstractC1443c, float... fArr) {
            super(abstractC1443c);
            mo3677a(fArr);
            if (abstractC1443c instanceof AbstractC1441a) {
                this.f3943j = (AbstractC1441a) this.f3932b;
            }
        }

        public C1430a(String str, float... fArr) {
            super(str);
            mo3677a(fArr);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.nineoldandroids.p064a.C1428j
        /* renamed from: a */
        public void mo3679a(float f) {
            this.f3942i = this.f3941h.m3739b(f);
        }

        @Override // com.nineoldandroids.p064a.C1428j
        /* renamed from: a */
        void mo3678a(Class cls) {
            if (this.f3932b != null) {
                return;
            }
            C1428j.super.mo3678a(cls);
        }

        @Override // com.nineoldandroids.p064a.C1428j
        /* renamed from: a */
        public void mo3677a(float... fArr) {
            C1428j.super.mo3677a(fArr);
            this.f3941h = (C1407d) this.f3935e;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.nineoldandroids.p064a.C1428j
        /* renamed from: b */
        public void mo3676b(Object obj) {
            AbstractC1441a abstractC1441a = this.f3943j;
            if (abstractC1441a != null) {
                abstractC1441a.mo3607a((AbstractC1441a) obj, this.f3942i);
            } else if (this.f3932b != null) {
                this.f3932b.mo3602a(obj, Float.valueOf(this.f3942i));
            } else if (this.f3933c == null) {
            } else {
                try {
                    this.f3937g[0] = Float.valueOf(this.f3942i);
                    this.f3933c.invoke(obj, this.f3937g);
                } catch (IllegalAccessException e) {
                    Log.e("PropertyValuesHolder", e.toString());
                } catch (InvocationTargetException e2) {
                    Log.e("PropertyValuesHolder", e2.toString());
                }
            }
        }

        @Override // com.nineoldandroids.p064a.C1428j
        /* renamed from: d */
        Object mo3675d() {
            return Float.valueOf(this.f3942i);
        }

        /* renamed from: e */
        public C1430a clone() {
            C1430a c1430a = (C1430a) C1428j.super.clone();
            c1430a.f3941h = (C1407d) c1430a.f3935e;
            return c1430a;
        }
    }

    private C1428j(AbstractC1443c abstractC1443c) {
        this.f3933c = null;
        this.f3938h = null;
        this.f3935e = null;
        this.f3936f = new ReentrantReadWriteLock();
        this.f3937g = new Object[1];
        this.f3932b = abstractC1443c;
        if (abstractC1443c != null) {
            this.f3931a = abstractC1443c.m3604a();
        }
    }

    private C1428j(String str) {
        this.f3933c = null;
        this.f3938h = null;
        this.f3935e = null;
        this.f3936f = new ReentrantReadWriteLock();
        this.f3937g = new Object[1];
        this.f3931a = str;
    }

    /* renamed from: a */
    public static C1428j m3690a(AbstractC1443c<?, Float> abstractC1443c, float... fArr) {
        return new C1430a(abstractC1443c, fArr);
    }

    /* renamed from: a */
    public static C1428j m3684a(String str, float... fArr) {
        return new C1430a(str, fArr);
    }

    /* renamed from: a */
    static String m3685a(String str, String str2) {
        String str3 = str;
        if (str2 != null) {
            if (str2.length() == 0) {
                str3 = str;
            } else {
                str3 = str + Character.toUpperCase(str2.charAt(0)) + str2.substring(1);
            }
        }
        return str3;
    }

    /* renamed from: a */
    private Method m3689a(Class cls, String str, Class cls2) {
        Method method;
        Class<?>[] clsArr;
        String m3685a = m3685a(str, this.f3931a);
        Method method2 = null;
        if (cls2 == null) {
            try {
                method = cls.getMethod(m3685a, null);
            } catch (NoSuchMethodException e) {
                try {
                    Method declaredMethod = cls.getDeclaredMethod(m3685a, null);
                    method2 = declaredMethod;
                    declaredMethod.setAccessible(true);
                    method2 = declaredMethod;
                } catch (NoSuchMethodException e2) {
                    Log.e("PropertyValuesHolder", "Couldn't find no-arg method for property " + this.f3931a + ": " + e);
                }
                method = method2;
            }
        } else {
            Class<?>[] clsArr2 = new Class[1];
            Method method3 = null;
            for (Class<?> cls3 : this.f3934d.equals(Float.class) ? f3926k : this.f3934d.equals(Integer.class) ? f3927l : this.f3934d.equals(Double.class) ? f3928m : new Class[]{this.f3934d}) {
                clsArr2[0] = cls3;
                try {
                    Method method4 = cls.getMethod(m3685a, clsArr2);
                    method3 = method4;
                    this.f3934d = cls3;
                    return method4;
                } catch (NoSuchMethodException e3) {
                    try {
                        Method declaredMethod2 = cls.getDeclaredMethod(m3685a, clsArr2);
                        declaredMethod2.setAccessible(true);
                        method3 = declaredMethod2;
                        this.f3934d = cls3;
                        return declaredMethod2;
                    } catch (NoSuchMethodException e4) {
                    }
                }
            }
            Log.e("PropertyValuesHolder", "Couldn't find setter/getter for property " + this.f3931a + " with value type " + this.f3934d);
            method = method3;
        }
        return method;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private Method m3688a(Class cls, HashMap<Class, HashMap<String, Method>> hashMap, String str, Class cls2) {
        try {
            this.f3936f.writeLock().lock();
            HashMap<String, Method> hashMap2 = hashMap.get(cls);
            Method method = hashMap2 != null ? hashMap2.get(this.f3931a) : null;
            Method method2 = method;
            if (method == null) {
                method2 = m3689a(cls, str, cls2);
                HashMap<String, Method> hashMap3 = hashMap2;
                if (hashMap2 == null) {
                    hashMap3 = new HashMap<>();
                    hashMap.put(cls, hashMap3);
                }
                hashMap3.put(this.f3931a, method2);
            }
            this.f3936f.writeLock().unlock();
            return method2;
        } catch (Throwable th) {
            this.f3936f.writeLock().unlock();
            throw th;
        }
    }

    /* renamed from: b */
    private void m3682b(Class cls) {
        this.f3938h = m3688a(cls, f3930o, "get", null);
    }

    /* renamed from: a */
    public C1428j clone() {
        try {
            C1428j c1428j = (C1428j) super.clone();
            c1428j.f3931a = this.f3931a;
            c1428j.f3932b = this.f3932b;
            c1428j.f3935e = this.f3935e.clone();
            c1428j.f3939p = this.f3939p;
            return c1428j;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    /* renamed from: a */
    public void mo3679a(float f) {
        this.f3940q = this.f3935e.mo3726a(f);
    }

    /* renamed from: a */
    public void m3691a(AbstractC1443c abstractC1443c) {
        this.f3932b = abstractC1443c;
    }

    /* renamed from: a */
    void mo3678a(Class cls) {
        this.f3933c = m3688a(cls, f3929n, "set", this.f3934d);
    }

    /* renamed from: a */
    public void m3687a(Object obj) {
        AbstractC1443c abstractC1443c = this.f3932b;
        if (abstractC1443c != null) {
            try {
                abstractC1443c.mo3603a(obj);
                Iterator<AbstractC1409f> it = this.f3935e.f3904e.iterator();
                while (it.hasNext()) {
                    AbstractC1409f next = it.next();
                    if (!next.m3737a()) {
                        next.mo3731a(this.f3932b.mo3603a(obj));
                    }
                }
                return;
            } catch (ClassCastException e) {
                Log.e("PropertyValuesHolder", "No such property (" + this.f3932b.m3604a() + ") on target object " + obj + ". Trying reflection instead");
                this.f3932b = null;
            }
        }
        Class<?> cls = obj.getClass();
        if (this.f3933c == null) {
            mo3678a((Class) cls);
        }
        Iterator<AbstractC1409f> it2 = this.f3935e.f3904e.iterator();
        while (it2.hasNext()) {
            AbstractC1409f next2 = it2.next();
            if (!next2.m3737a()) {
                if (this.f3938h == null) {
                    m3682b((Class) cls);
                }
                try {
                    next2.mo3731a(this.f3938h.invoke(obj, new Object[0]));
                } catch (IllegalAccessException e2) {
                    Log.e("PropertyValuesHolder", e2.toString());
                } catch (InvocationTargetException e3) {
                    Log.e("PropertyValuesHolder", e3.toString());
                }
            }
        }
    }

    /* renamed from: a */
    public void m3686a(String str) {
        this.f3931a = str;
    }

    /* renamed from: a */
    public void mo3677a(float... fArr) {
        this.f3934d = Float.TYPE;
        this.f3935e = C1411g.m3724a(fArr);
    }

    /* renamed from: b */
    public void m3683b() {
        if (this.f3939p == null) {
            Class cls = this.f3934d;
            this.f3939p = cls == Integer.class ? f3924i : cls == Float.class ? f3925j : null;
        }
        AbstractC1431k abstractC1431k = this.f3939p;
        if (abstractC1431k != null) {
            this.f3935e.m3725a(abstractC1431k);
        }
    }

    /* renamed from: b */
    public void mo3676b(Object obj) {
        AbstractC1443c abstractC1443c = this.f3932b;
        if (abstractC1443c != null) {
            abstractC1443c.mo3602a(obj, mo3675d());
        }
        if (this.f3933c != null) {
            try {
                this.f3937g[0] = mo3675d();
                this.f3933c.invoke(obj, this.f3937g);
            } catch (IllegalAccessException e) {
                Log.e("PropertyValuesHolder", e.toString());
            } catch (InvocationTargetException e2) {
                Log.e("PropertyValuesHolder", e2.toString());
            }
        }
    }

    /* renamed from: c */
    public String m3681c() {
        return this.f3931a;
    }

    /* renamed from: d */
    Object mo3675d() {
        return this.f3940q;
    }

    public String toString() {
        return this.f3931a + ": " + this.f3935e.toString();
    }
}
