package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzdd;
import com.google.android.gms.internal.firebase-perf.zzeo;
import com.google.android.gms.internal.firebase-perf.zzey;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzez.class */
public final class zzez extends zzdc<String> implements zzey, RandomAccess {
    private static final com.google.android.gms.internal.firebase-perf.zzez zzrs;
    private static final zzey zzrt;
    private final List<Object> zzru;

    static {
        com.google.android.gms.internal.firebase-perf.zzez zzezVar = new zzez();
        zzrs = zzezVar;
        zzezVar.zzfk();
        zzrt = zzrs;
    }

    public zzez() {
        this(10);
    }

    public zzez(int i) {
        this(new ArrayList(i));
    }

    private zzez(ArrayList<Object> arrayList) {
        this.zzru = arrayList;
    }

    private static String zzf(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzdd ? ((zzdd) obj).zzfm() : zzei.zze((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zzfl();
        this.zzru.add(i, (String) obj);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        return super.add(obj);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        zzfl();
        List<?> list = collection;
        if (collection instanceof zzey) {
            list = ((zzey) collection).zzgy();
        }
        boolean addAll = this.zzru.addAll(i, list);
        this.modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        zzfl();
        this.zzru.clear();
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.zzru.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzdd) {
            zzdd zzddVar = (zzdd) obj;
            String zzfm = zzddVar.zzfm();
            if (zzddVar.zzfn()) {
                this.zzru.set(i, zzfm);
            }
            return zzfm;
        }
        byte[] bArr = (byte[]) obj;
        String zze = zzei.zze(bArr);
        if (zzei.zzd(bArr)) {
            this.zzru.set(i, zze);
        }
        return zze;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzey
    public final Object getRaw(int i) {
        return this.zzru.get(i);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzfl();
        Object remove = this.zzru.remove(i);
        this.modCount++;
        return zzf(remove);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdc, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        zzfl();
        return zzf(this.zzru.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzru.size();
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzeo
    public final /* synthetic */ zzeo zzao(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.zzru);
            return new zzez(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzey
    public final void zzc(zzdd zzddVar) {
        zzfl();
        this.zzru.add(zzddVar);
        this.modCount++;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.firebase_perf.zzdc, com.google.android.gms.internal.firebase_perf.zzeo
    public final /* bridge */ /* synthetic */ boolean zzfj() {
        return super.zzfj();
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzey
    public final List<?> zzgy() {
        return Collections.unmodifiableList(this.zzru);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.firebase_perf.zzey
    public final zzey zzgz() {
        return zzfj() ? new zzhb(this) : this;
    }
}
