package com.google.firebase.components;

import com.google.firebase.d.b;
import java.util.Collection;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/v.class */
public final class v<T> implements b<Set<T>> {

    /* renamed from: b  reason: collision with root package name */
    private volatile Set<T> f32287b = null;

    /* renamed from: a  reason: collision with root package name */
    private volatile Set<b<T>> f32286a = Collections.newSetFromMap(new ConcurrentHashMap());

    v(Collection<b<T>> collection) {
        this.f32286a.addAll(collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static v<?> a(Collection<b<?>> collection) {
        return new v<>((Set) collection);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public Set<T> a() {
        if (this.f32287b == null) {
            synchronized (this) {
                if (this.f32287b == null) {
                    this.f32287b = Collections.newSetFromMap(new ConcurrentHashMap());
                    c();
                }
            }
        }
        return Collections.unmodifiableSet(this.f32287b);
    }

    private void c() {
        synchronized (this) {
            for (b<T> bVar : this.f32286a) {
                this.f32287b.add(bVar.a());
            }
            this.f32286a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(b<T> bVar) {
        synchronized (this) {
            if (this.f32287b == null) {
                this.f32286a.add(bVar);
            } else {
                this.f32287b.add(bVar.a());
            }
        }
    }
}
