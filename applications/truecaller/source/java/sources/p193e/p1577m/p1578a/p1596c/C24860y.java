package p193e.p1577m.p1578a.p1596c;

import com.amazon.device.ads.DtbConstants;
import com.google.android.exoplayer2.source.TrackGroupArray;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1631n1.C24648g;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24690d;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24743o;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.y */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/y.class */
public class C24860y implements AbstractC24460i0 {

    /* renamed from: a */
    public final C24743o f69712a;

    /* renamed from: b */
    public final long f69713b;

    /* renamed from: c */
    public final long f69714c;

    /* renamed from: d */
    public final long f69715d;

    /* renamed from: e */
    public final long f69716e;

    /* renamed from: f */
    public final long f69717f;

    /* renamed from: g */
    public final int f69718g;

    /* renamed from: h */
    public final boolean f69719h;

    /* renamed from: i */
    public final long f69720i;

    /* renamed from: j */
    public final boolean f69721j;

    /* renamed from: k */
    public int f69722k;

    /* renamed from: l */
    public boolean f69723l;

    /* renamed from: m */
    public boolean f69724m;

    public C24860y(C24743o c24743o, int i, int i2, int i3, int i4, int i5, int i6, boolean z, int i7, boolean z2) {
        m4373i(i4, 0, "bufferForPlaybackMs", DtbConstants.NETWORK_TYPE_UNKNOWN);
        m4373i(i5, 0, "bufferForPlaybackAfterRebufferMs", DtbConstants.NETWORK_TYPE_UNKNOWN);
        m4373i(i, i4, "minBufferAudioMs", "bufferForPlaybackMs");
        m4373i(i2, i4, "minBufferVideoMs", "bufferForPlaybackMs");
        m4373i(i, i5, "minBufferAudioMs", "bufferForPlaybackAfterRebufferMs");
        m4373i(i2, i5, "minBufferVideoMs", "bufferForPlaybackAfterRebufferMs");
        m4373i(i3, i, "maxBufferMs", "minBufferAudioMs");
        m4373i(i3, i2, "maxBufferMs", "minBufferVideoMs");
        m4373i(i7, 0, "backBufferDurationMs", DtbConstants.NETWORK_TYPE_UNKNOWN);
        this.f69712a = c24743o;
        this.f69713b = C24854v.m4383a(i);
        this.f69714c = C24854v.m4383a(i2);
        this.f69715d = C24854v.m4383a(i3);
        this.f69716e = C24854v.m4383a(i4);
        this.f69717f = C24854v.m4383a(i5);
        this.f69718g = i6;
        this.f69719h = z;
        this.f69720i = C24854v.m4383a(i7);
        this.f69721j = z2;
    }

