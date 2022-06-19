package com.bytedance.sdk.adnet.core;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* renamed from: com.bytedance.sdk.adnet.core.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/b.class */
class C4197b {

    /* renamed from: a */
    protected static final Comparator<byte[]> f15401a = new Comparator<byte[]>() { // from class: com.bytedance.sdk.adnet.core.b.1
        /* renamed from: a */
        public final int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    };

    /* renamed from: b */
    private final List<byte[]> f15402b = new ArrayList();

    /* renamed from: c */
    private final List<byte[]> f15403c = new ArrayList(64);

    /* renamed from: d */
    private int f15404d = 0;

    /* renamed from: e */
    private final int f15405e;

    public C4197b(int i) {
        this.f15405e = i;
    }

    /* renamed from: a */
    private void m36185a() {
        synchronized (this) {
            while (this.f15404d > this.f15405e) {
                byte[] remove = this.f15402b.remove(0);
                this.f15403c.remove(remove);
                this.f15404d -= remove.length;
            }
        }
    }

    /* renamed from: a */
    public void m36183a(byte[] bArr) {
        synchronized (this) {
            if (bArr != null) {
                if (bArr.length <= this.f15405e) {
                    this.f15402b.add(bArr);
                    int binarySearch = Collections.binarySearch(this.f15403c, bArr, f15401a);
                    int i = binarySearch;
                    if (binarySearch < 0) {
                        i = (-binarySearch) - 1;
                    }
                    this.f15403c.add(i, bArr);
                    this.f15404d += bArr.length;
                    m36185a();
                }
            }
        }
    }

    /* renamed from: a */
    public byte[] m36184a(int i) {
        synchronized (this) {
            for (int i2 = 0; i2 < this.f15403c.size(); i2++) {
                byte[] bArr = this.f15403c.get(i2);
                if (bArr.length >= i) {
                    this.f15404d -= bArr.length;
                    this.f15403c.remove(i2);
                    this.f15402b.remove(bArr);
                    return bArr;
                }
            }
            return new byte[i];
        }
    }
}
