package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.zhy.http.okhttp.OkHttpUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nl3.class */
public final class nl3 implements lk3, xq3, do3, jo3, zl3 {

    /* renamed from: d */
    private static final Map<String, String> f27171d;

    /* renamed from: e */
    private static final C7021u4 f27172e;

    /* renamed from: A */
    private ur3 f27173A;

    /* renamed from: C */
    private boolean f27175C;

    /* renamed from: E */
    private boolean f27177E;

    /* renamed from: F */
    private boolean f27178F;

    /* renamed from: G */
    private int f27179G;

    /* renamed from: I */
    private long f27181I;

    /* renamed from: K */
    private boolean f27183K;

    /* renamed from: L */
    private int f27184L;

    /* renamed from: M */
    private boolean f27185M;

    /* renamed from: N */
    private boolean f27186N;

    /* renamed from: O */
    private final zn3 f27187O;

    /* renamed from: P */
    private final tn3 f27188P;

    /* renamed from: f */
    private final Uri f27189f;

    /* renamed from: g */
    private final AbstractC7098w7 f27190g;

    /* renamed from: h */
    private final go2 f27191h;

    /* renamed from: i */
    private final vk3 f27192i;

    /* renamed from: j */
    private final gj2 f27193j;

    /* renamed from: k */
    private final jl3 f27194k;

    /* renamed from: l */
    private final long f27195l;

    /* renamed from: n */
    private final dl3 f27197n;

    /* renamed from: s */
    private kk3 f27202s;

    /* renamed from: t */
    private zzajg f27203t;

    /* renamed from: w */
    private boolean f27206w;

    /* renamed from: x */
    private boolean f27207x;

    /* renamed from: y */
    private boolean f27208y;

    /* renamed from: z */
    private ml3 f27209z;

    /* renamed from: m */
    private final lo3 f27196m = new lo3("ProgressiveMediaPeriod");

    /* renamed from: o */
    private final C6321b9 f27198o = new C6321b9(AbstractC7210z8.f32839a);

