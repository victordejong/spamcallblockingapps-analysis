package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/t52.class */
public final class t52 implements jo1 {

    /* renamed from: B */
    private ByteBuffer f29814B;

    /* renamed from: C */
    private ByteBuffer f29815C;

    /* renamed from: D */
    private byte[] f29816D;

    /* renamed from: E */
    private int f29817E;

    /* renamed from: G */
    private boolean f29819G;

    /* renamed from: H */
    private boolean f29820H;

    /* renamed from: I */
    private boolean f29821I;

    /* renamed from: J */
    private boolean f29822J;

    /* renamed from: M */
    private long f29825M;

    /* renamed from: N */
    private boolean f29826N;

    /* renamed from: O */
    private boolean f29827O;

    /* renamed from: P */
    private final nx1 f29828P;

    /* renamed from: a */
    private final lu1 f29829a;

    /* renamed from: b */
    private final cf2 f29830b;

    /* renamed from: c */
    private final x51[] f29831c;

    /* renamed from: h */
    private s42 f29836h;

    /* renamed from: k */
    private il1 f29839k;

    /* renamed from: l */
    private nw1 f29840l;

    /* renamed from: m */
    private nw1 f29841m;

    /* renamed from: n */
    private AudioTrack f29842n;

    /* renamed from: p */
    private oy1 f29844p;

    /* renamed from: q */
    private oy1 f29845q;

    /* renamed from: r */
    private final C6392d6 f29846r;

    /* renamed from: s */
    private long f29847s;

    /* renamed from: t */
    private long f29848t;

    /* renamed from: u */
    private long f29849u;

    /* renamed from: v */
    private boolean f29850v;

    /* renamed from: w */
    private boolean f29851w;

    /* renamed from: x */
    private long f29852x;

    /* renamed from: e */
    private final ConditionVariable f29833e = new ConditionVariable(true);

    /* renamed from: f */
    private final ks1 f29834f = new ks1(new p12(this, null));

    /* renamed from: d */
    private final x51[] f29832d = {new u62()};

    /* renamed from: y */
    private float f29853y = 1.0f;

    /* renamed from: o */
    private h83 f29843o = h83.f23825a;

    /* renamed from: K */
    private int f29823K = 0;

    /* renamed from: L */
    private gk3 f29824L = new gk3(0, 0.0f);

    /* renamed from: F */
    private int f29818F = -1;

    /* renamed from: z */
    private x51[] f29854z = new x51[0];

    /* renamed from: A */
    private ByteBuffer[] f29813A = new ByteBuffer[0];

    /* renamed from: g */
    private final ArrayDeque<oy1> f29835g = new ArrayDeque<>();

    /* renamed from: i */
    private final o02<zzds> f29837i = new o02<>(100);

    /* renamed from: j */
    private final o02<zzdv> f29838j = new o02<>(100);

