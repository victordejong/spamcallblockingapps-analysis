package p012b.p076s.p078b.p079a;

import androidx.media2.exoplayer.external.source.TrackGroupArray;
import com.google.common.collect.MapMakerInternalMap;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p110y0.C1671j;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1678b;
import p012b.p076s.p078b.p079a.p111z0.C1688j;
/* renamed from: b.s.b.a.d */
/* loaded from: classes-dex2jar.jar:b/s/b/a/d.class */
public class C1222d implements AbstractC1645x {

    /* renamed from: a */
    public final C1688j f4900a;

    /* renamed from: b */
    public final long f4901b;

    /* renamed from: c */
    public final long f4902c;

    /* renamed from: d */
    public final long f4903d;

    /* renamed from: e */
    public final long f4904e;

    /* renamed from: f */
    public final long f4905f;

    /* renamed from: g */
    public final int f4906g;

    /* renamed from: h */
    public final boolean f4907h;

    /* renamed from: i */
    public final long f4908i;

    /* renamed from: j */
    public final boolean f4909j;

    /* renamed from: k */
    public int f4910k;

    /* renamed from: l */
    public boolean f4911l;

    /* renamed from: m */
    public boolean f4912m;

    public C1222d() {
        this(new C1688j(true, MapMakerInternalMap.MAX_SEGMENTS));
    }

    @Deprecated
    public C1222d(C1688j jVar) {
        this(jVar, 15000, 50000, 50000, 2500, 5000, -1, true, 0, false);
    }

    public C1222d(C1688j jVar, int i, int i2, int i3, int i4, int i5, int i6, boolean z, int i7, boolean z2) {
        m34193a(i4, 0, "bufferForPlaybackMs", "0");
        m34193a(i5, 0, "bufferForPlaybackAfterRebufferMs", "0");
        m34193a(i, i4, "minBufferAudioMs", "bufferForPlaybackMs");
        m34193a(i2, i4, "minBufferVideoMs", "bufferForPlaybackMs");
        m34193a(i, i5, "minBufferAudioMs", "bufferForPlaybackAfterRebufferMs");
        m34193a(i2, i5, "minBufferVideoMs", "bufferForPlaybackAfterRebufferMs");
        m34193a(i3, i, "maxBufferMs", "minBufferAudioMs");
        m34193a(i3, i2, "maxBufferMs", "minBufferVideoMs");
        m34193a(i7, 0, "backBufferDurationMs", "0");
        this.f4900a = jVar;
        this.f4901b = C1220c.m34196a(i);
        this.f4902c = C1220c.m34196a(i2);
        this.f4903d = C1220c.m34196a(i3);
        this.f4904e = C1220c.m34196a(i4);
        this.f4905f = C1220c.m34196a(i5);
        this.f4906g = i6;
        this.f4907h = z;
        this.f4908i = C1220c.m34196a(i7);
        this.f4909j = z2;
    }

    /* renamed from: a */
    public static void m34193a(int i, int i2, String str, String str2) {
        boolean z = i >= i2;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(" cannot be less than ");
        sb.append(str2);
        C1160a.m34519a(z, sb.toString());
    }

    /* renamed from: b */
    public static boolean m34190b(AbstractC1236h0[] h0VarArr, C1671j jVar) {
        for (int i = 0; i < h0VarArr.length; i++) {
            if (h0VarArr[i].mo34141e() == 2 && jVar.m32407a(i) != null) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public int m34191a(AbstractC1236h0[] h0VarArr, C1671j jVar) {
        int i = 0;
        for (int i2 = 0; i2 < h0VarArr.length; i2++) {
            i = i;
            if (jVar.m32407a(i2) != null) {
                i += C1167d0.m34458b(h0VarArr[i2].mo34141e());
            }
        }
        return i;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1645x
    /* renamed from: a */
    public void mo32498a() {
        m34192a(true);
    }

    /* renamed from: a */
    public final void m34192a(boolean z) {
        this.f4910k = 0;
        this.f4911l = false;
        if (z) {
            this.f4900a.m32374e();
        }
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1645x
    /* renamed from: a */
    public void mo32495a(AbstractC1236h0[] h0VarArr, TrackGroupArray trackGroupArray, C1671j jVar) {
        this.f4912m = m34190b(h0VarArr, jVar);
        int i = this.f4906g;
        int i2 = i;
        if (i == -1) {
            i2 = m34191a(h0VarArr, jVar);
        }
        this.f4910k = i2;
        this.f4900a.m32380a(i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // p012b.p076s.p078b.p079a.AbstractC1645x
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo32497a(long r6, float r8) {
        /*
            r5 = this;
            r0 = r5
            b.s.b.a.z0.j r0 = r0.f4900a
            int r0 = r0.m32375d()
            r9 = r0
            r0 = r5
            int r0 = r0.f4910k
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
            boolean r0 = r0.f4912m
            if (r0 == 0) goto L_0x0032
            r0 = r5
            long r0 = r0.f4902c
            r12 = r0
            goto L_0x0038
        L_0x0032:
            r0 = r5
            long r0 = r0.f4901b
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
            long r0 = p012b.p076s.p078b.p079a.p080a1.C1167d0.m34492a(r0, r1)
            r1 = r5
            long r1 = r1.f4903d
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
            boolean r0 = r0.f4907h
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
            r0.f4911l = r1
            goto L_0x008e
        L_0x007b:
            r0 = r6
            r1 = r5
            long r1 = r1.f4903d
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0089
            r0 = r9
            if (r0 == 0) goto L_0x008e
        L_0x0089:
            r0 = r5
            r1 = 0
            r0.f4911l = r1
        L_0x008e:
            r0 = r5
            boolean r0 = r0.f4911l
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.C1222d.mo32497a(long, float):boolean");
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1645x
    /* renamed from: a */
    public boolean mo32496a(long j, float f, boolean z) {
        long b = C1167d0.m34456b(j, f);
        long j2 = z ? this.f4905f : this.f4904e;
        return j2 <= 0 || b >= j2 || (!this.f4907h && this.f4900a.m32375d() >= this.f4910k);
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1645x
    /* renamed from: b */
    public boolean mo32494b() {
        return this.f4909j;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1645x
    /* renamed from: c */
    public long mo32493c() {
        return this.f4908i;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1645x
    /* renamed from: d */
    public void mo32492d() {
        m34192a(true);
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1645x
    /* renamed from: e */
    public AbstractC1678b mo32491e() {
        return this.f4900a;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1645x
    public void onPrepared() {
        m34192a(false);
    }
}
