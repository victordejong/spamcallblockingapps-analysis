package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czf.class */
public final class czf<E> extends cyw<E> {

    /* renamed from: d  reason: collision with root package name */
    private Object[] f26597d;
    private int e;

    public czf() {
        super(4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public czf(int i) {
        super(i);
        this.f26597d = new Object[czc.a(i)];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.cyw, com.google.android.gms.internal.ads.cyv
    public final /* synthetic */ cyv a(Iterable iterable) {
        cyg.a(iterable);
        if (this.f26597d != null) {
            for (Object obj : iterable) {
                a((czf<E>) obj);
            }
        } else {
            super.a(iterable);
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cyw, com.google.android.gms.internal.ads.cyv
    public final /* synthetic */ cyv a(Object obj) {
        cyg.a(obj);
        if (this.f26597d != null) {
            int a2 = czc.a(this.f26582b);
            Object[] objArr = this.f26597d;
            if (a2 <= objArr.length) {
                int length = objArr.length;
                int hashCode = obj.hashCode();
                int a3 = cyu.a(hashCode);
                while (true) {
                    int i = a3 & (length - 1);
                    Object[] objArr2 = this.f26597d;
                    Object obj2 = objArr2[i];
                    if (obj2 != null) {
                        if (obj2.equals(obj)) {
                            break;
                        }
                        a3 = i + 1;
                    } else {
                        objArr2[i] = obj;
                        this.e += hashCode;
                        super.a(obj);
                        break;
                    }
                }
                return this;
            }
        }
        this.f26597d = null;
        super.a(obj);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.cyv
    public final /* synthetic */ cyv a(Iterator it2) {
        cyg.a(it2);
        while (it2.hasNext()) {
            a((czf<E>) it2.next());
        }
        return this;
    }

    public final czc<E> a() {
        czc<E> czcVar;
        boolean b2;
        int i = this.f26582b;
        if (i == 0) {
            return czr.f26618a;
        }
        if (i == 1) {
            return czc.a(this.f26581a[0]);
        }
        if (this.f26597d == null || czc.a(this.f26582b) != this.f26597d.length) {
            czcVar = czc.b(this.f26582b, this.f26581a);
            this.f26582b = czcVar.size();
        } else {
            b2 = czc.b(this.f26582b, this.f26581a.length);
            Object[] copyOf = b2 ? Arrays.copyOf(this.f26581a, this.f26582b) : this.f26581a;
            int i2 = this.e;
            Object[] objArr = this.f26597d;
            czcVar = new czr<>(copyOf, i2, objArr, objArr.length - 1, this.f26582b);
        }
        this.f26583c = true;
        this.f26597d = null;
        return czcVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.cyw
    public final /* synthetic */ cyw b(Object obj) {
        return (czf) a((czf<E>) obj);
    }
}