    public t52(v21 v21Var, x51[] x51VarArr, boolean z) {
        nx1 nx1Var = new nx1(x51VarArr);
        this.f29828P = nx1Var;
        int i = C7101wa.f31475a;
        lu1 lu1Var = new lu1();
        this.f29829a = lu1Var;
        cf2 cf2Var = new cf2();
        this.f29830b = cf2Var;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new ya2(), lu1Var, cf2Var);
        Collections.addAll(arrayList, nx1Var.m12798a());
        this.f29831c = (x51[]) arrayList.toArray(new x51[0]);
        C6392d6 c6392d6 = C6392d6.f21486a;
        this.f29845q = new oy1(c6392d6, false, 0L, 0L, null);
        this.f29846r = c6392d6;
    }

    /* renamed from: A */
    private final oy1 m10835A() {
        oy1 oy1Var = this.f29844p;
        if (oy1Var == null) {
            oy1Var = !this.f29835g.isEmpty() ? this.f29835g.getLast() : this.f29845q;
        }
        return oy1Var;
    }

    /* renamed from: B */
    private final void m10834B(long j) {
        C6392d6 c6392d6;
        boolean z;
        hh1 hh1Var;
        if (m10833C()) {
            nx1 nx1Var = this.f29828P;
            c6392d6 = m10835A().f27785a;
            nx1Var.m12797b(c6392d6);
        } else {
            c6392d6 = C6392d6.f21486a;
        }
        if (m10833C()) {
            nx1 nx1Var2 = this.f29828P;
            z = m10835A().f27786b;
            nx1Var2.m12796c(z);
        } else {
            z = false;
        }
        this.f29835g.add(new oy1(c6392d6, z, Math.max(0L, j), this.f29841m.m12807a(m10830F()), null));
        x51[] x51VarArr = this.f29841m.f27348i;
        ArrayList arrayList = new ArrayList();
        for (x51 x51Var : x51VarArr) {
            if (x51Var.mo8465b()) {
                arrayList.add(x51Var);
            } else {
                x51Var.zzg();
            }
        }
        int size = arrayList.size();
        this.f29854z = (x51[]) arrayList.toArray(new x51[size]);
        this.f29813A = new ByteBuffer[size];
        m10802u();
        il1 il1Var = this.f29839k;
        if (il1Var != null) {
            hh1Var = ((v72) il1Var).f31090a.f31941F0;
            hh1Var.m14654h(z);
        }
    }

    /* renamed from: C */
    private final boolean m10833C() {
        if ("audio/raw".equals(this.f29841m.f27340a.f30511n)) {
            int i = this.f29841m.f27340a.f30494C;
            return true;
        }
        return false;
    }

    /* renamed from: D */
    private final boolean m10832D() {
        return this.f29842n != null;
    }

    /* renamed from: E */
    public final long m10831E() {
        nw1 nw1Var = this.f29841m;
        int i = nw1Var.f27342c;
        return this.f29847s / nw1Var.f27341b;
    }

    /* renamed from: F */
    public final long m10830F() {
        nw1 nw1Var = this.f29841m;
        int i = nw1Var.f27342c;
        return this.f29848t / nw1Var.f27343d;
    }

    /* renamed from: G */
    private static boolean m10829G(AudioTrack audioTrack) {
        return C7101wa.f31475a >= 29 && audioTrack.isOffloadedPlayback();
    }

    /* renamed from: H */
    private final void m10828H() {
        if (!this.f29820H) {
            this.f29820H = true;
            this.f29834f.m13822i(m10830F());
            this.f29842n.stop();
        }
    }

    /* renamed from: u */
    private final void m10802u() {
        int i = 0;
        while (true) {
            x51[] x51VarArr = this.f29854z;
            if (i < x51VarArr.length) {
                x51 x51Var = x51VarArr[i];
                x51Var.zzg();
                this.f29813A[i] = x51Var.mo9351a();
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: v */
    private final void m10801v(long j) {
        ByteBuffer byteBuffer;
        int length = this.f29854z.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.f29813A[i - 1];
            } else {
                ByteBuffer byteBuffer2 = this.f29814B;
                byteBuffer = byteBuffer2;
                if (byteBuffer2 == null) {
                    byteBuffer = x51.f31910a;
                }
            }
            if (i == length) {
                m10800w(byteBuffer, j);
            } else {
                x51 x51Var = this.f29854z[i];
                if (i > this.f29818F) {
                    x51Var.mo8464g(byteBuffer);
                }
                ByteBuffer mo9351a = x51Var.mo9351a();
                this.f29813A[i] = mo9351a;
                if (mo9351a.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i--;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x010e, code lost:
        if (r13 != (-6)) goto L35;
     */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m10800w(java.nio.ByteBuffer r7, long r8) {
        /*
            Method dump skipped, instructions count: 465
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.t52.m10800w(java.nio.ByteBuffer, long):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0044 -> B:5:0x000d). Please submit an issue!!! */
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m10799x() {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f29818F
            r1 = -1
            if (r0 != r1) goto L12
            r0 = r5
            r1 = 0
            r0.f29818F = r1
        Ld:
            r0 = 1
            r6 = r0
            goto L14
        L12:
            r0 = 0
            r6 = r0
        L14:
            r0 = r5
            int r0 = r0.f29818F
            r7 = r0
            r0 = r5
            com.google.android.gms.internal.ads.x51[] r0 = r0.f29854z
            r8 = r0
            r0 = r7
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto L51
            r0 = r8
            r1 = r7
            r0 = r0[r1]
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L32
            r0 = r8
            r0.mo9348e()
        L32:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m10801v(r1)
            r0 = r8
            boolean r0 = r0.mo9349d()
            if (r0 != 0) goto L44
            r0 = 0
            return r0
        L44:
            r0 = r5
            r1 = r5
            int r1 = r1.f29818F
            r2 = 1
            int r1 = r1 + r2
            r0.f29818F = r1
            goto Ld
        L51:
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f29815C
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L6b
            r0 = r5
            r1 = r8
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m10800w(r1, r2)
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f29815C
            if (r0 == 0) goto L6b
            r0 = 0
            return r0
        L6b:
            r0 = r5
            r1 = -1
            r0.f29818F = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.t52.m10799x():boolean");
    }

    /* renamed from: y */
    private final void m10798y() {
        if (!m10832D()) {
            return;
        }
        if (C7101wa.f31475a >= 21) {
            this.f29842n.setVolume(this.f29853y);
            return;
        }
        AudioTrack audioTrack = this.f29842n;
        float f = this.f29853y;
        audioTrack.setStereoVolume(f, f);
    }

    /* renamed from: z */
    private final void m10797z(C6392d6 c6392d6, boolean z) {
        oy1 m10835A = m10835A();
        if (!c6392d6.equals(m10835A.f27785a) || z != m10835A.f27786b) {
            oy1 oy1Var = new oy1(c6392d6, z, -9223372036854775807L, -9223372036854775807L, null);
            if (m10832D()) {
                this.f29844p = oy1Var;
            } else {
                this.f29845q = oy1Var;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    @Override // com.google.android.gms.internal.ads.jo1
    /* renamed from: a */
    public final long mo10822a(boolean z) {
        char c;
        if (!m10832D() || this.f29851w) {
            return Long.MIN_VALUE;
        }
        long min = Math.min(this.f29834f.m13829b(z), this.f29841m.m12807a(m10830F()));
        while (!this.f29835g.isEmpty() && min >= this.f29835g.getFirst().f27788d) {
            this.f29845q = this.f29835g.remove();
        }
        oy1 oy1Var = this.f29845q;
        long j = min - oy1Var.f27788d;
        if (oy1Var.f27785a.equals(C6392d6.f21486a)) {
            c = this.f29845q.f27787c + j;
        } else if (this.f29835g.isEmpty()) {
            c = this.f29828P.m12795d(j) + this.f29845q.f27787c;
        } else {
            oy1 first = this.f29835g.getFirst();
            c = first.f27787c - C7101wa.m9687j(first.f27788d - min, this.f29845q.f27785a.f21488c);
        }
        return c + this.f29841m.m12807a(this.f29828P.m12794e());
    }

    @Override // com.google.android.gms.internal.ads.jo1
    /* renamed from: b */
    public final void mo10821b(C6392d6 c6392d6) {
        m10797z(new C6392d6(C7101wa.m9692e0(c6392d6.f21488c, 0.1f, 8.0f), C7101wa.m9692e0(c6392d6.f21489d, 0.1f, 8.0f)), m10835A().f27786b);
    }

    @Override // com.google.android.gms.internal.ads.jo1
    /* renamed from: c */
    public final void mo10820c(h83 h83Var) {
        if (this.f29843o.equals(h83Var)) {
            return;
        }
        this.f29843o = h83Var;
        zzt();
    }

    @Override // com.google.android.gms.internal.ads.jo1
    /* renamed from: d */
    public final void mo10819d() {
        this.f29821I = true;
        if (m10832D()) {
            this.f29834f.m13828c();
            this.f29842n.play();
        }
    }

    @Override // com.google.android.gms.internal.ads.jo1
    /* renamed from: e */
    public final int mo10818e(C7021u4 c7021u4) {
        if (!"audio/raw".equals(c7021u4.f30511n)) {
            int i = C7101wa.f31475a;
            return 0;
        } else if (C7101wa.m9681p(c7021u4.f30494C)) {
            return c7021u4.f30494C != 2 ? 1 : 2;
        } else {
            int i2 = c7021u4.f30494C;
            StringBuilder sb = new StringBuilder(33);
            sb.append("Invalid PCM encoding: ");
            sb.append(i2);
            Log.w("DefaultAudioSink", sb.toString());
            return 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.jo1
    /* renamed from: f */
    public final void mo10817f(C7021u4 c7021u4, int i, int[] iArr) {
        if (!"audio/raw".equals(c7021u4.f30511n)) {
            int i2 = C7101wa.f31475a;
            String valueOf = String.valueOf(c7021u4);
            valueOf.length();
            throw new zzdr("Unable to configure passthrough for: ".concat(valueOf), c7021u4);
        }
        C7173y8.m8898a(C7101wa.m9681p(c7021u4.f30494C));
        int m9678s = C7101wa.m9678s(c7021u4.f30494C, c7021u4.f30492A);
        x51[] x51VarArr = this.f29831c;
        this.f29830b.m16060n(c7021u4.f30495D, c7021u4.f30496E);
        int[] iArr2 = iArr;
        if (C7101wa.f31475a < 21) {
            iArr2 = iArr;
            if (c7021u4.f30492A == 8) {
                iArr2 = iArr;
                if (iArr == null) {
                    int[] iArr3 = new int[6];
                    int i3 = 0;
                    while (true) {
                        iArr2 = iArr3;
                        if (i3 >= 6) {
                            break;
                        }
                        iArr3[i3] = i3;
                        i3++;
                    }
                }
            }
        }
        this.f29829a.m13416n(iArr2);
        w31 w31Var = new w31(c7021u4.f30493B, c7021u4.f30492A, c7021u4.f30494C);
        for (x51 x51Var : x51VarArr) {
            try {
                w31 mo9350c = x51Var.mo9350c(w31Var);
                if (true == x51Var.mo8465b()) {
                    w31Var = mo9350c;
                }
            } catch (zzdd e) {
                throw new zzdr(e, c7021u4);
            }
        }
        int i4 = w31Var.f31446d;
        int i5 = w31Var.f31444b;
        int m9679r = C7101wa.m9679r(w31Var.f31445c);
        int m9678s2 = C7101wa.m9678s(i4, w31Var.f31445c);
        if (i4 == 0) {
            String valueOf2 = String.valueOf(c7021u4);
            StringBuilder sb = new StringBuilder(valueOf2.length() + 48);
            sb.append("Invalid output encoding (mode=0) for: ");
            sb.append(valueOf2);
            throw new zzdr(sb.toString(), c7021u4);
        } else if (m9679r == 0) {
            String valueOf3 = String.valueOf(c7021u4);
            StringBuilder sb2 = new StringBuilder(valueOf3.length() + 54);
            sb2.append("Invalid output channel config (mode=0) for: ");
            sb2.append(valueOf3);
            throw new zzdr(sb2.toString(), c7021u4);
        } else {
            this.f29826N = false;
            nw1 nw1Var = new nw1(c7021u4, m9678s, 0, m9678s2, i5, m9679r, i4, 0, false, x51VarArr);
            if (m10832D()) {
                this.f29840l = nw1Var;
            } else {
                this.f29841m = nw1Var;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.jo1
    /* renamed from: g */
    public final boolean mo10816g() {
        boolean z = false;
        if (m10832D()) {
            if (this.f29819G) {
                if (mo10815h()) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.jo1
    /* renamed from: h */
    public final boolean mo10815h() {
        return m10832D() && this.f29834f.m13821j(m10830F());
    }

    @Override // com.google.android.gms.internal.ads.jo1
    /* renamed from: i */
    public final void mo10814i(float f) {
        if (this.f29853y != f) {
            this.f29853y = f;
            m10798y();
        }
    }

    @Override // com.google.android.gms.internal.ads.jo1
    /* renamed from: j */
    public final C6392d6 mo10813j() {
        return m10835A().f27785a;
    }

    @Override // com.google.android.gms.internal.ads.jo1
    /* renamed from: k */
    public final void mo10812k(int i) {
        if (this.f29823K != i) {
            this.f29823K = i;
            this.f29822J = i != 0;
            zzt();
        }
    }

    @Override // com.google.android.gms.internal.ads.jo1
    /* renamed from: l */
    public final boolean mo10811l(C7021u4 c7021u4) {
        return mo10818e(c7021u4) != 0;
    }

    @Override // com.google.android.gms.internal.ads.jo1
    /* renamed from: m */
    public final void mo10810m(boolean z) {
        m10797z(m10835A().f27785a, z);
    }

    @Override // com.google.android.gms.internal.ads.jo1
    /* renamed from: n */
    public final void mo10809n(il1 il1Var) {
        this.f29839k = il1Var;
    }

    @Override // com.google.android.gms.internal.ads.jo1
    /* renamed from: o */
    public final void mo10808o() {
        this.f29821I = false;
        if (!m10832D() || !this.f29834f.m13820k()) {
            return;
        }
        this.f29842n.pause();
    }

    @Override // com.google.android.gms.internal.ads.jo1
    /* renamed from: p */
    public final void mo10807p(gk3 gk3Var) {
        if (this.f29824L.equals(gk3Var)) {
            return;
        }
        int i = gk3Var.f23382a;
        if (this.f29842n != null) {
            int i2 = this.f29824L.f23382a;
        }
        this.f29824L = gk3Var;
    }

    @Override // com.google.android.gms.internal.ads.jo1
    /* renamed from: q */
    public final boolean mo10806q(ByteBuffer byteBuffer, long j, int i) {
        ByteBuffer byteBuffer2 = this.f29814B;
        C7173y8.m8898a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.f29840l != null) {
            if (!m10799x()) {
                return false;
            }
            nw1 nw1Var = this.f29840l;
            nw1 nw1Var2 = this.f29841m;
            int i2 = nw1Var2.f27342c;
            int i3 = nw1Var.f27342c;
            if (nw1Var2.f27346g == nw1Var.f27346g && nw1Var2.f27344e == nw1Var.f27344e && nw1Var2.f27345f == nw1Var.f27345f && nw1Var2.f27343d == nw1Var.f27343d) {
                this.f29841m = nw1Var;
                this.f29840l = null;
                if (m10829G(this.f29842n)) {
                    this.f29842n.setOffloadEndOfStream();
                    AudioTrack audioTrack = this.f29842n;
                    C7021u4 c7021u4 = this.f29841m.f27340a;
                    audioTrack.setOffloadDelayPadding(c7021u4.f30495D, c7021u4.f30496E);
                    this.f29827O = true;
                }
            } else {
                m10828H();
                if (mo10815h()) {
                    return false;
                }
                zzt();
            }
            m10834B(j);
        }
        if (!m10832D()) {
            try {
                this.f29833e.block();
                try {
                    nw1 nw1Var3 = this.f29841m;
                    Objects.requireNonNull(nw1Var3);
                    AudioTrack m12805c = nw1Var3.m12805c(false, this.f29843o, this.f29823K);
                    this.f29842n = m12805c;
                    if (m10829G(m12805c)) {
                        AudioTrack audioTrack2 = this.f29842n;
                        if (this.f29836h == null) {
                            this.f29836h = new s42(this);
                        }
                        this.f29836h.m11116a(audioTrack2);
                        AudioTrack audioTrack3 = this.f29842n;
                        C7021u4 c7021u42 = this.f29841m.f27340a;
                        audioTrack3.setOffloadDelayPadding(c7021u42.f30495D, c7021u42.f30496E);
                    }
                    this.f29823K = this.f29842n.getAudioSessionId();
                    ks1 ks1Var = this.f29834f;
                    AudioTrack audioTrack4 = this.f29842n;
                    nw1 nw1Var4 = this.f29841m;
                    int i4 = nw1Var4.f27342c;
                    ks1Var.m13830a(audioTrack4, false, nw1Var4.f27346g, nw1Var4.f27343d, nw1Var4.f27347h);
                    m10798y();
                    int i5 = this.f29824L.f23382a;
                    this.f29851w = true;
                } catch (zzds e) {
                    il1 il1Var = this.f29839k;
                    if (il1Var != null) {
                        il1Var.mo10079a(e);
                    }
                    throw e;
                }
            } catch (zzds e2) {
                this.f29837i.m12764a(e2);
                return false;
            }
        }
        this.f29837i.m12763b();
        if (this.f29851w) {
            this.f29852x = Math.max(0L, j);
            this.f29850v = false;
            this.f29851w = false;
            m10834B(j);
            if (this.f29821I) {
                mo10819d();
            }
        }
        if (!this.f29834f.m13826e(m10830F())) {
            return false;
        }
        if (this.f29814B == null) {
            C7173y8.m8898a(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            int i6 = this.f29841m.f27342c;
            if (this.f29844p != null) {
                if (!m10799x()) {
                    return false;
                }
                m10834B(j);
                this.f29844p = null;
            }
            long m10831E = this.f29852x + (((m10831E() - this.f29830b.m16058p()) * 1000000) / this.f29841m.f27340a.f30493B);
            if (!this.f29850v && Math.abs(m10831E - j) > 200000) {
                this.f29839k.mo10079a(new zzdu(j, m10831E));
                this.f29850v = true;
            }
            if (this.f29850v) {
                if (!m10799x()) {
                    return false;
                }
                long j2 = j - m10831E;
                this.f29852x += j2;
                this.f29850v = false;
                m10834B(j);
                il1 il1Var2 = this.f29839k;
                if (il1Var2 != null && j2 != 0) {
                    ((v72) il1Var2).f31090a.m9315L0();
                }
            }
            int i7 = this.f29841m.f27342c;
            this.f29847s += byteBuffer.remaining();
            this.f29814B = byteBuffer;
        }
        m10801v(j);
        if (!this.f29814B.hasRemaining()) {
            this.f29814B = null;
            return true;
        } else if (!this.f29834f.m13823h(m10830F())) {
            return false;
        } else {
            Log.w("DefaultAudioSink", "Resetting stalled audio track");
            zzt();
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.jo1
    public final void zzg() {
        this.f29850v = true;
    }

    @Override // com.google.android.gms.internal.ads.jo1
    public final void zzi() {
        if (this.f29819G || !m10832D() || !m10799x()) {
            return;
        }
        m10828H();
        this.f29819G = true;
    }

    @Override // com.google.android.gms.internal.ads.jo1
    public final void zzt() {
        if (m10832D()) {
            this.f29847s = 0L;
            this.f29848t = 0L;
            this.f29849u = 0L;
            this.f29827O = false;
            this.f29845q = new oy1(m10835A().f27785a, m10835A().f27786b, 0L, 0L, null);
            this.f29852x = 0L;
            this.f29844p = null;
            this.f29835g.clear();
            this.f29814B = null;
            this.f29815C = null;
            this.f29820H = false;
            this.f29819G = false;
            this.f29818F = -1;
            this.f29830b.m16059o();
            m10802u();
            if (this.f29834f.m13827d()) {
                this.f29842n.pause();
            }
            if (m10829G(this.f29842n)) {
                s42 s42Var = this.f29836h;
                Objects.requireNonNull(s42Var);
                s42Var.m11115b(this.f29842n);
            }
            AudioTrack audioTrack = this.f29842n;
            this.f29842n = null;
            if (C7101wa.f31475a < 21 && !this.f29822J) {
                this.f29823K = 0;
            }
            nw1 nw1Var = this.f29840l;
            if (nw1Var != null) {
                this.f29841m = nw1Var;
                this.f29840l = null;
            }
            this.f29834f.m13819l();
            this.f29833e.close();
            new mv1(this, "ExoPlayer:AudioTrackReleaseThread", audioTrack).start();
        }
        this.f29838j.m12763b();
        this.f29837i.m12763b();
    }

    @Override // com.google.android.gms.internal.ads.jo1
    public final void zzu() {
        zzt();
        for (x51 x51Var : this.f29831c) {
            x51Var.mo9347f();
        }
        x51[] x51VarArr = this.f29832d;
        int length = x51VarArr.length;
        for (int i = 0; i <= 0; i++) {
            x51VarArr[i].mo9347f();
        }
        this.f29821I = false;
        this.f29826N = false;
    }
}
