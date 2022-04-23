package p131c.p161d.p170b.p188c;

import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.common.collect.MapMakerInternalMap;
import p131c.p161d.p170b.p188c.p198d1.C2783g;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2821e;
import p131c.p161d.p170b.p188c.p201f1.C2830l;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.u */
/* loaded from: classes-dex2jar.jar:c/d/b/c/u.class */
public class C3009u implements AbstractC2760c0 {

    /* renamed from: a */
    public final C2830l f10861a;

    /* renamed from: b */
    public final long f10862b;

    /* renamed from: c */
    public final long f10863c;

    /* renamed from: d */
    public final long f10864d;

    /* renamed from: e */
    public final long f10865e;

    /* renamed from: f */
    public final long f10866f;

    /* renamed from: g */
    public final int f10867g;

    /* renamed from: h */
    public final boolean f10868h;

    /* renamed from: i */
    public final long f10869i;

    /* renamed from: j */
    public final boolean f10870j;

    /* renamed from: k */
    public int f10871k;

    /* renamed from: l */
    public boolean f10872l;

    /* renamed from: m */
    public boolean f10873m;

    /* renamed from: c.d.b.c.u$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/u$a.class */
    public static final class C3010a {

        /* renamed from: a */
        public C2830l f10874a;

        /* renamed from: b */
        public int f10875b = 15000;

        /* renamed from: c */
        public int f10876c = 50000;

        /* renamed from: d */
        public int f10877d = 50000;

        /* renamed from: e */
        public int f10878e = 2500;

        /* renamed from: f */
        public int f10879f = 5000;

        /* renamed from: g */
        public int f10880g = -1;

        /* renamed from: h */
        public boolean f10881h = true;

        /* renamed from: i */
        public int f10882i = 0;

        /* renamed from: j */
        public boolean f10883j = false;

        /* renamed from: k */
        public boolean f10884k;

        /* renamed from: a */
        public C3010a m28149a(C2830l lVar) {
            C2877e.m28731b(!this.f10884k);
            this.f10874a = lVar;
            return this;
        }

        /* renamed from: a */
        public C3009u m28150a() {
            C2877e.m28731b(!this.f10884k);
            this.f10884k = true;
            if (this.f10874a == null) {
                this.f10874a = new C2830l(true, MapMakerInternalMap.MAX_SEGMENTS);
            }
            return new C3009u(this.f10874a, this.f10875b, this.f10876c, this.f10877d, this.f10878e, this.f10879f, this.f10880g, this.f10881h, this.f10882i, this.f10883j);
        }
    }

    public C3009u(C2830l lVar, int i, int i2, int i3, int i4, int i5, int i6, boolean z, int i7, boolean z2) {
        m28161a(i4, 0, "bufferForPlaybackMs", "0");
        m28161a(i5, 0, "bufferForPlaybackAfterRebufferMs", "0");
        m28161a(i, i4, "minBufferAudioMs", "bufferForPlaybackMs");
        m28161a(i2, i4, "minBufferVideoMs", "bufferForPlaybackMs");
        m28161a(i, i5, "minBufferAudioMs", "bufferForPlaybackAfterRebufferMs");
        m28161a(i2, i5, "minBufferVideoMs", "bufferForPlaybackAfterRebufferMs");
        m28161a(i3, i, "maxBufferMs", "minBufferAudioMs");
        m28161a(i3, i2, "maxBufferMs", "minBufferVideoMs");
        m28161a(i7, 0, "backBufferDurationMs", "0");
        this.f10861a = lVar;
        this.f10862b = C2964r.m28357a(i);
        this.f10863c = C2964r.m28357a(i2);
        this.f10864d = C2964r.m28357a(i3);
        this.f10865e = C2964r.m28357a(i4);
        this.f10866f = C2964r.m28357a(i5);
        this.f10867g = i6;
        this.f10868h = z;
        this.f10869i = C2964r.m28357a(i7);
        this.f10870j = z2;
    }

    /* renamed from: a */
    public static int m28162a(int i) {
        switch (i) {
            case 0:
                return 36438016;
            case 1:
                return 3538944;
            case 2:
                return 32768000;
            case 3:
            case 4:
            case 5:
                return 131072;
            case 6:
                return 0;
            default:
                throw new IllegalArgumentException();
        }
    }

    /* renamed from: a */
    public static void m28161a(int i, int i2, String str, String str2) {
        boolean z = i >= i2;
        C2877e.m28733a(z, str + " cannot be less than " + str2);
    }

