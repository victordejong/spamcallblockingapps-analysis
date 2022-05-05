package com.mopub.volley.toolbox;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ByteArrayPool.class */
public class ByteArrayPool {

    /* renamed from: e */
    public static final Comparator<byte[]> f9537e = new C4049a();

    /* renamed from: a */
    public final List<byte[]> f9538a = new ArrayList();

    /* renamed from: b */
    public final List<byte[]> f9539b = new ArrayList(64);

    /* renamed from: c */
    public int f9540c = 0;

    /* renamed from: d */
    public final int f9541d;

    /* renamed from: com.mopub.volley.toolbox.ByteArrayPool$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/ByteArrayPool$a.class */
    public static final class C4049a implements Comparator<byte[]> {
        public int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    }

    public ByteArrayPool(int i) {
        this.f9541d = i;
    }

    /* renamed from: a */
    public final void m29930a() {
        synchronized (this) {
            while (this.f9540c > this.f9541d) {
                byte[] remove = this.f9538a.remove(0);
                this.f9539b.remove(remove);
                this.f9540c -= remove.length;
            }
        }
    }

    public byte[] getBuf(int i) {
        synchronized (this) {
            for (int i2 = 0; i2 < this.f9539b.size(); i2++) {
                byte[] bArr = this.f9539b.get(i2);
                if (bArr.length >= i) {
                    this.f9540c -= bArr.length;
                    this.f9539b.remove(i2);
                    this.f9538a.remove(bArr);
                    return bArr;
                }
            }
            return new byte[i];
        }
    }

    public void returnBuf(byte[] bArr) {
        synchronized (this) {
            if (bArr != null) {
                if (bArr.length <= this.f9541d) {
                    this.f9538a.add(bArr);
                    int binarySearch = Collections.binarySearch(this.f9539b, bArr, f9537e);
                    int i = binarySearch;
                    if (binarySearch < 0) {
                        i = (-binarySearch) - 1;
                    }
                    this.f9539b.add(i, bArr);
                    this.f9540c += bArr.length;
                    m29930a();
                }
            }
        }
    }
}
