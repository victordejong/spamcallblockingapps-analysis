package p193e.p1451f.p1452a.p1480t;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: e.f.a.t.g */
/* loaded from: classes-dex2jar.jar:e/f/a/t/g.class */
public class C22620g<T, Y> {

    /* renamed from: a */
    public final Map<T, Y> f62641a = new LinkedHashMap(100, 0.75f, true);

    /* renamed from: b */
    public long f62642b;

    /* renamed from: c */
    public long f62643c;

    public C22620g(long j) {
        this.f62642b = j;
    }

    /* renamed from: a */
    public Y m8030a(T t) {
        Y y;
        synchronized (this) {
            y = this.f62641a.get(t);
        }
        return y;
    }

    /* renamed from: b */
    public int mo8029b(Y y) {
        return 1;
    }

    /* renamed from: c */
    public void mo8028c(T t, Y y) {
    }

    /* renamed from: d */
    public Y m8027d(T t, Y y) {
        synchronized (this) {
            long mo8029b = mo8029b(y);
            if (mo8029b >= this.f62642b) {
                mo8028c(t, y);
                return null;
            }
            if (y != null) {
                this.f62643c += mo8029b;
            }
            Y put = this.f62641a.put(t, y);
            if (put != null) {
                this.f62643c -= mo8029b(put);
                if (!put.equals(y)) {
                    mo8028c(t, put);
                }
            }
            m8026e(this.f62642b);
            return put;
        }
    }

    /* renamed from: e */
    public void m8026e(long j) {
        synchronized (this) {
            while (this.f62643c > j) {
                Iterator<Map.Entry<T, Y>> it = this.f62641a.entrySet().iterator();
                Map.Entry<T, Y> next = it.next();
                Y value = next.getValue();
                this.f62643c -= mo8029b(value);
                T key = next.getKey();
                it.remove();
                mo8028c(key, value);
            }
        }
    }
}
