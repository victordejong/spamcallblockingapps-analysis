package com.google.android.gms.internal.firebase_remote_config;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzhy.class */
public final class zzhy extends zzfr<String> implements zzhx, RandomAccess {
    private static final zzhy zzux;
    private static final zzhx zzuy;
    private final List<Object> zzuz;

    static {
        zzhy zzhyVar = new zzhy();
        zzux = zzhyVar;
        zzhyVar.zzes();
        zzuy = zzux;
    }

    public zzhy() {
        this(10);
    }

    public zzhy(int i) {
        this(new ArrayList(i));
    }

    private zzhy(ArrayList<Object> arrayList) {
        this.zzuz = arrayList;
    }

    private static String zzo(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzfx ? ((zzfx) obj).zzb(zzhm.UTF_8) : zzhm.zzf((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zzet();
        this.zzuz.add(i, (String) obj);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        zzet();
        List<?> list = collection;
        if (collection instanceof zzhx) {
            list = ((zzhx) collection).zzhq();
        }
        boolean addAll = this.zzuz.addAll(i, list);
        this.modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        zzet();
        this.zzuz.clear();
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.zzuz.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzfx) {
            zzfx zzfxVar = (zzfx) obj;
            String zzb = zzfxVar.zzb(zzhm.UTF_8);
            if (zzfxVar.zzew()) {
                this.zzuz.set(i, zzb);
            }
            return zzb;
        }
        byte[] bArr = (byte[]) obj;
        String zzf = zzhm.zzf(bArr);
        if (zzhm.zze(bArr)) {
            this.zzuz.set(i, zzf);
        }
        return zzf;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzet();
        Object remove = this.zzuz.remove(i);
        this.modCount++;
        return zzo(remove);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        zzet();
        return zzo(this.zzuz.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzuz.size();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzhx
    public final Object zzbd(int i) {
        return this.zzuz.get(i);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzhx
    public final void zzd(zzfx zzfxVar) {
        zzet();
        this.zzuz.add(zzfxVar);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfr, com.google.android.gms.internal.firebase_remote_config.zzhn
    public final /* bridge */ /* synthetic */ boolean zzer() {
        return super.zzer();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzhx
    public final List<?> zzhq() {
        return Collections.unmodifiableList(this.zzuz);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzhx
    public final zzhx zzhr() {
        return zzer() ? new zzkc(this) : this;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzhn
    public final /* synthetic */ zzhn zzu(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.zzuz);
            return new zzhy(arrayList);
        }
        throw new IllegalArgumentException();
    }
}
