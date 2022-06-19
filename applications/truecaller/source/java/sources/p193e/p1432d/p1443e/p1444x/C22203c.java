package p193e.p1432d.p1443e.p1444x;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* renamed from: e.d.e.x.c */
/* loaded from: classes-dex2jar.jar:e/d/e/x/c.class */
public class C22203c {

    /* renamed from: e */
    public static final Comparator<byte[]> f61670e = new C22204a();

    /* renamed from: a */
    public final List<byte[]> f61671a = new ArrayList();

    /* renamed from: b */
    public final List<byte[]> f61672b = new ArrayList(64);

    /* renamed from: c */
    public int f61673c = 0;

    /* renamed from: d */
    public final int f61674d;

    /* renamed from: e.d.e.x.c$a */
    /* loaded from: classes-dex2jar.jar:e/d/e/x/c$a.class */
    public class C22204a implements Comparator<byte[]> {
        @Override // java.util.Comparator
        public int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    }

    public C22203c(int i) {
        this.f61674d = i;
    }

    /* renamed from: a */
    public byte[] m8474a(int i) {
        synchronized (this) {
            for (int i2 = 0; i2 < this.f61672b.size(); i2++) {
                byte[] bArr = this.f61672b.get(i2);
                if (bArr.length >= i) {
                    this.f61673c -= bArr.length;
                    this.f61672b.remove(i2);
                    this.f61671a.remove(bArr);
                    return bArr;
                }
            }
            return new byte[i];
        }
    }

    /* renamed from: b */
    public void m8473b(byte[] bArr) {
        synchronized (this) {
            if (bArr != null) {
                if (bArr.length <= this.f61674d) {
                    this.f61671a.add(bArr);
                    int binarySearch = Collections.binarySearch(this.f61672b, bArr, f61670e);
                    int i = binarySearch;
                    if (binarySearch < 0) {
                        i = (-binarySearch) - 1;
                    }
                    this.f61672b.add(i, bArr);
                    this.f61673c += bArr.length;
                    synchronized (this) {
                        while (this.f61673c > this.f61674d) {
                            byte[] remove = this.f61671a.remove(0);
                            this.f61672b.remove(remove);
                            this.f61673c -= remove.length;
                        }
                    }
                }
            }
        }
    }
}
