package com.mopub.volley.toolbox;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/ByteArrayPool.class */
public class ByteArrayPool {

    /* renamed from: a */
    protected static final Comparator<byte[]> f60400a = new Comparator<byte[]>() { // from class: com.mopub.volley.toolbox.ByteArrayPool.1
        public final int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    };

    /* renamed from: b */
    private final List<byte[]> f60401b = new ArrayList();

    /* renamed from: c */
    private final List<byte[]> f60402c = new ArrayList(64);

    /* renamed from: d */
    private int f60403d = 0;

    /* renamed from: e */
    private final int f60404e;

    public ByteArrayPool(int i) {
        this.f60404e = i;
    }

    /* renamed from: a */
    private void m6022a() {
        synchronized (this) {
            while (this.f60403d > this.f60404e) {
                byte[] remove = this.f60401b.remove(0);
                this.f60402c.remove(remove);
                this.f60403d -= remove.length;
            }
        }
    }

    public byte[] getBuf(int i) {
        synchronized (this) {
            for (int i2 = 0; i2 < this.f60402c.size(); i2++) {
                byte[] bArr = this.f60402c.get(i2);
                if (bArr.length >= i) {
                    this.f60403d -= bArr.length;
                    this.f60402c.remove(i2);
                    this.f60401b.remove(bArr);
                    return bArr;
                }
            }
            return new byte[i];
        }
    }

    public void returnBuf(byte[] bArr) {
        synchronized (this) {
            if (bArr != null) {
                if (bArr.length <= this.f60404e) {
                    this.f60401b.add(bArr);
                    int binarySearch = Collections.binarySearch(this.f60402c, bArr, f60400a);
                    int i = binarySearch;
                    if (binarySearch < 0) {
                        i = (-binarySearch) - 1;
                    }
                    this.f60402c.add(i, bArr);
                    this.f60403d += bArr.length;
                    m6022a();
                }
            }
        }
    }
}
