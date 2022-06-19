package com.google.android.exoplayer2;

import com.google.android.exoplayer2.source.AbstractC5209b0;
import com.google.android.exoplayer2.source.AbstractC5292u;
import com.google.android.exoplayer2.source.AbstractC5294v;
import com.google.android.exoplayer2.source.C5276m;
import com.google.android.exoplayer2.source.C5284r;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.AbstractC5408f;
import com.google.android.exoplayer2.trackselection.AbstractC5412h;
import com.google.android.exoplayer2.trackselection.C5411g;
import com.google.android.exoplayer2.trackselection.C5414i;
import com.google.android.exoplayer2.upstream.AbstractC5472e;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5526o;
/* renamed from: com.google.android.exoplayer2.h0 */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/h0.class */
final class C5094h0 {

    /* renamed from: a */
    public final AbstractC5292u f15933a;

    /* renamed from: b */
    public final Object f15934b;

    /* renamed from: c */
    public final AbstractC5209b0[] f15935c;

    /* renamed from: d */
    public boolean f15936d;

    /* renamed from: e */
    public boolean f15937e;

    /* renamed from: f */
    public C5096i0 f15938f;

    /* renamed from: g */
    private final boolean[] f15939g;

    /* renamed from: h */
    private final AbstractC5315t0[] f15940h;

    /* renamed from: i */
    private final AbstractC5412h f15941i;

    /* renamed from: j */
    private final AbstractC5294v f15942j;

    /* renamed from: k */
    private C5094h0 f15943k;

    /* renamed from: l */
    private TrackGroupArray f15944l = TrackGroupArray.f16307d;

    /* renamed from: m */
    private C5414i f15945m;

    /* renamed from: n */
    private long f15946n;

    public C5094h0(AbstractC5315t0[] abstractC5315t0Arr, long j, AbstractC5412h abstractC5412h, AbstractC5472e abstractC5472e, AbstractC5294v abstractC5294v, C5096i0 c5096i0, C5414i c5414i) {
        this.f15940h = abstractC5315t0Arr;
        this.f15946n = j;
        this.f15941i = abstractC5412h;
        this.f15942j = abstractC5294v;
        AbstractC5294v.C5295a c5295a = c5096i0.f15948a;
        this.f15934b = c5295a.f16780a;
        this.f15938f = c5096i0;
        this.f15945m = c5414i;
        this.f15935c = new AbstractC5209b0[abstractC5315t0Arr.length];
        this.f15939g = new boolean[abstractC5315t0Arr.length];
        this.f15933a = m20578e(c5295a, abstractC5294v, abstractC5472e, c5096i0.f15949b, c5096i0.f15951d);
    }

