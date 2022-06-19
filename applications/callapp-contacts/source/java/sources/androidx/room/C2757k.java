package androidx.room;

import androidx.sqlite.p082db.AbstractC2793c;
import androidx.sqlite.p082db.AbstractC2794d;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
/* renamed from: androidx.room.k */
/* loaded from: classes-dex2jar.jar:androidx/room/k.class */
public final class C2757k implements AbstractC2793c, AbstractC2794d {

    /* renamed from: h */
    static final TreeMap<Integer, C2757k> f10451h = new TreeMap<>();

    /* renamed from: a */
    final long[] f10452a;

    /* renamed from: b */
    final double[] f10453b;

    /* renamed from: c */
    final String[] f10454c;

    /* renamed from: d */
    final byte[][] f10455d;

    /* renamed from: e */
    public final int[] f10456e;

    /* renamed from: f */
    final int f10457f;

    /* renamed from: g */
    int f10458g;

    /* renamed from: i */
    private volatile String f10459i;

    /* JADX WARN: Type inference failed for: r1v10, types: [byte[], byte[][]] */
    private C2757k(int i) {
        this.f10457f = i;
        int i2 = i + 1;
        this.f10456e = new int[i2];
        this.f10452a = new long[i2];
        this.f10453b = new double[i2];
        this.f10454c = new String[i2];
        this.f10455d = new byte[i2];
    }

    /* renamed from: a */
    public static C2757k m39945a(String str, int i) {
        TreeMap<Integer, C2757k> treeMap = f10451h;
        synchronized (treeMap) {
            Map.Entry<Integer, C2757k> ceilingEntry = treeMap.ceilingEntry(Integer.valueOf(i));
            if (ceilingEntry == null) {
                C2757k c2757k = new C2757k(i);
                c2757k.m39944b(str, i);
                return c2757k;
            }
            treeMap.remove(ceilingEntry.getKey());
            C2757k value = ceilingEntry.getValue();
            value.m39944b(str, i);
            return value;
        }
    }

    /* renamed from: b */
    private void m39944b(String str, int i) {
        this.f10459i = str;
        this.f10458g = i;
    }

    /* renamed from: a */
    public final void m39946a() {
        TreeMap<Integer, C2757k> treeMap = f10451h;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.f10457f), this);
            if (treeMap.size() > 15) {
                Iterator<Integer> it2 = treeMap.descendingKeySet().iterator();
                for (int size = treeMap.size() - 10; size > 0; size--) {
                    it2.next();
                    it2.remove();
                }
            }
        }
    }

    @Override // androidx.sqlite.p082db.AbstractC2793c
    /* renamed from: a */
    public final void mo39889a(int i) {
        this.f10456e[i] = 1;
    }

    @Override // androidx.sqlite.p082db.AbstractC2793c
    /* renamed from: a */
    public final void mo39888a(int i, double d) {
        this.f10456e[i] = 3;
        this.f10453b[i] = d;
    }

    @Override // androidx.sqlite.p082db.AbstractC2793c
    /* renamed from: a */
    public final void mo39887a(int i, long j) {
        this.f10456e[i] = 2;
        this.f10452a[i] = j;
    }

    @Override // androidx.sqlite.p082db.AbstractC2793c
    /* renamed from: a */
    public final void mo39886a(int i, String str) {
        this.f10456e[i] = 4;
        this.f10454c[i] = str;
    }

    @Override // androidx.sqlite.p082db.AbstractC2793c
    /* renamed from: a */
    public final void mo39885a(int i, byte[] bArr) {
        this.f10456e[i] = 5;
        this.f10455d[i] = bArr;
    }

    @Override // androidx.sqlite.p082db.AbstractC2794d
    /* renamed from: a */
    public final void mo39884a(AbstractC2793c abstractC2793c) {
        for (int i = 1; i <= this.f10458g; i++) {
            int i2 = this.f10456e[i];
            if (i2 == 1) {
                abstractC2793c.mo39889a(i);
            } else if (i2 == 2) {
                abstractC2793c.mo39887a(i, this.f10452a[i]);
            } else if (i2 == 3) {
                abstractC2793c.mo39888a(i, this.f10453b[i]);
            } else if (i2 == 4) {
                abstractC2793c.mo39886a(i, this.f10454c[i]);
            } else if (i2 == 5) {
                abstractC2793c.mo39885a(i, this.f10455d[i]);
            }
        }
    }

    @Override // androidx.sqlite.p082db.AbstractC2794d
    /* renamed from: b */
    public final String mo39883b() {
        return this.f10459i;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
