package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gx2.class */
public final class gx2<E> extends yw2<E> {

    /* renamed from: d */
    Object[] f23730d;

    /* renamed from: e */
    private int f23731e;

    public gx2(int i) {
        super(i);
        this.f23730d = new Object[zzfot.zzl(i)];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zw2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ zw2 mo8155a(Object obj) {
        m14791f(obj);
        return this;
    }

    /* renamed from: f */
    public final gx2<E> m14791f(E e) {
        Objects.requireNonNull(e);
        if (this.f23730d != null) {
            int zzl = zzfot.zzl(this.f32688b);
            int length = this.f23730d.length;
            if (zzl <= length) {
                int hashCode = e.hashCode();
                int m9030a = xw2.m9030a(hashCode);
                while (true) {
                    int i = m9030a & (length - 1);
                    Object[] objArr = this.f23730d;
                    Object obj = objArr[i];
                    if (obj != null) {
                        if (obj.equals(e)) {
                            break;
                        }
                        m9030a = i + 1;
                    } else {
                        objArr[i] = e;
                        this.f23731e += hashCode;
                        super.m8671c(e);
                        break;
                    }
                }
                return this;
            }
        }
        this.f23730d = null;
        super.m8671c(e);
        return this;
    }

    /* renamed from: g */
    public final gx2<E> m14790g(Iterable<? extends E> iterable) {
        if (this.f23730d != null) {
            for (E e : iterable) {
                m14791f(e);
            }
        } else {
            super.m8670d(iterable);
        }
        return this;
    }

    /* renamed from: h */
    public final zzfot<E> m14789h() {
        zzfqd zzfqdVar;
        zzfot<E> m7862c;
        boolean m7861d;
        int i = this.f32688b;
        if (i != 0) {
            if (i == 1) {
                Object obj = this.f32687a[0];
                obj.getClass();
                return new zzfqi(obj);
            }
            if (this.f23730d == null || zzfot.zzl(i) != this.f23730d.length) {
                m7862c = zzfot.m7862c(this.f32688b, this.f32687a);
                zzfqdVar = m7862c;
                this.f32688b = zzfqdVar.size();
            } else {
                m7861d = zzfot.m7861d(this.f32688b, this.f32687a.length);
                Object[] copyOf = m7861d ? Arrays.copyOf(this.f32687a, this.f32688b) : this.f32687a;
                int i2 = this.f23731e;
                Object[] objArr = this.f23730d;
                zzfqdVar = new zzfqd(copyOf, i2, objArr, objArr.length - 1, this.f32688b);
            }
            this.f32689c = true;
            this.f23730d = null;
            return zzfqdVar;
        }
        return zzfqd.f34095g;
    }
}
