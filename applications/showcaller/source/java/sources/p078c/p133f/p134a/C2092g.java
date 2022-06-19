package p078c.p133f.p134a;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* renamed from: c.f.a.g */
/* loaded from: classes2-dex2jar.jar:c/f/a/g.class */
public class C2092g implements Cloneable {

    /* renamed from: f */
    private static Class[] f7227f;

    /* renamed from: g */
    private static Class[] f7228g;

    /* renamed from: h */
    private static Class[] f7229h;

    /* renamed from: k */
    String f7232k;

    /* renamed from: l */
    Method f7233l;

    /* renamed from: m */
    private Method f7234m;

    /* renamed from: n */
    Class f7235n;

    /* renamed from: o */
    C2091f f7236o;

    /* renamed from: p */
    final ReentrantReadWriteLock f7237p;

    /* renamed from: q */
    final Object[] f7238q;

    /* renamed from: r */
    private AbstractC2095h f7239r;

    /* renamed from: s */
    private Object f7240s;

    /* renamed from: d */
    private static final AbstractC2095h f7225d = new C2088d();

    /* renamed from: e */
    private static final AbstractC2095h f7226e = new C2086b();

    /* renamed from: i */
    private static final HashMap<Class, HashMap<String, Method>> f7230i = new HashMap<>();

    /* renamed from: j */
    private static final HashMap<Class, HashMap<String, Method>> f7231j = new HashMap<>();

    /* renamed from: c.f.a.g$b */
    /* loaded from: classes2-dex2jar.jar:c/f/a/g$b.class */
    public static class C2094b extends C2092g {

        /* renamed from: t */
        C2087c f7241t;

        /* renamed from: u */
        float f7242u;

        public C2094b(String str, float... fArr) {
            super(str);
            mo28049i(fArr);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // p078c.p133f.p134a.C2092g
        /* renamed from: a */
        public void mo28052a(float f) {
            this.f7242u = this.f7241t.m28070f(f);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // p078c.p133f.p134a.C2092g
        /* renamed from: c */
        public Object mo28050c() {
            return Float.valueOf(this.f7242u);
        }

        @Override // p078c.p133f.p134a.C2092g
        /* renamed from: i */
        public void mo28049i(float... fArr) {
            C2092g.super.mo28049i(fArr);
            this.f7241t = (C2087c) this.f7236o;
        }

        /* renamed from: j */
        public C2094b clone() {
            C2094b c2094b = (C2094b) C2092g.super.clone();
            c2094b.f7241t = (C2087c) c2094b.f7236o;
            return c2094b;
        }
    }

    static {
        Class cls = Float.TYPE;
        Class cls2 = Double.TYPE;
        Class cls3 = Integer.TYPE;
        f7227f = new Class[]{cls, Float.class, cls2, cls3, Double.class, Integer.class};
        Class cls4 = Double.TYPE;
        f7228g = new Class[]{cls3, Integer.class, cls, cls4, Float.class, Double.class};
        f7229h = new Class[]{cls4, Double.class, cls, cls3, Float.class, Integer.class};
    }

    private C2092g(String str) {
        this.f7233l = null;
        this.f7234m = null;
        this.f7236o = null;
        this.f7237p = new ReentrantReadWriteLock();
        this.f7238q = new Object[1];
        this.f7232k = str;
    }

    /* renamed from: h */
    public static C2092g m28053h(String str, float... fArr) {
        return new C2094b(str, fArr);
    }

    /* renamed from: a */
    public void mo28052a(float f) {
        this.f7240s = this.f7236o.mo28058b(f);
    }

    /* renamed from: b */
    public C2092g clone() {
        try {
            C2092g c2092g = (C2092g) super.clone();
            c2092g.f7232k = this.f7232k;
            c2092g.f7236o = this.f7236o.mo28059a();
            c2092g.f7239r = this.f7239r;
            return c2092g;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    /* renamed from: c */
    public Object mo28050c() {
        return this.f7240s;
    }

    /* renamed from: d */
    public String m28055d() {
        return this.f7232k;
    }

    /* renamed from: g */
    public void m28054g() {
        if (this.f7239r == null) {
            Class cls = this.f7235n;
            this.f7239r = cls == Integer.class ? f7225d : cls == Float.class ? f7226e : null;
        }
        AbstractC2095h abstractC2095h = this.f7239r;
        if (abstractC2095h != null) {
            this.f7236o.m28056d(abstractC2095h);
        }
    }

    /* renamed from: i */
    public void mo28049i(float... fArr) {
        this.f7235n = Float.TYPE;
        this.f7236o = C2091f.m28057c(fArr);
    }

    public String toString() {
        return this.f7232k + ": " + this.f7236o.toString();
    }
}
