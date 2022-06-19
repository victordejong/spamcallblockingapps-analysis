package com.mopub.volley.toolbox;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/ByteArrayPool.class */
public class ByteArrayPool {

    /* renamed from: e */
    public static final Comparator<byte[]> f5511e = new C1235a();

    /* renamed from: a */
    public final List<byte[]> f5512a = new ArrayList();

    /* renamed from: b */
    public final List<byte[]> f5513b = new ArrayList(64);

    /* renamed from: c */
    public int f5514c = 0;

    /* renamed from: d */
    public final int f5515d;

    /* renamed from: com.mopub.volley.toolbox.ByteArrayPool$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/ByteArrayPool$a.class */
    public static final class C1235a implements Comparator<byte[]> {
        public int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    }

    public ByteArrayPool(int i) {
        this.f5515d = i;
    }

    /* renamed from: a */
    public final void m3146a() {
        synchronized (this) {
            while (this.f5514c > this.f5515d) {
                byte[] remove = this.f5512a.remove(0);
                this.f5513b.remove(remove);
                this.f5514c -= remove.length;
            }
        }
    }

    public byte[] getBuf(int i) {
        synchronized (this) {
            for (int i2 = 0; i2 < this.f5513b.size(); i2++) {
                byte[] bArr = this.f5513b.get(i2);
                if (bArr.length >= i) {
                    this.f5514c -= bArr.length;
                    this.f5513b.remove(i2);
                    this.f5512a.remove(bArr);
                    return bArr;
                }
            }
            return new byte[i];
        }
    }

    public void returnBuf(byte[] bArr) {
        synchronized (this) {
            if (bArr != null) {
                if (bArr.length <= this.f5515d) {
                    this.f5512a.add(bArr);
                    int binarySearch = Collections.binarySearch(this.f5513b, bArr, f5511e);
                    int i = binarySearch;
                    if (binarySearch < 0) {
                        i = (-binarySearch) - 1;
                    }
                    this.f5513b.add(i, bArr);
                    this.f5514c += bArr.length;
                    m3146a();
                }
            }
        }
    }
}
