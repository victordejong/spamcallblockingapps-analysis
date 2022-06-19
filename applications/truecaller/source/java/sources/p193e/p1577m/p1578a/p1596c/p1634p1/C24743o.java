package p193e.p1577m.p1578a.p1596c.p1634p1;

import java.util.Arrays;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.p1.o */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/o.class */
public final class C24743o implements AbstractC24690d {

    /* renamed from: a */
    public final boolean f69337a;

    /* renamed from: b */
    public final int f69338b;

    /* renamed from: c */
    public final C24680c[] f69339c;

    /* renamed from: d */
    public int f69340d;

    /* renamed from: e */
    public int f69341e;

    /* renamed from: f */
    public int f69342f;

    /* renamed from: g */
    public C24680c[] f69343g;

    public C24743o(boolean z, int i) {
        C26232y.m2310r(i > 0);
        C26232y.m2310r(true);
        this.f69337a = z;
        this.f69338b = i;
        this.f69342f = 0;
        this.f69343g = new C24680c[100];
        this.f69339c = new C24680c[1];
    }

    /* renamed from: a */
    public void m4684a(C24680c[] c24680cArr) {
        synchronized (this) {
            int i = this.f69342f;
            int length = c24680cArr.length;
            C24680c[] c24680cArr2 = this.f69343g;
            if (length + i >= c24680cArr2.length) {
                this.f69343g = (C24680c[]) Arrays.copyOf(c24680cArr2, Math.max(c24680cArr2.length * 2, i + c24680cArr.length));
            }
            for (C24680c c24680c : c24680cArr) {
                C24680c[] c24680cArr3 = this.f69343g;
                int i2 = this.f69342f;
                this.f69342f = i2 + 1;
                c24680cArr3[i2] = c24680c;
            }
            this.f69341e -= c24680cArr.length;
            notifyAll();
        }
    }

    /* renamed from: b */
    public void m4683b(int i) {
        synchronized (this) {
            boolean z = i < this.f69340d;
            this.f69340d = i;
            if (z) {
                m4682c();
            }
        }
    }

    /* renamed from: c */
    public void m4682c() {
        synchronized (this) {
            int max = Math.max(0, C24773d0.m4620d(this.f69340d, this.f69338b) - this.f69341e);
            int i = this.f69342f;
            if (max >= i) {
                return;
            }
            Arrays.fill(this.f69343g, max, i, (Object) null);
            this.f69342f = max;
        }
    }
}
