package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/rq.class */
public final class rq {
    private static final Comparator<byte[]> e = new uk();

    /* renamed from: a  reason: collision with root package name */
    private final List<byte[]> f28352a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final List<byte[]> f28353b = new ArrayList(64);

    /* renamed from: c  reason: collision with root package name */
    private int f28354c = 0;

    /* renamed from: d  reason: collision with root package name */
    private final int f28355d = 4096;

    public rq(int i) {
    }

    private final void a() {
        synchronized (this) {
            while (this.f28354c > this.f28355d) {
                byte[] remove = this.f28352a.remove(0);
                this.f28353b.remove(remove);
                this.f28354c -= remove.length;
            }
        }
    }

    public final void a(byte[] bArr) {
        synchronized (this) {
            if (bArr != null) {
                if (bArr.length <= this.f28355d) {
                    this.f28352a.add(bArr);
                    int binarySearch = Collections.binarySearch(this.f28353b, bArr, e);
                    int i = binarySearch;
                    if (binarySearch < 0) {
                        i = (-binarySearch) - 1;
                    }
                    this.f28353b.add(i, bArr);
                    this.f28354c += bArr.length;
                    a();
                }
            }
        }
    }

    public final byte[] a(int i) {
        synchronized (this) {
            for (int i2 = 0; i2 < this.f28353b.size(); i2++) {
                byte[] bArr = this.f28353b.get(i2);
                if (bArr.length >= i) {
                    this.f28354c -= bArr.length;
                    this.f28353b.remove(i2);
                    this.f28352a.remove(bArr);
                    return bArr;
                }
            }
            return new byte[i];
        }
    }
}
