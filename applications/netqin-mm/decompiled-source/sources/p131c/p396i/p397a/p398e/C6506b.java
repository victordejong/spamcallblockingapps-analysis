package p131c.p396i.p397a.p398e;

import java.util.List;
/* renamed from: c.i.a.e.b */
/* loaded from: classes2-dex2jar.jar:c/i/a/e/b.class */
public class C6506b<AdData> extends AbstractC6514f<AdData> {

    /* renamed from: c */
    public final long f20247c;

    /* renamed from: d */
    public final int f20248d;

    /* renamed from: e */
    public int f20249e = 0;

    public C6506b(List<AdData> list, long j, int i) {
        super(list);
        this.f20247c = j;
        this.f20248d = i;
    }

    @Override // p131c.p396i.p397a.p398e.AbstractC6514f
    /* renamed from: d */
    public boolean mo20607d() {
        boolean z = this.f20247c > System.currentTimeMillis() || this.f20247c <= 0;
        int i = this.f20249e;
        int i2 = this.f20248d;
        boolean z2 = i < i2 || i2 <= 0;
        boolean z3 = false;
        if (z) {
            z3 = false;
            if (z2) {
                z3 = true;
            }
        }
        return z3;
    }

    /* renamed from: e */
    public int m20633e() {
        return this.f20249e;
    }

    /* renamed from: f */
    public void m20632f() {
        synchronized (this) {
            this.f20249e++;
        }
    }
}
