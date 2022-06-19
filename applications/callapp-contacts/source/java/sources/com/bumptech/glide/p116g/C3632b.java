package com.bumptech.glide.p116g;

import androidx.p023b.C0428a;
import androidx.p023b.C0441g;
/* renamed from: com.bumptech.glide.g.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/b.class */
public final class C3632b<K, V> extends C0428a<K, V> {

    /* renamed from: i */
    private int f13740i;

    @Override // androidx.p023b.C0441g
    /* renamed from: a */
    public final V mo37602a(int i, V v) {
        this.f13740i = 0;
        return (V) super.mo37602a(i, (int) v);
    }

    @Override // androidx.p023b.C0441g
    /* renamed from: a */
    public final void mo37601a(C0441g<? extends K, ? extends V> c0441g) {
        this.f13740i = 0;
        super.mo37601a((C0441g) c0441g);
    }

    @Override // androidx.p023b.C0441g, java.util.Map
    public final void clear() {
        this.f13740i = 0;
        super.clear();
    }

    @Override // androidx.p023b.C0441g
    /* renamed from: d */
    public final V mo37600d(int i) {
        this.f13740i = 0;
        return (V) super.mo37600d(i);
    }

    @Override // androidx.p023b.C0441g, java.util.Map
    public final int hashCode() {
        if (this.f13740i == 0) {
            this.f13740i = super.hashCode();
        }
        return this.f13740i;
    }

    @Override // androidx.p023b.C0441g, java.util.Map
    public final V put(K k, V v) {
        this.f13740i = 0;
        return (V) super.put(k, v);
    }
}
