package com.google.android.gms.internal.firebase_remote_config;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzje.class */
final class zzje<E> extends zzfr<E> {
    private static final zzje<Object> zzwn;
    private final List<E> zzuz;

    static {
        zzje<Object> zzjeVar = new zzje<>(new ArrayList(0));
        zzwn = zzjeVar;
        zzjeVar.zzes();
    }

    zzje() {
        this(new ArrayList(10));
    }

    private zzje(List<E> list) {
        this.zzuz = list;
    }

    public static <E> zzje<E> zzil() {
        return (zzje<E>) zzwn;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        zzet();
        this.zzuz.add(i, e);
        this.modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        return this.zzuz.get(i);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        zzet();
        E remove = this.zzuz.remove(i);
        this.modCount++;
        return remove;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        zzet();
        E e2 = this.zzuz.set(i, e);
        this.modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzuz.size();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzhn
    public final /* synthetic */ zzhn zzu(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.zzuz);
            return new zzje(arrayList);
        }
        throw new IllegalArgumentException();
    }
}
