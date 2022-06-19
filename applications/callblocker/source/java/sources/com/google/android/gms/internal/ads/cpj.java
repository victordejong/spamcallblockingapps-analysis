package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cpj.class */
public final class cpj<E> extends cpa<E> {
    @NullableDecl

    /* renamed from: d */
    private Object[] f13499d;

    /* renamed from: e */
    private int f13500e;

    public cpj() {
        super(4);
    }

    public cpj(int i) {
        super(i);
        this.f13499d = new Object[cpk.m10885a(i)];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.cpa
    /* renamed from: a */
    public final /* synthetic */ cpa mo10888a(Object obj) {
        return (cpj) mo10886b(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.cpa, com.google.android.gms.internal.ads.cpd
    /* renamed from: a */
    public final /* synthetic */ cpd mo10889a(Iterable iterable) {
        cor.m10936a(iterable);
        if (this.f13499d != null) {
            for (Object obj : iterable) {
                mo10886b(obj);
            }
        } else {
            super.mo10889a(iterable);
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.cpd
    /* renamed from: a */
    public final /* synthetic */ cpd mo10887a(Iterator it) {
        cor.m10936a(it);
        while (it.hasNext()) {
            mo10886b(it.next());
        }
        return this;
    }

    /* renamed from: a */
    public final cpk<E> m10890a() {
        cpt m10882a;
        cpk m10878b;
        boolean m10879b;
        switch (this.f13483b) {
            case 0:
                m10882a = cpt.f13518a;
                break;
            case 1:
                m10882a = cpk.m10882a(this.f13482a[0]);
                break;
            default:
                if (this.f13499d == null || cpk.m10885a(this.f13483b) != this.f13499d.length) {
                    m10878b = cpk.m10878b(this.f13483b, this.f13482a);
                    m10882a = m10878b;
                    this.f13483b = m10882a.size();
                } else {
                    m10879b = cpk.m10879b(this.f13483b, this.f13482a.length);
                    m10882a = new cpt(m10879b ? Arrays.copyOf(this.f13482a, this.f13483b) : this.f13482a, this.f13500e, this.f13499d, this.f13499d.length - 1, this.f13483b);
                }
                this.f13484c = true;
                this.f13499d = null;
                break;
        }
        return m10882a;
    }

    @Override // com.google.android.gms.internal.ads.cpa, com.google.android.gms.internal.ads.cpd
    /* renamed from: b */
    public final /* synthetic */ cpd mo10886b(Object obj) {
        cor.m10936a(obj);
        if (this.f13499d != null && cpk.m10885a(this.f13483b) <= this.f13499d.length) {
            int length = this.f13499d.length;
            int hashCode = obj.hashCode();
            int m10917a = coy.m10917a(hashCode);
            while (true) {
                int i = m10917a & (length - 1);
                Object obj2 = this.f13499d[i];
                if (obj2 != null) {
                    if (obj2.equals(obj)) {
                        break;
                    }
                    m10917a = i + 1;
                } else {
                    this.f13499d[i] = obj;
                    this.f13500e += hashCode;
                    super.mo10888a((cpj<E>) obj);
                    break;
                }
            }
        } else {
            this.f13499d = null;
            super.mo10888a((cpj<E>) obj);
        }
        return this;
    }
}
