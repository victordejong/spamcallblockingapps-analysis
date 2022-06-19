package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czr.class */
public final class czr<E> extends czc<E> {

    /* renamed from: a */
    static final czr<Object> f46814a = new czr<>(new Object[0], 0, null, 0, 0);

    /* renamed from: b */
    private final transient Object[] f46815b;

    /* renamed from: c */
    private final transient Object[] f46816c;

    /* renamed from: d */
    private final transient int f46817d;

    /* renamed from: e */
    private final transient int f46818e;

    /* renamed from: f */
    private final transient int f46819f;

    public czr(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.f46815b = objArr;
        this.f46816c = objArr2;
        this.f46817d = i2;
        this.f46818e = i;
        this.f46819f = i3;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: a */
    public final int mo16996a(Object[] objArr, int i) {
        System.arraycopy(this.f46815b, 0, objArr, i, this.f46819f);
        return i + this.f46819f;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: a */
    public final czu<E> mo16997a() {
        return (czu) mo17004e().iterator();
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: b */
    public final Object[] mo17001b() {
        return this.f46815b;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: c */
    public final int mo17000c() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.cyt, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        Object[] objArr = this.f46816c;
        if (obj == null || objArr == null) {
            return false;
        }
        int m17039a = cyu.m17039a(obj == null ? 0 : obj.hashCode());
        while (true) {
            int i = m17039a & this.f46817d;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            m17039a = i + 1;
        }
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: d */
    final int mo16999d() {
        return this.f46819f;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    /* renamed from: f */
    public final boolean mo16995f() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.czc
    /* renamed from: g */
    final boolean mo16994g() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.czc
    /* renamed from: h */
    final cyz<E> mo16993h() {
        return cyz.m17032b(this.f46815b, this.f46819f);
    }

    @Override // com.google.android.gms.internal.ads.czc, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f46818e;
    }

    @Override // com.google.android.gms.internal.ads.czc, com.google.android.gms.internal.ads.cyt, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f46819f;
    }
}
