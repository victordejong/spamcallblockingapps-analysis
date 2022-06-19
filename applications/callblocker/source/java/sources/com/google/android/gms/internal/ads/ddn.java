package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ddn.class */
public final class ddn extends dbc<String> implements ddm, RandomAccess {

    /* renamed from: a */
    private static final ddn f14118a;

    /* renamed from: b */
    private static final ddm f14119b;

    /* renamed from: c */
    private final List<Object> f14120c;

    static {
        ddn ddnVar = new ddn();
        f14118a = ddnVar;
        ddnVar.mo10038b();
        f14119b = f14118a;
    }

    public ddn() {
        this(10);
    }

    public ddn(int i) {
        this(new ArrayList(i));
    }

    private ddn(ArrayList<Object> arrayList) {
        this.f14120c = arrayList;
    }

    /* renamed from: a */
    private static String m10029a(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof dbi ? ((dbi) obj).m10209e() : dcz.m10042b((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.ads.dde
    /* renamed from: a */
    public final /* synthetic */ dde mo9923a(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.f14120c);
        return new ddn(arrayList);
    }

    @Override // com.google.android.gms.internal.ads.ddm
    /* renamed from: a */
    public final void mo9740a(dbi dbiVar) {
        m10248c();
        this.f14120c.add(dbiVar);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dbc, com.google.android.gms.internal.ads.dde
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo10030a() {
        return super.mo10030a();
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m10248c();
        this.f14120c.add(i, (String) obj);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        return super.add(obj);
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        m10248c();
        List<?> list = collection;
        if (collection instanceof ddm) {
            list = ((ddm) collection).mo9737l_();
        }
        boolean addAll = this.f14120c.addAll(i, list);
        this.modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.ads.ddm
    /* renamed from: b */
    public final Object mo9738b(int i) {
        return this.f14120c.get(i);
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m10248c();
        this.f14120c.clear();
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        String m10042b;
        Object obj = this.f14120c.get(i);
        if (obj instanceof String) {
            m10042b = (String) obj;
        } else if (obj instanceof dbi) {
            dbi dbiVar = (dbi) obj;
            m10042b = dbiVar.m10209e();
            if (dbiVar.mo9904f()) {
                this.f14120c.set(i, m10042b);
            }
        } else {
            byte[] bArr = (byte[]) obj;
            m10042b = dcz.m10042b(bArr);
            if (dcz.m10043a(bArr)) {
                this.f14120c.set(i, m10042b);
            }
        }
        return m10042b;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.ddm
    /* renamed from: l_ */
    public final List<?> mo9737l_() {
        return Collections.unmodifiableList(this.f14120c);
    }

    @Override // com.google.android.gms.internal.ads.ddm
    /* renamed from: m_ */
    public final ddm mo9736m_() {
        ddm ddmVar = this;
        if (mo10030a()) {
            ddmVar = new dfw(this);
        }
        return ddmVar;
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m10248c();
        Object remove = this.f14120c.remove(i);
        this.modCount++;
        return m10029a(remove);
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // com.google.android.gms.internal.ads.dbc, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        m10248c();
        return m10029a(this.f14120c.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f14120c.size();
    }
}
