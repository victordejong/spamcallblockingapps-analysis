package com.google.firebase.components;

import com.google.firebase.p389b.AbstractC15608c;
import com.google.firebase.p391d.AbstractC15728b;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.firebase.components.aa */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/aa.class */
public final class C15620aa extends AbstractC15619a {

    /* renamed from: a */
    private final Set<Class<?>> f56004a;

    /* renamed from: b */
    private final Set<Class<?>> f56005b;

    /* renamed from: c */
    private final Set<Class<?>> f56006c;

    /* renamed from: d */
    private final Set<Class<?>> f56007d;

    /* renamed from: e */
    private final Set<Class<?>> f56008e;

    /* renamed from: f */
    private final Set<Class<?>> f56009f;

    /* renamed from: g */
    private final AbstractC15627e f56010g;

    /* renamed from: com.google.firebase.components.aa$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/components/aa$a.class */
    static final class C15621a implements AbstractC15608c {

        /* renamed from: a */
        private final Set<Class<?>> f56011a;

        /* renamed from: b */
        private final AbstractC15608c f56012b;

        public C15621a(Set<Class<?>> set, AbstractC15608c abstractC15608c) {
            this.f56011a = set;
            this.f56012b = abstractC15608c;
        }
    }

    public C15620aa(C15622b<?> c15622b, AbstractC15627e abstractC15627e) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (C15648r c15648r : c15622b.f56014b) {
            if (!c15648r.m8511b()) {
                if (c15648r.f56057c == 2) {
                    hashSet3.add(c15648r.f56055a);
                } else if (c15648r.m8513a()) {
                    hashSet5.add(c15648r.f56055a);
                } else {
                    hashSet2.add(c15648r.f56055a);
                }
            } else if (c15648r.m8513a()) {
                hashSet4.add(c15648r.f56055a);
            } else {
                hashSet.add(c15648r.f56055a);
            }
        }
        if (!c15622b.f56017e.isEmpty()) {
            hashSet.add(AbstractC15608c.class);
        }
        this.f56004a = Collections.unmodifiableSet(hashSet);
        this.f56005b = Collections.unmodifiableSet(hashSet2);
        this.f56006c = Collections.unmodifiableSet(hashSet3);
        this.f56007d = Collections.unmodifiableSet(hashSet4);
        this.f56008e = Collections.unmodifiableSet(hashSet5);
        this.f56009f = c15622b.f56017e;
        this.f56010g = abstractC15627e;
    }

    @Override // com.google.firebase.components.AbstractC15619a, com.google.firebase.components.AbstractC15627e
    /* renamed from: a */
    public final <T> T mo8532a(Class<T> cls) {
        if (this.f56004a.contains(cls)) {
            T t = (T) this.f56010g.mo8532a(cls);
            return !cls.equals(AbstractC15608c.class) ? t : (T) new C15621a(this.f56009f, (AbstractC15608c) t);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency %s.", cls));
    }

    @Override // com.google.firebase.components.AbstractC15619a, com.google.firebase.components.AbstractC15627e
    /* renamed from: b */
    public final <T> Set<T> mo8525b(Class<T> cls) {
        if (this.f56007d.contains(cls)) {
            return this.f56010g.mo8525b(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Set<%s>.", cls));
    }

    @Override // com.google.firebase.components.AbstractC15627e
    /* renamed from: c */
    public final <T> AbstractC15728b<T> mo8522c(Class<T> cls) {
        if (this.f56005b.contains(cls)) {
            return this.f56010g.mo8522c(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<%s>.", cls));
    }

    @Override // com.google.firebase.components.AbstractC15627e
    /* renamed from: d */
    public final <T> AbstractC15728b<Set<T>> mo8521d(Class<T> cls) {
        if (this.f56008e.contains(cls)) {
            return this.f56010g.mo8521d(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", cls));
    }
}