    /* renamed from: i */
    public static void m4373i(int i, int i2, String str, String str2) {
        boolean z = i >= i2;
        C26232y.m2306s(z, str + " cannot be less than " + str2);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24460i0
    /* renamed from: a */
    public boolean mo4381a() {
        return this.f69721j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0063, code lost:
        if ((r0 * r0) >= r5.f69722k) goto L26;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24460i0
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo4380b(long r6, float r8, boolean r9) {
        /*
            r5 = this;
            int r0 = p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0.f69427a
            r10 = r0
            r0 = r8
            r1 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto Le
            goto L17
        Le:
            r0 = r6
            double r0 = (double) r0
            r1 = r8
            double r1 = (double) r1
            double r0 = r0 / r1
            long r0 = java.lang.Math.round(r0)
            r6 = r0
        L17:
            r0 = r9
            if (r0 == 0) goto L25
            r0 = r5
            long r0 = r0.f69717f
            r11 = r0
            goto L2b
        L25:
            r0 = r5
            long r0 = r0.f69716e
            r11 = r0
        L2b:
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L77
            r0 = r6
            r1 = r11
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L77
            r0 = r5
            boolean r0 = r0.f69719h
            if (r0 != 0) goto L71
            r0 = r5
            e.m.a.c.p1.o r0 = r0.f69712a
            r13 = r0
            r0 = r13
            monitor-enter(r0)
            r0 = r13
            int r0 = r0.f69341e     // Catch: java.lang.Throwable -> L69
            r14 = r0
            r0 = r13
            int r0 = r0.f69338b     // Catch: java.lang.Throwable -> L69
            r10 = r0
            r0 = r13
            monitor-exit(r0)
            r0 = r14
            r1 = r10
            int r0 = r0 * r1
            r1 = r5
            int r1 = r1.f69722k
            if (r0 < r1) goto L71
            goto L77
        L69:
            r15 = move-exception
            r0 = r13
            monitor-exit(r0)
            r0 = r15
            throw r0
        L71:
            r0 = 0
            r9 = r0
            goto L7a
        L77:
            r0 = 1
            r9 = r0
        L7a:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.C24860y.mo4380b(long, float, boolean):boolean");
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24460i0
    /* renamed from: c */
    public void mo4379c(AbstractC24853u0[] abstractC24853u0Arr, TrackGroupArray trackGroupArray, C24648g c24648g) {
        boolean z;
        int i = 0;
        while (true) {
            if (i >= abstractC24853u0Arr.length) {
                z = false;
                break;
            } else if (abstractC24853u0Arr[i].mo4387p() == 2 && c24648g.f69027b[i] != null) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        this.f69724m = z;
        int i2 = this.f69718g;
        int i3 = i2;
        if (i2 == -1) {
            int i4 = 0;
            int i5 = 0;
            while (true) {
                i3 = i4;
                if (i5 < abstractC24853u0Arr.length) {
                    int i6 = i4;
                    if (c24648g.f69027b[i5] != null) {
                        int i7 = 131072;
                        switch (abstractC24853u0Arr[i5].mo4387p()) {
                            case 0:
                                i7 = 36438016;
                                break;
                            case 1:
                                i7 = 3538944;
                                break;
                            case 2:
                                i7 = 32768000;
                                break;
                            case 3:
                            case 4:
                            case 5:
                                break;
                            case 6:
                                i7 = 0;
                                break;
                            default:
                                throw new IllegalArgumentException();
                        }
                        i6 = i4 + i7;
                    }
                    i5++;
                    i4 = i6;
                }
            }
        }
        this.f69722k = i3;
        this.f69712a.m4683b(i3);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24460i0
    /* renamed from: d */
    public void mo4378d() {
        m4372j(true);
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24460i0
    /* renamed from: e */
    public long mo4377e() {
        return this.f69720i;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24460i0
    /* renamed from: f */
    public AbstractC24690d mo4376f() {
        return this.f69712a;
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24460i0
    /* renamed from: g */
    public void mo4375g() {
        m4372j(true);
    }

    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24460i0
    /* renamed from: h */
    public boolean mo4374h(long j, float f) {
        int i;
        int i2;
        C24743o c24743o = this.f69712a;
        synchronized (c24743o) {
            i = c24743o.f69341e;
            i2 = c24743o.f69338b;
        }
        boolean z = i * i2 >= this.f69722k;
        char c = this.f69724m ? this.f69714c : this.f69713b;
        int i3 = (f > 1.0f ? 1 : (f == 1.0f ? 0 : -1));
        char c2 = c;
        if (i3 > 0) {
            int i4 = C24773d0.f69427a;
            if (i3 != 0) {
                c = Math.round(c * f);
            }
            c2 = Math.min((long) c, this.f69715d);
        }
        if (j < c2) {
            boolean z2 = true;
            if (!this.f69719h) {
                z2 = !z;
            }
            this.f69723l = z2;
        } else if (j >= this.f69715d || z) {
            this.f69723l = false;
        }
        return this.f69723l;
    }

    /* renamed from: j */
    public final void m4372j(boolean z) {
        this.f69722k = 0;
        this.f69723l = false;
        if (z) {
            C24743o c24743o = this.f69712a;
            synchronized (c24743o) {
                if (c24743o.f69337a) {
                    c24743o.m4683b(0);
                }
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.AbstractC24460i0
    public void onPrepared() {
        m4372j(false);
    }
}
