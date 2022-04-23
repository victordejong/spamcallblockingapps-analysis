package p530d.p541c.p562g0;

import java.util.concurrent.TimeUnit;
import p530d.p541c.p543b0.p545b.C9650a;
/* renamed from: d.c.g0.b */
/* loaded from: classes2-dex2jar.jar:d/c/g0/b.class */
public final class C9828b<T> {

    /* renamed from: a */
    public final T f37042a;

    /* renamed from: b */
    public final long f37043b;

    /* renamed from: c */
    public final TimeUnit f37044c;

    public C9828b(T t, long j, TimeUnit timeUnit) {
        this.f37042a = t;
        this.f37043b = j;
        C9650a.m2095a(timeUnit, "unit is null");
        this.f37044c = timeUnit;
    }

    /* renamed from: a */
    public long m1914a() {
        return this.f37043b;
    }

    /* renamed from: b */
    public T m1913b() {
        return this.f37042a;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C9828b) {
            C9828b bVar = (C9828b) obj;
            z = false;
            if (C9650a.m2096a(this.f37042a, bVar.f37042a)) {
                z = false;
                if (this.f37043b == bVar.f37043b) {
                    z = false;
                    if (C9650a.m2096a(this.f37044c, bVar.f37044c)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        T t = this.f37042a;
        int hashCode = t != null ? t.hashCode() : 0;
        long j = this.f37043b;
        return (((hashCode * 31) + ((int) (j ^ (j >>> 31)))) * 31) + this.f37044c.hashCode();
    }

    public String toString() {
        return "Timed[time=" + this.f37043b + ", unit=" + this.f37044c + ", value=" + this.f37042a + "]";
    }
}
