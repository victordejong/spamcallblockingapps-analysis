package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseArray;
import com.zhy.http.okhttp.OkHttpUtils;
import java.io.IOException;
/* renamed from: com.google.android.gms.internal.ads.eg */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/eg.class */
public final class C6440eg implements AbstractC6589ig, AbstractC6808od, AbstractC7145xh, AbstractC6922rg {

    /* renamed from: A */
    private boolean[] f22129A;

    /* renamed from: B */
    private boolean[] f22130B;

    /* renamed from: C */
    private boolean f22131C;

    /* renamed from: E */
    private long f22133E;

    /* renamed from: G */
    private int f22135G;

    /* renamed from: H */
    private boolean f22136H;

    /* renamed from: I */
    private boolean f22137I;

    /* renamed from: J */
    private final C6960sh f22138J;

    /* renamed from: d */
    private final Uri f22139d;

    /* renamed from: e */
    private final AbstractC6886qh f22140e;

    /* renamed from: f */
    private final int f22141f;

    /* renamed from: g */
    private final Handler f22142g;

    /* renamed from: h */
    private final AbstractC6477fg f22143h;

    /* renamed from: i */
    private final AbstractC6626jg f22144i;

    /* renamed from: j */
    private final long f22145j;

    /* renamed from: l */
    private final C6365cg f22147l;

    /* renamed from: r */
    private AbstractC6551hg f22153r;

    /* renamed from: s */
    private AbstractC7030ud f22154s;

    /* renamed from: t */
    private boolean f22155t;

    /* renamed from: u */
    private boolean f22156u;

    /* renamed from: v */
    private boolean f22157v;

    /* renamed from: w */
    private boolean f22158w;

    /* renamed from: x */
    private int f22159x;

    /* renamed from: y */
    private C7181yg f22160y;

    /* renamed from: z */
    private long f22161z;

    /* renamed from: k */
    private final C6293ai f22146k = new C6293ai("Loader:ExtractorMediaPeriod");

    /* renamed from: m */
    private final C6442ei f22148m = new C6442ei();

    /* renamed from: n */
    private final Runnable f22149n = new RunnableC7143xf(this);

    /* renamed from: o */
    private final Runnable f22150o = new RunnableC7180yf(this);

    /* renamed from: p */
    private final Handler f22151p = new Handler();

    /* renamed from: F */
    private long f22134F = -9223372036854775807L;

    /* renamed from: q */
    private final SparseArray<C6959sg> f22152q = new SparseArray<>();

    /* renamed from: D */
    private long f22132D = -1;

    public C6440eg(Uri uri, AbstractC6886qh abstractC6886qh, AbstractC6771nd[] abstractC6771ndArr, int i, Handler handler, AbstractC6477fg abstractC6477fg, AbstractC6626jg abstractC6626jg, C6960sh c6960sh, String str, int i2, byte[] bArr) {
        this.f22139d = uri;
        this.f22140e = abstractC6886qh;
        this.f22141f = i;
        this.f22142g = handler;
        this.f22143h = abstractC6477fg;
        this.f22144i = abstractC6626jg;
        this.f22138J = c6960sh;
        this.f22145j = i2;
        this.f22147l = new C6365cg(abstractC6771ndArr, this);
    }

    /* renamed from: H */
    public static /* synthetic */ void m15487H(C6440eg c6440eg) {
        if (c6440eg.f22137I || c6440eg.f22156u || c6440eg.f22154s == null || !c6440eg.f22155t) {
            return;
        }
        int size = c6440eg.f22152q.size();
        for (int i = 0; i < size; i++) {
            if (c6440eg.f22152q.valueAt(i).m11052i() == null) {
                return;
            }
        }
        c6440eg.f22148m.m15471b();
        C7144xg[] c7144xgArr = new C7144xg[size];
        c6440eg.f22130B = new boolean[size];
        c6440eg.f22129A = new boolean[size];
        c6440eg.f22161z = c6440eg.f22154s.mo10351b();
        for (int i2 = 0; i2 < size; i2++) {
            zzanm m11052i = c6440eg.f22152q.valueAt(i2).m11052i();
            c7144xgArr[i2] = new C7144xg(m11052i);
            String str = m11052i.f33555i;
            boolean z = true;
            if (!C6553hi.m14640b(str)) {
                z = C6553hi.m14641a(str);
            }
            c6440eg.f22130B[i2] = z;
            c6440eg.f22131C = z | c6440eg.f22131C;
        }
        c6440eg.f22160y = new C7181yg(c7144xgArr);
        c6440eg.f22156u = true;
        c6440eg.f22144i.mo11980f(new C7107wg(c6440eg.f22161z, c6440eg.f22154s.zza()), null);
        c6440eg.f22153r.mo11984a(c6440eg);
    }

