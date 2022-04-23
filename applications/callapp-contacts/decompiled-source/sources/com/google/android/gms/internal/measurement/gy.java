package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gy.class */
public final class gy extends ez<String> implements gz, RandomAccess {

    /* renamed from: a  reason: collision with root package name */
    public static final gz f29072a;

    /* renamed from: b  reason: collision with root package name */
    private static final gy f29073b;

    /* renamed from: c  reason: collision with root package name */
    private final List<Object> f29074c;

    static {
        gy gyVar = new gy(10);
        f29073b = gyVar;
        gyVar.b();
        f29072a = gyVar;
    }

    public gy() {
        this(10);
    }

    public gy(int i) {
        this.f29074c = new ArrayList(i);
    }

    private gy(ArrayList<Object> arrayList) {
        this.f29074c = arrayList;
    }

    private static String a(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof fm ? ((fm) obj).b(gt.f29065a) : gt.b((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.measurement.gs
    public final /* synthetic */ gs a(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.f29074c);
            return new gy(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.gz
    public final void a(fm fmVar) {
        c();
        this.f29074c.add(fmVar);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        c();
        this.f29074c.add(i, (String) obj);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        c();
        List<?> list = collection;
        if (collection instanceof gz) {
            list = ((gz) collection).d();
        }
        boolean addAll = this.f29074c.addAll(i, list);
        this.modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    /* renamed from: b */
    public final String get(int i) {
        Object obj = this.f29074c.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof fm) {
            fm fmVar = (fm) obj;
            String b2 = fmVar.b(gt.f29065a);
            if (fmVar.b()) {
                this.f29074c.set(i, b2);
            }
            return b2;
        }
        byte[] bArr = (byte[]) obj;
        String b3 = gt.b(bArr);
        if (gt.a(bArr)) {
            this.f29074c.set(i, b3);
        }
        return b3;
    }

    @Override // com.google.android.gms.internal.measurement.gz
    public final Object c(int i) {
        return this.f29074c.get(i);
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        c();
        this.f29074c.clear();
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.gz
    public final List<?> d() {
        return Collections.unmodifiableList(this.f29074c);
    }

    @Override // com.google.android.gms.internal.measurement.gz
    public final gz e() {
        return a() ? new is(this) : this;
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        c();
        Object remove = this.f29074c.remove(i);
        this.modCount++;
        return a(remove);
    }

    @Override // com.google.android.gms.internal.measurement.ez, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        c();
        return a(this.f29074c.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29074c.size();
    }
}
