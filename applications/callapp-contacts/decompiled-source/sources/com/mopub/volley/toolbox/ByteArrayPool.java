package com.mopub.volley.toolbox;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/ByteArrayPool.class */
public class ByteArrayPool {

    /* renamed from: a  reason: collision with root package name */
    protected static final Comparator<byte[]> f34819a = new Comparator<byte[]>() { // from class: com.mopub.volley.toolbox.ByteArrayPool.1
        public final int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final List<byte[]> f34820b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final List<byte[]> f34821c = new ArrayList(64);

    /* renamed from: d  reason: collision with root package name */
    private int f34822d = 0;
    private final int e;

    public ByteArrayPool(int i) {
        this.e = i;
    }

    private void a() {
        synchronized (this) {
            while (this.f34822d > this.e) {
                byte[] remove = this.f34820b.remove(0);
                this.f34821c.remove(remove);
                this.f34822d -= remove.length;
            }
        }
    }

    public byte[] getBuf(int i) {
        synchronized (this) {
            for (int i2 = 0; i2 < this.f34821c.size(); i2++) {
                byte[] bArr = this.f34821c.get(i2);
                if (bArr.length >= i) {
                    this.f34822d -= bArr.length;
                    this.f34821c.remove(i2);
                    this.f34820b.remove(bArr);
                    return bArr;
                }
            }
            return new byte[i];
        }
    }

    public void returnBuf(byte[] bArr) {
        synchronized (this) {
            if (bArr != null) {
                if (bArr.length <= this.e) {
                    this.f34820b.add(bArr);
                    int binarySearch = Collections.binarySearch(this.f34821c, bArr, f34819a);
                    int i = binarySearch;
                    if (binarySearch < 0) {
                        i = (-binarySearch) - 1;
                    }
                    this.f34821c.add(i, bArr);
                    this.f34822d += bArr.length;
                    a();
                }
            }
        }
    }
}
