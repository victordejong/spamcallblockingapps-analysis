package com.google.android.gms.internal.ads;

import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cpt.class */
public final class cpt<E> extends cpk<E> {

    /* renamed from: a */
    static final cpt<Object> f13518a = new cpt<>(new Object[0], 0, null, 0, 0);

    /* renamed from: b */
    private final transient Object[] f13519b;

    /* renamed from: c */
    private final transient Object[] f13520c;

    /* renamed from: d */
    private final transient int f13521d;

    /* renamed from: e */
    private final transient int f13522e;

    /* renamed from: f */
    private final transient int f13523f;

    public cpt(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.f13519b = objArr;
        this.f13520c = objArr2;
        this.f13521d = i2;
        this.f13522e = i;
        this.f13523f = i3;
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: a */
    public final int mo10863a(Object[] objArr, int i) {
        System.arraycopy(this.f13519b, 0, objArr, i, this.f13523f);
        return this.f13523f + i;
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: a */
    public final cpy<E> mo10864a() {
        return (cpy) mo10868e().iterator();
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: b */
    public final Object[] mo10867b() {
        return this.f13519b;
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: c */
    public final int mo10866c() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.cpb, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@NullableDecl Object obj) {
        Object[] objArr = this.f13520c;
        boolean z = false;
        if (obj != null) {
            if (objArr == null) {
                z = false;
            } else {
                int m10917a = coy.m10917a(obj == null ? 0 : obj.hashCode());
                while (true) {
                    int i = m10917a & this.f13521d;
                    Object obj2 = objArr[i];
                    z = false;
                    if (obj2 == null) {
                        break;
                    } else if (obj2.equals(obj)) {
                        z = true;
                        break;
                    } else {
                        m10917a = i + 1;
                    }
                }
            }
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: d */
    final int mo10865d() {
        return this.f13523f;
    }

    @Override // com.google.android.gms.internal.ads.cpb
    /* renamed from: f */
    public final boolean mo10862f() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.cpk
    /* renamed from: g */
    final boolean mo10861g() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.cpk
    /* renamed from: h */
    final cpc<E> mo10860h() {
        return cpc.m10895b(this.f13519b, this.f13523f);
    }

    @Override // com.google.android.gms.internal.ads.cpk, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f13522e;
    }

    @Override // com.google.android.gms.internal.ads.cpk, com.google.android.gms.internal.ads.cpb, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f13523f;
    }
}
