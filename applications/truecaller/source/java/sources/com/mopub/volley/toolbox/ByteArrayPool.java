package com.mopub.volley.toolbox;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/ByteArrayPool.class */
public class ByteArrayPool {

    /* renamed from: e */
    public static final Comparator<byte[]> f9309e = new C2724a();

    /* renamed from: a */
    public final List<byte[]> f9310a = new ArrayList();

    /* renamed from: b */
    public final List<byte[]> f9311b = new ArrayList(64);

    /* renamed from: c */
    public int f9312c = 0;

    /* renamed from: d */
    public final int f9313d;

    /* renamed from: com.mopub.volley.toolbox.ByteArrayPool$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/ByteArrayPool$a.class */
    public static final class C2724a implements Comparator<byte[]> {
        public int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    }

    public ByteArrayPool(int i) {
        this.f9313d = i;
    }

    public byte[] getBuf(int i) {
        synchronized (this) {
            for (int i2 = 0; i2 < this.f9311b.size(); i2++) {
                byte[] bArr = this.f9311b.get(i2);
                if (bArr.length >= i) {
                    this.f9312c -= bArr.length;
                    this.f9311b.remove(i2);
                    this.f9310a.remove(bArr);
                    return bArr;
                }
            }
            return new byte[i];
        }
    }

    public void returnBuf(byte[] bArr) {
        synchronized (this) {
            if (bArr != null) {
                if (bArr.length <= this.f9313d) {
                    this.f9310a.add(bArr);
                    int binarySearch = Collections.binarySearch(this.f9311b, bArr, f9309e);
                    int i = binarySearch;
                    if (binarySearch < 0) {
                        i = (-binarySearch) - 1;
                    }
                    this.f9311b.add(i, bArr);
                    this.f9312c += bArr.length;
                    synchronized (this) {
                        while (this.f9312c > this.f9313d) {
                            byte[] remove = this.f9310a.remove(0);
                            this.f9311b.remove(remove);
                            this.f9312c -= remove.length;
                        }
                    }
                }
            }
        }
    }
}
