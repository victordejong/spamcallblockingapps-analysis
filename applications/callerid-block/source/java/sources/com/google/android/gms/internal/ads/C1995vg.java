package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.vg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vg.class */
public final class C1995vg {

    /* renamed from: d */
    protected static final Comparator<byte[]> f8906d = new C2034xf();

    /* renamed from: a */
    private final List<byte[]> f8907a = new ArrayList();

    /* renamed from: b */
    private final List<byte[]> f8908b = new ArrayList(64);

    /* renamed from: c */
    private int f8909c = 0;

    public C1995vg(int i) {
    }

    /* renamed from: c */
    private final void m5252c() {
        synchronized (this) {
            while (this.f8909c > 4096) {
                byte[] remove = this.f8907a.remove(0);
                this.f8908b.remove(remove);
                this.f8909c -= remove.length;
            }
        }
    }

    /* renamed from: a */
    public final byte[] m5254a(int i) {
        synchronized (this) {
            for (int i2 = 0; i2 < this.f8908b.size(); i2++) {
                byte[] bArr = this.f8908b.get(i2);
                int length = bArr.length;
                if (length >= i) {
                    this.f8909c -= length;
                    this.f8908b.remove(i2);
                    this.f8907a.remove(bArr);
                    return bArr;
                }
            }
            return new byte[i];
        }
    }

    /* renamed from: b */
    public final void m5253b(byte[] bArr) {
        synchronized (this) {
            if (bArr != null) {
                int length = bArr.length;
                if (length <= 4096) {
                    this.f8907a.add(bArr);
                    int binarySearch = Collections.binarySearch(this.f8908b, bArr, f8906d);
                    int i = binarySearch;
                    if (binarySearch < 0) {
                        i = (-binarySearch) - 1;
                    }
                    this.f8908b.add(i, bArr);
                    this.f8909c += length;
                    m5252c();
                }
            }
        }
    }
}
