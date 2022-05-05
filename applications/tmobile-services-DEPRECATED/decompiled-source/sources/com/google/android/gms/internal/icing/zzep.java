package com.google.android.gms.internal.icing;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzep.class */
public final class zzep extends zzcp<String> implements zzeo, RandomAccess {

    /* renamed from: h */
    private static final zzep f8019h;

    /* renamed from: g */
    private final List<Object> f8020g;

    static {
        zzep zzepVar = new zzep();
        f8019h = zzepVar;
        zzepVar.mo13794q();
    }

    public zzep() {
        this(10);
    }

    public zzep(int i) {
        this(new ArrayList(i));
    }

    private zzep(ArrayList<Object> arrayList) {
        this.f8020g = arrayList;
    }

    /* renamed from: d */
    private static String m13786d(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzct ? ((zzct) obj).m13978h() : zzeb.m13800g((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.icing.zzeo
    /* renamed from: L */
    public final List<?> mo13598L() {
        return Collections.unmodifiableList(this.f8020g);
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m13986c();
        this.f8020g.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        m13986c();
        List<?> list = collection;
        if (collection instanceof zzeo) {
            list = ((zzeo) collection).mo13598L();
        }
        boolean addAll = this.f8020g.addAll(i, list);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.icing.zzee
    /* renamed from: b0 */
    public final /* synthetic */ zzee mo13713b0(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f8020g);
            return new zzep(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m13986c();
        this.f8020g.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.f8020g.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzct) {
            zzct zzctVar = (zzct) obj;
            String h = zzctVar.m13978h();
            if (zzctVar.mo13963j()) {
                this.f8020g.set(i, h);
            }
            return h;
        }
        byte[] bArr = (byte[]) obj;
        String g = zzeb.m13800g(bArr);
        if (zzeb.m13801f(bArr)) {
            this.f8020g.set(i, g);
        }
        return g;
    }

    @Override // com.google.android.gms.internal.icing.zzeo
    /* renamed from: m */
    public final Object mo13596m(int i) {
        return this.f8020g.get(i);
    }

    @Override // com.google.android.gms.internal.icing.zzeo
    /* renamed from: o */
    public final zzeo mo13595o() {
        return mo13795l() ? new zzgr(this) : this;
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m13986c();
        Object remove = this.f8020g.remove(i);
        ((AbstractList) this).modCount++;
        return m13786d(remove);
    }

    @Override // com.google.android.gms.internal.icing.zzcp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        m13986c();
        return m13786d(this.f8020g.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8020g.size();
    }
}
