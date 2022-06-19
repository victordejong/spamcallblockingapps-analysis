package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.ev */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ev.class */
public final class C3924ev extends AbstractC3853cn<String> implements AbstractC3923eu, RandomAccess {

    /* renamed from: a */
    private static final C3924ev f18135a;

    /* renamed from: b */
    private static final AbstractC3923eu f18136b;

    /* renamed from: c */
    private final List<Object> f18137c;

    static {
        C3924ev c3924ev = new C3924ev();
        f18135a = c3924ev;
        c3924ev.mo5597b();
        f18136b = f18135a;
    }

    public C3924ev() {
        this(10);
    }

    public C3924ev(int i) {
        this(new ArrayList(i));
    }

    private C3924ev(ArrayList<Object> arrayList) {
        this.f18137c = arrayList;
    }

    /* renamed from: a */
    private static String m5587a(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof AbstractC3859ct ? ((AbstractC3859ct) obj).m5809b() : C3908ef.m5607b((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3914el
    /* renamed from: a */
    public final /* synthetic */ AbstractC3914el mo5476a(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.f18137c);
        return new C3924ev(arrayList);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3923eu
    /* renamed from: a */
    public final void mo5304a(AbstractC3859ct abstractC3859ct) {
        m5837q_();
        this.f18137c.add(abstractC3859ct);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, com.google.android.gms.internal.measurement.AbstractC3914el
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo5588a() {
        return super.mo5588a();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m5837q_();
        this.f18137c.add(i, (String) obj);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        return super.add(obj);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        m5837q_();
        List<?> list = collection;
        if (collection instanceof AbstractC3923eu) {
            list = ((AbstractC3923eu) collection).mo5300p_();
        }
        boolean addAll = this.f18137c.addAll(i, list);
        this.modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3923eu
    /* renamed from: b */
    public final Object mo5302b(int i) {
        return this.f18137c.get(i);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3923eu
    /* renamed from: c */
    public final AbstractC3923eu mo5301c() {
        AbstractC3923eu abstractC3923eu = this;
        if (mo5588a()) {
            abstractC3923eu = new C3982gz(this);
        }
        return abstractC3923eu;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m5837q_();
        this.f18137c.clear();
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        String m5607b;
        Object obj = this.f18137c.get(i);
        if (obj instanceof String) {
            m5607b = (String) obj;
        } else if (obj instanceof AbstractC3859ct) {
            AbstractC3859ct abstractC3859ct = (AbstractC3859ct) obj;
            m5607b = abstractC3859ct.m5809b();
            if (abstractC3859ct.mo5746c()) {
                this.f18137c.set(i, m5607b);
            }
        } else {
            byte[] bArr = (byte[]) obj;
            m5607b = C3908ef.m5607b(bArr);
            if (C3908ef.m5608a(bArr)) {
                this.f18137c.set(i, m5607b);
            }
        }
        return m5607b;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3923eu
    /* renamed from: p_ */
    public final List<?> mo5300p_() {
        return Collections.unmodifiableList(this.f18137c);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m5837q_();
        Object remove = this.f18137c.remove(i);
        this.modCount++;
        return m5587a(remove);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3853cn, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        m5837q_();
        return m5587a(this.f18137c.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18137c.size();
    }
}
