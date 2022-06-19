package p000;

import android.util.Log;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import p000.mf1;
/* renamed from: of1 */
/* loaded from: classes3-dex2jar.jar:of1.class */
public class of1<T> implements InvocationHandler {

    /* renamed from: h */
    public static final Object[] f7191h = new Object[0];

    /* renamed from: a */
    public final mf1 f7192a;

    /* renamed from: b */
    public final AbstractC1515b<T> f7193b;

    /* renamed from: c */
    public final AbstractC1517d<T> f7194c;

    /* renamed from: d */
    public final LinkedList<of1<T>.C1516c> f7195d;

    /* renamed from: e */
    public final LinkedList<of1<T>.C1516c> f7196e;

    /* renamed from: f */
    public boolean f7197f;

    /* renamed from: g */
    public T f7198g;

    /* renamed from: of1$a */
    /* loaded from: classes3-dex2jar.jar:of1$a.class */
    public class C1514a implements mf1.AbstractC1479a {

        /* renamed from: a */
        public long f7199a = System.currentTimeMillis();

        public C1514a() {
            of1.this = r5;
        }

        @Override // p000.mf1.AbstractC1479a
        /* renamed from: a */
        public boolean mo1036a() {
            return of1.this.f7197f;
        }

        @Override // p000.mf1.AbstractC1479a
        /* renamed from: b */
        public void mo1035b() {
        }

        @Override // p000.mf1.AbstractC1479a
        /* renamed from: c */
        public long mo1034c() {
            return this.f7199a;
        }

        @Override // p000.mf1.AbstractC1479a
        /* renamed from: d */
        public void mo1033d() {
            of1.this.m1037j();
        }
    }

    /* renamed from: of1$b */
    /* loaded from: classes3-dex2jar.jar:of1$b.class */
    public interface AbstractC1515b<T> {
        vf1<T> create();
    }

    /* renamed from: of1$c */
    /* loaded from: classes3-dex2jar.jar:of1$c.class */
    public class C1516c {

        /* renamed from: a */
        public final WeakReference[] f7201a;

        /* renamed from: b */
        public final LinkedList<Object> f7202b;

        /* renamed from: c */
        public final Method f7203c;

        public C1516c(of1 of1Var, Method method, Object... objArr) {
            this.f7202b = new LinkedList<>();
            Object[] objArr2 = objArr == null ? of1.f7191h : objArr;
            WeakReference[] weakReferenceArr = new WeakReference[objArr2.length];
            int length = objArr2.length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                Object obj = objArr2[i];
                if ((obj instanceof Map) || (obj instanceof Integer)) {
                    this.f7202b.add(obj);
                }
                weakReferenceArr[i2] = new WeakReference(obj);
                i++;
                i2++;
            }
            this.f7201a = weakReferenceArr;
            this.f7203c = method;
        }

