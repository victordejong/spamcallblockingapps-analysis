package androidx.room;

import androidx.sqlite.db.c;
import androidx.sqlite.db.d;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:androidx/room/k.class */
public final class k implements c, d {
    static final TreeMap<Integer, k> h = new TreeMap<>();

    /* renamed from: a  reason: collision with root package name */
    final long[] f5586a;

    /* renamed from: b  reason: collision with root package name */
    final double[] f5587b;

    /* renamed from: c  reason: collision with root package name */
    final String[] f5588c;

    /* renamed from: d  reason: collision with root package name */
    final byte[][] f5589d;
    public final int[] e;
    final int f;
    int g;
    private volatile String i;

    /* JADX WARN: Type inference failed for: r1v10, types: [byte[], byte[][]] */
    private k(int i) {
        this.f = i;
        int i2 = i + 1;
        this.e = new int[i2];
        this.f5586a = new long[i2];
        this.f5587b = new double[i2];
        this.f5588c = new String[i2];
        this.f5589d = new byte[i2];
    }

    public static k a(String str, int i) {
        TreeMap<Integer, k> treeMap = h;
        synchronized (treeMap) {
            Map.Entry<Integer, k> ceilingEntry = treeMap.ceilingEntry(Integer.valueOf(i));
            if (ceilingEntry != null) {
                treeMap.remove(ceilingEntry.getKey());
                k value = ceilingEntry.getValue();
                value.b(str, i);
                return value;
            }
            k kVar = new k(i);
            kVar.b(str, i);
            return kVar;
        }
    }

    private void b(String str, int i) {
        this.i = str;
        this.g = i;
    }

    public final void a() {
        TreeMap<Integer, k> treeMap = h;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.f), this);
            if (treeMap.size() > 15) {
                Iterator<Integer> it2 = treeMap.descendingKeySet().iterator();
                for (int size = treeMap.size() - 10; size > 0; size--) {
                    it2.next();
                    it2.remove();
                }
            }
        }
    }

    @Override // androidx.sqlite.db.c
    public final void a(int i) {
        this.e[i] = 1;
    }

    @Override // androidx.sqlite.db.c
    public final void a(int i, double d2) {
        this.e[i] = 3;
        this.f5587b[i] = d2;
    }

    @Override // androidx.sqlite.db.c
    public final void a(int i, long j) {
        this.e[i] = 2;
        this.f5586a[i] = j;
    }

    @Override // androidx.sqlite.db.c
    public final void a(int i, String str) {
        this.e[i] = 4;
        this.f5588c[i] = str;
    }

    @Override // androidx.sqlite.db.c
    public final void a(int i, byte[] bArr) {
        this.e[i] = 5;
        this.f5589d[i] = bArr;
    }

    @Override // androidx.sqlite.db.d
    public final void a(c cVar) {
        for (int i = 1; i <= this.g; i++) {
            int i2 = this.e[i];
            if (i2 == 1) {
                cVar.a(i);
            } else if (i2 == 2) {
                cVar.a(i, this.f5586a[i]);
            } else if (i2 == 3) {
                cVar.a(i, this.f5587b[i]);
            } else if (i2 == 4) {
                cVar.a(i, this.f5588c[i]);
            } else if (i2 == 5) {
                cVar.a(i, this.f5589d[i]);
            }
        }
    }

    @Override // androidx.sqlite.db.d
    public final String b() {
        return this.i;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
