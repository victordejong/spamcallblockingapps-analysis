package p078c.p122d.p123a;

import android.os.SystemClock;
/* renamed from: c.d.a.b */
/* loaded from: classes2-dex2jar.jar:c/d/a/b.class */
public class C1984b implements AbstractC2061s, AbstractC2060r {

    /* renamed from: a */
    private long f7063a;

    /* renamed from: b */
    private long f7064b;

    /* renamed from: c */
    private long f7065c;

    /* renamed from: d */
    private long f7066d;

    /* renamed from: e */
    private int f7067e;

    /* renamed from: f */
    private int f7068f = 1000;

    @Override // p078c.p122d.p123a.AbstractC2061s
    /* renamed from: a */
    public void mo28148a() {
        this.f7067e = 0;
        this.f7063a = 0L;
    }

    @Override // p078c.p122d.p123a.AbstractC2061s
    /* renamed from: f */
    public void mo28147f(long j) {
        if (this.f7066d <= 0) {
            return;
        }
        long j2 = j - this.f7065c;
        this.f7063a = 0L;
        long uptimeMillis = SystemClock.uptimeMillis() - this.f7066d;
        if (uptimeMillis <= 0) {
            this.f7067e = (int) j2;
        } else {
            this.f7067e = (int) (j2 / uptimeMillis);
        }
    }

    @Override // p078c.p122d.p123a.AbstractC2061s
    /* renamed from: g */
    public void mo28146g(long j) {
        this.f7066d = SystemClock.uptimeMillis();
        this.f7065c = j;
    }

    @Override // p078c.p122d.p123a.AbstractC2061s
    /* renamed from: h */
    public void mo28145h(long j) {
        if (this.f7068f <= 0) {
            return;
        }
        boolean z = true;
        if (this.f7063a != 0) {
            long uptimeMillis = SystemClock.uptimeMillis() - this.f7063a;
            if (uptimeMillis >= this.f7068f || (this.f7067e == 0 && uptimeMillis > 0)) {
                int i = (int) ((j - this.f7064b) / uptimeMillis);
                this.f7067e = i;
                this.f7067e = Math.max(0, i);
            } else {
                z = false;
            }
        }
        if (!z) {
            return;
        }
        this.f7064b = j;
        this.f7063a = SystemClock.uptimeMillis();
    }
}