    /* renamed from: p */
    private final Runnable f27199p = new Runnable(this) { // from class: com.google.android.gms.internal.ads.el3

        /* renamed from: d */
        private final nl3 f22270d;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f22270d = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f22270d.m12853z();
        }
    };

    /* renamed from: q */
    private final Runnable f27200q = new Runnable(this) { // from class: com.google.android.gms.internal.ads.fl3

        /* renamed from: d */
        private final nl3 f22966d;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f22966d = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f22966d.m12854y();
        }
    };

    /* renamed from: r */
    private final Handler f27201r = C7101wa.m9715M(null);

    /* renamed from: v */
    private ll3[] f27205v = new ll3[0];

    /* renamed from: u */
    private am3[] f27204u = new am3[0];

    /* renamed from: J */
    private long f27182J = -9223372036854775807L;

    /* renamed from: H */
    private long f27180H = -1;

    /* renamed from: B */
    private long f27174B = -9223372036854775807L;

    /* renamed from: D */
    private int f27176D = 1;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("Icy-MetaData", "1");
        f27171d = Collections.unmodifiableMap(hashMap);
        C6947s4 c6947s4 = new C6947s4();
        c6947s4.m11144d("icy");
        c6947s4.m11129n("application/x-icy");
        f27172e = c6947s4.m11168I();
    }

    public nl3(Uri uri, AbstractC7098w7 abstractC7098w7, dl3 dl3Var, go2 go2Var, gj2 gj2Var, zn3 zn3Var, vk3 vk3Var, jl3 jl3Var, tn3 tn3Var, String str, int i, byte[] bArr) {
        this.f27189f = uri;
        this.f27190g = abstractC7098w7;
        this.f27191h = go2Var;
        this.f27193j = gj2Var;
        this.f27187O = zn3Var;
        this.f27192i = vk3Var;
        this.f27194k = jl3Var;
        this.f27188P = tn3Var;
        this.f27195l = i;
        this.f27197n = dl3Var;
    }

    /* renamed from: A */
    private final void m12885A(int i) {
        m12875K();
        ml3 ml3Var = this.f27209z;
        boolean[] zArr = ml3Var.f26651d;
        if (!zArr[i]) {
            C7021u4 m16209a = ml3Var.f26648a.m15681a(i).m16209a(0);
            this.f27192i.m9942l(C7174y9.m8887f(m16209a.f30511n), m16209a, 0, null, this.f27181I);
            zArr[i] = true;
        }
    }

    /* renamed from: B */
    private final void m12884B(int i) {
        m12875K();
        boolean[] zArr = this.f27209z.f26649b;
        if (!this.f27183K || !zArr[i] || this.f27204u[i].m16553C(false)) {
            return;
        }
        this.f27182J = 0L;
        this.f27183K = false;
        this.f27178F = true;
        this.f27181I = 0L;
        this.f27184L = 0;
        for (am3 am3Var : this.f27204u) {
            am3Var.m16530t(false);
        }
        kk3 kk3Var = this.f27202s;
        Objects.requireNonNull(kk3Var);
        kk3Var.mo8795k(this);
    }

    /* renamed from: C */
    private final boolean m12883C() {
        return this.f27178F || m12876J();
    }

    /* renamed from: D */
    private final yr3 m12882D(ll3 ll3Var) {
        int length = this.f27204u.length;
        for (int i = 0; i < length; i++) {
            if (ll3Var.equals(this.f27205v[i])) {
                return this.f27204u[i];
            }
        }
        tn3 tn3Var = this.f27188P;
        Looper looper = this.f27201r.getLooper();
        go2 go2Var = this.f27191h;
        gj2 gj2Var = this.f27193j;
        Objects.requireNonNull(looper);
        Objects.requireNonNull(go2Var);
        am3 am3Var = new am3(tn3Var, looper, go2Var, gj2Var, null);
        am3Var.m16546J(this);
        int i2 = length + 1;
        ll3[] ll3VarArr = (ll3[]) Arrays.copyOf(this.f27205v, i2);
        ll3VarArr[length] = ll3Var;
        this.f27205v = (ll3[]) C7101wa.m9718J(ll3VarArr);
        am3[] am3VarArr = (am3[]) Arrays.copyOf(this.f27204u, i2);
        am3VarArr[length] = am3Var;
        this.f27204u = (am3[]) C7101wa.m9718J(am3VarArr);
        return am3Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c4, code lost:
        if (r11.f27205v[r14].f26175b != false) goto L32;
     */
    /* renamed from: E */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m12853z() {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.nl3.m12853z():void");
    }

    /* renamed from: F */
    private final void m12880F(il3 il3Var) {
        long j;
        if (this.f27180H == -1) {
            j = il3Var.f24343l;
            this.f27180H = j;
        }
    }

    /* renamed from: G */
    private final void m12879G() {
        C6472fb c6472fb;
        long j;
        long j2;
        il3 il3Var = new il3(this, this.f27189f, this.f27190g, this.f27197n, this, this.f27198o);
        if (this.f27207x) {
            C7173y8.m8895d(m12876J());
            long j3 = this.f27174B;
            if (j3 != -9223372036854775807L && this.f27182J > j3) {
                this.f27185M = true;
                this.f27182J = -9223372036854775807L;
                return;
            }
            ur3 ur3Var = this.f27173A;
            Objects.requireNonNull(ur3Var);
            il3.m14340h(il3Var, ur3Var.mo9063b(this.f27182J).f29638a.f31338c, this.f27182J);
            for (am3 am3Var : this.f27204u) {
                am3Var.m16529u(this.f27182J);
            }
            this.f27182J = -9223372036854775807L;
        }
        this.f27184L = m12878H();
        long m13467h = this.f27196m.m13467h(il3Var, this, zn3.m8312a(this.f27176D));
        c6472fb = il3Var.f24342k;
        vk3 vk3Var = this.f27192i;
        j = il3Var.f24332a;
        dk3 dk3Var = new dk3(j, c6472fb, c6472fb.f22761a, Collections.emptyMap(), m13467h, 0L, 0L);
        j2 = il3Var.f24341j;
        vk3Var.m9950d(dk3Var, 1, -1, null, 0, null, j2, this.f27174B);
    }

    /* renamed from: H */
    private final int m12878H() {
        int i = 0;
        for (am3 am3Var : this.f27204u) {
            i += am3Var.m16528v();
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: I */
    public final long m12877I() {
        char c = 0;
        for (am3 am3Var : this.f27204u) {
            c = Math.max((long) c, am3Var.m16555A());
        }
        return c;
    }

    /* renamed from: J */
    private final boolean m12876J() {
        return this.f27182J != -9223372036854775807L;
    }

    @EnsuresNonNull({"trackState", "seekMap"})
    /* renamed from: K */
    private final void m12875K() {
        C7173y8.m8895d(this.f27207x);
        Objects.requireNonNull(this.f27209z);
        Objects.requireNonNull(this.f27173A);
    }

    /* renamed from: S */
    public final void m12867S() {
        if (this.f27207x) {
            for (am3 am3Var : this.f27204u) {
                am3Var.m16527w();
            }
        }
        this.f27196m.m13464k(this);
        this.f27201r.removeCallbacksAndMessages(null);
        this.f27202s = null;
        this.f27186N = true;
    }

    /* renamed from: T */
    public final boolean m12866T(int i) {
        return !m12883C() && this.f27204u[i].m16553C(this.f27185M);
    }

    /* renamed from: U */
    public final void m12865U(int i) {
        this.f27204u[i].m16526x();
        m12864V();
    }

    /* renamed from: V */
    final void m12864V() {
        this.f27196m.m13463l(zn3.m8312a(this.f27176D));
    }

    /* renamed from: W */
    public final int m12863W(int i, C7058v4 c7058v4, C7205z3 c7205z3, int i2) {
        if (m12883C()) {
            return -3;
        }
        m12885A(i);
        int m16552D = this.f27204u[i].m16552D(c7058v4, c7205z3, i2, this.f27185M);
        if (m16552D == -3) {
            m12884B(i);
        }
        return m16552D;
    }

    @Override // com.google.android.gms.internal.ads.zl3
    /* renamed from: a */
    public final void mo8340a(C7021u4 c7021u4) {
        this.f27201r.post(this.f27199p);
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: b */
    public final void mo8804b(long j) {
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: c */
    public final void mo8803c() {
        m12864V();
        if (!this.f27185M || this.f27207x) {
            return;
        }
        throw zzaha.zzb("Loading finished before preparation is complete.", null);
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: d */
    public final boolean mo8802d(long j) {
        if (this.f27185M || this.f27196m.m13469f() || this.f27183K) {
            return false;
        }
        if (this.f27207x && this.f27179G == 0) {
            return false;
        }
        boolean m16429a = this.f27198o.m16429a();
        if (!this.f27196m.m13466i()) {
            m12879G();
            m16429a = true;
        }
        return m16429a;
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: e */
    public final dv3 mo8801e() {
        m12875K();
        return this.f27209z.f26648a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: f */
    public final long mo8800f() {
        char c;
        m12875K();
        boolean[] zArr = this.f27209z.f26649b;
        if (this.f27185M) {
            return Long.MIN_VALUE;
        }
        if (m12876J()) {
            return this.f27182J;
        }
        if (this.f27208y) {
            int length = this.f27204u.length;
            int i = 0;
            ?? r0 = 9223372036854775807;
            while (true) {
                char c2 = r0;
                c = c2;
                if (i >= length) {
                    break;
                }
                char c3 = c2;
                if (zArr[i]) {
                    c3 = c2;
                    if (!this.f27204u[i].m16554B()) {
                        c3 = Math.min((long) c2, this.f27204u[i].m16555A());
                    }
                }
                i++;
                r0 = c3;
            }
        } else {
            c = 65535;
        }
        char c4 = c;
        if (c == Long.MAX_VALUE) {
            c4 = m12877I();
        }
        return c4 == Long.MIN_VALUE ? this.f27181I : c4;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0194  */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    @Override // com.google.android.gms.internal.ads.do3
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ com.google.android.gms.internal.ads.fo3 mo12862g(com.google.android.gms.internal.ads.ho3 r16, long r17, long r19, java.io.IOException r21, int r22) {
        /*
            Method dump skipped, instructions count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.nl3.mo12862g(com.google.android.gms.internal.ads.ho3, long, long, java.io.IOException, int):com.google.android.gms.internal.ads.fo3");
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: h */
    public final long mo8798h() {
        if (this.f27179G == 0) {
            return Long.MIN_VALUE;
        }
        return mo8800f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: i */
    public final long mo8797i(mm3[] mm3VarArr, boolean[] zArr, bm3[] bm3VarArr, boolean[] zArr2, long j) {
        boolean z;
        char c;
        int i;
        m12875K();
        ml3 ml3Var = this.f27209z;
        dv3 dv3Var = ml3Var.f26648a;
        boolean[] zArr3 = ml3Var.f26650c;
        int i2 = this.f27179G;
        for (int i3 = 0; i3 < mm3VarArr.length; i3++) {
            bm3 bm3Var = bm3VarArr[i3];
            if (bm3Var != null && (mm3VarArr[i3] == null || !zArr[i3])) {
                i = ((kl3) bm3Var).f25250a;
                C7173y8.m8895d(zArr3[i]);
                this.f27179G--;
                zArr3[i] = false;
                bm3VarArr[i3] = null;
            }
        }
        boolean z2 = !this.f27177E ? j != 0 : i2 == 0;
        int i4 = 0;
        while (true) {
            z = z2;
            if (i4 >= mm3VarArr.length) {
                break;
            }
            z2 = z;
            if (bm3VarArr[i4] == null) {
                mm3 mm3Var = mm3VarArr[i4];
                z2 = z;
                if (mm3Var != null) {
                    C7173y8.m8895d(mm3Var.m13152b() == 1);
                    C7173y8.m8895d(mm3Var.m13150d(0) == 0);
                    int m15680b = dv3Var.m15680b(mm3Var.m13153a());
                    C7173y8.m8895d(!zArr3[m15680b]);
                    this.f27179G++;
                    zArr3[m15680b] = true;
                    bm3VarArr[i4] = new kl3(this, m15680b);
                    zArr2[i4] = true;
                    z2 = z;
                    if (!z) {
                        am3 am3Var = this.f27204u[m15680b];
                        z2 = !am3Var.m16551E(j, true) && am3Var.m16525y() != 0;
                    }
                }
            }
            i4++;
        }
        if (this.f27179G == 0) {
            this.f27183K = false;
            this.f27178F = false;
            if (!this.f27196m.m13466i()) {
                am3[] am3VarArr = this.f27204u;
                int length = am3VarArr.length;
                int i5 = 0;
                while (true) {
                    c = j;
                    if (i5 >= length) {
                        break;
                    }
                    am3VarArr[i5].m16530t(false);
                    i5++;
                }
            } else {
                for (am3 am3Var2 : this.f27204u) {
                    am3Var2.m16547I();
                }
                this.f27196m.m13465j();
                c = j;
            }
        } else {
            c = j;
            if (z) {
                ?? mo8792n = mo8792n(j);
                int i6 = 0;
                while (true) {
                    c = mo8792n;
                    if (i6 >= bm3VarArr.length) {
                        break;
                    }
                    if (bm3VarArr[i6] != null) {
                        zArr2[i6] = true;
                    }
                    i6++;
                }
            }
        }
        this.f27177E = true;
        return c;
    }

    @Override // com.google.android.gms.internal.ads.lk3, com.google.android.gms.internal.ads.dm3
    /* renamed from: j */
    public final boolean mo8796j() {
        return this.f27196m.m13466i() && this.f27198o.m16425e();
    }

    @Override // com.google.android.gms.internal.ads.do3
    /* renamed from: k */
    public final /* bridge */ /* synthetic */ void mo12861k(ho3 ho3Var, long j, long j2, boolean z) {
        so3 so3Var;
        long j3;
        C6472fb c6472fb;
        long j4;
        long unused;
        il3 il3Var = (il3) ho3Var;
        so3Var = il3Var.f24334c;
        j3 = il3Var.f24332a;
        c6472fb = il3Var.f24342k;
        dk3 dk3Var = new dk3(j3, c6472fb, so3Var.m10971q(), so3Var.m10970r(), j, j2, so3Var.m10972p());
        unused = il3Var.f24332a;
        vk3 vk3Var = this.f27192i;
        j4 = il3Var.f24341j;
        vk3Var.m9946h(dk3Var, 1, -1, null, 0, null, j4, this.f27174B);
        if (!z) {
            m12880F(il3Var);
            for (am3 am3Var : this.f27204u) {
                am3Var.m16530t(false);
            }
            if (this.f27179G <= 0) {
                return;
            }
            kk3 kk3Var = this.f27202s;
            Objects.requireNonNull(kk3Var);
            kk3Var.mo8795k(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: l */
    public final void mo8794l(kk3 kk3Var, long j) {
        this.f27202s = kk3Var;
        this.f27198o.m16429a();
        m12879G();
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0045, code lost:
        if (r10.f31918g == 0) goto L34;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r8v4 */
    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo8793m(long r8, com.google.android.gms.internal.ads.C7134x6 r10) {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.nl3.mo8793m(long, com.google.android.gms.internal.ads.x6):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v46, types: [com.google.android.gms.internal.ads.am3[]] */
    /* JADX WARN: Type inference failed for: r0v47, types: [com.google.android.gms.internal.ads.am3] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: n */
    public final long mo8792n(long j) {
        m12875K();
        boolean[] zArr = this.f27209z.f26649b;
        ?? r6 = j;
        if (true != this.f27173A.mo9064a()) {
            r6 = 0;
        }
        this.f27178F = false;
        this.f27181I = r6;
        if (m12876J()) {
            this.f27182J = r6;
            return r6;
        }
        if (this.f27176D != 7) {
            int length = this.f27204u.length;
            for (int i = 0; i < length; i++) {
                if (this.f27204u[i].m16551E(r6, false) || (!zArr[i] && this.f27208y)) {
                }
            }
            return r6;
        }
        this.f27183K = false;
        this.f27182J = r6;
        this.f27185M = false;
        if (this.f27196m.m13466i()) {
            for (am3 am3Var : this.f27204u) {
                am3Var.m16547I();
            }
            this.f27196m.m13465j();
        } else {
            this.f27196m.m13468g();
            for (am3 am3Var2 : this.f27204u) {
                am3Var2.m16530t(false);
            }
        }
        return r6;
    }

    @Override // com.google.android.gms.internal.ads.xq3
    /* renamed from: o */
    public final yr3 mo8690o(int i, int i2) {
        return m12882D(new ll3(i, false));
    }

    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    @Override // com.google.android.gms.internal.ads.do3
    /* renamed from: p */
    public final /* bridge */ /* synthetic */ void mo12860p(ho3 ho3Var, long j, long j2) {
        so3 so3Var;
        long j3;
        C6472fb c6472fb;
        long j4;
        ur3 ur3Var;
        long unused;
        if (this.f27174B == -9223372036854775807L && (ur3Var = this.f27173A) != null) {
            boolean mo9064a = ur3Var.mo9064a();
            long m12877I = m12877I();
            char c = m12877I == Long.MIN_VALUE ? (char) 0 : m12877I + OkHttpUtils.DEFAULT_MILLISECONDS;
            this.f27174B = c;
            this.f27194k.mo10989j(c, mo9064a, this.f27175C);
        }
        il3 il3Var = (il3) ho3Var;
        so3Var = il3Var.f24334c;
        j3 = il3Var.f24332a;
        c6472fb = il3Var.f24342k;
        dk3 dk3Var = new dk3(j3, c6472fb, so3Var.m10971q(), so3Var.m10970r(), j, j2, so3Var.m10972p());
        unused = il3Var.f24332a;
        vk3 vk3Var = this.f27192i;
        j4 = il3Var.f24341j;
        vk3Var.m9948f(dk3Var, 1, -1, null, 0, null, j4, this.f27174B);
        m12880F(il3Var);
        this.f27185M = true;
        kk3 kk3Var = this.f27202s;
        Objects.requireNonNull(kk3Var);
        kk3Var.mo8795k(this);
    }

    @Override // com.google.android.gms.internal.ads.lk3
    /* renamed from: q */
    public final void mo8791q(long j, boolean z) {
        m12875K();
        if (m12876J()) {
            return;
        }
        boolean[] zArr = this.f27209z.f26650c;
        int length = this.f27204u.length;
        for (int i = 0; i < length; i++) {
            this.f27204u[i].m16548H(j, false, zArr[i]);
        }
    }

    @Override // com.google.android.gms.internal.ads.xq3
    /* renamed from: r */
    public final void mo8689r(ur3 ur3Var) {
        this.f27201r.post(new Runnable(this, ur3Var) { // from class: com.google.android.gms.internal.ads.hl3

            /* renamed from: d */
            private final nl3 f23969d;

            /* renamed from: e */
            private final ur3 f23970e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23969d = this;
                this.f23970e = ur3Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f23969d.m12855x(this.f23970e);
            }
        });
    }

    /* renamed from: s */
    public final int m12859s(int i, long j) {
        if (m12883C()) {
            return 0;
        }
        m12885A(i);
        am3 am3Var = this.f27204u[i];
        int m16550F = am3Var.m16550F(j, this.f27185M);
        am3Var.m16549G(m16550F);
        if (m16550F != 0) {
            return m16550F;
        }
        m12884B(i);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.xq3
    /* renamed from: t */
    public final void mo8688t() {
        this.f27206w = true;
        this.f27201r.post(this.f27199p);
    }

    /* renamed from: u */
    public final yr3 m12858u() {
        return m12882D(new ll3(0, true));
    }

    @Override // com.google.android.gms.internal.ads.jo3
    /* renamed from: w */
    public final void mo12856w() {
        for (am3 am3Var : this.f27204u) {
            am3Var.m16531s();
        }
        this.f27197n.mo15773b();
    }

    /* renamed from: x */
    public final /* synthetic */ void m12855x(ur3 ur3Var) {
        this.f27173A = this.f27203t == null ? ur3Var : new tr3(-9223372036854775807L, 0L);
        this.f27174B = ur3Var.zzg();
        int i = 1;
        boolean z = false;
        if (this.f27180H == -1) {
            z = false;
            if (ur3Var.zzg() == -9223372036854775807L) {
                z = true;
            }
        }
        this.f27175C = z;
        if (true == z) {
            i = 7;
        }
        this.f27176D = i;
        this.f27194k.mo10989j(this.f27174B, ur3Var.mo9064a(), this.f27175C);
        if (!this.f27207x) {
            m12853z();
        }
    }

    /* renamed from: y */
    public final /* synthetic */ void m12854y() {
        if (!this.f27186N) {
            kk3 kk3Var = this.f27202s;
            Objects.requireNonNull(kk3Var);
            kk3Var.mo8795k(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.lk3
    public final long zzg() {
        if (this.f27178F) {
            if (!this.f27185M && m12878H() <= this.f27184L) {
                return -9223372036854775807L;
            }
            this.f27178F = false;
            return this.f27181I;
        }
        return -9223372036854775807L;
    }
}
