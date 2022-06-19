package p067d1;

import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import p099g1.AbstractC2800c;
import p099g1.AbstractC2801d;
import p110h1.C3000e;
/* renamed from: d1.h */
/* loaded from: classes-dex2jar.jar:d1/h.class */
public class C2158h implements AbstractC2801d, AbstractC2800c {

    /* renamed from: i */
    public static final TreeMap<Integer, C2158h> f7893i = new TreeMap<>();

    /* renamed from: a */
    public volatile String f7894a;

    /* renamed from: b */
    public final long[] f7895b;

    /* renamed from: c */
    public final double[] f7896c;

    /* renamed from: d */
    public final String[] f7897d;

    /* renamed from: e */
    public final byte[][] f7898e;

    /* renamed from: f */
    public final int[] f7899f;

    /* renamed from: g */
    public final int f7900g;

    /* renamed from: h */
    public int f7901h;

    /* JADX WARN: Type inference failed for: r1v10, types: [byte[], byte[][]] */
    public C2158h(int i) {
        this.f7900g = i;
        int i2 = i + 1;
        this.f7899f = new int[i2];
        this.f7895b = new long[i2];
        this.f7896c = new double[i2];
        this.f7897d = new String[i2];
        this.f7898e = new byte[i2];
    }

    /* renamed from: l */
    public static C2158h m3806l(String str, int i) {
        TreeMap<Integer, C2158h> treeMap = f7893i;
        synchronized (treeMap) {
            Map.Entry<Integer, C2158h> ceilingEntry = treeMap.ceilingEntry(Integer.valueOf(i));
            if (ceilingEntry == null) {
                C2158h c2158h = new C2158h(i);
                c2158h.f7894a = str;
                c2158h.f7901h = i;
                return c2158h;
            }
            treeMap.remove(ceilingEntry.getKey());
            C2158h value = ceilingEntry.getValue();
            value.f7894a = str;
            value.f7901h = i;
            return value;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // p099g1.AbstractC2801d
    /* renamed from: d */
    public void mo2999d(AbstractC2800c abstractC2800c) {
        for (int i = 1; i <= this.f7901h; i++) {
            int i2 = this.f7899f[i];
            if (i2 == 1) {
                ((C3000e) abstractC2800c).f10100a.bindNull(i);
            } else if (i2 == 2) {
                ((C3000e) abstractC2800c).f10100a.bindLong(i, this.f7895b[i]);
            } else if (i2 == 3) {
                ((C3000e) abstractC2800c).f10100a.bindDouble(i, this.f7896c[i]);
            } else if (i2 == 4) {
                ((C3000e) abstractC2800c).f10100a.bindString(i, this.f7897d[i]);
            } else if (i2 == 5) {
                ((C3000e) abstractC2800c).f10100a.bindBlob(i, this.f7898e[i]);
            }
        }
    }

    @Override // p099g1.AbstractC2801d
    /* renamed from: k */
    public String mo2998k() {
        return this.f7894a;
    }

    /* renamed from: o */
    public void m3805o(int i, long j) {
        this.f7899f[i] = 2;
        this.f7895b[i] = j;
    }

    /* renamed from: p */
    public void m3804p(int i) {
        this.f7899f[i] = 1;
    }

    /* renamed from: r */
    public void m3803r(int i, String str) {
        this.f7899f[i] = 4;
        this.f7897d[i] = str;
    }

    public void release() {
        TreeMap<Integer, C2158h> treeMap = f7893i;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.f7900g), this);
            if (treeMap.size() > 15) {
                Iterator<Integer> it2 = treeMap.descendingKeySet().iterator();
                for (int size = treeMap.size() - 10; size > 0; size--) {
                    it2.next();
                    it2.remove();
                }
            }
        }
    }
}
