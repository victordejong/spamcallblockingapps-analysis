package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.cn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cn.class */
public abstract class AbstractC3853cn<E> extends AbstractList<E> implements AbstractC3914el<E> {

    /* renamed from: a */
    private boolean f17932a = true;

    @Override // com.google.android.gms.internal.measurement.AbstractC3914el
    /* renamed from: a */
    public boolean mo5588a() {
        return this.f17932a;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, E e) {
        m5837q_();
        super.add(i, e);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        m5837q_();
        return super.add(e);
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        m5837q_();
        return super.addAll(i, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> collection) {
        m5837q_();
        return super.addAll(collection);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3914el
    /* renamed from: b */
    public final void mo5597b() {
        this.f17932a = false;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        m5837q_();
        super.clear();
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            z = true;
        } else if (!(obj instanceof List)) {
            z = false;
        } else if (!(obj instanceof RandomAccess)) {
            z = super.equals(obj);
        } else {
            List list = (List) obj;
            int size = size();
            if (size != list.size()) {
                z = false;
            } else {
                int i = 0;
                while (true) {
                    z = true;
                    if (i >= size) {
                        break;
                    } else if (!get(i).equals(list.get(i))) {
                        z = false;
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        return z;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = (i * 31) + get(i2).hashCode();
        }
        return i;
    }

    /* renamed from: q_ */
    public final void m5837q_() {
        if (!this.f17932a) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public E remove(int i) {
        m5837q_();
        return (E) super.remove(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        m5837q_();
        return super.remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<?> collection) {
        m5837q_();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection<?> collection) {
        m5837q_();
        return super.retainAll(collection);
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i, E e) {
        m5837q_();
        return (E) super.set(i, e);
    }
}
