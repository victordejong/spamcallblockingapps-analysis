package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.io.Serializable;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.g0.j */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/j.class */
public final class C23664j extends AbstractC23670n implements Serializable {

    /* renamed from: d */
    public final transient Method f65619d;

    /* renamed from: e */
    public Class<?>[] f65620e;

    /* renamed from: f */
    public C23665a f65621f;

    /* renamed from: e.k.a.c.g0.j$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/j$a.class */
    public static final class C23665a implements Serializable {

        /* renamed from: a */
        public Class<?> f65622a;

        /* renamed from: b */
        public String f65623b;

        /* renamed from: c */
        public Class<?>[] f65624c;

        public C23665a(Method method) {
            this.f65622a = method.getDeclaringClass();
            this.f65623b = method.getName();
            this.f65624c = method.getParameterTypes();
        }
    }

    public C23664j(AbstractC23652e0 abstractC23652e0, Method method, C23678p c23678p, C23678p[] c23678pArr) {
        super(abstractC23652e0, c23678p, c23678pArr);
        if (method != null) {
            this.f65619d = method;
            return;
        }
        throw new IllegalArgumentException("Cannot construct AnnotatedMethod with null Method");
    }

    public C23664j(C23665a c23665a) {
        super(null, null, null);
        this.f65619d = null;
        this.f65621f = c23665a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    /* renamed from: b */
    public AnnotatedElement mo6379b() {
        return this.f65619d;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    /* renamed from: d */
    public Class<?> mo6378d() {
        return this.f65619d.getReturnType();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    /* renamed from: e */
    public AbstractC23698i mo6377e() {
        return this.f65617a.mo6404a(this.f65619d.getGenericReturnType());
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!C23914g.m5746u(obj, C23664j.class) || ((C23664j) obj).f65619d != this.f65619d) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i
    /* renamed from: g */
    public Class<?> mo6376g() {
        return this.f65619d.getDeclaringClass();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public String getName() {
        return this.f65619d.getName();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i
    /* renamed from: h */
    public String mo6384h() {
        String mo6384h = super.mo6384h();
        int mo6368q = mo6368q();
        if (mo6368q != 0) {
            if (mo6368q != 1) {
                return String.format("%s(%d params)", super.mo6384h(), Integer.valueOf(mo6368q()));
            }
            StringBuilder m8696K = C22128a.m8696K(mo6384h, "(");
            m8696K.append(mo6366s(0).getName());
            m8696K.append(")");
            return m8696K.toString();
        }
        return C22128a.m8543z2(mo6384h, "()");
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public int hashCode() {
        return this.f65619d.getName().hashCode();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i
    /* renamed from: i */
    public Member mo6375i() {
        return this.f65619d;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i
    /* renamed from: j */
    public Object mo6374j(Object obj) throws IllegalArgumentException {
        try {
            return this.f65619d.invoke(obj, null);
        } catch (IllegalAccessException | InvocationTargetException e) {
            StringBuilder m8728C = C22128a.m8728C("Failed to getValue() with method ");
            m8728C.append(mo6384h());
            m8728C.append(": ");
            m8728C.append(e.getMessage());
            throw new IllegalArgumentException(m8728C.toString(), e);
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i
    /* renamed from: l */
    public AbstractC23636b mo6373l(C23678p c23678p) {
        return new C23664j(this.f65617a, this.f65619d, c23678p, this.f65634c);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23670n
    /* renamed from: m */
    public final Object mo6372m() throws Exception {
        return this.f65619d.invoke(null, new Object[0]);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23670n
    /* renamed from: n */
    public final Object mo6371n(Object[] objArr) throws Exception {
        return this.f65619d.invoke(null, objArr);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23670n
    /* renamed from: o */
    public final Object mo6370o(Object obj) throws Exception {
        return this.f65619d.invoke(null, obj);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23670n
    /* renamed from: q */
    public int mo6368q() {
        if (this.f65620e == null) {
            this.f65620e = this.f65619d.getParameterTypes();
        }
        return this.f65620e.length;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23670n
    /* renamed from: r */
    public AbstractC23698i mo6367r(int i) {
        Type[] genericParameterTypes = this.f65619d.getGenericParameterTypes();
        if (i >= genericParameterTypes.length) {
            return null;
        }
        return this.f65617a.mo6404a(genericParameterTypes[i]);
    }

    public Object readResolve() {
        C23665a c23665a = this.f65621f;
        Class<?> cls = c23665a.f65622a;
        try {
            Method declaredMethod = cls.getDeclaredMethod(c23665a.f65623b, c23665a.f65624c);
            if (!declaredMethod.isAccessible()) {
                C23914g.m5762e(declaredMethod, false);
            }
            return new C23664j(null, declaredMethod, null, null);
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("Could not find method '");
            m8728C.append(this.f65621f.f65623b);
            m8728C.append("' from Class '");
            m8728C.append(cls.getName());
            throw new IllegalArgumentException(m8728C.toString());
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23670n
    /* renamed from: s */
    public Class<?> mo6366s(int i) {
        if (this.f65620e == null) {
            this.f65620e = this.f65619d.getParameterTypes();
        }
        Class<?>[] clsArr = this.f65620e;
        return i >= clsArr.length ? null : clsArr[i];
    }

    /* renamed from: t */
    public Class<?> m6383t() {
        return this.f65619d.getReturnType();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[method ");
        m8728C.append(mo6384h());
        m8728C.append("]");
        return m8728C.toString();
    }

    public Object writeReplace() {
        return new C23664j(new C23665a(this.f65619d));
    }
}
