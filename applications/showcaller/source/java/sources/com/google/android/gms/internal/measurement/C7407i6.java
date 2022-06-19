package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.i6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/i6.class */
public final class C7407i6 extends AbstractC7503p4<String> implements RandomAccess, AbstractC7421j6 {

    /* renamed from: e */
    private static final C7407i6 f34523e;

    /* renamed from: f */
    public static final AbstractC7421j6 f34524f;

    /* renamed from: g */
    private final List<Object> f34525g;

    static {
        C7407i6 c7407i6 = new C7407i6(10);
        f34523e = c7407i6;
        c7407i6.mo7028b();
        f34524f = c7407i6;
    }

    public C7407i6() {
        this(10);
    }

    public C7407i6(int i) {
        this.f34525g = new ArrayList(i);
    }

    private C7407i6(ArrayList<Object> arrayList) {
        this.f34525g = arrayList;
    }

    /* renamed from: e */
    private static String m7332e(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzgr ? ((zzgr) obj).zzl(C7365f6.f34431a) : C7365f6.m7500d((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7421j6
    /* renamed from: Z */
    public final Object mo7245Z(int i) {
        return this.f34525g.get(i);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7351e6
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC7351e6 mo6737a(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f34525g);
            return new C7407i6(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        m7027c();
        this.f34525g.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        m7027c();
        List<?> list = collection;
        if (collection instanceof AbstractC7421j6) {
            list = ((AbstractC7421j6) collection).mo7243f();
        }
        boolean addAll = this.f34525g.addAll(i, list);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m7027c();
        this.f34525g.clear();
        ((AbstractList) this).modCount++;
    }

    /* renamed from: d */
    public final String get(int i) {
        Object obj = this.f34525g.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzgr) {
            zzgr zzgrVar = (zzgr) obj;
            String zzl = zzgrVar.zzl(C7365f6.f34431a);
            if (zzgrVar.zzh()) {
                this.f34525g.set(i, zzl);
            }
            return zzl;
        }
        byte[] bArr = (byte[]) obj;
        String m7500d = C7365f6.m7500d(bArr);
        if (C7365f6.m7501c(bArr)) {
            this.f34525g.set(i, m7500d);
        }
        return m7500d;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7421j6
    /* renamed from: e0 */
    public final void mo7244e0(zzgr zzgrVar) {
        m7027c();
        this.f34525g.add(zzgrVar);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7421j6
    /* renamed from: f */
    public final List<?> mo7243f() {
        return Collections.unmodifiableList(this.f34525g);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7503p4, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        m7027c();
        Object remove = this.f34525g.remove(i);
        ((AbstractList) this).modCount++;
        return m7332e(remove);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        m7027c();
        return m7332e(this.f34525g.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f34525g.size();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7421j6
    public final AbstractC7421j6 zzi() {
        return zza() ? new C7339d8(this) : this;
    }
}
