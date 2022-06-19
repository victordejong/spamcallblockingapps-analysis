package com.google.firebase.components;

import com.google.firebase.p161a.AbstractC4856c;
import com.google.firebase.p163c.AbstractC4877a;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.firebase.components.s */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/s.class */
public final class C4904s extends AbstractC4878a {

    /* renamed from: a */
    private final Set<Class<?>> f21008a;

    /* renamed from: b */
    private final Set<Class<?>> f21009b;

    /* renamed from: c */
    private final Set<Class<?>> f21010c;

    /* renamed from: d */
    private final Set<Class<?>> f21011d;

    /* renamed from: e */
    private final Set<Class<?>> f21012e;

    /* renamed from: f */
    private final AbstractC4884e f21013f;

    /* renamed from: com.google.firebase.components.s$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/components/s$a.class */
    private static class C4905a implements AbstractC4856c {

        /* renamed from: a */
        private final Set<Class<?>> f21014a;

        /* renamed from: b */
        private final AbstractC4856c f21015b;

        public C4905a(Set<Class<?>> set, AbstractC4856c abstractC4856c) {
            this.f21014a = set;
            this.f21015b = abstractC4856c;
        }
    }

    public C4904s(C4879b<?> c4879b, AbstractC4884e abstractC4884e) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        for (C4899n c4899n : c4879b.m2118b()) {
            if (c4899n.m2067d()) {
                if (c4899n.m2069c()) {
                    hashSet3.add(c4899n.m2073a());
                } else {
                    hashSet.add(c4899n.m2073a());
                }
            } else if (c4899n.m2069c()) {
                hashSet4.add(c4899n.m2073a());
            } else {
                hashSet2.add(c4899n.m2073a());
            }
        }
        if (!c4879b.m2114d().isEmpty()) {
            hashSet.add(AbstractC4856c.class);
        }
        this.f21008a = Collections.unmodifiableSet(hashSet);
        this.f21009b = Collections.unmodifiableSet(hashSet2);
        this.f21010c = Collections.unmodifiableSet(hashSet3);
        this.f21011d = Collections.unmodifiableSet(hashSet4);
        this.f21012e = c4879b.m2114d();
        this.f21013f = abstractC4884e;
    }

    @Override // com.google.firebase.components.AbstractC4878a, com.google.firebase.components.AbstractC4884e
    /* renamed from: a */
    public <T> T mo2054a(Class<T> cls) {
        if (!this.f21008a.contains(cls)) {
            throw new IllegalArgumentException(String.format("Attempting to request an undeclared dependency %s.", cls));
        }
        Object mo2054a = this.f21013f.mo2054a(cls);
        return (T) (!cls.equals(AbstractC4856c.class) ? mo2054a : new C4905a(this.f21012e, (AbstractC4856c) mo2054a));
    }

    @Override // com.google.firebase.components.AbstractC4878a, com.google.firebase.components.AbstractC4884e
    /* renamed from: b */
    public <T> Set<T> mo2053b(Class<T> cls) {
        if (!this.f21010c.contains(cls)) {
            throw new IllegalArgumentException(String.format("Attempting to request an undeclared dependency Set<%s>.", cls));
        }
        return this.f21013f.mo2053b(cls);
    }

    @Override // com.google.firebase.components.AbstractC4884e
    /* renamed from: c */
    public <T> AbstractC4877a<T> mo2052c(Class<T> cls) {
        if (!this.f21009b.contains(cls)) {
            throw new IllegalArgumentException(String.format("Attempting to request an undeclared dependency Provider<%s>.", cls));
        }
        return this.f21013f.mo2052c(cls);
    }

    @Override // com.google.firebase.components.AbstractC4884e
    /* renamed from: d */
    public <T> AbstractC4877a<Set<T>> mo2051d(Class<T> cls) {
        if (!this.f21011d.contains(cls)) {
            throw new IllegalArgumentException(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", cls));
        }
        return this.f21013f.mo2051d(cls);
    }
}
