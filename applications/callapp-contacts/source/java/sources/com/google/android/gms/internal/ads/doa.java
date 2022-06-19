package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/doa.class */
public final class doa extends dlq<String> implements dnz, RandomAccess {

    /* renamed from: a */
    private static final doa f47305a;

    /* renamed from: b */
    private static final dnz f47306b;

    /* renamed from: c */
    private final List<Object> f47307c;

    static {
        doa doaVar = new doa();
        f47305a = doaVar;
        doaVar.mo16303b();
        f47306b = doaVar;
    }

    public doa() {
        this(10);
    }

    public doa(int i) {
        this(new ArrayList(i));
    }

    private doa(ArrayList<Object> arrayList) {
        this.f47307c = arrayList;
    }

    /* renamed from: a */
    private static String m16297a(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof dlw ? ((dlw) obj).m16466e() : dnj.m16311b((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.ads.dnz
    /* renamed from: I_ */
    public final List<?> mo16001I_() {
        return Collections.unmodifiableList(this.f47307c);
    }

    @Override // com.google.android.gms.internal.ads.dnz
    /* renamed from: J_ */
    public final dnz mo16000J_() {
        return mo16298a() ? new dql(this) : this;
    }

    @Override // com.google.android.gms.internal.ads.dnr
    /* renamed from: a */
    public final /* synthetic */ dnr mo16200a(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f47307c);
            return new doa(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.dnz
    /* renamed from: a */
    public final void mo15999a(dlw dlwVar) {
        m16501c();
        this.f47307c.add(dlwVar);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dlq, com.google.android.gms.internal.ads.dnr
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo16298a() {
        return super.mo16298a();
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m16501c();
        this.f47307c.add(i, (String) obj);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        return super.add(obj);
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        m16501c();
        List<?> list = collection;
        if (collection instanceof dnz) {
            list = ((dnz) collection).mo16001I_();
        }
        boolean addAll = this.f47307c.addAll(i, list);
        this.modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.ads.dnz
    /* renamed from: b */
    public final Object mo15997b(int i) {
        return this.f47307c.get(i);
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m16501c();
        this.f47307c.clear();
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.f47307c.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof dlw) {
            dlw dlwVar = (dlw) obj;
            String m16466e = dlwVar.m16466e();
            if (dlwVar.mo16131f()) {
                this.f47307c.set(i, m16466e);
            }
            return m16466e;
        }
        byte[] bArr = (byte[]) obj;
        String m16311b = dnj.m16311b(bArr);
        if (dnj.m16312a(bArr)) {
            this.f47307c.set(i, m16311b);
        }
        return m16311b;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m16501c();
        Object remove = this.f47307c.remove(i);
        this.modCount++;
        return m16297a(remove);
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        m16501c();
        return m16297a(this.f47307c.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f47307c.size();
    }
}