    /* renamed from: b */
    public static boolean m28154b(AbstractC2953m0[] m0VarArr, C2783g gVar) {
        for (int i = 0; i < m0VarArr.length; i++) {
            if (m0VarArr[i].mo28371e() == 2 && gVar.m29019a(i) != null) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public int m28157a(AbstractC2953m0[] m0VarArr, C2783g gVar) {
        int i = 0;
        for (int i2 = 0; i2 < m0VarArr.length; i2++) {
            i = i;
            if (gVar.m29019a(i2) != null) {
                i += m28162a(m0VarArr[i2].mo28371e());
            }
        }
        return i;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2760c0
    /* renamed from: a */
    public void mo28163a() {
        m28158a(true);
    }

    /* renamed from: a */
    public final void m28158a(boolean z) {
        this.f10871k = 0;
        this.f10872l = false;
        if (z) {
            this.f10861a.m28925e();
        }
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2760c0
    /* renamed from: a */
    public void mo28156a(AbstractC2953m0[] m0VarArr, TrackGroupArray trackGroupArray, C2783g gVar) {
        this.f10873m = m28154b(m0VarArr, gVar);
        int i = this.f10867g;
        int i2 = i;
        if (i == -1) {
            i2 = m28157a(m0VarArr, gVar);
        }
        this.f10871k = i2;
        this.f10861a.m28931a(i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // p131c.p161d.p170b.p188c.AbstractC2760c0
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo28160a(long r6, float r8) {
        /*
            r5 = this;
            r0 = r5
            c.d.b.c.f1.l r0 = r0.f10861a
            int r0 = r0.m28926d()
            r9 = r0
            r0 = r5
            int r0 = r0.f10871k
            r10 = r0
            r0 = 1
            r11 = r0
            r0 = r9
            r1 = r10
            if (r0 < r1) goto L_0x001f
            r0 = 1
            r9 = r0
            goto L_0x0022
        L_0x001f:
            r0 = 0
            r9 = r0
        L_0x0022:
            r0 = r5
            boolean r0 = r0.f10873m
            if (r0 == 0) goto L_0x0032
            r0 = r5
            long r0 = r0.f10863c
            r12 = r0
            goto L_0x0038
        L_0x0032:
            r0 = r5
            long r0 = r0.f10862b
            r12 = r0
        L_0x0038:
            r0 = r12
            r14 = r0
            r0 = r8
            r1 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0051
            r0 = r12
            r1 = r8
            long r0 = p131c.p161d.p170b.p188c.p203g1.C2885h0.m28684a(r0, r1)
            r1 = r5
            long r1 = r1.f10864d
            long r0 = java.lang.Math.min(r0, r1)
            r14 = r0
        L_0x0051:
            r0 = r6
            r1 = r14
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x007b
            r0 = r11
            r16 = r0
            r0 = r5
            boolean r0 = r0.f10868h
            if (r0 != 0) goto L_0x0072
            r0 = r9
            if (r0 != 0) goto L_0x006f
            r0 = r11
            r16 = r0
            goto L_0x0072
        L_0x006f:
            r0 = 0
            r16 = r0
        L_0x0072:
            r0 = r5
            r1 = r16
            r0.f10872l = r1
            goto L_0x008e
        L_0x007b:
            r0 = r6
            r1 = r5
            long r1 = r1.f10864d
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0089
            r0 = r9
            if (r0 == 0) goto L_0x008e
        L_0x0089:
            r0 = r5
            r1 = 0
            r0.f10872l = r1
        L_0x008e:
            r0 = r5
            boolean r0 = r0.f10872l
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.C3009u.mo28160a(long, float):boolean");
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2760c0
    /* renamed from: a */
    public boolean mo28159a(long j, float f, boolean z) {
        long b = C2885h0.m28650b(j, f);
        long j2 = z ? this.f10866f : this.f10865e;
        return j2 <= 0 || b >= j2 || (!this.f10868h && this.f10861a.m28926d() >= this.f10871k);
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2760c0
    /* renamed from: b */
    public boolean mo28155b() {
        return this.f10870j;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2760c0
    /* renamed from: c */
    public long mo28153c() {
        return this.f10869i;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2760c0
    /* renamed from: d */
    public void mo28152d() {
        m28158a(true);
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2760c0
    /* renamed from: e */
    public AbstractC2821e mo28151e() {
        return this.f10861a;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2760c0
    public void onPrepared() {
        m28158a(false);
    }
}
