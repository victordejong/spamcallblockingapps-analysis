package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseArray;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eah.class */
public final class eah implements dxx, eas, ebd, eck<eak> {

    /* renamed from: A */
    private final Handler f48462A;

    /* renamed from: B */
    private final ebz f48463B;

    /* renamed from: D */
    private boolean f48465D;

    /* renamed from: E */
    private int f48466E;

    /* renamed from: H */
    private int f48469H;

    /* renamed from: a */
    final eao f48470a;

    /* renamed from: b */
    final eat f48471b;

    /* renamed from: d */
    final long f48473d;

    /* renamed from: f */
    final ean f48475f;

    /* renamed from: k */
    ear f48480k;

    /* renamed from: l */
    dya f48481l;

    /* renamed from: m */
    boolean f48482m;

    /* renamed from: n */
    boolean f48483n;

    /* renamed from: o */
    boolean f48484o;

    /* renamed from: p */
    ebi f48485p;

    /* renamed from: q */
    long f48486q;

    /* renamed from: r */
    boolean[] f48487r;

    /* renamed from: s */
    boolean[] f48488s;

    /* renamed from: t */
    boolean f48489t;

    /* renamed from: u */
    long f48490u;

    /* renamed from: v */
    boolean f48491v;

    /* renamed from: w */
    boolean f48492w;

    /* renamed from: x */
    private final Uri f48493x;

    /* renamed from: y */
    private final ecb f48494y;

    /* renamed from: z */
    private final int f48495z;

    /* renamed from: c */
    final String f48472c = null;

    /* renamed from: e */
    final ecm f48474e = new ecm("Loader:ExtractorMediaPeriod");

    /* renamed from: g */
    final ect f48476g = new ect();

    /* renamed from: C */
    private final Runnable f48464C = new eag(this);

    /* renamed from: h */
    final Runnable f48477h = new eaj(this);

    /* renamed from: i */
    final Handler f48478i = new Handler();

    /* renamed from: G */
    private long f48468G = -9223372036854775807L;

    /* renamed from: j */
    final SparseArray<ebb> f48479j = new SparseArray<>();

    /* renamed from: F */
    private long f48467F = -1;

    public eah(Uri uri, ecb ecbVar, dxv[] dxvVarArr, int i, Handler handler, eao eaoVar, eat eatVar, ebz ebzVar, String str, int i2) {
        this.f48493x = uri;
        this.f48494y = ecbVar;
        this.f48495z = i;
        this.f48462A = handler;
        this.f48470a = eaoVar;
        this.f48471b = eatVar;
        this.f48463B = ebzVar;
        this.f48473d = i2;
        this.f48475f = new ean(dxvVarArr, this);
    }

    /* renamed from: a */
    private final void m15372a(eak eakVar) {
        if (this.f48467F == -1) {
            this.f48467F = eakVar.f48499a;
        }
    }

    /* renamed from: h */
    private final void m15370h() {
        dya dyaVar;
        eak eakVar = new eak(this, this.f48493x, this.f48494y, this.f48475f, this.f48476g);
        if (this.f48483n) {
            ecr.m15247b(m15371g());
            long j = this.f48486q;
            if (j != -9223372036854775807L && this.f48468G >= j) {
                this.f48491v = true;
                this.f48468G = -9223372036854775807L;
                return;
            }
            eakVar.m15367a(this.f48481l.mo15422a(this.f48468G), this.f48468G);
            this.f48468G = -9223372036854775807L;
        }
        this.f48469H = m15369i();
        int i = this.f48495z;
        int i2 = i;
        if (i == -1) {
            i2 = (this.f48483n && this.f48467F == -1 && ((dyaVar = this.f48481l) == null || dyaVar.mo15417b() == -9223372036854775807L)) ? 6 : 3;
        }
        this.f48474e.m15269a(eakVar, this, i2);
    }

