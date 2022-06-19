package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.hx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hx.class */
public final class C3208hx {

    /* renamed from: e */
    private static final Comparator<byte[]> f16729e = new C3291kz();

    /* renamed from: a */
    private final List<byte[]> f16730a = new ArrayList();

    /* renamed from: b */
    private final List<byte[]> f16731b = new ArrayList(64);

    /* renamed from: c */
    private int f16732c = 0;

    /* renamed from: d */
    private final int f16733d = 4096;

    public C3208hx(int i) {
    }

    /* renamed from: a */
    private final void m7769a() {
        synchronized (this) {
            while (this.f16732c > this.f16733d) {
                byte[] remove = this.f16730a.remove(0);
                this.f16731b.remove(remove);
                this.f16732c -= remove.length;
            }
        }
    }

    /* renamed from: a */
    public final void m7767a(byte[] bArr) {
        synchronized (this) {
            if (bArr != null) {
                if (bArr.length <= this.f16733d) {
                    this.f16730a.add(bArr);
                    int binarySearch = Collections.binarySearch(this.f16731b, bArr, f16729e);
                    int i = binarySearch;
                    if (binarySearch < 0) {
                        i = (-binarySearch) - 1;
                    }
                    this.f16731b.add(i, bArr);
                    this.f16732c += bArr.length;
                    m7769a();
                }
            }
        }
    }

    /* renamed from: a */
    public final byte[] m7768a(int i) {
        byte[] bArr;
        synchronized (this) {
            int i2 = 0;
            while (true) {
                if (i2 >= this.f16731b.size()) {
                    bArr = new byte[i];
                    break;
                }
                bArr = this.f16731b.get(i2);
                if (bArr.length >= i) {
                    this.f16732c -= bArr.length;
                    this.f16731b.remove(i2);
                    this.f16730a.remove(bArr);
                    break;
                }
                i2++;
            }
        }
        return bArr;
    }
}