        public /* synthetic */ C1516c(of1 of1Var, Method method, Object[] objArr, C1514a c1514a) {
            this(of1Var, method, objArr);
        }
    }

    /* renamed from: of1$d */
    /* loaded from: classes3-dex2jar.jar:of1$d.class */
    public interface AbstractC1517d<T> {
        /* renamed from: a */
        boolean mo566a(Method method);

        /* renamed from: b */
        Class<T> mo565b();
    }

    public of1(mf1 mf1Var, AbstractC1515b<T> abstractC1515b, AbstractC1517d<T> abstractC1517d) {
        tf1.m499a(mf1Var);
        tf1.m499a(abstractC1515b);
        tf1.m499a(abstractC1517d);
        this.f7192a = mf1Var;
        this.f7193b = abstractC1515b;
        this.f7194c = abstractC1517d;
        if (ue1.f8318a.booleanValue()) {
            m1043d(abstractC1517d);
        }
        mf1Var.mo1180a(new C1514a());
        this.f7195d = new LinkedList<>();
        this.f7196e = new LinkedList<>();
    }

    /* renamed from: f */
    public static <T> T m1041f(mf1 mf1Var, AbstractC1515b<T> abstractC1515b, AbstractC1517d<T> abstractC1517d) {
        Class<T> mo565b = abstractC1517d.mo565b();
        return (T) Proxy.newProxyInstance(mo565b.getClassLoader(), new Class[]{mo565b}, new of1(mf1Var, abstractC1515b, abstractC1517d));
    }

    /* renamed from: d */
    public final void m1043d(AbstractC1517d<T> abstractC1517d) {
        Method[] methods;
        for (Method method : abstractC1517d.mo565b().getMethods()) {
            if (!Object.class.equals(method.getDeclaringClass())) {
                Class<?> returnType = method.getReturnType();
                if (!Void.TYPE.equals(returnType) && !Boolean.TYPE.equals(returnType)) {
                    if (abstractC1517d.mo566a(method)) {
                        throw new RuntimeException("Cannot proxy a tracker with non-void, non-boolean return types.");
                    }
                    throw new RuntimeException("Cannot proxy a tracker with nonpostponable method: " + method);
                }
            }
        }
    }

    /* renamed from: e */
    public final void m1042e() {
        this.f7195d.clear();
        this.f7196e.clear();
    }

    /* renamed from: g */
    public final void m1040g(Method method, Object[] objArr) {
        of1<T>.C1516c c1516c;
        LinkedList<of1<T>.C1516c> linkedList;
        if (this.f7195d.size() < 5) {
            LinkedList<of1<T>.C1516c> linkedList2 = this.f7195d;
            c1516c = new C1516c(this, method, objArr, null);
            linkedList = linkedList2;
        } else {
            if (this.f7196e.size() >= 10) {
                this.f7196e.removeFirst();
            }
            LinkedList<of1<T>.C1516c> linkedList3 = this.f7196e;
            c1516c = new C1516c(this, method, objArr, null);
            linkedList = linkedList3;
        }
        linkedList.add(c1516c);
    }

    /* renamed from: h */
    public final Object m1039h(Method method) {
        if (ue1.f8318a.booleanValue() && !this.f7194c.mo566a(method)) {
            throw new RuntimeException("Cannot queue method call: " + method);
        }
        try {
            if (!Boolean.TYPE.equals(method.getReturnType())) {
                return null;
            }
            return Boolean.TRUE;
        } catch (Exception e) {
            uf1.m397a(e);
            return null;
        }
    }

    /* renamed from: i */
    public final Object m1038i(Method method, Object[] objArr) {
        if (!Object.class.equals(method.getDeclaringClass())) {
            if (this.f7197f && this.f7198g == null) {
                m1042e();
                return m1039h(method);
            }
            if (this.f7192a.getStatus() == mf1.EnumC1480b.ON) {
                m1037j();
                T t = this.f7198g;
                if (t != null) {
                    return method.invoke(t, objArr);
                }
            }
            if (this.f7192a.getStatus() == mf1.EnumC1480b.OFF && (!this.f7197f || this.f7198g != null)) {
                m1040g(method, objArr);
            }
            return m1039h(method);
        }
        String name = method.getName();
        Class<T> mo565b = this.f7194c.mo565b();
        if ("getClass".equals(name)) {
            return mo565b;
        }
        boolean equals = "toString".equals(name);
        Object invoke = method.invoke(this, objArr);
        String str = invoke;
        if (equals) {
            String name2 = of1.class.getName();
            String name3 = mo565b.getName();
            str = (invoke + "").replace(name2, name3);
        }
        return str;
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        try {
            return m1038i(method, objArr);
        } catch (Exception e) {
            uf1.m397a(e);
            return m1039h(method);
        }
    }

    /* renamed from: j */
    public final void m1037j() {
        if (!this.f7197f) {
            try {
                this.f7198g = this.f7193b.create().m325e(null);
            } catch (Exception e) {
                if (ue1.f8318a.booleanValue()) {
                    Log.e("OnOffTrackerProxy", "Could not create instance", e);
                }
            }
            this.f7197f = true;
        }
        if (this.f7198g == null) {
            return;
        }
        LinkedList<LinkedList> linkedList = new LinkedList();
        linkedList.add(this.f7195d);
        linkedList.add(this.f7196e);
        for (LinkedList linkedList2 : linkedList) {
            Iterator it = linkedList2.iterator();
            while (it.hasNext()) {
                C1516c c1516c = (C1516c) it.next();
                try {
                    Object[] objArr = new Object[c1516c.f7201a.length];
                    WeakReference[] weakReferenceArr = c1516c.f7201a;
                    int length = weakReferenceArr.length;
                    int i = 0;
                    int i2 = 0;
                    while (i < length) {
                        objArr[i2] = weakReferenceArr[i].get();
                        i++;
                        i2++;
                    }
                    c1516c.f7203c.invoke(this.f7198g, objArr);
                } catch (Exception e2) {
                    e = e2;
                    if (ue1.f8318a.booleanValue()) {
                        Throwable cause = e.getCause();
                        if (cause != null) {
                            e = cause;
                        }
                        Log.e("OnOffTrackerProxy", "Could not resurrect call to " + c1516c.f7203c + ": " + Log.getStackTraceString(e));
                    }
                }
            }
            linkedList2.clear();
        }
    }
}
