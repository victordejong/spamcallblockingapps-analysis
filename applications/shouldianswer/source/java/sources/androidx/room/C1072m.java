package androidx.room;

import androidx.p042i.p043a.AbstractC0784d;
import androidx.p042i.p043a.AbstractC0785e;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
/* renamed from: androidx.room.m */
/* loaded from: classes-dex2jar.jar:androidx/room/m.class */
public class C1072m implements AbstractC0784d, AbstractC0785e {

    /* renamed from: g */
    static final TreeMap<Integer, C1072m> f3361g = new TreeMap<>();

    /* renamed from: a */
    final long[] f3362a;

    /* renamed from: b */
    final double[] f3363b;

    /* renamed from: c */
    final String[] f3364c;

    /* renamed from: d */
    final byte[][] f3365d;

    /* renamed from: e */
    final int f3366e;

    /* renamed from: f */
    int f3367f;

    /* renamed from: h */
    private volatile String f3368h;

    /* renamed from: i */
    private final int[] f3369i;

    /* JADX WARN: Type inference failed for: r1v10, types: [byte[], byte[][]] */
    private C1072m(int i) {
        this.f3366e = i;
        int i2 = i + 1;
        this.f3369i = new int[i2];
        this.f3362a = new long[i2];
        this.f3363b = new double[i2];
        this.f3364c = new String[i2];
        this.f3365d = new byte[i2];
    }

    /* renamed from: a */
    public static C1072m m4407a(String str, int i) {
        synchronized (f3361g) {
            Map.Entry<Integer, C1072m> ceilingEntry = f3361g.ceilingEntry(Integer.valueOf(i));
            if (ceilingEntry == null) {
                C1072m c1072m = new C1072m(i);
                c1072m.m4405b(str, i);
                return c1072m;
            }
            f3361g.remove(ceilingEntry.getKey());
            C1072m value = ceilingEntry.getValue();
            value.m4405b(str, i);
            return value;
        }
    }

    /* renamed from: c */
    private static void m4404c() {
        if (f3361g.size() > 15) {
            Iterator<Integer> it = f3361g.descendingKeySet().iterator();
            for (int size = f3361g.size() - 10; size > 0; size--) {
                it.next();
                it.remove();
            }
        }
    }

    /* renamed from: a */
    public void m4414a() {
        synchronized (f3361g) {
            f3361g.put(Integer.valueOf(this.f3366e), this);
            m4404c();
        }
    }

    @Override // androidx.p042i.p043a.AbstractC0784d
    /* renamed from: a */
    public void mo4413a(int i) {
        this.f3369i[i] = 1;
    }

    @Override // androidx.p042i.p043a.AbstractC0784d
    /* renamed from: a */
    public void mo4412a(int i, double d) {
        this.f3369i[i] = 3;
        this.f3363b[i] = d;
    }

    @Override // androidx.p042i.p043a.AbstractC0784d
    /* renamed from: a */
    public void mo4411a(int i, long j) {
        this.f3369i[i] = 2;
        this.f3362a[i] = j;
    }

    @Override // androidx.p042i.p043a.AbstractC0784d
    /* renamed from: a */
    public void mo4410a(int i, String str) {
        this.f3369i[i] = 4;
        this.f3364c[i] = str;
    }

    @Override // androidx.p042i.p043a.AbstractC0784d
    /* renamed from: a */
    public void mo4409a(int i, byte[] bArr) {
        this.f3369i[i] = 5;
        this.f3365d[i] = bArr;
    }

    @Override // androidx.p042i.p043a.AbstractC0785e
    /* renamed from: a */
    public void mo4408a(AbstractC0784d abstractC0784d) {
        for (int i = 1; i <= this.f3367f; i++) {
            int i2 = this.f3369i[i];
            if (i2 == 1) {
                abstractC0784d.mo4413a(i);
            } else if (i2 == 2) {
                abstractC0784d.mo4411a(i, this.f3362a[i]);
            } else if (i2 == 3) {
                abstractC0784d.mo4412a(i, this.f3363b[i]);
            } else if (i2 == 4) {
                abstractC0784d.mo4410a(i, this.f3364c[i]);
            } else if (i2 == 5) {
                abstractC0784d.mo4409a(i, this.f3365d[i]);
            }
        }
    }

    @Override // androidx.p042i.p043a.AbstractC0785e
    /* renamed from: b */
    public String mo4406b() {
        return this.f3368h;
    }

    /* renamed from: b */
    void m4405b(String str, int i) {
        this.f3368h = str;
        this.f3367f = i;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
