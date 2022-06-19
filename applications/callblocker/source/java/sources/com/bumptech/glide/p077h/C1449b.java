package com.bumptech.glide.p077h;

import androidx.p013b.C0373a;
import androidx.p013b.C0386g;
/* renamed from: com.bumptech.glide.h.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/h/b.class */
public final class C1449b<K, V> extends C0373a<K, V> {

    /* renamed from: i */
    private int f4754i;

    @Override // androidx.p013b.C0386g
    /* renamed from: a */
    public V mo17011a(int i, V v) {
        this.f4754i = 0;
        return (V) super.mo17011a(i, (int) v);
    }

    @Override // androidx.p013b.C0386g
    /* renamed from: a */
    public void mo17010a(C0386g<? extends K, ? extends V> c0386g) {
        this.f4754i = 0;
        super.mo17010a((C0386g) c0386g);
    }

    @Override // androidx.p013b.C0386g, java.util.Map
    public void clear() {
        this.f4754i = 0;
        super.clear();
    }

    @Override // androidx.p013b.C0386g
    /* renamed from: d */
    public V mo17009d(int i) {
        this.f4754i = 0;
        return (V) super.mo17009d(i);
    }

    @Override // androidx.p013b.C0386g, java.util.Map
    public int hashCode() {
        if (this.f4754i == 0) {
            this.f4754i = super.hashCode();
        }
        return this.f4754i;
    }

    @Override // androidx.p013b.C0386g, java.util.Map
    public V put(K k, V v) {
        this.f4754i = 0;
        return (V) super.put(k, v);
    }
}