    /* renamed from: i */
    private final int m15369i() {
        int size = this.f48479j.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.f48479j.valueAt(i2).f48581c.m15342c();
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: j */
    private final long m15368j() {
        int size = this.f48479j.size();
        char c = 0;
        for (int i = 0; i < size; i++) {
            c = Math.max((long) c, this.f48479j.valueAt(i).f48581c.m15339f());
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.eas, com.google.android.gms.internal.ads.ebf
    /* renamed from: K_ */
    public final long mo15316K_() {
        if (this.f48466E == 0) {
            return Long.MIN_VALUE;
        }
        return mo15351e();
    }

    @Override // com.google.android.gms.internal.ads.eck
    /* renamed from: a */
    public final /* synthetic */ int mo15272a(eak eakVar, IOException iOException) {
        dya dyaVar;
        eak eakVar2 = eakVar;
        m15372a(eakVar2);
        Handler handler = this.f48462A;
        if (handler != null && this.f48470a != null) {
            handler.post(new eal(this, iOException));
        }
        if (iOException instanceof zznt) {
            return 3;
        }
        boolean z = m15369i() > this.f48469H;
        if (this.f48467F == -1 && ((dyaVar = this.f48481l) == null || dyaVar.mo15417b() == -9223372036854775807L)) {
            this.f48490u = 0L;
            this.f48484o = this.f48483n;
            int size = this.f48479j.size();
            for (int i = 0; i < size; i++) {
                this.f48479j.valueAt(i).m15326a(!this.f48483n || this.f48487r[i]);
            }
            eakVar2.m15367a(0L, 0L);
        }
        this.f48469H = m15369i();
        return z ? 1 : 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x017e, code lost:
        if (r15 != false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x018c, code lost:
        if (r12 != 0) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x018f, code lost:
        r0 = mo15354b(r12);
        r15 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x019b, code lost:
        r19 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01a3, code lost:
        if (r15 >= r10.length) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01aa, code lost:
        if (r10[r15] == null) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01ad, code lost:
        r11[r15] = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01b3, code lost:
        r15 = r15 + 1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // com.google.android.gms.internal.ads.eas
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo15356a(com.google.android.gms.internal.ads.ebu[] r8, boolean[] r9, com.google.android.gms.internal.ads.ebc[] r10, boolean[] r11, long r12) {
        /*
            Method dump skipped, instructions count: 449
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.eah.mo15356a(com.google.android.gms.internal.ads.ebu[], boolean[], com.google.android.gms.internal.ads.ebc[], boolean[], long):long");
    }

    @Override // com.google.android.gms.internal.ads.dxx
    /* renamed from: a */
    public final dyc mo15374a(int i) {
        ebb ebbVar = this.f48479j.get(i);
        ebb ebbVar2 = ebbVar;
        if (ebbVar == null) {
            ebbVar2 = new ebb(this.f48463B);
            ebbVar2.f48586h = this;
            this.f48479j.put(i, ebbVar2);
        }
        return ebbVar2;
    }

    @Override // com.google.android.gms.internal.ads.dxx
    /* renamed from: a */
    public final void mo15375a() {
        this.f48482m = true;
        this.f48478i.post(this.f48464C);
    }

    @Override // com.google.android.gms.internal.ads.dxx
    /* renamed from: a */
    public final void mo15373a(dya dyaVar) {
        this.f48481l = dyaVar;
        this.f48478i.post(this.f48464C);
    }

    @Override // com.google.android.gms.internal.ads.eas
    /* renamed from: a */
    public final void mo15358a(ear earVar, long j) {
        this.f48480k = earVar;
        this.f48476g.m15243a();
        m15370h();
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    @Override // com.google.android.gms.internal.ads.eck
    /* renamed from: a */
    public final /* synthetic */ void mo15273a(eak eakVar) {
        m15372a(eakVar);
        this.f48491v = true;
        if (this.f48486q == -9223372036854775807L) {
            long m15368j = m15368j();
            char c = m15368j == Long.MIN_VALUE ? (char) 0 : m15368j + 10000;
            this.f48486q = c;
            this.f48471b.mo15350a(new ebh(c, this.f48481l.mo15423a()), null);
        }
        this.f48480k.mo15317a((ear) this);
    }

    @Override // com.google.android.gms.internal.ads.eck
    /* renamed from: a */
    public final /* synthetic */ void mo15271a(eak eakVar, boolean z) {
        m15372a(eakVar);
        if (z || this.f48466E <= 0) {
            return;
        }
        int size = this.f48479j.size();
        for (int i = 0; i < size; i++) {
            this.f48479j.valueAt(i).m15326a(this.f48487r[i]);
        }
        this.f48480k.mo15317a((ear) this);
    }

    @Override // com.google.android.gms.internal.ads.eas, com.google.android.gms.internal.ads.ebf
    /* renamed from: a */
    public final boolean mo15315a(long j) {
        if (!this.f48491v) {
            if (this.f48483n && this.f48466E == 0) {
                return false;
            }
            boolean m15243a = this.f48476g.m15243a();
            if (!this.f48474e.m15270a()) {
                m15370h();
                m15243a = true;
            }
            return m15243a;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v35, types: [com.google.android.gms.internal.ads.ebb] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // com.google.android.gms.internal.ads.eas
    /* renamed from: b */
    public final long mo15354b(long j) {
        ?? r6 = j;
        if (!this.f48481l.mo15423a()) {
            r6 = 0;
        }
        this.f48490u = r6;
        int size = this.f48479j.size();
        boolean z = !m15371g();
        for (int i = 0; z && i < size; i++) {
            if (this.f48487r[i]) {
                z = this.f48479j.valueAt(i).m15331a((long) r6, false);
            }
        }
        if (!z) {
            this.f48468G = r6;
            this.f48491v = false;
            if (this.f48474e.m15270a()) {
                this.f48474e.m15268b();
            } else {
                for (int i2 = 0; i2 < size; i2++) {
                    this.f48479j.valueAt(i2).m15326a(this.f48487r[i2]);
                }
            }
        }
        this.f48484o = false;
        return r6;
    }

    @Override // com.google.android.gms.internal.ads.eas
    /* renamed from: b */
    public final void mo15355b() throws IOException {
        this.f48474e.m15267c();
    }

    @Override // com.google.android.gms.internal.ads.eas
    /* renamed from: c */
    public final ebi mo15353c() {
        return this.f48485p;
    }

    @Override // com.google.android.gms.internal.ads.eas
    /* renamed from: d */
    public final long mo15352d() {
        if (this.f48484o) {
            this.f48484o = false;
            return this.f48490u;
        }
        return -9223372036854775807L;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    @Override // com.google.android.gms.internal.ads.eas
    /* renamed from: e */
    public final long mo15351e() {
        char c;
        if (this.f48491v) {
            return Long.MIN_VALUE;
        }
        if (m15371g()) {
            return this.f48468G;
        }
        if (this.f48489t) {
            char c2 = 65535;
            int size = this.f48479j.size();
            int i = 0;
            while (true) {
                c = c2;
                if (i >= size) {
                    break;
                }
                char c3 = c2;
                if (this.f48488s[i]) {
                    c3 = Math.min((long) c2, this.f48479j.valueAt(i).f48581c.m15339f());
                }
                i++;
                c2 = c3;
            }
        } else {
            c = m15368j();
        }
        return c == Long.MIN_VALUE ? this.f48490u : c;
    }

    @Override // com.google.android.gms.internal.ads.ebd
    /* renamed from: f */
    public final void mo15318f() {
        this.f48478i.post(this.f48464C);
    }

    /* renamed from: g */
    public final boolean m15371g() {
        return this.f48468G != -9223372036854775807L;
    }
}
