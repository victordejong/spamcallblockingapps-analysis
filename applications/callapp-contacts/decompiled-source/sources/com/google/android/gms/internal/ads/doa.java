package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/doa.class */
public final class doa extends dlq<String> implements dnz, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    private static final doa f27019a;

    /* renamed from: b  reason: collision with root package name */
    private static final dnz f27020b;

    /* renamed from: c  reason: collision with root package name */
    private final List<Object> f27021c;

    static {
        doa doaVar = new doa();
        f27019a = doaVar;
        doaVar.b();
        f27020b = doaVar;
    }

    public doa() {
        this(10);
    }

    public doa(int i) {
        this(new ArrayList(i));
    }

    private doa(ArrayList<Object> arrayList) {
        this.f27021c = arrayList;
    }

    private static String a(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof dlw ? ((dlw) obj).e() : dnj.b((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.ads.dnz
    public final List<?> I_() {
        return Collections.unmodifiableList(this.f27021c);
    }

    @Override // com.google.android.gms.internal.ads.dnz
    public final dnz J_() {
        return a() ? new dql(this) : this;
    }

    @Override // com.google.android.gms.internal.ads.dnr
    public final /* synthetic */ dnr a(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f27021c);
            return new doa(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.dnz
    public final void a(dlw dlwVar) {
        c();
        this.f27021c.add(dlwVar);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dlq, com.google.android.gms.internal.ads.dnr
    public final /* bridge */ /* synthetic */ boolean a() {
        return super.a();
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        c();
        this.f27021c.add(i, (String) obj);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        return super.add(obj);
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        c();
        List<?> list = collection;
        if (collection instanceof dnz) {
            list = ((dnz) collection).I_();
        }
        boolean addAll = this.f27021c.addAll(i, list);
        this.modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.ads.dnz
    public final Object b(int i) {
        return this.f27021c.get(i);
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        c();
        this.f27021c.clear();
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.f27021c.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof dlw) {
            dlw dlwVar = (dlw) obj;
            String e = dlwVar.e();
            if (dlwVar.f()) {
                this.f27021c.set(i, e);
            }
            return e;
        }
        byte[] bArr = (byte[]) obj;
        String b2 = dnj.b(bArr);
        if (dnj.a(bArr)) {
            this.f27021c.set(i, b2);
        }
        return b2;
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.dlq, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        c();
        Object remove = this.f27021c.remove(i);
        this.modCount++;
        return a(remove);
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
        c();
        return a(this.f27021c.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f27021c.size();
    }
}
