package com.google.firebase.components;

import com.google.firebase.p312j.AbstractC9244c;
import com.google.firebase.p313k.AbstractC9247b;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.firebase.components.z */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/z.class */
public final class C8890z extends AbstractC8855a {

    /* renamed from: a */
    private final Set<Class<?>> f38855a;

    /* renamed from: b */
    private final Set<Class<?>> f38856b;

    /* renamed from: c */
    private final Set<Class<?>> f38857c;

    /* renamed from: d */
    private final Set<Class<?>> f38858d;

    /* renamed from: e */
    private final Set<Class<?>> f38859e;

    /* renamed from: f */
    private final Set<Class<?>> f38860f;

    /* renamed from: g */
    private final AbstractC8861e f38861g;

    /* renamed from: com.google.firebase.components.z$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/components/z$a.class */
    private static class C8891a implements AbstractC9244c {

        /* renamed from: a */
        private final Set<Class<?>> f38862a;

        /* renamed from: b */
        private final AbstractC9244c f38863b;

        public C8891a(Set<Class<?>> set, AbstractC9244c abstractC9244c) {
            this.f38862a = set;
            this.f38863b = abstractC9244c;
        }
    }

    public C8890z(C8858d<?> c8858d, AbstractC8861e abstractC8861e) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (C8881q c8881q : c8858d.m2508c()) {
            if (c8881q.m2443d()) {
                if (c8881q.m2441f()) {
                    hashSet4.add(c8881q.m2445b());
                } else {
                    hashSet.add(c8881q.m2445b());
                }
            } else if (c8881q.m2444c()) {
                hashSet3.add(c8881q.m2445b());
            } else if (c8881q.m2441f()) {
                hashSet5.add(c8881q.m2445b());
            } else {
                hashSet2.add(c8881q.m2445b());
            }
        }
        if (!c8858d.m2505f().isEmpty()) {
            hashSet.add(AbstractC9244c.class);
        }
        this.f38855a = Collections.unmodifiableSet(hashSet);
        this.f38856b = Collections.unmodifiableSet(hashSet2);
        this.f38857c = Collections.unmodifiableSet(hashSet3);
        this.f38858d = Collections.unmodifiableSet(hashSet4);
        this.f38859e = Collections.unmodifiableSet(hashSet5);
        this.f38860f = c8858d.m2505f();
        this.f38861g = abstractC8861e;
    }

    @Override // com.google.firebase.components.AbstractC8855a, com.google.firebase.components.AbstractC8861e
    /* renamed from: a */
    public <T> T mo2417a(Class<T> cls) {
        if (this.f38855a.contains(cls)) {
            T t = (T) this.f38861g.mo2417a(cls);
            return !cls.equals(AbstractC9244c.class) ? t : (T) new C8891a(this.f38860f, (AbstractC9244c) t);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency %s.", cls));
    }

    @Override // com.google.firebase.components.AbstractC8861e
    /* renamed from: b */
    public <T> AbstractC9247b<T> mo2416b(Class<T> cls) {
        if (this.f38856b.contains(cls)) {
            return this.f38861g.mo2416b(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<%s>.", cls));
    }

    @Override // com.google.firebase.components.AbstractC8861e
    /* renamed from: c */
    public <T> AbstractC9247b<Set<T>> mo2415c(Class<T> cls) {
        if (this.f38859e.contains(cls)) {
            return this.f38861g.mo2415c(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", cls));
    }

    @Override // com.google.firebase.components.AbstractC8855a, com.google.firebase.components.AbstractC8861e
    /* renamed from: d */
    public <T> Set<T> mo2414d(Class<T> cls) {
        if (this.f38858d.contains(cls)) {
            return this.f38861g.mo2414d(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Set<%s>.", cls));
    }
}
