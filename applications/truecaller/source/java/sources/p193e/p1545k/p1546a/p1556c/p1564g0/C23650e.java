package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.io.Serializable;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.g0.e */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/e.class */
public final class C23650e extends AbstractC23670n {

    /* renamed from: d */
    public final Constructor<?> f65588d;

    /* renamed from: e */
    public C23651a f65589e;

    /* renamed from: e.k.a.c.g0.e$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/e$a.class */
    public static final class C23651a implements Serializable {

        /* renamed from: a */
        public Class<?> f65590a;

        /* renamed from: b */
        public Class<?>[] f65591b;

        public C23651a(Constructor<?> constructor) {
            this.f65590a = constructor.getDeclaringClass();
            this.f65591b = constructor.getParameterTypes();
        }
    }

    public C23650e(C23651a c23651a) {
        super(null, null, null);
        this.f65588d = null;
        this.f65589e = c23651a;
    }

    public C23650e(AbstractC23652e0 abstractC23652e0, Constructor<?> constructor, C23678p c23678p, C23678p[] c23678pArr) {
        super(abstractC23652e0, c23678p, c23678pArr);
        if (constructor != null) {
            this.f65588d = constructor;
            return;
        }
        throw new IllegalArgumentException("Null constructor not allowed");
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    /* renamed from: b */
    public AnnotatedElement mo6379b() {
        return this.f65588d;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    /* renamed from: d */
    public Class<?> mo6378d() {
        return this.f65588d.getDeclaringClass();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    /* renamed from: e */
    public AbstractC23698i mo6377e() {
        return this.f65617a.mo6404a(mo6378d());
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!C23914g.m5746u(obj, C23650e.class) || ((C23650e) obj).f65588d != this.f65588d) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i
    /* renamed from: g */
    public Class<?> mo6376g() {
        return this.f65588d.getDeclaringClass();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public String getName() {
        return this.f65588d.getName();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public int hashCode() {
        return this.f65588d.getName().hashCode();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i
    /* renamed from: i */
    public Member mo6375i() {
        return this.f65588d;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i
    /* renamed from: j */
    public Object mo6374j(Object obj) throws UnsupportedOperationException {
        StringBuilder m8728C = C22128a.m8728C("Cannot call getValue() on constructor of ");
        m8728C.append(mo6376g().getName());
        throw new UnsupportedOperationException(m8728C.toString());
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i
    /* renamed from: l */
    public AbstractC23636b mo6373l(C23678p c23678p) {
        return new C23650e(this.f65617a, this.f65588d, c23678p, this.f65634c);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23670n
    /* renamed from: m */
    public final Object mo6372m() throws Exception {
        return this.f65588d.newInstance(new Object[0]);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23670n
    /* renamed from: n */
    public final Object mo6371n(Object[] objArr) throws Exception {
        return this.f65588d.newInstance(objArr);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23670n
    /* renamed from: o */
    public final Object mo6370o(Object obj) throws Exception {
        return this.f65588d.newInstance(obj);
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23670n
    /* renamed from: q */
    public int mo6368q() {
        return this.f65588d.getParameterTypes().length;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23670n
    /* renamed from: r */
    public AbstractC23698i mo6367r(int i) {
        Type[] genericParameterTypes = this.f65588d.getGenericParameterTypes();
        if (i >= genericParameterTypes.length) {
            return null;
        }
        return this.f65617a.mo6404a(genericParameterTypes[i]);
    }

    public Object readResolve() {
        C23651a c23651a = this.f65589e;
        Class<?> cls = c23651a.f65590a;
        try {
            Constructor<?> declaredConstructor = cls.getDeclaredConstructor(c23651a.f65591b);
            if (!declaredConstructor.isAccessible()) {
                C23914g.m5762e(declaredConstructor, false);
            }
            return new C23650e(null, declaredConstructor, null, null);
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("Could not find constructor with ");
            m8728C.append(this.f65589e.f65591b.length);
            m8728C.append(" args from Class '");
            m8728C.append(cls.getName());
            throw new IllegalArgumentException(m8728C.toString());
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23670n
    /* renamed from: s */
    public Class<?> mo6366s(int i) {
        Class<?>[] parameterTypes = this.f65588d.getParameterTypes();
        return i >= parameterTypes.length ? null : parameterTypes[i];
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public String toString() {
        int length = this.f65588d.getParameterTypes().length;
        return String.format("[constructor for %s (%d arg%s), annotations: %s", C23914g.m5776E(this.f65588d.getDeclaringClass()), Integer.valueOf(length), length == 1 ? "" : "s", this.f65618b);
    }

    public Object writeReplace() {
        return new C23650e(new C23651a(this.f65588d));
    }
}
