package com.google.android.gms.internal.clearcut;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzcw.class */
public final class zzcw extends AbstractC4374l<String> implements zzcx, RandomAccess {

    /* renamed from: c */
    public static final zzcw f29268c;

    /* renamed from: b */
    public final List<Object> f29269b;

    static {
        zzcw zzcwVar = new zzcw();
        f29268c = zzcwVar;
        zzcwVar.zzv();
    }

    public zzcw() {
        this(10);
    }

    public zzcw(int i) {
        this(new ArrayList(i));
    }

    public zzcw(ArrayList<Object> arrayList) {
        this.f29269b = arrayList;
    }

    /* renamed from: a */
    public static String m10688a(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zzbb ? ((zzbb) obj).zzz() : zzci.m10695c((byte[]) obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m25822a();
        this.f29269b.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        m25822a();
        List<?> list = collection;
        if (collection instanceof zzcx) {
            list = ((zzcx) collection).mo10659e();
        }
        boolean addAll = this.f29269b.addAll(i, list);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.clearcut.zzcn
    /* renamed from: c */
    public final /* synthetic */ zzcn mo10687c(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f29269b);
            return new zzcw(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4374l, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m25822a();
        this.f29269b.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.clearcut.zzcx
    /* renamed from: d */
    public final Object mo10660d(int i) {
        return this.f29269b.get(i);
    }

    @Override // com.google.android.gms.internal.clearcut.zzcx
    /* renamed from: e */
    public final List<?> mo10659e() {
        return Collections.unmodifiableList(this.f29269b);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.f29269b.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzbb) {
            zzbb zzbbVar = (zzbb) obj;
            String zzz = zzbbVar.zzz();
            if (zzbbVar.zzaa()) {
                this.f29269b.set(i, zzz);
            }
            return zzz;
        }
        byte[] bArr = (byte[]) obj;
        String c = zzci.m10695c(bArr);
        if (zzci.m10696b(bArr)) {
            this.f29269b.set(i, c);
        }
        return c;
    }

    @Override // com.google.android.gms.internal.clearcut.zzcx
    /* renamed from: h */
    public final zzcx mo10658h() {
        return mo10694g() ? new zzfa(this) : this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m25822a();
        Object remove = this.f29269b.remove(i);
        ((AbstractList) this).modCount++;
        return m10688a(remove);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        m25822a();
        return m10688a(this.f29269b.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29269b.size();
    }
}
