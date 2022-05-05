package p081h.p203i.p325c.p336m;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p081h.p203i.p325c.p362r.AbstractC9856c;
import p081h.p203i.p325c.p366u.AbstractC9929a;
/* renamed from: h.i.c.m.v */
/* loaded from: classes2-dex2jar.jar:h/i/c/m/v.class */
public final class C9506v extends AbstractC9477a {

    /* renamed from: a */
    public final Set<Class<?>> f21655a;

    /* renamed from: b */
    public final Set<Class<?>> f21656b;

    /* renamed from: c */
    public final Set<Class<?>> f21657c;

    /* renamed from: d */
    public final Set<Class<?>> f21658d;

    /* renamed from: e */
    public final Set<Class<?>> f21659e;

    /* renamed from: f */
    public final AbstractC9483e f21660f;

    /* renamed from: h.i.c.m.v$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/m/v$a.class */
    public static class C9507a implements AbstractC9856c {
        public C9507a(Set<Class<?>> set, AbstractC9856c cVar) {
        }
    }

    public C9506v(C9480d<?> dVar, AbstractC9483e eVar) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        for (C9498n nVar : dVar.m15100a()) {
            if (nVar.m15049b()) {
                if (nVar.m15045d()) {
                    hashSet3.add(nVar.m15051a());
                } else {
                    hashSet.add(nVar.m15051a());
                }
            } else if (nVar.m15045d()) {
                hashSet4.add(nVar.m15051a());
            } else {
                hashSet2.add(nVar.m15051a());
            }
        }
        if (!dVar.m15090d().isEmpty()) {
            hashSet.add(AbstractC9856c.class);
        }
        this.f21655a = Collections.unmodifiableSet(hashSet);
        this.f21656b = Collections.unmodifiableSet(hashSet2);
        this.f21657c = Collections.unmodifiableSet(hashSet3);
        this.f21658d = Collections.unmodifiableSet(hashSet4);
        this.f21659e = dVar.m15090d();
        this.f21660f = eVar;
    }

    @Override // p081h.p203i.p325c.p336m.AbstractC9477a, p081h.p203i.p325c.p336m.AbstractC9483e
    /* renamed from: a */
    public <T> T mo15033a(Class<T> cls) {
        if (this.f21655a.contains(cls)) {
            T t = (T) this.f21660f.mo15033a(cls);
            return !cls.equals(AbstractC9856c.class) ? t : (T) new C9507a(this.f21659e, (AbstractC9856c) t);
        }
        throw new IllegalArgumentException(String.format("Attempting to request an undeclared dependency %s.", cls));
    }

    @Override // p081h.p203i.p325c.p336m.AbstractC9483e
    /* renamed from: b */
    public <T> AbstractC9929a<Set<T>> mo15032b(Class<T> cls) {
        if (this.f21658d.contains(cls)) {
            return this.f21660f.mo15032b(cls);
        }
        throw new IllegalArgumentException(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", cls));
    }

    @Override // p081h.p203i.p325c.p336m.AbstractC9477a, p081h.p203i.p325c.p336m.AbstractC9483e
    /* renamed from: c */
    public <T> Set<T> mo15031c(Class<T> cls) {
        if (this.f21657c.contains(cls)) {
            return this.f21660f.mo15031c(cls);
        }
        throw new IllegalArgumentException(String.format("Attempting to request an undeclared dependency Set<%s>.", cls));
    }

    @Override // p081h.p203i.p325c.p336m.AbstractC9483e
    /* renamed from: d */
    public <T> AbstractC9929a<T> mo15030d(Class<T> cls) {
        if (this.f21656b.contains(cls)) {
            return this.f21660f.mo15030d(cls);
        }
        throw new IllegalArgumentException(String.format("Attempting to request an undeclared dependency Provider<%s>.", cls));
    }
}
