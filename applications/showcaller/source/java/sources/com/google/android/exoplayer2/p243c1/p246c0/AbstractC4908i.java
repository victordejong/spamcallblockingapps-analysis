package com.google.android.exoplayer2.p243c1.p246c0;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.C4991s;
import com.google.android.exoplayer2.util.C5536v;
/* renamed from: com.google.android.exoplayer2.c1.c0.i */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/c0/i.class */
public abstract class AbstractC4908i {

    /* renamed from: a */
    private final C4904e f15067a = new C4904e();

    /* renamed from: b */
    private AbstractC4996v f15068b;

    /* renamed from: c */
    private AbstractC4980j f15069c;

    /* renamed from: d */
    private AbstractC4906g f15070d;

    /* renamed from: e */
    private long f15071e;

    /* renamed from: f */
    private long f15072f;

    /* renamed from: g */
    private long f15073g;

    /* renamed from: h */
    private int f15074h;

    /* renamed from: i */
    private int f15075i;

    /* renamed from: j */
    private C4910b f15076j;

    /* renamed from: k */
    private long f15077k;

    /* renamed from: l */
    private boolean f15078l;

    /* renamed from: m */
    private boolean f15079m;

    /* renamed from: com.google.android.exoplayer2.c1.c0.i$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/c0/i$b.class */
    public static class C4910b {

        /* renamed from: a */
        Format f15080a;

        /* renamed from: b */
        AbstractC4906g f15081b;

        C4910b() {
        }
    }

    /* renamed from: com.google.android.exoplayer2.c1.c0.i$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/c0/i$c.class */
    public static final class C4911c implements AbstractC4906g {
        private C4911c() {
        }

        @Override // com.google.android.exoplayer2.p243c1.p246c0.AbstractC4906g
        /* renamed from: a */
        public AbstractC4992t mo21215a() {
            return new AbstractC4992t.C4994b(-9223372036854775807L);
        }

        @Override // com.google.android.exoplayer2.p243c1.p246c0.AbstractC4906g
        /* renamed from: b */
        public long mo21214b(AbstractC4979i abstractC4979i) {
            return -1L;
        }

        @Override // com.google.android.exoplayer2.p243c1.p246c0.AbstractC4906g
        /* renamed from: c */
        public void mo21213c(long j) {
        }
    }

    /* renamed from: g */
    private int m21218g(AbstractC4979i abstractC4979i) {
        boolean z = true;
        while (z) {
            if (!this.f15067a.m21230d(abstractC4979i)) {
                this.f15074h = 3;
                return -1;
            }
            this.f15077k = abstractC4979i.mo20999k() - this.f15072f;
            boolean mo21210h = mo21210h(this.f15067a.m21231c(), this.f15072f, this.f15076j);
            z = mo21210h;
            if (mo21210h) {
                this.f15072f = abstractC4979i.mo20999k();
                z = mo21210h;
            }
        }
        Format format = this.f15076j.f15080a;
        this.f15075i = format.f14475z;
        if (!this.f15079m) {
            this.f15068b.mo19983d(format);
            this.f15079m = true;
        }
        AbstractC4906g abstractC4906g = this.f15076j.f15081b;
        if (abstractC4906g != null) {
            this.f15070d = abstractC4906g;
        } else if (abstractC4979i.getLength() == -1) {
            this.f15070d = new C4911c();
        } else {
            C4905f m21232b = this.f15067a.m21232b();
            this.f15070d = new C4898b(this, this.f15072f, abstractC4979i.getLength(), m21232b.f15061h + m21232b.f15062i, m21232b.f15056c, (m21232b.f15055b & 4) != 0);
        }
        this.f15076j = null;
        this.f15074h = 2;
        this.f15067a.m21228f();
        return 0;
    }

    /* renamed from: i */
    private int m21217i(AbstractC4979i abstractC4979i, C4991s c4991s) {
        long mo21214b = this.f15070d.mo21214b(abstractC4979i);
        if (mo21214b >= 0) {
            c4991s.f15517a = mo21214b;
            return 1;
        }
        if (mo21214b < -1) {
            mo21212d(-(mo21214b + 2));
        }
        if (!this.f15078l) {
            this.f15069c.mo19764c(this.f15070d.mo21215a());
            this.f15078l = true;
        }
        if (this.f15077k <= 0 && !this.f15067a.m21230d(abstractC4979i)) {
            this.f15074h = 3;
            return -1;
        }
        this.f15077k = 0L;
        C5536v m21231c = this.f15067a.m21231c();
        long mo21211e = mo21211e(m21231c);
        if (mo21211e >= 0) {
            long j = this.f15073g;
            if (j + mo21211e >= this.f15071e) {
                long m21222a = m21222a(j);
                this.f15068b.mo19985b(m21231c, m21231c.m18675d());
                this.f15068b.mo19984c(m21222a, 1, m21231c.m18675d(), 0, null);
                this.f15071e = -1L;
            }
        }
        this.f15073g += mo21211e;
        return 0;
    }

    /* renamed from: a */
    public long m21222a(long j) {
        return (j * 1000000) / this.f15075i;
    }

    /* renamed from: b */
    public long m21221b(long j) {
        return (this.f15075i * j) / 1000000;
    }

    /* renamed from: c */
    public void m21220c(AbstractC4980j abstractC4980j, AbstractC4996v abstractC4996v) {
        this.f15069c = abstractC4980j;
        this.f15068b = abstractC4996v;
        mo21209j(true);
    }

    /* renamed from: d */
    public void mo21212d(long j) {
        this.f15073g = j;
    }

    /* renamed from: e */
    protected abstract long mo21211e(C5536v c5536v);

    /* renamed from: f */
    public final int m21219f(AbstractC4979i abstractC4979i, C4991s c4991s) {
        int i = this.f15074h;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException();
                }
                return m21217i(abstractC4979i, c4991s);
            }
            abstractC4979i.mo21002h((int) this.f15072f);
            this.f15074h = 2;
            return 0;
        }
        return m21218g(abstractC4979i);
    }

    /* renamed from: h */
    protected abstract boolean mo21210h(C5536v c5536v, long j, C4910b c4910b);

    /* renamed from: j */
    public void mo21209j(boolean z) {
        if (z) {
            this.f15076j = new C4910b();
            this.f15072f = 0L;
            this.f15074h = 0;
        } else {
            this.f15074h = 1;
        }
        this.f15071e = -1L;
        this.f15073g = 0L;
    }

    /* renamed from: k */
    public final void m21216k(long j, long j2) {
        this.f15067a.m21229e();
        if (j == 0) {
            mo21209j(!this.f15078l);
        } else if (this.f15074h == 0) {
        } else {
            long m21221b = m21221b(j2);
            this.f15071e = m21221b;
            this.f15070d.mo21213c(m21221b);
            this.f15074h = 2;
        }
    }
}
