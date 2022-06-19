package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.ListIterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/aw2.class */
final class aw2 extends yv2 implements ListIterator {

    /* renamed from: g */
    final /* synthetic */ bw2 f20153g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aw2(bw2 bw2Var) {
        super(bw2Var);
        this.f20153g = bw2Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aw2(bw2 bw2Var, int i) {
        super(bw2Var, ((List) bw2Var.f33431e).listIterator(i));
        this.f20153g = bw2Var;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        int i;
        boolean isEmpty = this.f20153g.isEmpty();
        m8682a();
        ((ListIterator) this.f32665d).add(obj);
        zzfnd zzfndVar = this.f20153g.f20979i;
        i = zzfndVar.f34052h;
        zzfndVar.f34052h = i + 1;
        if (isEmpty) {
            this.f20153g.m8159d();
        }
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        m8682a();
        return ((ListIterator) this.f32665d).hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        m8682a();
        return ((ListIterator) this.f32665d).nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        m8682a();
        return ((ListIterator) this.f32665d).previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        m8682a();
        return ((ListIterator) this.f32665d).previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        m8682a();
        ((ListIterator) this.f32665d).set(obj);
    }
}
