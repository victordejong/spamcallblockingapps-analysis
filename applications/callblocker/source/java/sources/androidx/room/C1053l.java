package androidx.room;

import androidx.p042i.p043a.AbstractC0755d;
import androidx.p042i.p043a.AbstractC0756e;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
/* renamed from: androidx.room.l */
/* loaded from: classes-dex2jar.jar:androidx/room/l.class */
public class C1053l implements AbstractC0755d, AbstractC0756e {

    /* renamed from: g */
    static final TreeMap<Integer, C1053l> f3571g = new TreeMap<>();

    /* renamed from: a */
    final long[] f3572a;

    /* renamed from: b */
    final double[] f3573b;

    /* renamed from: c */
    final String[] f3574c;

    /* renamed from: d */
    final byte[][] f3575d;

    /* renamed from: e */
    final int f3576e;

    /* renamed from: f */
    int f3577f;

    /* renamed from: h */
    private volatile String f3578h;

    /* renamed from: i */
    private final int[] f3579i;

    /* JADX WARN: Type inference failed for: r1v10, types: [byte[], byte[][]] */
    private C1053l(int i) {
        this.f3576e = i;
        int i2 = i + 1;
        this.f3579i = new int[i2];
        this.f3572a = new long[i2];
        this.f3573b = new double[i2];
        this.f3574c = new String[i2];
        this.f3575d = new byte[i2];
    }

    /* renamed from: a */
    public static C1053l m18251a(String str, int i) {
        C1053l c1053l;
        synchronized (f3571g) {
            Map.Entry<Integer, C1053l> ceilingEntry = f3571g.ceilingEntry(Integer.valueOf(i));
            if (ceilingEntry != null) {
                f3571g.remove(ceilingEntry.getKey());
                C1053l value = ceilingEntry.getValue();
                value.m18249b(str, i);
                c1053l = value;
            } else {
                C1053l c1053l2 = new C1053l(i);
                c1053l2.m18249b(str, i);
                c1053l = c1053l2;
            }
        }
        return c1053l;
    }

    /* renamed from: c */
    private static void m18248c() {
        if (f3571g.size() > 15) {
            Iterator<Integer> it = f3571g.descendingKeySet().iterator();
            for (int size = f3571g.size() - 10; size > 0; size--) {
                it.next();
                it.remove();
            }
        }
    }

    /* renamed from: a */
    public void m18258a() {
        synchronized (f3571g) {
            f3571g.put(Integer.valueOf(this.f3576e), this);
            m18248c();
        }
    }

    @Override // androidx.p042i.p043a.AbstractC0755d
    /* renamed from: a */
    public void mo18257a(int i) {
        this.f3579i[i] = 1;
    }

    @Override // androidx.p042i.p043a.AbstractC0755d
    /* renamed from: a */
    public void mo18256a(int i, double d) {
        this.f3579i[i] = 3;
        this.f3573b[i] = d;
    }

    @Override // androidx.p042i.p043a.AbstractC0755d
    /* renamed from: a */
    public void mo18255a(int i, long j) {
        this.f3579i[i] = 2;
        this.f3572a[i] = j;
    }

    @Override // androidx.p042i.p043a.AbstractC0755d
    /* renamed from: a */
    public void mo18254a(int i, String str) {
        this.f3579i[i] = 4;
        this.f3574c[i] = str;
    }

    @Override // androidx.p042i.p043a.AbstractC0755d
    /* renamed from: a */
    public void mo18253a(int i, byte[] bArr) {
        this.f3579i[i] = 5;
        this.f3575d[i] = bArr;
    }

    @Override // androidx.p042i.p043a.AbstractC0756e
    /* renamed from: a */
    public void mo18252a(AbstractC0755d abstractC0755d) {
        for (int i = 1; i <= this.f3577f; i++) {
            switch (this.f3579i[i]) {
                case 1:
                    abstractC0755d.mo18257a(i);
                    break;
                case 2:
                    abstractC0755d.mo18255a(i, this.f3572a[i]);
                    break;
                case 3:
                    abstractC0755d.mo18256a(i, this.f3573b[i]);
                    break;
                case 4:
                    abstractC0755d.mo18254a(i, this.f3574c[i]);
                    break;
                case 5:
                    abstractC0755d.mo18253a(i, this.f3575d[i]);
                    break;
            }
        }
    }

    @Override // androidx.p042i.p043a.AbstractC0756e
    /* renamed from: b */
    public String mo18250b() {
        return this.f3578h;
    }

    /* renamed from: b */
    void m18249b(String str, int i) {
        this.f3578h = str;
        this.f3577f = i;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
