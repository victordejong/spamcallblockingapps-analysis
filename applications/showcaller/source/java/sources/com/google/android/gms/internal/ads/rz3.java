package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rz3.class */
public final class rz3 {

    /* renamed from: a */
    protected static final Comparator<byte[]> f29327a = new qz3();

    /* renamed from: b */
    private final List<byte[]> f29328b = new ArrayList();

    /* renamed from: c */
    private final List<byte[]> f29329c = new ArrayList(64);

    /* renamed from: d */
    private int f29330d = 0;

    public rz3(int i) {
    }

    /* renamed from: c */
    private final void m11199c() {
        synchronized (this) {
            while (this.f29330d > 4096) {
                byte[] remove = this.f29328b.remove(0);
                this.f29329c.remove(remove);
                this.f29330d -= remove.length;
            }
        }
    }

    /* renamed from: a */
    public final byte[] m11201a(int i) {
        synchronized (this) {
            for (int i2 = 0; i2 < this.f29329c.size(); i2++) {
                byte[] bArr = this.f29329c.get(i2);
                int length = bArr.length;
                if (length >= i) {
                    this.f29330d -= length;
                    this.f29329c.remove(i2);
                    this.f29328b.remove(bArr);
                    return bArr;
                }
            }
            return new byte[i];
        }
    }

    /* renamed from: b */
    public final void m11200b(byte[] bArr) {
        synchronized (this) {
            if (bArr != null) {
                int length = bArr.length;
                if (length <= 4096) {
                    this.f29328b.add(bArr);
                    int binarySearch = Collections.binarySearch(this.f29329c, bArr, f29327a);
                    int i = binarySearch;
                    if (binarySearch < 0) {
                        i = (-binarySearch) - 1;
                    }
                    this.f29329c.add(i, bArr);
                    this.f29330d += length;
                    m11199c();
                }
            }
        }
    }
}
