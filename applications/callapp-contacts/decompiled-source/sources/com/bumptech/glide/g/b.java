package com.bumptech.glide.g;

import androidx.b.a;
import androidx.b.g;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/b.class */
public final class b<K, V> extends a<K, V> {
    private int i;

    @Override // androidx.b.g
    public final V a(int i, V v) {
        this.i = 0;
        return (V) super.a(i, (int) v);
    }

    @Override // androidx.b.g
    public final void a(g<? extends K, ? extends V> gVar) {
        this.i = 0;
        super.a((g) gVar);
    }

    @Override // androidx.b.g, java.util.Map
    public final void clear() {
        this.i = 0;
        super.clear();
    }

    @Override // androidx.b.g
    public final V d(int i) {
        this.i = 0;
        return (V) super.d(i);
    }

    @Override // androidx.b.g, java.util.Map
    public final int hashCode() {
        if (this.i == 0) {
            this.i = super.hashCode();
        }
        return this.i;
    }

    @Override // androidx.b.g, java.util.Map
    public final V put(K k, V v) {
        this.i = 0;
        return (V) super.put(k, v);
    }
}
