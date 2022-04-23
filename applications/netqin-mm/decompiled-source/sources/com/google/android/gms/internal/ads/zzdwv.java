package com.google.android.gms.internal.ads;

import java.util.Arrays;
import p131c.p161d.p170b.p224d.p252g.p253a.d10;
import p131c.p161d.p170b.p224d.p252g.p253a.e10;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwv.class */
public final class zzdwv<E> extends e10<E> {

    /* renamed from: d */
    public Object[] f27905d;

    /* renamed from: e */
    public int f27906e;

    public zzdwv() {
        super(4);
    }

    public zzdwv(int i) {
        super(i);
        this.f27905d = new Object[zzdws.zzen(i)];
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.e10, com.google.android.gms.internal.ads.zzdwm
    /* renamed from: a */
    public final /* synthetic */ zzdwm mo13078a(Iterable iterable) {
        zzdwd.m13096a(iterable);
        if (this.f27905d != null) {
            for (Object obj : iterable) {
                mo13077a(obj);
            }
        } else {
            super.mo13078a(iterable);
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdwm
    /* renamed from: a */
    public final /* synthetic */ zzdwm mo13077a(Object obj) {
        zzdwd.m13096a(obj);
        if (this.f27905d != null) {
            int zzen = zzdws.zzen(this.f12794b);
            Object[] objArr = this.f27905d;
            if (zzen <= objArr.length) {
                int length = objArr.length;
                int hashCode = obj.hashCode();
                int a = d10.m27085a(hashCode);
                while (true) {
                    int i = a & (length - 1);
                    Object[] objArr2 = this.f27905d;
                    Object obj2 = objArr2[i];
                    if (obj2 != null) {
                        if (obj2.equals(obj)) {
                            break;
                        }
                        a = i + 1;
                    } else {
                        objArr2[i] = obj;
                        this.f27906e += hashCode;
                        super.m27058b(obj);
                        break;
                    }
                }
                return this;
            }
        }
        this.f27905d = null;
        super.m27058b(obj);
        return this;
    }

    /* renamed from: a */
    public final zzdws<E> m13079a() {
        zzdws<E> zzdwsVar;
        boolean zzv;
        int i = this.f12794b;
        if (i == 0) {
            return zzdxf.zzhrf;
        }
        if (i == 1) {
            return zzdws.zzad(this.f12793a[0]);
        }
        if (this.f27905d == null || zzdws.zzen(i) != this.f27905d.length) {
            zzdwsVar = zzdws.zza(this.f12794b, this.f12793a);
            this.f12794b = zzdwsVar.size();
        } else {
            zzv = zzdws.zzv(this.f12794b, this.f12793a.length);
            Object[] copyOf = zzv ? Arrays.copyOf(this.f12793a, this.f12794b) : this.f12793a;
            int i2 = this.f27906e;
            Object[] objArr = this.f27905d;
            zzdwsVar = new zzdxf<>(copyOf, i2, objArr, objArr.length - 1, this.f12794b);
        }
        this.f12795c = true;
        this.f27905d = null;
        return zzdwsVar;
    }
}
