package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.gy */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gy.class */
public final class C13539gy extends AbstractC13486ez<String> implements AbstractC13540gz, RandomAccess {

    /* renamed from: a */
    public static final AbstractC13540gz f50773a;

    /* renamed from: b */
    private static final C13539gy f50774b;

    /* renamed from: c */
    private final List<Object> f50775c;

    static {
        C13539gy c13539gy = new C13539gy(10);
        f50774b = c13539gy;
        c13539gy.mo12749b();
        f50773a = c13539gy;
    }

    public C13539gy() {
        this(10);
    }

    public C13539gy(int i) {
        this.f50775c = new ArrayList(i);
    }

    private C13539gy(ArrayList<Object> arrayList) {
        this.f50775c = arrayList;
    }

    /* renamed from: a */
    private static String m12736a(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof AbstractC13500fm ? ((AbstractC13500fm) obj).m12856b(C13534gt.f50765a) : C13534gt.m12741b((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13533gs
    /* renamed from: a */
    public final /* synthetic */ AbstractC13533gs mo12663a(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f50775c);
            return new C13539gy(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13540gz
    /* renamed from: a */
    public final void mo12556a(AbstractC13500fm abstractC13500fm) {
        m12885c();
        this.f50775c.add(abstractC13500fm);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        m12885c();
        this.f50775c.add(i, (String) obj);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        m12885c();
        List<?> list = collection;
        if (collection instanceof AbstractC13540gz) {
            list = ((AbstractC13540gz) collection).mo12553d();
        }
        boolean addAll = this.f50775c.addAll(i, list);
        this.modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    /* renamed from: b */
    public final String get(int i) {
        Object obj = this.f50775c.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof AbstractC13500fm) {
            AbstractC13500fm abstractC13500fm = (AbstractC13500fm) obj;
            String m12856b = abstractC13500fm.m12856b(C13534gt.f50765a);
            if (abstractC13500fm.mo12858b()) {
                this.f50775c.set(i, m12856b);
            }
            return m12856b;
        }
        byte[] bArr = (byte[]) obj;
        String m12741b = C13534gt.m12741b(bArr);
        if (C13534gt.m12742a(bArr)) {
            this.f50775c.set(i, m12741b);
        }
        return m12741b;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13540gz
    /* renamed from: c */
    public final Object mo12554c(int i) {
        return this.f50775c.get(i);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m12885c();
        this.f50775c.clear();
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13540gz
    /* renamed from: d */
    public final List<?> mo12553d() {
        return Collections.unmodifiableList(this.f50775c);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13540gz
    /* renamed from: e */
    public final AbstractC13540gz mo12552e() {
        return mo12750a() ? new C13587is(this) : this;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        m12885c();
        Object remove = this.f50775c.remove(i);
        this.modCount++;
        return m12736a(remove);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13486ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        m12885c();
        return m12736a(this.f50775c.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f50775c.size();
    }
}
