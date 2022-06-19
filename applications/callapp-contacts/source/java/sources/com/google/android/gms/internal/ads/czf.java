package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czf.class */
public final class czf<E> extends cyw<E> {

    /* renamed from: d */
    private Object[] f46792d;

    /* renamed from: e */
    private int f46793e;

    public czf() {
        super(4);
    }

    public czf(int i) {
        super(i);
        this.f46792d = new Object[czc.m17028a(i)];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.cyw, com.google.android.gms.internal.ads.cyv
    /* renamed from: a */
    public final /* synthetic */ cyv mo17017a(Iterable iterable) {
        cyg.m17060a(iterable);
        if (this.f46792d != null) {
            for (Object obj : iterable) {
                mo17016a((czf<E>) obj);
            }
        } else {
            super.mo17017a(iterable);
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cyw, com.google.android.gms.internal.ads.cyv
    /* renamed from: a */
    public final /* synthetic */ cyv mo17016a(Object obj) {
        cyg.m17060a(obj);
        if (this.f46792d != null) {
            int m17028a = czc.m17028a(this.f46777b);
            Object[] objArr = this.f46792d;
            if (m17028a <= objArr.length) {
                int length = objArr.length;
                int hashCode = obj.hashCode();
                int m17039a = cyu.m17039a(hashCode);
                while (true) {
                    int i = m17039a & (length - 1);
                    Object[] objArr2 = this.f46792d;
                    Object obj2 = objArr2[i];
                    if (obj2 != null) {
                        if (obj2.equals(obj)) {
                            break;
                        }
                        m17039a = i + 1;
                    } else {
                        objArr2[i] = obj;
                        this.f46793e += hashCode;
                        super.mo17016a(obj);
                        break;
                    }
                }
                return this;
            }
        }
        this.f46792d = null;
        super.mo17016a(obj);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.cyv
    /* renamed from: a */
    public final /* synthetic */ cyv mo17015a(Iterator it2) {
        cyg.m17060a(it2);
        while (it2.hasNext()) {
            mo17016a((czf<E>) it2.next());
        }
        return this;
    }

    /* renamed from: a */
    public final czc<E> m17018a() {
        czr czrVar;
        czc<E> m17021b;
        boolean m17022b;
        int i = this.f46777b;
        if (i != 0) {
            if (i == 1) {
                return czc.m17025a(this.f46776a[0]);
            }
            if (this.f46792d == null || czc.m17028a(this.f46777b) != this.f46792d.length) {
                m17021b = czc.m17021b(this.f46777b, this.f46776a);
                czrVar = m17021b;
                this.f46777b = czrVar.size();
            } else {
                m17022b = czc.m17022b(this.f46777b, this.f46776a.length);
                Object[] copyOf = m17022b ? Arrays.copyOf(this.f46776a, this.f46777b) : this.f46776a;
                int i2 = this.f46793e;
                Object[] objArr = this.f46792d;
                czrVar = new czr(copyOf, i2, objArr, objArr.length - 1, this.f46777b);
            }
            this.f46778c = true;
            this.f46792d = null;
            return czrVar;
        }
        return czr.f46814a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.cyw
    /* renamed from: b */
    public final /* synthetic */ cyw mo17014b(Object obj) {
        return (czf) mo17016a((czf<E>) obj);
    }
}
