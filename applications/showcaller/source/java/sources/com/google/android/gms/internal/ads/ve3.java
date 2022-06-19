package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ve3.class */
public final class ve3 extends uc3<String> implements RandomAccess, we3 {

    /* renamed from: e */
    private static final ve3 f31164e;

    /* renamed from: f */
    public static final we3 f31165f;

    /* renamed from: g */
    private final List<Object> f31166g;

    static {
        ve3 ve3Var = new ve3(10);
        f31164e = ve3Var;
        ve3Var.mo10354b();
        f31165f = ve3Var;
    }

    public ve3() {
        this(10);
    }

    public ve3(int i) {
        this.f31166g = new ArrayList(i);
    }

    private ve3(ArrayList<Object> arrayList) {
        this.f31166g = arrayList;
    }

    /* renamed from: e */
    private static String m10033e(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzgex ? ((zzgex) obj).zzA(se3.f29462a) : se3.m11069d((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.ads.we3
    /* renamed from: Z */
    public final Object mo9588Z(int i) {
        return this.f31166g.get(i);
    }

    @Override // com.google.android.gms.internal.ads.re3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ re3 mo8859a(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f31166g);
            return new ve3(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        m10353c();
        this.f31166g.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        m10353c();
        List<?> list = collection;
        if (collection instanceof we3) {
            list = ((we3) collection).mo9586f();
        }
        boolean addAll = this.f31166g.addAll(i, list);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m10353c();
        this.f31166g.clear();
        ((AbstractList) this).modCount++;
    }

    /* renamed from: d */
    public final String get(int i) {
        Object obj = this.f31166g.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzgex) {
            zzgex zzgexVar = (zzgex) obj;
            String zzA = zzgexVar.zzA(se3.f29462a);
            if (zzgexVar.zzm()) {
                this.f31166g.set(i, zzA);
            }
            return zzA;
        }
        byte[] bArr = (byte[]) obj;
        String m11069d = se3.m11069d(bArr);
        if (se3.m11070c(bArr)) {
            this.f31166g.set(i, m11069d);
        }
        return m11069d;
    }

    @Override // com.google.android.gms.internal.ads.we3
    /* renamed from: f */
    public final List<?> mo9586f() {
        return Collections.unmodifiableList(this.f31166g);
    }

    @Override // com.google.android.gms.internal.ads.we3
    /* renamed from: g */
    public final void mo9585g(zzgex zzgexVar) {
        m10353c();
        this.f31166g.add(zzgexVar);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.uc3, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        m10353c();
        Object remove = this.f31166g.remove(i);
        ((AbstractList) this).modCount++;
        return m10033e(remove);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        m10353c();
        return m10033e(this.f31166g.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f31166g.size();
    }

    @Override // com.google.android.gms.internal.ads.we3
    public final we3 zzi() {
        return zza() ? new wg3(this) : this;
    }
}
