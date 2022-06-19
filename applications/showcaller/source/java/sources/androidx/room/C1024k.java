package androidx.room;

import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import p020b.p070r.p071a.AbstractC1778d;
import p020b.p070r.p071a.AbstractC1779e;
/* renamed from: androidx.room.k */
/* loaded from: classes-dex2jar.jar:androidx/room/k.class */
public class C1024k implements AbstractC1779e, AbstractC1778d {

    /* renamed from: d */
    static final TreeMap<Integer, C1024k> f4508d = new TreeMap<>();

    /* renamed from: e */
    private volatile String f4509e;

    /* renamed from: f */
    final long[] f4510f;

    /* renamed from: g */
    final double[] f4511g;

    /* renamed from: h */
    final String[] f4512h;

    /* renamed from: i */
    final byte[][] f4513i;

    /* renamed from: j */
    private final int[] f4514j;

    /* renamed from: k */
    final int f4515k;

    /* renamed from: l */
    int f4516l;

    /* JADX WARN: Type inference failed for: r1v10, types: [byte[], byte[][]] */
    private C1024k(int i) {
        this.f4515k = i;
        int i2 = i + 1;
        this.f4514j = new int[i2];
        this.f4510f = new long[i2];
        this.f4511g = new double[i2];
        this.f4512h = new String[i2];
        this.f4513i = new byte[i2];
    }

    /* renamed from: f */
    public static C1024k m31226f(String str, int i) {
        TreeMap<Integer, C1024k> treeMap = f4508d;
        synchronized (treeMap) {
            Map.Entry<Integer, C1024k> ceilingEntry = treeMap.ceilingEntry(Integer.valueOf(i));
            if (ceilingEntry == null) {
                C1024k c1024k = new C1024k(i);
                c1024k.m31225g(str, i);
                return c1024k;
            }
            treeMap.remove(ceilingEntry.getKey());
            C1024k value = ceilingEntry.getValue();
            value.m31225g(str, i);
            return value;
        }
    }

    /* renamed from: k */
    private static void m31224k() {
        TreeMap<Integer, C1024k> treeMap = f4508d;
        if (treeMap.size() > 15) {
            Iterator<Integer> it = treeMap.descendingKeySet().iterator();
            for (int size = treeMap.size() - 10; size > 0; size--) {
                it.next();
                it.remove();
            }
        }
    }

    @Override // p020b.p070r.p071a.AbstractC1778d
    /* renamed from: F */
    public void mo28901F(int i, long j) {
        this.f4514j[i] = 2;
        this.f4510f[i] = j;
    }

    @Override // p020b.p070r.p071a.AbstractC1778d
    /* renamed from: J */
    public void mo28900J(int i, byte[] bArr) {
        this.f4514j[i] = 5;
        this.f4513i[i] = bArr;
    }

    @Override // p020b.p070r.p071a.AbstractC1778d
    /* renamed from: T */
    public void mo28899T(int i) {
        this.f4514j[i] = 1;
    }

    @Override // p020b.p070r.p071a.AbstractC1779e
    /* renamed from: a */
    public String mo28921a() {
        return this.f4509e;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // p020b.p070r.p071a.AbstractC1779e
    /* renamed from: e */
    public void mo28920e(AbstractC1778d abstractC1778d) {
        for (int i = 1; i <= this.f4516l; i++) {
            int i2 = this.f4514j[i];
            if (i2 == 1) {
                abstractC1778d.mo28899T(i);
            } else if (i2 == 2) {
                abstractC1778d.mo28901F(i, this.f4510f[i]);
            } else if (i2 == 3) {
                abstractC1778d.mo28897v(i, this.f4511g[i]);
            } else if (i2 == 4) {
                abstractC1778d.mo28898o(i, this.f4512h[i]);
            } else if (i2 == 5) {
                abstractC1778d.mo28900J(i, this.f4513i[i]);
            }
        }
    }

    /* renamed from: g */
    void m31225g(String str, int i) {
        this.f4509e = str;
        this.f4516l = i;
    }

    @Override // p020b.p070r.p071a.AbstractC1778d
    /* renamed from: o */
    public void mo28898o(int i, String str) {
        this.f4514j[i] = 4;
        this.f4512h[i] = str;
    }

    /* renamed from: p */
    public void m31223p() {
        TreeMap<Integer, C1024k> treeMap = f4508d;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.f4515k), this);
            m31224k();
        }
    }

    @Override // p020b.p070r.p071a.AbstractC1778d
    /* renamed from: v */
    public void mo28897v(int i, double d) {
        this.f4514j[i] = 3;
        this.f4511g[i] = d;
    }
}
