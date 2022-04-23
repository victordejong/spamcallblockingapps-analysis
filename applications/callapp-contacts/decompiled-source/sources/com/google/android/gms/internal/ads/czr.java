package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czr.class */
public final class czr<E> extends czc<E> {

    /* renamed from: a  reason: collision with root package name */
    static final czr<Object> f26618a = new czr<>(new Object[0], 0, null, 0, 0);

    /* renamed from: b  reason: collision with root package name */
    private final transient Object[] f26619b;

    /* renamed from: c  reason: collision with root package name */
    private final transient Object[] f26620c;

    /* renamed from: d  reason: collision with root package name */
    private final transient int f26621d;
    private final transient int e;
    private final transient int f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public czr(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.f26619b = objArr;
        this.f26620c = objArr2;
        this.f26621d = i2;
        this.e = i;
        this.f = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.cyt
    public final int a(Object[] objArr, int i) {
        System.arraycopy(this.f26619b, 0, objArr, i, this.f);
        return i + this.f;
    }

    @Override // com.google.android.gms.internal.ads.cyt
    public final czu<E> a() {
        return (czu) e().iterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.cyt
    public final Object[] b() {
        return this.f26619b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.cyt
    public final int c() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.cyt, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        Object[] objArr = this.f26620c;
        if (obj == null || objArr == null) {
            return false;
        }
        int a2 = cyu.a(obj == null ? 0 : obj.hashCode());
        while (true) {
            int i = a2 & this.f26621d;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            a2 = i + 1;
        }
    }

    @Override // com.google.android.gms.internal.ads.cyt
    final int d() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.cyt
    public final boolean f() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.czc
    final boolean g() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.czc
    final cyz<E> h() {
        return cyz.b(this.f26619b, this.f);
    }

    @Override // com.google.android.gms.internal.ads.czc, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.ads.czc, com.google.android.gms.internal.ads.cyt, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f;
    }
}
