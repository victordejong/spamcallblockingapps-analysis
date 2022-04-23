package p131c.p161d.p354f.p356t;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.List;
import p131c.p161d.p354f.AbstractC6108b;
import p131c.p161d.p354f.AbstractC6129q;
import p131c.p161d.p354f.AbstractC6131r;
import p131c.p161d.p354f.C6109c;
import p131c.p161d.p354f.C6111e;
import p131c.p161d.p354f.p355s.AbstractC6132a;
import p131c.p161d.p354f.p355s.AbstractC6135d;
import p131c.p161d.p354f.p355s.AbstractC6136e;
import p131c.p161d.p354f.p360u.C6239a;
import p131c.p161d.p354f.p361v.C6240a;
import p131c.p161d.p354f.p361v.C6242b;
/* renamed from: c.d.f.t.c */
/* loaded from: classes2-dex2jar.jar:c/d/f/t/c.class */
public final class C6153c implements AbstractC6131r, Cloneable {

    /* renamed from: g */
    public static final C6153c f19659g = new C6153c();

    /* renamed from: d */
    public boolean f19663d;

    /* renamed from: a */
    public double f19660a = -1.0d;

    /* renamed from: b */
    public int f19661b = 136;

    /* renamed from: c */
    public boolean f19662c = true;

    /* renamed from: e */
    public List<AbstractC6108b> f19664e = Collections.emptyList();

    /* renamed from: f */
    public List<AbstractC6108b> f19665f = Collections.emptyList();

    /* renamed from: c.d.f.t.c$a */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/c$a.class */
    public class C6154a extends AbstractC6129q<T> {

        /* renamed from: a */
        public AbstractC6129q<T> f19666a;

        /* renamed from: b */
        public final /* synthetic */ boolean f19667b;

        /* renamed from: c */
        public final /* synthetic */ boolean f19668c;

        /* renamed from: d */
        public final /* synthetic */ C6111e f19669d;

        /* renamed from: e */
        public final /* synthetic */ C6239a f19670e;

        public C6154a(boolean z, boolean z2, C6111e eVar, C6239a aVar) {
            this.f19667b = z;
            this.f19668c = z2;
            this.f19669d = eVar;
            this.f19670e = aVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public final AbstractC6129q<T> m21924a() {
            AbstractC6129q qVar = this.f19666a;
            AbstractC6129q qVar2 = qVar;
            if (qVar == null) {
                AbstractC6129q a = this.f19669d.m21993a(C6153c.this, this.f19670e);
                this.f19666a = a;
                qVar2 = a;
            }
            return qVar2;
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
        @Override // p131c.p161d.p354f.AbstractC6129q
        public T read(C6240a aVar) throws IOException {
            if (!this.f19667b) {
                return m21924a().read(aVar);
            }
            aVar.mo21831A();
            return null;
        }

        @Override // p131c.p161d.p354f.AbstractC6129q
        public void write(C6242b bVar, T t) throws IOException {
            if (this.f19668c) {
                bVar.mo21770k();
            } else {
                m21924a().write(bVar, t);
            }
        }
    }

    /* renamed from: a */
    public C6153c m21935a(double d) {
        C6153c clone = clone();
        clone.f19660a = d;
        return clone;
    }

    /* renamed from: a */
    public final boolean m21934a(AbstractC6135d dVar) {
        return dVar == null || dVar.value() <= this.f19660a;
    }

    /* renamed from: a */
    public final boolean m21933a(AbstractC6135d dVar, AbstractC6136e eVar) {
        return m21934a(dVar) && m21932a(eVar);
    }

    /* renamed from: a */
    public final boolean m21932a(AbstractC6136e eVar) {
        return eVar == null || eVar.value() > this.f19660a;
    }

    /* renamed from: a */
    public final boolean m21931a(Class<?> cls) {
        if (this.f19660a == -1.0d || m21933a((AbstractC6135d) cls.getAnnotation(AbstractC6135d.class), (AbstractC6136e) cls.getAnnotation(AbstractC6136e.class))) {
            return (!this.f19662c && m21926c(cls)) || m21928b(cls);
        }
        return true;
    }

    /* renamed from: a */
    public boolean m21930a(Class<?> cls, boolean z) {
        return m21931a(cls) || m21927b(cls, z);
    }

    /* renamed from: a */
    public boolean m21929a(Field field, boolean z) {
        if ((this.f19661b & field.getModifiers()) != 0) {
            return true;
        }
        if (!(this.f19660a == -1.0d || m21933a((AbstractC6135d) field.getAnnotation(AbstractC6135d.class), (AbstractC6136e) field.getAnnotation(AbstractC6136e.class))) || field.isSynthetic()) {
            return true;
        }
        if (this.f19663d) {
            AbstractC6132a aVar = (AbstractC6132a) field.getAnnotation(AbstractC6132a.class);
            if (aVar == null) {
                return true;
            }
            if (z) {
                if (!aVar.serialize()) {
                    return true;
                }
            } else if (!aVar.deserialize()) {
                return true;
            }
        }
        if ((!this.f19662c && m21926c(field.getType())) || m21928b(field.getType())) {
            return true;
        }
        List<AbstractC6108b> list = z ? this.f19664e : this.f19665f;
        if (list.isEmpty()) {
            return false;
        }
        C6109c cVar = new C6109c(field);
        for (AbstractC6108b bVar : list) {
            if (bVar.m22000a(cVar)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public final boolean m21928b(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    /* renamed from: b */
    public final boolean m21927b(Class<?> cls, boolean z) {
        for (AbstractC6108b bVar : z ? this.f19664e : this.f19665f) {
            if (bVar.m21999a(cls)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public final boolean m21926c(Class<?> cls) {
        return cls.isMemberClass() && !m21925d(cls);
    }

    public C6153c clone() {
        try {
            return (C6153c) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    @Override // p131c.p161d.p354f.AbstractC6131r
    public <T> AbstractC6129q<T> create(C6111e eVar, C6239a<T> aVar) {
        Class<? super T> a = aVar.m21836a();
        boolean a2 = m21931a(a);
        boolean z = a2 || m21927b(a, true);
        boolean z2 = a2 || m21927b(a, false);
        if (z || z2) {
            return new C6154a(z2, z, eVar, aVar);
        }
        return null;
    }

    /* renamed from: d */
    public final boolean m21925d(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }
}