    /* renamed from: q */
    private final void m15486q(C6328bg c6328bg) {
        long j;
        if (this.f22132D == -1) {
            j = c6328bg.f20439i;
            this.f22132D = j;
        }
    }

    /* renamed from: r */
    private final void m15485r() {
        AbstractC7030ud abstractC7030ud;
        C6328bg c6328bg = new C6328bg(this, this.f22139d, this.f22140e, this.f22147l, this.f22148m);
        if (this.f22156u) {
            C6367ci.m16039d(m15482u());
            long j = this.f22161z;
            if (j != -9223372036854775807L && this.f22134F >= j) {
                this.f22136H = true;
                this.f22134F = -9223372036854775807L;
                return;
            }
            c6328bg.m16380d(this.f22154s.mo10352a(this.f22134F), this.f22134F);
            this.f22134F = -9223372036854775807L;
        }
        this.f22135G = m15484s();
        int i = this.f22141f;
        int i2 = i;
        if (i == -1) {
            i2 = (this.f22156u && this.f22132D == -1 && ((abstractC7030ud = this.f22154s) == null || abstractC7030ud.mo10351b() == -9223372036854775807L)) ? 6 : 3;
        }
        this.f22146k.m16592e(c6328bg, this, i2);
    }

    /* renamed from: s */
    private final int m15484s() {
        int size = this.f22152q.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.f22152q.valueAt(i2).m11055f();
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: t */
    private final long m15483t() {
        int size = this.f22152q.size();
        char c = 0;
        for (int i = 0; i < size; i++) {
            c = Math.max((long) c, this.f22152q.valueAt(i).m11051j());
        }
        return c;
    }

    /* renamed from: u */
    private final boolean m15482u() {
        return this.f22134F != -9223372036854775807L;
    }

    /* renamed from: C */
    public final void m15492C() {
        this.f22146k.m16589h(new RunnableC7217zf(this, this.f22147l));
        this.f22151p.removeCallbacksAndMessages(null);
        this.f22137I = true;
    }

    /* renamed from: D */
    public final boolean m15491D(int i) {
        boolean z = false;
        if (!this.f22136H) {
            if (!m15482u()) {
                if (!this.f22152q.valueAt(i).m11053h()) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    /* renamed from: E */
    public final void m15490E() {
        this.f22146k.m16588i(Integer.MIN_VALUE);
    }

    /* renamed from: F */
    public final int m15489F(int i, C6954sb c6954sb, C6548hd c6548hd, boolean z) {
        if (this.f22158w || m15482u()) {
            return -3;
        }
        return this.f22152q.valueAt(i).m11048m(c6954sb, c6548hd, z, this.f22136H, this.f22133E);
    }

    /* renamed from: G */
    public final void m15488G(int i, long j) {
        C6959sg valueAt = this.f22152q.valueAt(i);
        if (!this.f22136H || j <= valueAt.m11051j()) {
            valueAt.m11049l(j, true);
        } else {
            valueAt.m11050k();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6922rg
    /* renamed from: a */
    public final void mo11475a(zzanm zzanmVar) {
        this.f22151p.post(this.f22149n);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6808od
    /* renamed from: b */
    public final void mo12696b(AbstractC7030ud abstractC7030ud) {
        this.f22154s = abstractC7030ud;
        this.f22151p.post(this.f22149n);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7145xh
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ int mo9180c(AbstractC7219zh abstractC7219zh, long j, long j2, IOException iOException) {
        int i;
        AbstractC7030ud abstractC7030ud;
        C6328bg c6328bg = (C6328bg) abstractC7219zh;
        m15486q(c6328bg);
        Handler handler = this.f22142g;
        if (handler != null) {
            handler.post(new RunnableC6291ag(this, iOException));
        }
        if (iOException instanceof zzath) {
            i = 3;
        } else {
            int m15484s = m15484s();
            int i2 = this.f22135G;
            if (this.f22132D == -1 && ((abstractC7030ud = this.f22154s) == null || abstractC7030ud.mo10351b() == -9223372036854775807L)) {
                this.f22133E = 0L;
                this.f22158w = this.f22156u;
                int size = this.f22152q.size();
                for (int i3 = 0; i3 < size; i3++) {
                    this.f22152q.valueAt(i3).m11056e(!this.f22156u || this.f22129A[i3]);
                }
                c6328bg.m16380d(0L, 0L);
            }
            this.f22135G = m15484s();
            if (m15484s > i2) {
                return 1;
            }
            i = 0;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6589ig, com.google.android.gms.internal.ads.AbstractC7070vg
    /* renamed from: d */
    public final boolean mo9595d(long j) {
        if (!this.f22136H) {
            if (this.f22156u && this.f22159x == 0) {
                return false;
            }
            boolean m15472a = this.f22148m.m15472a();
            if (!this.f22146k.m16591f()) {
                m15485r();
                m15472a = true;
            }
            return m15472a;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [com.google.android.gms.internal.ads.sg] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // com.google.android.gms.internal.ads.AbstractC6589ig
    /* renamed from: e */
    public final long mo13565e(long j) {
        ?? r6 = j;
        if (true != this.f22154s.zza()) {
            r6 = 0;
        }
        this.f22133E = r6;
        int size = this.f22152q.size();
        boolean m15482u = true ^ m15482u();
        int i = 0;
        while (true) {
            if (!m15482u) {
                this.f22134F = r6;
                this.f22136H = false;
                if (this.f22146k.m16591f()) {
                    this.f22146k.m16590g();
                } else {
                    for (int i2 = 0; i2 < size; i2++) {
                        this.f22152q.valueAt(i2).m11056e(this.f22129A[i2]);
                    }
                }
            } else if (i >= size) {
                break;
            } else {
                if (this.f22129A[i]) {
                    m15482u = this.f22152q.valueAt(i).m11049l(r6, false);
                }
                i++;
            }
        }
        this.f22158w = false;
        return r6;
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC7145xh
    /* renamed from: f */
    public final /* bridge */ /* synthetic */ void mo9179f(AbstractC7219zh abstractC7219zh, long j, long j2) {
        m15486q((C6328bg) abstractC7219zh);
        this.f22136H = true;
        if (this.f22161z == -9223372036854775807L) {
            long m15483t = m15483t();
            char c = m15483t == Long.MIN_VALUE ? (char) 0 : m15483t + OkHttpUtils.DEFAULT_MILLISECONDS;
            this.f22161z = c;
            this.f22144i.mo11980f(new C7107wg(c, this.f22154s.zza()), null);
        }
        this.f22153r.mo10332b(this);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7145xh
    /* renamed from: g */
    public final /* bridge */ /* synthetic */ void mo9178g(AbstractC7219zh abstractC7219zh, long j, long j2, boolean z) {
        m15486q((C6328bg) abstractC7219zh);
        if (z || this.f22159x <= 0) {
            return;
        }
        int size = this.f22152q.size();
        for (int i = 0; i < size; i++) {
            this.f22152q.valueAt(i).m11056e(this.f22129A[i]);
        }
        this.f22153r.mo10332b(this);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6808od
    /* renamed from: h */
    public final void mo12695h() {
        this.f22155t = true;
        this.f22151p.post(this.f22149n);
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0167, code lost:
        if (r15 != false) goto L47;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC6589ig
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo13564i(com.google.android.gms.internal.ads.C6329bh[] r8, boolean[] r9, com.google.android.gms.internal.ads.AbstractC6996tg[] r10, boolean[] r11, long r12) {
        /*
            Method dump skipped, instructions count: 429
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6440eg.mo13564i(com.google.android.gms.internal.ads.bh[], boolean[], com.google.android.gms.internal.ads.tg[], boolean[], long):long");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6589ig
    /* renamed from: j */
    public final void mo13563j() {
        this.f22146k.m16588i(Integer.MIN_VALUE);
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC6589ig
    /* renamed from: k */
    public final long mo13562k() {
        char c;
        if (this.f22136H) {
            return Long.MIN_VALUE;
        }
        if (m15482u()) {
            return this.f22134F;
        }
        if (this.f22131C) {
            int size = this.f22152q.size();
            char c2 = 65535;
            int i = 0;
            while (true) {
                c = c2;
                if (i >= size) {
                    break;
                }
                char c3 = c2;
                if (this.f22130B[i]) {
                    c3 = Math.min((long) c2, this.f22152q.valueAt(i).m11051j());
                }
                i++;
                c2 = c3;
            }
        } else {
            c = m15483t();
        }
        return c == Long.MIN_VALUE ? this.f22133E : c;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6589ig
    /* renamed from: l */
    public final long mo13561l() {
        if (this.f22158w) {
            this.f22158w = false;
            return this.f22133E;
        }
        return -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6589ig
    /* renamed from: m */
    public final C7181yg mo13560m() {
        return this.f22160y;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6589ig
    /* renamed from: n */
    public final void mo13559n(AbstractC6551hg abstractC6551hg, long j) {
        this.f22153r = abstractC6551hg;
        this.f22148m.m15472a();
        m15485r();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6589ig
    /* renamed from: o */
    public final void mo13558o(long j) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6808od
    /* renamed from: p */
    public final AbstractC7104wd mo12694p(int i, int i2) {
        C6959sg c6959sg = this.f22152q.get(i);
        C6959sg c6959sg2 = c6959sg;
        if (c6959sg == null) {
            c6959sg2 = new C6959sg(this.f22138J, null);
            c6959sg2.m11047n(this);
            this.f22152q.put(i, c6959sg2);
        }
        return c6959sg2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6589ig, com.google.android.gms.internal.ads.AbstractC7070vg
    public final long zza() {
        if (this.f22159x == 0) {
            return Long.MIN_VALUE;
        }
        return mo13562k();
    }
}
