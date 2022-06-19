package com.bumptech.glide.p223p;

import p020b.p036e.C1489a;
import p020b.p036e.C1502g;
/* renamed from: com.bumptech.glide.p.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/b.class */
public final class C4371b<K, V> extends C1489a<K, V> {

    /* renamed from: l */
    private int f13372l;

    @Override // p020b.p036e.C1502g, java.util.Map
    public void clear() {
        this.f13372l = 0;
        super.clear();
    }

    @Override // p020b.p036e.C1502g, java.util.Map
    public int hashCode() {
        if (this.f13372l == 0) {
            this.f13372l = super.hashCode();
        }
        return this.f13372l;
    }

    @Override // p020b.p036e.C1502g
    /* renamed from: j */
    public void mo22747j(C1502g<? extends K, ? extends V> c1502g) {
        this.f13372l = 0;
        super.mo22747j(c1502g);
    }

    @Override // p020b.p036e.C1502g
    /* renamed from: k */
    public V mo22746k(int i) {
        this.f13372l = 0;
        return (V) super.mo22746k(i);
    }

    @Override // p020b.p036e.C1502g
    /* renamed from: l */
    public V mo22745l(int i, V v) {
        this.f13372l = 0;
        return (V) super.mo22745l(i, v);
    }

    @Override // p020b.p036e.C1502g, java.util.Map
    public V put(K k, V v) {
        this.f13372l = 0;
        return (V) super.put(k, v);
    }
}
