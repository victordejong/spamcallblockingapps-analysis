package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.SparseArray;
import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dpt.class */
public final class dpt implements dnj, dqe, dqp, drx<dpx> {

    /* renamed from: A */
    private boolean[] f15299A;

    /* renamed from: B */
    private boolean f15300B;

    /* renamed from: D */
    private long f15302D;

    /* renamed from: F */
    private int f15304F;

    /* renamed from: G */
    private boolean f15305G;

    /* renamed from: H */
    private boolean f15306H;

    /* renamed from: a */
    private final Uri f15307a;

    /* renamed from: b */
    private final drp f15308b;

    /* renamed from: c */
    private final int f15309c;

    /* renamed from: d */
    private final cnz f15310d;

    /* renamed from: e */
    private final dqb f15311e;

    /* renamed from: f */
    private final dqf f15312f;

    /* renamed from: g */
    private final drn f15313g;

    /* renamed from: h */
    private final String f15314h;

    /* renamed from: i */
    private final long f15315i;

    /* renamed from: k */
    private final dqa f15317k;

    /* renamed from: q */
    private dqd f15323q;

    /* renamed from: r */
    private dnm f15324r;

    /* renamed from: s */
    private boolean f15325s;

    /* renamed from: t */
    private boolean f15326t;

    /* renamed from: u */
    private boolean f15327u;

    /* renamed from: v */
    private boolean f15328v;

    /* renamed from: w */
    private int f15329w;

    /* renamed from: x */
    private dqv f15330x;

    /* renamed from: y */
    private long f15331y;

    /* renamed from: z */
    private boolean[] f15332z;

    /* renamed from: j */
    private final dru f15316j = new dru("Loader:ExtractorMediaPeriod");

    /* renamed from: l */
    private final dsb f15318l = new dsb();

    /* renamed from: m */
    private final Runnable f15319m = new dps(this);

    /* renamed from: n */
    private final Runnable f15320n = new dpw(this);

    /* renamed from: o */
    private final cnz f15321o = new cnz();

    /* renamed from: E */
    private long f15303E = -9223372036854775807L;

    /* renamed from: p */
    private final SparseArray<dqn> f15322p = new SparseArray<>();

    /* renamed from: C */
    private long f15301C = -1;

    public dpt(Uri uri, drp drpVar, dnh[] dnhVarArr, int i, cnz cnzVar, dqb dqbVar, dqf dqfVar, drn drnVar, String str, int i2) {
        this.f15307a = uri;
        this.f15308b = drpVar;
        this.f15309c = i;
        this.f15310d = cnzVar;
        this.f15311e = dqbVar;
        this.f15312f = dqfVar;
        this.f15313g = drnVar;
        this.f15314h = str;
        this.f15315i = i2;
        this.f15317k = new dqa(dnhVarArr, this);
    }

    /* renamed from: a */
    private final void m8924a(dpx dpxVar) {
        long j;
        if (this.f15301C == -1) {
            j = dpxVar.f15349i;
            this.f15301C = j;
        }
    }

    /* renamed from: h */
    public final void m8915h() {
        if (this.f15306H || this.f15326t || this.f15324r == null || !this.f15325s) {
            return;
        }
        int size = this.f15322p.size();
        for (int i = 0; i < size; i++) {
            if (this.f15322p.valueAt(i).m8856d() == null) {
                return;
            }
        }
        this.f15318l.m8763b();
        dqs[] dqsVarArr = new dqs[size];
        this.f15299A = new boolean[size];
        this.f15332z = new boolean[size];
        this.f15331y = this.f15324r.mo8983b();
        for (int i2 = 0; i2 < size; i2++) {
            dlf m8856d = this.f15322p.valueAt(i2).m8856d();
            dqsVarArr[i2] = new dqs(m8856d);
            String str = m8856d.f14635c;
            boolean z = dsg.m8751b(str) || dsg.m8752a(str);
            this.f15299A[i2] = z;
            this.f15300B = z | this.f15300B;
        }
        this.f15330x = new dqv(dqsVarArr);
        this.f15326t = true;
        this.f15312f.mo8884a(new dqt(this.f15331y, this.f15324r.mo8989a()), null);
        this.f15323q.mo8892a((dqe) this);
    }

    /* renamed from: i */
    private final void m8913i() {
        dpx dpxVar = new dpx(this, this.f15307a, this.f15308b, this.f15317k, this.f15318l);
        if (this.f15326t) {
            drz.m8770b(m8909l());
            if (this.f15331y != -9223372036854775807L && this.f15303E >= this.f15331y) {
                this.f15305G = true;
                this.f15303E = -9223372036854775807L;
                return;
            }
            dpxVar.m8906a(this.f15324r.mo8988a(this.f15303E), this.f15303E);
            this.f15303E = -9223372036854775807L;
        }
        this.f15304F = m8911j();
        int i = this.f15309c;
        int i2 = i;
        if (i == -1) {
            i2 = (this.f15326t && this.f15301C == -1 && (this.f15324r == null || this.f15324r.mo8983b() == -9223372036854775807L)) ? 6 : 3;
        }
        this.f15316j.m8791a(dpxVar, this, i2);
    }

