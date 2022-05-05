package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzwb.class */
public final class zzwb extends zztz<String> implements zzwc, RandomAccess {
    private static final zzwb zzcag;
    private static final zzwc zzcah;
    private final List<Object> zzcai;

    static {
        zzwb zzwbVar = new zzwb();
        zzcag = zzwbVar;
        zzwbVar.zzsm();
        zzcah = zzcag;
    }

    public zzwb() {
        this(10);
    }

    public zzwb(int i) {
        this(new ArrayList(i));
    }

    private zzwb(ArrayList<Object> arrayList) {
        this.zzcai = arrayList;
    }

    private static String zzw(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzud ? ((zzud) obj).zzua() : zzvo.zzm((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zztx();
        this.zzcai.add(i, (String) obj);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        zztx();
        List<?> list = collection;
        if (collection instanceof zzwc) {
            list = ((zzwc) collection).zzwv();
        }
        boolean addAll = this.zzcai.addAll(i, list);
        this.modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        zztx();
        this.zzcai.clear();
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.zzcai.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzud) {
            zzud zzudVar = (zzud) obj;
            String zzua = zzudVar.zzua();
            if (zzudVar.zzub()) {
                this.zzcai.set(i, zzua);
            }
            return zzua;
        }
        byte[] bArr = (byte[]) obj;
        String zzm = zzvo.zzm(bArr);
        if (zzvo.zzl(bArr)) {
            this.zzcai.set(i, zzm);
        }
        return zzm;
    }

    @Override // com.google.android.gms.internal.measurement.zzwc
    public final Object getRaw(int i) {
        return this.zzcai.get(i);
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zztx();
        Object remove = this.zzcai.remove(i);
        this.modCount++;
        return zzw(remove);
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // com.google.android.gms.internal.measurement.zztz, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        zztx();
        return zzw(this.zzcai.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzcai.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzvs
    public final /* synthetic */ zzvs zzak(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.zzcai);
        return new zzwb(arrayList);
    }

    @Override // com.google.android.gms.internal.measurement.zzwc
    public final void zzc(zzud zzudVar) {
        zztx();
        this.zzcai.add(zzudVar);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zztz, com.google.android.gms.internal.measurement.zzvs
    public final /* bridge */ /* synthetic */ boolean zztw() {
        return super.zztw();
    }

    @Override // com.google.android.gms.internal.measurement.zzwc
    public final List<?> zzwv() {
        return Collections.unmodifiableList(this.zzcai);
    }

    @Override // com.google.android.gms.internal.measurement.zzwc
    public final zzwc zzww() {
        return zztw() ? new zzye(this) : this;
    }
}
