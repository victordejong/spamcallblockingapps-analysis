package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import p131c.p161d.p170b.p224d.p252g.p253a.C4201x3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzat.class */
public final class zzat {

    /* renamed from: e */
    public static final Comparator<byte[]> f24439e = new C4201x3();

    /* renamed from: a */
    public final List<byte[]> f24440a = new ArrayList();

    /* renamed from: b */
    public final List<byte[]> f24441b = new ArrayList(64);

    /* renamed from: c */
    public int f24442c = 0;

    /* renamed from: d */
    public final int f24443d = 4096;

    public zzat(int i) {
    }

    /* renamed from: a */
    public final void m16382a() {
        synchronized (this) {
            while (this.f24442c > this.f24443d) {
                byte[] remove = this.f24440a.remove(0);
                this.f24441b.remove(remove);
                this.f24442c -= remove.length;
            }
        }
    }

    /* renamed from: a */
    public final void m16380a(byte[] bArr) {
        synchronized (this) {
            if (bArr != null) {
                if (bArr.length <= this.f24443d) {
                    this.f24440a.add(bArr);
                    int binarySearch = Collections.binarySearch(this.f24441b, bArr, f24439e);
                    int i = binarySearch;
                    if (binarySearch < 0) {
                        i = (-binarySearch) - 1;
                    }
                    this.f24441b.add(i, bArr);
                    this.f24442c += bArr.length;
                    m16382a();
                }
            }
        }
    }

    /* renamed from: a */
    public final byte[] m16381a(int i) {
        synchronized (this) {
            for (int i2 = 0; i2 < this.f24441b.size(); i2++) {
                byte[] bArr = this.f24441b.get(i2);
                if (bArr.length >= i) {
                    this.f24442c -= bArr.length;
                    this.f24441b.remove(i2);
                    this.f24440a.remove(bArr);
                    return bArr;
                }
            }
            return new byte[i];
        }
    }
}
