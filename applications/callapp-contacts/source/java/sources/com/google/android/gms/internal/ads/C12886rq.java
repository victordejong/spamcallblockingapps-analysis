package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.rq */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/rq.class */
public final class C12886rq {

    /* renamed from: e */
    private static final Comparator<byte[]> f49758e = new C12961uk();

    /* renamed from: a */
    private final List<byte[]> f49759a = new ArrayList();

    /* renamed from: b */
    private final List<byte[]> f49760b = new ArrayList(64);

    /* renamed from: c */
    private int f49761c = 0;

    /* renamed from: d */
    private final int f49762d = 4096;

    public C12886rq(int i) {
    }

    /* renamed from: a */
    private final void m14210a() {
        synchronized (this) {
            while (this.f49761c > this.f49762d) {
                byte[] remove = this.f49759a.remove(0);
                this.f49760b.remove(remove);
                this.f49761c -= remove.length;
            }
        }
    }

    /* renamed from: a */
    public final void m14208a(byte[] bArr) {
        synchronized (this) {
            if (bArr != null) {
                if (bArr.length <= this.f49762d) {
                    this.f49759a.add(bArr);
                    int binarySearch = Collections.binarySearch(this.f49760b, bArr, f49758e);
                    int i = binarySearch;
                    if (binarySearch < 0) {
                        i = (-binarySearch) - 1;
                    }
                    this.f49760b.add(i, bArr);
                    this.f49761c += bArr.length;
                    m14210a();
                }
            }
        }
    }

    /* renamed from: a */
    public final byte[] m14209a(int i) {
        synchronized (this) {
            for (int i2 = 0; i2 < this.f49760b.size(); i2++) {
                byte[] bArr = this.f49760b.get(i2);
                if (bArr.length >= i) {
                    this.f49761c -= bArr.length;
                    this.f49760b.remove(i2);
                    this.f49759a.remove(bArr);
                    return bArr;
                }
            }
            return new byte[i];
        }
    }
}
