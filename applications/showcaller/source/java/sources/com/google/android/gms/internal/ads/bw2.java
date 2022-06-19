package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bw2.class */
public class bw2 extends zv2 implements List {

    /* renamed from: i */
    final /* synthetic */ zzfnd f20979i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bw2(zzfnd zzfndVar, Object obj, List list, zv2 zv2Var) {
        super(zzfndVar, obj, list, zv2Var);
        this.f20979i = zzfndVar;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        int i2;
        m8160c();
        boolean isEmpty = this.f33431e.isEmpty();
        ((List) this.f33431e).add(i, obj);
        zzfnd zzfndVar = this.f20979i;
        i2 = zzfndVar.f34052h;
        zzfndVar.f34052h = i2 + 1;
        if (isEmpty) {
            m8159d();
        }
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        int i2;
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean addAll = ((List) this.f33431e).addAll(i, collection);
        boolean z = addAll;
        if (addAll) {
            int size2 = this.f33431e.size();
            zzfnd zzfndVar = this.f20979i;
            i2 = zzfndVar.f34052h;
            zzfndVar.f34052h = i2 + (size2 - size);
            z = addAll;
            if (size == 0) {
                m8159d();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.List
    public final Object get(int i) {
        m8160c();
        return ((List) this.f33431e).get(i);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        m8160c();
        return ((List) this.f33431e).indexOf(obj);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        m8160c();
        return ((List) this.f33431e).lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        m8160c();
        return new aw2(this);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        m8160c();
        return new aw2(this, i);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        int i2;
        m8160c();
        Object remove = ((List) this.f33431e).remove(i);
        zzfnd zzfndVar = this.f20979i;
        i2 = zzfndVar.f34052h;
        zzfndVar.f34052h = i2 - 1;
        m8161b();
        return remove;
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        m8160c();
        return ((List) this.f33431e).set(i, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [com.google.android.gms.internal.ads.zv2] */
    @Override // java.util.List
    public final List subList(int i, int i2) {
        m8160c();
        zzfnd zzfndVar = this.f20979i;
        Object obj = this.f33430d;
        List subList = ((List) this.f33431e).subList(i, i2);
        bw2 bw2Var = this.f33432f;
        if (bw2Var == null) {
            bw2Var = this;
        }
        return zzfndVar.zzj(obj, subList, bw2Var);
    }
}