    /* renamed from: j */
    private final int m8911j() {
        int size = this.f15322p.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.f15322p.valueAt(i2).m8870a();
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: k */
    private final long m8910k() {
        char c = 0;
        int size = this.f15322p.size();
        for (int i = 0; i < size; i++) {
            c = Math.max((long) c, this.f15322p.valueAt(i).m8855e());
        }
        return c;
    }

    /* renamed from: l */
    private final boolean m8909l() {
        return this.f15303E != -9223372036854775807L;
    }

    /* renamed from: a */
    public final int m8927a(int i, dlg dlgVar, dmx dmxVar, boolean z) {
        return (this.f15328v || m8909l()) ? -3 : this.f15322p.valueAt(i).m8863a(dlgVar, dmxVar, z, this.f15305G, this.f15302D);
    }

    @Override // com.google.android.gms.internal.ads.drx
    /* renamed from: a */
    public final /* synthetic */ int mo8780a(dpx dpxVar, long j, long j2, IOException iOException) {
        int i;
        dpx dpxVar2 = dpxVar;
        m8924a(dpxVar2);
        if (this.f15310d != null && this.f15311e != null) {
            this.f15310d.post(new dpy(this, iOException));
        }
        if (iOException instanceof zzmz) {
            i = 3;
        } else {
            boolean z = m8911j() > this.f15304F;
            if (this.f15301C == -1 && (this.f15324r == null || this.f15324r.mo8983b() == -9223372036854775807L)) {
                this.f15302D = 0L;
                this.f15328v = this.f15326t;
                int size = this.f15322p.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.f15322p.valueAt(i2).m8859a(!this.f15326t || this.f15332z[i2]);
                }
                dpxVar2.m8906a(0L, 0L);
            }
            this.f15304F = m8911j();
            i = z ? 1 : 0;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0190, code lost:
        if (r15 != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0193, code lost:
        r0 = mo8888c(r12);
        r15 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x019f, code lost:
        r19 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01a7, code lost:
        if (r15 >= r10.length) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01ae, code lost:
        if (r10[r15] == null) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01b1, code lost:
        r11[r15] = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01b7, code lost:
        r15 = r15 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01c5, code lost:
        if (r12 != 0) goto L54;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    @Override // com.google.android.gms.internal.ads.dqe
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo8891a(com.google.android.gms.internal.ads.dre[] r8, boolean[] r9, com.google.android.gms.internal.ads.dqo[] r10, boolean[] r11, long r12) {
        /*
            Method dump skipped, instructions count: 459
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dpt.mo8891a(com.google.android.gms.internal.ads.dre[], boolean[], com.google.android.gms.internal.ads.dqo[], boolean[], long):long");
    }

    @Override // com.google.android.gms.internal.ads.dnj
    /* renamed from: a */
    public final dno mo8929a(int i, int i2) {
        dqn dqnVar = this.f15322p.get(i);
        dqn dqnVar2 = dqnVar;
        if (dqnVar == null) {
            dqnVar2 = new dqn(this.f15313g);
            dqnVar2.m8861a(this);
            this.f15322p.put(i, dqnVar2);
        }
        return dqnVar2;
    }

    @Override // com.google.android.gms.internal.ads.dnj
    /* renamed from: a */
    public final void mo8931a() {
        this.f15325s = true;
        this.f15321o.post(this.f15319m);
    }

    /* renamed from: a */
    public final void m8928a(int i, long j) {
        dqn valueAt = this.f15322p.valueAt(i);
        if (!this.f15305G || j <= valueAt.m8855e()) {
            valueAt.m8866a(j, true);
        } else {
            valueAt.m8854f();
        }
    }

    @Override // com.google.android.gms.internal.ads.dqp
    /* renamed from: a */
    public final void mo8846a(dlf dlfVar) {
        this.f15321o.post(this.f15319m);
    }

    @Override // com.google.android.gms.internal.ads.dnj
    /* renamed from: a */
    public final void mo8926a(dnm dnmVar) {
        this.f15324r = dnmVar;
        this.f15321o.post(this.f15319m);
    }

    @Override // com.google.android.gms.internal.ads.dqe
    /* renamed from: a */
    public final void mo8893a(dqd dqdVar, long j) {
        this.f15323q = dqdVar;
        this.f15318l.m8764a();
        m8913i();
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    @Override // com.google.android.gms.internal.ads.drx
    /* renamed from: a */
    public final /* synthetic */ void mo8781a(dpx dpxVar, long j, long j2) {
        m8924a(dpxVar);
        this.f15305G = true;
        if (this.f15331y == -9223372036854775807L) {
            long m8910k = m8910k();
            this.f15331y = m8910k == Long.MIN_VALUE ? (char) 0 : m8910k + 10000;
            this.f15312f.mo8884a(new dqt(this.f15331y, this.f15324r.mo8989a()), null);
        }
        this.f15323q.mo8845a((dqd) this);
    }

    @Override // com.google.android.gms.internal.ads.drx
    /* renamed from: a */
    public final /* synthetic */ void mo8779a(dpx dpxVar, long j, long j2, boolean z) {
        m8924a(dpxVar);
        if (z || this.f15329w <= 0) {
            return;
        }
        int size = this.f15322p.size();
        for (int i = 0; i < size; i++) {
            this.f15322p.valueAt(i).m8859a(this.f15332z[i]);
        }
        this.f15323q.mo8845a((dqd) this);
    }

    /* renamed from: a */
    public final boolean m8930a(int i) {
        return this.f15305G || (!m8909l() && this.f15322p.valueAt(i).m8857c());
    }

    @Override // com.google.android.gms.internal.ads.dqe, com.google.android.gms.internal.ads.dqr
    /* renamed from: a */
    public final boolean mo8844a(long j) {
        boolean z;
        if (this.f15305G || (this.f15326t && this.f15329w == 0)) {
            z = false;
        } else {
            z = this.f15318l.m8764a();
            if (!this.f15316j.m8796a()) {
                m8913i();
                z = true;
            }
        }
        return z;
    }

    /* renamed from: b */
    public final void m8923b() {
        this.f15316j.m8790a(new dpu(this, this.f15317k));
        this.f15321o.removeCallbacksAndMessages(null);
        this.f15306H = true;
    }

    @Override // com.google.android.gms.internal.ads.dqe
    /* renamed from: b */
    public final void mo8890b(long j) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v36, types: [com.google.android.gms.internal.ads.dqn] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // com.google.android.gms.internal.ads.dqe
    /* renamed from: c */
    public final long mo8888c(long j) {
        ?? r6 = j;
        if (!this.f15324r.mo8989a()) {
            r6 = 0;
        }
        this.f15302D = r6;
        int size = this.f15322p.size();
        boolean z = !m8909l();
        for (int i = 0; z && i < size; i++) {
            if (this.f15332z[i]) {
                z = this.f15322p.valueAt(i).m8866a((long) r6, false);
            }
        }
        if (!z) {
            this.f15303E = r6;
            this.f15305G = false;
            if (this.f15316j.m8796a()) {
                this.f15316j.m8789b();
            } else {
                for (int i2 = 0; i2 < size; i2++) {
                    this.f15322p.valueAt(i2).m8859a(this.f15332z[i2]);
                }
            }
        }
        this.f15328v = false;
        return r6;
    }

    @Override // com.google.android.gms.internal.ads.dqe
    /* renamed from: c */
    public final void mo8889c() {
        this.f15316j.m8795a(RecyclerView.UNDEFINED_DURATION);
    }

    @Override // com.google.android.gms.internal.ads.dqe
    /* renamed from: d */
    public final dqv mo8887d() {
        return this.f15330x;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    @Override // com.google.android.gms.internal.ads.dqe
    /* renamed from: e */
    public final long mo8886e() {
        char c;
        if (this.f15328v) {
            this.f15328v = false;
            c = this.f15302D;
        } else {
            c = 1;
        }
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // com.google.android.gms.internal.ads.dqe
    /* renamed from: f */
    public final long mo8885f() {
        char m8910k;
        char c;
        if (this.f15305G) {
            c = 0;
        } else if (m8909l()) {
            c = this.f15303E;
        } else {
            if (this.f15300B) {
                char c2 = 65535;
                int size = this.f15322p.size();
                for (int i = 0; i < size; i++) {
                    if (this.f15299A[i]) {
                        c2 = Math.min((long) c2, this.f15322p.valueAt(i).m8855e());
                    }
                }
                m8910k = c2;
            } else {
                m8910k = m8910k();
            }
            c = m8910k;
            if (m8910k == Long.MIN_VALUE) {
                c = this.f15302D;
            }
        }
        return c;
    }

    /* renamed from: g */
    public final void m8917g() {
        this.f15316j.m8795a(RecyclerView.UNDEFINED_DURATION);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    @Override // com.google.android.gms.internal.ads.dqe, com.google.android.gms.internal.ads.dqr
    /* renamed from: n_ */
    public final long mo8843n_() {
        return this.f15329w == 0 ? (char) 0 : mo8885f();
    }
}
