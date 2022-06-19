package com.google.protobuf;

import com.google.protobuf.C1895k;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.RandomAccess;
import p287x6.AbstractC4890c;
import p287x6.AbstractC4911k;
import p287x6.C4880a0;
/* renamed from: com.google.protobuf.n */
/* loaded from: classes-dex2jar.jar:com/google/protobuf/n.class */
public class C1905n extends AbstractC1864c<String> implements AbstractC4911k, RandomAccess {

    /* renamed from: b */
    public final List<Object> f7098b;

    static {
        new C1905n(10).f7039a = false;
    }

    public C1905n(int i) {
        this.f7098b = new ArrayList(i);
    }

    public C1905n(ArrayList<Object> arrayList) {
        this.f7098b = arrayList;
    }

    /* renamed from: b */
    public static String m4260b(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (!(obj instanceof AbstractC4890c)) {
            return new String((byte[]) obj, C1895k.f7092a);
        }
        AbstractC4890c abstractC4890c = (AbstractC4890c) obj;
        Objects.requireNonNull(abstractC4890c);
        return abstractC4890c.size() == 0 ? "" : abstractC4890c.mo273g(C1895k.f7092a);
    }

    @Override // p287x6.AbstractC4911k
    /* renamed from: A */
    public AbstractC4911k mo269A() {
        return this.f7039a ? new C4880a0(this) : this;
    }

    @Override // p287x6.AbstractC4911k
    /* renamed from: J */
    public void mo268J(AbstractC4890c abstractC4890c) {
        m4347a();
        this.f7098b.add(abstractC4890c);
        ((AbstractList) this).modCount++;
    }

    @Override // p287x6.AbstractC4911k
    /* renamed from: K */
    public Object mo267K(int i) {
        return this.f7098b.get(i);
    }

    @Override // p287x6.AbstractC4911k
    /* renamed from: L */
    public List<?> mo266L() {
        return Collections.unmodifiableList(this.f7098b);
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i, Object obj) {
        m4347a();
        this.f7098b.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.AbstractC1864c, java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection<? extends String> collection) {
        m4347a();
        List<?> list = collection;
        if (collection instanceof AbstractC4911k) {
            list = ((AbstractC4911k) collection).mo266L();
        }
        boolean addAll = this.f7098b.addAll(i, list);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.protobuf.AbstractC1864c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.protobuf.AbstractC1864c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        m4347a();
        this.f7098b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        String str;
        Object obj = this.f7098b.get(i);
        if (obj instanceof String) {
            str = (String) obj;
        } else if (obj instanceof AbstractC4890c) {
            AbstractC4890c abstractC4890c = (AbstractC4890c) obj;
            Objects.requireNonNull(abstractC4890c);
            String mo273g = abstractC4890c.size() == 0 ? "" : abstractC4890c.mo273g(C1895k.f7092a);
            str = mo273g;
            if (abstractC4890c.mo276d()) {
                this.f7098b.set(i, mo273g);
                str = mo273g;
            }
        } else {
            byte[] bArr = (byte[]) obj;
            String str2 = new String(bArr, C1895k.f7092a);
            boolean z = false;
            if (C1879f0.f7072a.mo4317b(0, bArr, 0, bArr.length) == 0) {
                z = true;
            }
            str = str2;
            if (z) {
                this.f7098b.set(i, str2);
                str = str2;
            }
        }
        return str;
    }

    @Override // com.google.protobuf.C1895k.AbstractC1899d
    /* renamed from: r */
    public C1895k.AbstractC1899d mo4205r(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f7098b);
            return new C1905n(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.AbstractC1864c, java.util.AbstractList, java.util.List
    public Object remove(int i) {
        m4347a();
        Object remove = this.f7098b.remove(i);
        ((AbstractList) this).modCount++;
        return m4260b(remove);
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i, Object obj) {
        m4347a();
        return m4260b(this.f7098b.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f7098b.size();
    }
}
