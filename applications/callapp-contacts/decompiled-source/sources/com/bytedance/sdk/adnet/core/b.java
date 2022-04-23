package com.bytedance.sdk.adnet.core;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/b.class */
class b {

    /* renamed from: a  reason: collision with root package name */
    protected static final Comparator<byte[]> f8283a = new Comparator<byte[]>() { // from class: com.bytedance.sdk.adnet.core.b.1
        /* renamed from: a */
        public final int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final List<byte[]> f8284b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final List<byte[]> f8285c = new ArrayList(64);

    /* renamed from: d  reason: collision with root package name */
    private int f8286d = 0;
    private final int e;

    public b(int i) {
        this.e = i;
    }

    private void a() {
        synchronized (this) {
            while (this.f8286d > this.e) {
                byte[] remove = this.f8284b.remove(0);
                this.f8285c.remove(remove);
                this.f8286d -= remove.length;
            }
        }
    }

    public void a(byte[] bArr) {
        synchronized (this) {
            if (bArr != null) {
                if (bArr.length <= this.e) {
                    this.f8284b.add(bArr);
                    int binarySearch = Collections.binarySearch(this.f8285c, bArr, f8283a);
                    int i = binarySearch;
                    if (binarySearch < 0) {
                        i = (-binarySearch) - 1;
                    }
                    this.f8285c.add(i, bArr);
                    this.f8286d += bArr.length;
                    a();
                }
            }
        }
    }

    public byte[] a(int i) {
        synchronized (this) {
            for (int i2 = 0; i2 < this.f8285c.size(); i2++) {
                byte[] bArr = this.f8285c.get(i2);
                if (bArr.length >= i) {
                    this.f8286d -= bArr.length;
                    this.f8285c.remove(i2);
                    this.f8284b.remove(bArr);
                    return bArr;
                }
            }
            return new byte[i];
        }
    }
}
