package com.google.android.gms.internal.measurement;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzet.class */
public abstract class zzet<T> implements Iterator<T> {

    /* renamed from: f */
    private int f8396f;

    /* renamed from: g */
    private int f8397g;

    /* renamed from: h */
    private int f8398h;

    /* renamed from: i */
    private final /* synthetic */ zzem f8399i;

    private zzet(zzem zzemVar) {
        int i;
        this.f8399i = zzemVar;
        i = this.f8399i.f8386j;
        this.f8396f = i;
        this.f8397g = this.f8399i.m12715r();
        this.f8398h = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzet(zzem zzemVar, zzep zzepVar) {
        this(zzemVar);
    }

    /* renamed from: b */
    private final void m12706b() {
        int i;
        i = this.f8399i.f8386j;
        if (i != this.f8396f) {
            throw new ConcurrentModificationException();
        }
    }

    /* renamed from: a */
    abstract T mo12707a(int i);

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f8397g >= 0;
    }

    @Override // java.util.Iterator
    public T next() {
        m12706b();
        if (hasNext()) {
            int i = this.f8397g;
            this.f8398h = i;
            T a = mo12707a(i);
            this.f8397g = this.f8399i.m12730a(this.f8397g);
            return a;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public void remove() {
        m12706b();
        zzeb.m12735h(this.f8398h >= 0, "no calls to next() since the last call to remove()");
        this.f8396f += 32;
        zzem zzemVar = this.f8399i;
        zzemVar.remove(zzemVar.f8384h[this.f8398h]);
        this.f8397g = zzem.m12723j(this.f8397g, this.f8398h);
        this.f8398h = -1;
    }
}
