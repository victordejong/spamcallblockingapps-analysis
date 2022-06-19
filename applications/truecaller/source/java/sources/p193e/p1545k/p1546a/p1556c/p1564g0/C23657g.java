package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.io.Serializable;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.g0.g */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/g.class */
public final class C23657g extends AbstractC23663i implements Serializable {

    /* renamed from: c */
    public final transient Field f65601c;

    /* renamed from: d */
    public C23658a f65602d;

    /* renamed from: e.k.a.c.g0.g$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/g$a.class */
    public static final class C23658a implements Serializable {

        /* renamed from: a */
        public Class<?> f65603a;

        /* renamed from: b */
        public String f65604b;

        public C23658a(Field field) {
            this.f65603a = field.getDeclaringClass();
            this.f65604b = field.getName();
        }
    }

    public C23657g(AbstractC23652e0 abstractC23652e0, Field field, C23678p c23678p) {
        super(abstractC23652e0, c23678p);
        this.f65601c = field;
    }

    public C23657g(C23658a c23658a) {
        super(null, null);
        this.f65601c = null;
        this.f65602d = c23658a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    /* renamed from: b */
    public AnnotatedElement mo6379b() {
        return this.f65601c;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    /* renamed from: d */
    public Class<?> mo6378d() {
        return this.f65601c.getType();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    /* renamed from: e */
    public AbstractC23698i mo6377e() {
        return this.f65617a.mo6404a(this.f65601c.getGenericType());
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!C23914g.m5746u(obj, C23657g.class) || ((C23657g) obj).f65601c != this.f65601c) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i
    /* renamed from: g */
    public Class<?> mo6376g() {
        return this.f65601c.getDeclaringClass();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public String getName() {
        return this.f65601c.getName();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public int hashCode() {
        return this.f65601c.getName().hashCode();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i
    /* renamed from: i */
    public Member mo6375i() {
        return this.f65601c;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i
    /* renamed from: j */
    public Object mo6374j(Object obj) throws IllegalArgumentException {
        try {
            return this.f65601c.get(obj);
        } catch (IllegalAccessException e) {
            StringBuilder m8728C = C22128a.m8728C("Failed to getValue() for field ");
            m8728C.append(mo6384h());
            m8728C.append(": ");
            m8728C.append(e.getMessage());
            throw new IllegalArgumentException(m8728C.toString(), e);
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i
    /* renamed from: l */
    public AbstractC23636b mo6373l(C23678p c23678p) {
        return new C23657g(this.f65617a, this.f65601c, c23678p);
    }

    public Object readResolve() {
        C23658a c23658a = this.f65602d;
        Class<?> cls = c23658a.f65603a;
        try {
            Field declaredField = cls.getDeclaredField(c23658a.f65604b);
            if (!declaredField.isAccessible()) {
                C23914g.m5762e(declaredField, false);
            }
            return new C23657g(null, declaredField, null);
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("Could not find method '");
            m8728C.append(this.f65602d.f65604b);
            m8728C.append("' from Class '");
            m8728C.append(cls.getName());
            throw new IllegalArgumentException(m8728C.toString());
        }
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[field ");
        m8728C.append(mo6384h());
        m8728C.append("]");
        return m8728C.toString();
    }

    public Object writeReplace() {
        return new C23657g(new C23658a(this.f65601c));
    }
}
