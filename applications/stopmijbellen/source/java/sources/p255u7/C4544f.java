package p255u7;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Objects;
/* renamed from: u7.f */
/* loaded from: classes2-dex2jar.jar:u7/f.class */
public class C4544f<K, V> {

    /* renamed from: a */
    public final LinkedHashMap<K, V> f13965a;

    /* renamed from: b */
    public long f13966b;

    /* renamed from: c */
    public long f13967c;

    /* renamed from: d */
    public int f13968d;

    /* renamed from: e */
    public int f13969e;

    /* renamed from: f */
    public int f13970f;

    /* renamed from: g */
    public int f13971g;

    public C4544f(long j) {
        if (j > 0) {
            this.f13967c = j;
            this.f13965a = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* renamed from: a */
    public void mo138a(boolean z, K k, V v, V v2) {
        throw null;
    }

    /* renamed from: b */
    public final V m851b(K k) {
        Objects.requireNonNull(k, "key == null");
        synchronized (this) {
            V v = this.f13965a.get(k);
            if (v != null) {
                this.f13970f++;
                return v;
            }
            this.f13971g++;
            return null;
        }
    }

    /* renamed from: c */
    public final V m850c(K k, V v) {
        V put;
        if (k != null) {
            synchronized (this) {
                this.f13968d++;
                this.f13966b += m849d(k, v);
                put = this.f13965a.put(k, v);
                if (put != null) {
                    this.f13966b -= m849d(k, put);
                }
            }
            if (put != null) {
                mo138a(false, k, put, v);
            }
            m848f(this.f13967c);
            return put;
        }
        throw new NullPointerException("key == null || value == null");
    }

    /* renamed from: d */
    public final long m849d(K k, V v) {
        long mo137e = mo137e(k, v);
        if (mo137e >= 0) {
            return mo137e;
        }
        throw new IllegalStateException("Negative size: " + k + "=" + v);
    }

    /* renamed from: e */
    public long mo137e(K k, V v) {
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x008c, code lost:
        return;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m848f(long r8) {
        /*
            r7 = this;
        L0:
            r0 = r7
            monitor-enter(r0)
            r0 = r7
            long r0 = r0.f13966b     // Catch: java.lang.Throwable -> Lbb
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L8d
            r0 = r7
            java.util.LinkedHashMap<K, V> r0 = r0.f13965a     // Catch: java.lang.Throwable -> Lbb
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> Lbb
            if (r0 == 0) goto L1e
            r0 = r7
            long r0 = r0.f13966b     // Catch: java.lang.Throwable -> Lbb
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L8d
        L1e:
            r0 = r7
            long r0 = r0.f13966b     // Catch: java.lang.Throwable -> Lbb
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L8a
            r0 = r7
            java.util.LinkedHashMap<K, V> r0 = r0.f13965a     // Catch: java.lang.Throwable -> Lbb
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> Lbb
            if (r0 == 0) goto L34
            goto L8a
        L34:
            r0 = r7
            java.util.LinkedHashMap<K, V> r0 = r0.f13965a     // Catch: java.lang.Throwable -> Lbb
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> Lbb
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> Lbb
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> Lbb
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> Lbb
            r10 = r0
            r0 = r10
            java.lang.Object r0 = r0.getKey()     // Catch: java.lang.Throwable -> Lbb
            r11 = r0
            r0 = r10
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> Lbb
            r10 = r0
            r0 = r7
            java.util.LinkedHashMap<K, V> r0 = r0.f13965a     // Catch: java.lang.Throwable -> Lbb
            r1 = r11
            java.lang.Object r0 = r0.remove(r1)     // Catch: java.lang.Throwable -> Lbb
            r0 = r7
            r1 = r7
            long r1 = r1.f13966b     // Catch: java.lang.Throwable -> Lbb
            r2 = r7
            r3 = r11
            r4 = r10
            long r2 = r2.m849d(r3, r4)     // Catch: java.lang.Throwable -> Lbb
            long r1 = r1 - r2
            r0.f13966b = r1     // Catch: java.lang.Throwable -> Lbb
            r0 = r7
            r1 = r7
            int r1 = r1.f13969e     // Catch: java.lang.Throwable -> Lbb
            r2 = 1
            int r1 = r1 + r2
            r0.f13969e = r1     // Catch: java.lang.Throwable -> Lbb
            r0 = r7
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lbb
            r0 = r7
            r1 = 1
            r2 = r11
            r3 = r10
            r4 = 0
            r0.mo138a(r1, r2, r3, r4)
            goto L0
        L8a:
            r0 = r7
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lbb
            return
        L8d:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> Lbb
            r10 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lbb
            r11 = r0
            r0 = r11
            r0.<init>()     // Catch: java.lang.Throwable -> Lbb
            r0 = r11
            r1 = r7
            java.lang.Class r1 = r1.getClass()     // Catch: java.lang.Throwable -> Lbb
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> Lbb
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> Lbb
            r0 = r11
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> Lbb
            r0 = r10
            r1 = r11
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Lbb
            r0.<init>(r1)     // Catch: java.lang.Throwable -> Lbb
            r0 = r10
            throw r0     // Catch: java.lang.Throwable -> Lbb
        Lbb:
            r11 = move-exception
            r0 = r7
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lbb
            r0 = r11
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p255u7.C4544f.m848f(long):void");
    }

    public final String toString() {
        String format;
        synchronized (this) {
            int i = this.f13970f;
            int i2 = this.f13971g + i;
            format = String.format(Locale.ENGLISH, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Long.valueOf(this.f13967c), Integer.valueOf(this.f13970f), Integer.valueOf(this.f13971g), Integer.valueOf(i2 != 0 ? (i * 100) / i2 : 0));
        }
        return format;
    }
}