    /* renamed from: c */
    private void m20580c(AbstractC5209b0[] abstractC5209b0Arr) {
        int i = 0;
        while (true) {
            AbstractC5315t0[] abstractC5315t0Arr = this.f15940h;
            if (i < abstractC5315t0Arr.length) {
                if (abstractC5315t0Arr[i].mo19258i() == 6 && this.f15945m.m19271c(i)) {
                    abstractC5209b0Arr[i] = new C5284r();
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: e */
    private static AbstractC5292u m20578e(AbstractC5294v.C5295a c5295a, AbstractC5294v abstractC5294v, AbstractC5472e abstractC5472e, long j, long j2) {
        AbstractC5292u mo19726a = abstractC5294v.mo19726a(c5295a, abstractC5472e, j);
        C5276m c5276m = mo19726a;
        if (j2 != -9223372036854775807L) {
            c5276m = mo19726a;
            if (j2 != Long.MIN_VALUE) {
                c5276m = new C5276m(mo19726a, true, 0L, j2);
            }
        }
        return c5276m;
    }

    /* renamed from: f */
    private void m20577f() {
        if (!m20565r()) {
            return;
        }
        int i = 0;
        while (true) {
            C5414i c5414i = this.f15945m;
            if (i >= c5414i.f17389a) {
                return;
            }
            boolean m19271c = c5414i.m19271c(i);
            AbstractC5408f m19279a = this.f15945m.f17391c.m19279a(i);
            if (m19271c && m19279a != null) {
                m19279a.mo19290f();
            }
            i++;
        }
    }

    /* renamed from: g */
    private void m20576g(AbstractC5209b0[] abstractC5209b0Arr) {
        int i = 0;
        while (true) {
            AbstractC5315t0[] abstractC5315t0Arr = this.f15940h;
            if (i < abstractC5315t0Arr.length) {
                if (abstractC5315t0Arr[i].mo19258i() == 6) {
                    abstractC5209b0Arr[i] = null;
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: h */
    private void m20575h() {
        if (!m20565r()) {
            return;
        }
        int i = 0;
        while (true) {
            C5414i c5414i = this.f15945m;
            if (i >= c5414i.f17389a) {
                return;
            }
            boolean m19271c = c5414i.m19271c(i);
            AbstractC5408f m19279a = this.f15945m.f17391c.m19279a(i);
            if (m19271c && m19279a != null) {
                m19279a.mo19291e();
            }
            i++;
        }
    }

    /* renamed from: r */
    private boolean m20565r() {
        return this.f15943k == null;
    }

    /* renamed from: u */
    private static void m20562u(long j, AbstractC5294v abstractC5294v, AbstractC5292u abstractC5292u) {
        try {
            if (j == -9223372036854775807L || j == Long.MIN_VALUE) {
                abstractC5294v.mo19723i(abstractC5292u);
            } else {
                abstractC5294v.mo19723i(((C5276m) abstractC5292u).f16741d);
            }
        } catch (RuntimeException e) {
            C5526o.m18744d("MediaPeriodHolder", "Period release failed.", e);
        }
    }

    /* renamed from: a */
    public long m20582a(C5414i c5414i, long j, boolean z) {
        return m20581b(c5414i, j, z, new boolean[this.f15940h.length]);
    }

    /* renamed from: b */
    public long m20581b(C5414i c5414i, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= c5414i.f17389a) {
                break;
            }
            boolean[] zArr2 = this.f15939g;
            if (z || !c5414i.m19272b(this.f15945m, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        m20576g(this.f15935c);
        m20577f();
        this.f15945m = c5414i;
        m20575h();
        C5411g c5411g = c5414i.f17391c;
        long mo19757h = this.f15933a.mo19757h(c5411g.m19278b(), this.f15939g, this.f15935c, zArr, j);
        m20580c(this.f15935c);
        this.f15937e = false;
        int i2 = 0;
        while (true) {
            AbstractC5209b0[] abstractC5209b0Arr = this.f15935c;
            if (i2 < abstractC5209b0Arr.length) {
                if (abstractC5209b0Arr[i2] != null) {
                    C5508e.m18910f(c5414i.m19271c(i2));
                    if (this.f15940h[i2].mo19258i() != 6) {
                        this.f15937e = true;
                    }
                } else {
                    C5508e.m18910f(c5411g.m19279a(i2) == null);
                }
                i2++;
            } else {
                return mo19757h;
            }
        }
    }

    /* renamed from: d */
    public void m20579d(long j) {
        C5508e.m18910f(m20565r());
        this.f15933a.mo19766b(m20558y(j));
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* renamed from: i */
    public long m20574i() {
        if (!this.f15936d) {
            return this.f15938f.f15949b;
        }
        char mo19760e = this.f15937e ? this.f15933a.mo19760e() : (char) 0;
        char c = mo19760e;
        if (mo19760e == Long.MIN_VALUE) {
            c = this.f15938f.f15952e;
        }
        return c;
    }

    /* renamed from: j */
    public C5094h0 m20573j() {
        return this.f15943k;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: k */
    public long m20572k() {
        return !this.f15936d ? (char) 0 : this.f15933a.mo19768a();
    }

    /* renamed from: l */
    public long m20571l() {
        return this.f15946n;
    }

    /* renamed from: m */
    public long m20570m() {
        return this.f15938f.f15949b + this.f15946n;
    }

    /* renamed from: n */
    public TrackGroupArray m20569n() {
        return this.f15944l;
    }

    /* renamed from: o */
    public C5414i m20568o() {
        return this.f15945m;
    }

    /* renamed from: p */
    public void m20567p(float f, AbstractC5585y0 abstractC5585y0) {
        this.f15936d = true;
        this.f15944l = this.f15933a.mo19749r();
        long m20582a = m20582a(m20561v(f, abstractC5585y0), this.f15938f.f15949b, false);
        long j = this.f15946n;
        C5096i0 c5096i0 = this.f15938f;
        this.f15946n = j + (c5096i0.f15949b - m20582a);
        this.f15938f = c5096i0.m20555b(m20582a);
    }

    /* renamed from: q */
    public boolean m20566q() {
        return this.f15936d && (!this.f15937e || this.f15933a.mo19760e() == Long.MIN_VALUE);
    }

    /* renamed from: s */
    public void m20564s(long j) {
        C5508e.m18910f(m20565r());
        if (this.f15936d) {
            this.f15933a.mo19758f(m20558y(j));
        }
    }

    /* renamed from: t */
    public void m20563t() {
        m20577f();
        m20562u(this.f15938f.f15951d, this.f15942j, this.f15933a);
    }

    /* renamed from: v */
    public C5414i m20561v(float f, AbstractC5585y0 abstractC5585y0) {
        AbstractC5408f[] m19278b;
        C5414i mo19274d = this.f15941i.mo19274d(this.f15940h, m20569n(), this.f15938f.f15948a, abstractC5585y0);
        for (AbstractC5408f abstractC5408f : mo19274d.f17391c.m19278b()) {
            if (abstractC5408f != null) {
                abstractC5408f.mo19284l(f);
            }
        }
        return mo19274d;
    }

    /* renamed from: w */
    public void m20560w(C5094h0 c5094h0) {
        if (c5094h0 == this.f15943k) {
            return;
        }
        m20577f();
        this.f15943k = c5094h0;
        m20575h();
    }

    /* renamed from: x */
    public void m20559x(long j) {
        this.f15946n = j;
    }

    /* renamed from: y */
    public long m20558y(long j) {
        return j - m20571l();
    }

    /* renamed from: z */
    public long m20557z(long j) {
        return j + m20571l();
    }
}
