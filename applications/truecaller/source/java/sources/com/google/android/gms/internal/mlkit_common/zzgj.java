package com.google.android.gms.internal.mlkit_common;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzgj.class */
public final class zzgj extends zzek<String> implements zzgi, RandomAccess {
    private static final zzgj zza;
    private static final zzgi zzb;
    private final List<Object> zzc;

    static {
        zzgj zzgjVar = new zzgj();
        zza = zzgjVar;
        zzgjVar.mo38718b_();
        zzb = zzgjVar;
    }

    public zzgj() {
        this(10);
    }

    public zzgj(int i) {
        this(new ArrayList(i));
    }

    private zzgj(ArrayList<Object> arrayList) {
        this.zzc = arrayList;
    }

    private static String zza(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzep ? ((zzep) obj).zzb() : zzfs.zzb((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzgi
    /* renamed from: a_ */
    public final zzgi mo38717a_() {
        return zza() ? new zzik(this) : this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzek, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zzc();
        this.zzc.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzek, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        return super.add(obj);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzek, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        zzc();
        List<?> list = collection;
        if (collection instanceof zzgi) {
            list = ((zzgi) collection).zzb();
        }
        boolean addAll = this.zzc.addAll(i, list);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzek, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzek, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        zzc();
        this.zzc.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzek, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.zzc.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzep) {
            zzep zzepVar = (zzep) obj;
            String zzb2 = zzepVar.zzb();
            if (zzepVar.zzc()) {
                this.zzc.set(i, zzb2);
            }
            return zzb2;
        }
        byte[] bArr = (byte[]) obj;
        String zzb3 = zzfs.zzb(bArr);
        if (zzfs.zza(bArr)) {
            this.zzc.set(i, zzb3);
        }
        return zzb3;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzek, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzek, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzc();
        Object remove = this.zzc.remove(i);
        ((AbstractList) this).modCount++;
        return zza(remove);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzek, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzek, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzek, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzek, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        zzc();
        return zza(this.zzc.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc.size();
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzgi
    public final Object zza(int i) {
        return this.zzc.get(i);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzgi
    public final void zza(zzep zzepVar) {
        zzc();
        this.zzc.add(zzepVar);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzek, com.google.android.gms.internal.mlkit_common.zzfy
    public final /* bridge */ /* synthetic */ boolean zza() {
        return super.zza();
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzfy
    public final /* synthetic */ zzfy zzb(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.zzc);
            return new zzgj(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzgi
    public final List<?> zzb() {
        return Collections.unmodifiableList(this.zzc);
    }
}
