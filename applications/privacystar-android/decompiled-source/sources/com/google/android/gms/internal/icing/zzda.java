package com.google.android.gms.internal.icing;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzda.class */
public final class zzda extends zzbe<String> implements zzdb, RandomAccess {
    private static final zzda zzjg;
    private static final zzdb zzjh;
    private final List<Object> zzji;

    static {
        zzda zzdaVar = new zzda();
        zzjg = zzdaVar;
        zzdaVar.zzp();
        zzjh = zzjg;
    }

    public zzda() {
        this(10);
    }

    public zzda(int i) {
        this(new ArrayList(i));
    }

    private zzda(ArrayList<Object> arrayList) {
        this.zzji = arrayList;
    }

    private static String zze(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzbi ? ((zzbi) obj).zzu() : zzcm.zze((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zzq();
        this.zzji.add(i, (String) obj);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        zzq();
        List<?> list = collection;
        if (collection instanceof zzdb) {
            list = ((zzdb) collection).zzbh();
        }
        boolean addAll = this.zzji.addAll(i, list);
        this.modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        zzq();
        this.zzji.clear();
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.zzji.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzbi) {
            zzbi zzbiVar = (zzbi) obj;
            String zzu = zzbiVar.zzu();
            if (zzbiVar.zzv()) {
                this.zzji.set(i, zzu);
            }
            return zzu;
        }
        byte[] bArr = (byte[]) obj;
        String zze = zzcm.zze(bArr);
        if (zzcm.zzd(bArr)) {
            this.zzji.set(i, zze);
        }
        return zze;
    }

    @Override // com.google.android.gms.internal.icing.zzdb
    public final Object getRaw(int i) {
        return this.zzji.get(i);
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzq();
        Object remove = this.zzji.remove(i);
        this.modCount++;
        return zze(remove);
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // com.google.android.gms.internal.icing.zzbe, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        zzq();
        return zze(this.zzji.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzji.size();
    }

    @Override // com.google.android.gms.internal.icing.zzdb
    public final List<?> zzbh() {
        return Collections.unmodifiableList(this.zzji);
    }

    @Override // com.google.android.gms.internal.icing.zzdb
    public final zzdb zzbi() {
        return zzo() ? new zzfa(this) : this;
    }

    @Override // com.google.android.gms.internal.icing.zzcr
    public final /* synthetic */ zzcr zzh(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.zzji);
        return new zzda(arrayList);
    }

    @Override // com.google.android.gms.internal.icing.zzbe, com.google.android.gms.internal.icing.zzcr
    public final /* bridge */ /* synthetic */ boolean zzo() {
        return super.zzo();
    }
}
