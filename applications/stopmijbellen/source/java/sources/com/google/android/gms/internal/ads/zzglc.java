package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzglc.class */
public final class zzglc extends zzgio<String> implements RandomAccess, zzgld {
    public static final zzgld zza;
    private static final zzglc zzb;
    private final List<Object> zzc;

    static {
        zzglc zzglcVar = new zzglc(10);
        zzb = zzglcVar;
        zzglcVar.zzb();
        zza = zzglcVar;
    }

    public zzglc() {
        this(10);
    }

    public zzglc(int i) {
        this.zzc = new ArrayList(i);
    }

    private zzglc(ArrayList<Object> arrayList) {
        this.zzc = arrayList;
    }

    private static String zzj(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzgjf ? ((zzgjf) obj).zzA(zzgkv.zzb) : zzgkv.zzh((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgio, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        zzbU();
        this.zzc.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzgio, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        zzbU();
        List<?> list = collection;
        if (collection instanceof zzgld) {
            list = ((zzgld) collection).zzh();
        }
        boolean addAll = this.zzc.addAll(i, list);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.ads.zzgio, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.ads.zzgio, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        zzbU();
        this.zzc.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzgio, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        zzbU();
        Object remove = this.zzc.remove(i);
        ((AbstractList) this).modCount++;
        return zzj(remove);
    }

    @Override // com.google.android.gms.internal.ads.zzgio, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        zzbU();
        return zzj(this.zzc.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc.size();
    }

    @Override // com.google.android.gms.internal.ads.zzgku
    public final /* bridge */ /* synthetic */ zzgku zzd(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.zzc);
            return new zzglc(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.zzgld
    public final zzgld zze() {
        return zzc() ? new zzgnk(this) : this;
    }

    @Override // com.google.android.gms.internal.ads.zzgld
    public final Object zzf(int i) {
        return this.zzc.get(i);
    }

    /* renamed from: zzg */
    public final String get(int i) {
        Object obj = this.zzc.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzgjf) {
            zzgjf zzgjfVar = (zzgjf) obj;
            String zzA = zzgjfVar.zzA(zzgkv.zzb);
            if (zzgjfVar.zzp()) {
                this.zzc.set(i, zzA);
            }
            return zzA;
        }
        byte[] bArr = (byte[]) obj;
        String zzh = zzgkv.zzh(bArr);
        if (zzgkv.zzi(bArr)) {
            this.zzc.set(i, zzh);
        }
        return zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzgld
    public final List<?> zzh() {
        return Collections.unmodifiableList(this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzgld
    public final void zzi(zzgjf zzgjfVar) {
        zzbU();
        this.zzc.add(zzgjfVar);
        ((AbstractList) this).modCount++;
    }
}
