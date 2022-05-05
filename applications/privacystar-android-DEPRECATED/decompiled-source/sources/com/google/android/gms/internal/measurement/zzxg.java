package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzxg.class */
final class zzxg<E> extends zztz<E> {
    private static final zzxg<Object> zzcbv;
    private final List<E> zzcai;

    static {
        zzxg<Object> zzxgVar = new zzxg<>();
        zzcbv = zzxgVar;
        zzxgVar.zzsm();
    }

    zzxg() {
        this(new ArrayList(10));
    }

    private zzxg(List<E> list) {
        this.zzcai = list;
    }

    public static <E> zzxg<E> zzxo() {
        return (zzxg<E>) zzcbv;
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        zztx();
        this.zzcai.add(i, e);
        this.modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        return this.zzcai.get(i);
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        zztx();
        E remove = this.zzcai.remove(i);
        this.modCount++;
        return remove;
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        zztx();
        E e2 = this.zzcai.set(i, e);
        this.modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzcai.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzvs
    public final /* synthetic */ zzvs zzak(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.zzcai);
        return new zzxg(arrayList);
    }
}
