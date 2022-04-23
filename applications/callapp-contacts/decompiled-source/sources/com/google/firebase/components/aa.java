package com.google.firebase.components;

import com.google.firebase.b.c;
import com.google.firebase.d.b;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/aa.class */
public final class aa extends com.google.firebase.components.a {

    /* renamed from: a  reason: collision with root package name */
    private final Set<Class<?>> f32234a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<Class<?>> f32235b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<Class<?>> f32236c;

    /* renamed from: d  reason: collision with root package name */
    private final Set<Class<?>> f32237d;
    private final Set<Class<?>> e;
    private final Set<Class<?>> f;
    private final e g;

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/components/aa$a.class */
    static final class a implements c {

        /* renamed from: a  reason: collision with root package name */
        private final Set<Class<?>> f32238a;

        /* renamed from: b  reason: collision with root package name */
        private final c f32239b;

        public a(Set<Class<?>> set, c cVar) {
            this.f32238a = set;
            this.f32239b = cVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(b<?> bVar, e eVar) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (r rVar : bVar.f32241b) {
            if (!rVar.b()) {
                if (rVar.f32277c == 2) {
                    hashSet3.add(rVar.f32275a);
                } else if (rVar.a()) {
                    hashSet5.add(rVar.f32275a);
                } else {
                    hashSet2.add(rVar.f32275a);
                }
            } else if (rVar.a()) {
                hashSet4.add(rVar.f32275a);
            } else {
                hashSet.add(rVar.f32275a);
            }
        }
        if (!bVar.e.isEmpty()) {
            hashSet.add(c.class);
        }
        this.f32234a = Collections.unmodifiableSet(hashSet);
        this.f32235b = Collections.unmodifiableSet(hashSet2);
        this.f32236c = Collections.unmodifiableSet(hashSet3);
        this.f32237d = Collections.unmodifiableSet(hashSet4);
        this.e = Collections.unmodifiableSet(hashSet5);
        this.f = bVar.e;
        this.g = eVar;
    }

    @Override // com.google.firebase.components.a, com.google.firebase.components.e
    public final <T> T a(Class<T> cls) {
        if (this.f32234a.contains(cls)) {
            T t = (T) this.g.a(cls);
            return !cls.equals(c.class) ? t : (T) new a(this.f, (c) t);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency %s.", cls));
    }

    @Override // com.google.firebase.components.a, com.google.firebase.components.e
    public final <T> Set<T> b(Class<T> cls) {
        if (this.f32237d.contains(cls)) {
            return this.g.b(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Set<%s>.", cls));
    }

    @Override // com.google.firebase.components.e
    public final <T> b<T> c(Class<T> cls) {
        if (this.f32235b.contains(cls)) {
            return this.g.c(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<%s>.", cls));
    }

    @Override // com.google.firebase.components.e
    public final <T> b<Set<T>> d(Class<T> cls) {
        if (this.e.contains(cls)) {
            return this.g.d(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", cls));
    }
}
