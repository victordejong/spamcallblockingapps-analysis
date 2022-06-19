package p1727n3.p1751c0;

import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import p1727n3.p1781e0.p1782a.AbstractC26152d;
import p1727n3.p1781e0.p1782a.AbstractC26153e;
/* renamed from: n3.c0.y */
/* loaded from: classes-dex2jar.jar:n3/c0/y.class */
public class C25686y implements AbstractC26153e, AbstractC26152d {

    /* renamed from: i */
    public static final TreeMap<Integer, C25686y> f71954i = new TreeMap<>();

    /* renamed from: a */
    public volatile String f71955a;

    /* renamed from: b */
    public final long[] f71956b;

    /* renamed from: c */
    public final double[] f71957c;

    /* renamed from: d */
    public final String[] f71958d;

    /* renamed from: e */
    public final byte[][] f71959e;

    /* renamed from: f */
    public final int[] f71960f;

    /* renamed from: g */
    public final int f71961g;

    /* renamed from: h */
    public int f71962h;

    /* JADX WARN: Type inference failed for: r1v10, types: [byte[], byte[][]] */
    public C25686y(int i) {
        this.f71961g = i;
        int i2 = i + 1;
        this.f71960f = new int[i2];
        this.f71956b = new long[i2];
        this.f71957c = new double[i2];
        this.f71958d = new String[i2];
        this.f71959e = new byte[i2];
    }

    /* renamed from: j */
    public static C25686y m3059j(String str, int i) {
        TreeMap<Integer, C25686y> treeMap = f71954i;
        synchronized (treeMap) {
            Map.Entry<Integer, C25686y> ceilingEntry = treeMap.ceilingEntry(Integer.valueOf(i));
            if (ceilingEntry == null) {
                C25686y c25686y = new C25686y(i);
                c25686y.f71955a = str;
                c25686y.f71962h = i;
                return c25686y;
            }
            treeMap.remove(ceilingEntry.getKey());
            C25686y value = ceilingEntry.getValue();
            value.f71955a = str;
            value.f71962h = i;
            return value;
        }
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26152d
    /* renamed from: T0 */
    public void mo2652T0(int i, double d) {
        this.f71960f[i] = 3;
        this.f71957c[i] = d;
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26153e
    /* renamed from: b */
    public String mo2675b() {
        return this.f71955a;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26153e
    /* renamed from: d */
    public void mo2674d(AbstractC26152d abstractC26152d) {
        for (int i = 1; i <= this.f71962h; i++) {
            int i2 = this.f71960f[i];
            if (i2 == 1) {
                abstractC26152d.mo2648y0(i);
            } else if (i2 == 2) {
                abstractC26152d.mo2650l0(i, this.f71956b[i]);
            } else if (i2 == 3) {
                abstractC26152d.mo2652T0(i, this.f71957c[i]);
            } else if (i2 == 4) {
                abstractC26152d.mo2651f0(i, this.f71958d[i]);
            } else if (i2 == 5) {
                abstractC26152d.mo2649o0(i, this.f71959e[i]);
            }
        }
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26152d
    /* renamed from: f0 */
    public void mo2651f0(int i, String str) {
        this.f71960f[i] = 4;
        this.f71958d[i] = str;
    }

    /* renamed from: k */
    public void m3058k(C25686y c25686y) {
        int i = c25686y.f71962h + 1;
        System.arraycopy(c25686y.f71960f, 0, this.f71960f, 0, i);
        System.arraycopy(c25686y.f71956b, 0, this.f71956b, 0, i);
        System.arraycopy(c25686y.f71958d, 0, this.f71958d, 0, i);
        System.arraycopy(c25686y.f71959e, 0, this.f71959e, 0, i);
        System.arraycopy(c25686y.f71957c, 0, this.f71957c, 0, i);
    }

    /* renamed from: l */
    public void m3057l() {
        TreeMap<Integer, C25686y> treeMap = f71954i;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.f71961g), this);
            if (treeMap.size() > 15) {
                Iterator<Integer> it = treeMap.descendingKeySet().iterator();
                for (int size = treeMap.size() - 10; size > 0; size--) {
                    it.next();
                    it.remove();
                }
            }
        }
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26152d
    /* renamed from: l0 */
    public void mo2650l0(int i, long j) {
        this.f71960f[i] = 2;
        this.f71956b[i] = j;
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26152d
    /* renamed from: o0 */
    public void mo2649o0(int i, byte[] bArr) {
        this.f71960f[i] = 5;
        this.f71959e[i] = bArr;
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26152d
    /* renamed from: y0 */
    public void mo2648y0(int i) {
        this.f71960f[i] = 1;
    }
}
