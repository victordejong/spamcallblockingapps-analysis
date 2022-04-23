package p131c.p161d.p170b.p224d.p252g.p253a;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseArray;
import com.google.android.gms.internal.ads.zzho;
import com.google.android.gms.internal.ads.zzhq;
import com.google.android.gms.internal.ads.zzjk;
import com.google.android.gms.internal.ads.zzjv;
import com.google.android.gms.internal.ads.zzjx;
import com.google.android.gms.internal.ads.zzke;
import com.google.android.gms.internal.ads.zzkg;
import com.google.android.gms.internal.ads.zzmx;
import com.google.android.gms.internal.ads.zzmy;
import com.google.android.gms.internal.ads.zzna;
import com.google.android.gms.internal.ads.zznc;
import com.google.android.gms.internal.ads.zznh;
import com.google.android.gms.internal.ads.zznj;
import com.google.android.gms.internal.ads.zznn;
import com.google.android.gms.internal.ads.zznp;
import com.google.android.gms.internal.ads.zznq;
import com.google.android.gms.internal.ads.zzns;
import com.google.android.gms.internal.ads.zzok;
import com.google.android.gms.internal.ads.zzom;
import com.google.android.gms.internal.ads.zzot;
import com.google.android.gms.internal.ads.zzow;
import com.google.android.gms.internal.ads.zzoz;
import com.google.android.gms.internal.ads.zzpb;
import com.google.android.gms.internal.ads.zzpg;
import java.io.IOException;
/* renamed from: c.d.b.d.g.a.ge0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ge0.class */
public final class ge0 implements zzjx, zzmx, zznj, zzow<me0> {

    /* renamed from: A */
    public boolean[] f13167A;

    /* renamed from: B */
    public boolean f13168B;

    /* renamed from: D */
    public long f13170D;

    /* renamed from: F */
    public int f13172F;

    /* renamed from: G */
    public boolean f13173G;

    /* renamed from: H */
    public boolean f13174H;

    /* renamed from: a */
    public final Uri f13175a;

    /* renamed from: b */
    public final zzom f13176b;

    /* renamed from: c */
    public final int f13177c;

    /* renamed from: d */
    public final Handler f13178d;

    /* renamed from: e */
    public final zzmy f13179e;

    /* renamed from: f */
    public final zznc f13180f;

    /* renamed from: g */
    public final zzok f13181g;

    /* renamed from: h */
    public final String f13182h;

    /* renamed from: i */
    public final long f13183i;

    /* renamed from: k */
    public final le0 f13185k;

    /* renamed from: q */
    public zzna f13191q;

    /* renamed from: r */
    public zzke f13192r;

    /* renamed from: s */
    public boolean f13193s;

    /* renamed from: t */
    public boolean f13194t;

    /* renamed from: u */
    public boolean f13195u;

    /* renamed from: v */
    public boolean f13196v;

    /* renamed from: w */
    public int f13197w;

    /* renamed from: x */
    public zznp f13198x;

    /* renamed from: y */
    public long f13199y;

    /* renamed from: z */
    public boolean[] f13200z;

    /* renamed from: j */
    public final zzot f13184j = new zzot("Loader:ExtractorMediaPeriod");

    /* renamed from: l */
    public final zzpb f13186l = new zzpb();

    /* renamed from: m */
    public final Runnable f13187m = new ie0(this);

    /* renamed from: n */
    public final Runnable f13188n = new he0(this);

    /* renamed from: o */
    public final Handler f13189o = new Handler();

    /* renamed from: E */
    public long f13171E = -9223372036854775807L;

    /* renamed from: p */
    public final SparseArray<zznh> f13190p = new SparseArray<>();

    /* renamed from: C */
    public long f13169C = -1;

    public ge0(Uri uri, zzom zzomVar, zzjv[] zzjvVarArr, int i, Handler handler, zzmy zzmyVar, zznc zzncVar, zzok zzokVar, String str, int i2) {
        this.f13175a = uri;
        this.f13176b = zzomVar;
        this.f13177c = i;
        this.f13178d = handler;
        this.f13179e = zzmyVar;
        this.f13180f = zzncVar;
        this.f13181g = zzokVar;
        this.f13182h = str;
        this.f13183i = i2;
        this.f13185k = new le0(zzjvVarArr, this);
    }

    /* renamed from: f */
    public static /* synthetic */ String m26949f(ge0 ge0Var) {
        return ge0Var.f13182h;
    }

    /* renamed from: g */
    public static /* synthetic */ long m26947g(ge0 ge0Var) {
        return ge0Var.f13183i;
    }

    /* renamed from: h */
    public static /* synthetic */ Runnable m26945h(ge0 ge0Var) {
        return ge0Var.f13188n;
    }

    /* renamed from: i */
    public static /* synthetic */ Handler m26943i(ge0 ge0Var) {
        return ge0Var.f13189o;
    }

    /* renamed from: a */
    public final int m26956a(int i, zzhq zzhqVar, zzjk zzjkVar, boolean z) {
        if (this.f13196v || m26939m()) {
            return -3;
        }
        return this.f13190p.valueAt(i).m11780a(zzhqVar, zzjkVar, z, this.f13173G, this.f13170D);
    }

    @Override // com.google.android.gms.internal.ads.zzow
    /* renamed from: a */
    public final /* synthetic */ int mo11704a(me0 me0Var, long j, long j2, IOException iOException) {
        zzke zzkeVar;
        me0 me0Var2 = me0Var;
        m26954a(me0Var2);
        Handler handler = this.f13178d;
        if (!(handler == null || this.f13179e == null)) {
            handler.post(new je0(this, iOException));
        }
        if (iOException instanceof zzns) {
            return 3;
        }
        boolean z = m26941k() > this.f13172F;
        if (this.f13169C == -1 && ((zzkeVar = this.f13192r) == null || zzkeVar.mo11846c() == -9223372036854775807L)) {
            this.f13170D = 0L;
            this.f13196v = this.f13194t;
            int size = this.f13190p.size();
            for (int i = 0; i < size; i++) {
                this.f13190p.valueAt(i).m11776a(!this.f13194t || this.f13200z[i]);
            }
            me0Var2.m26628a(0L, 0L);
        }
        this.f13172F = m26941k();
        return z ? 1 : 0;
    }

    @Override // com.google.android.gms.internal.ads.zzmx, com.google.android.gms.internal.ads.zznl
    /* renamed from: a */
    public final long mo11766a() {
        if (this.f13197w == 0) {
            return Long.MIN_VALUE;
        }
        return mo11803c();
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x017f, code lost:
        if (r0 != false) goto L_0x0190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x018d, code lost:
        if (r12 != 0) goto L_0x0190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0190, code lost:
        r19 = mo11804b(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01a4, code lost:
        if (r15 >= r10.length) goto L_0x01ba;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01ab, code lost:
        if (r10[r15] == null) goto L_0x01b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01ae, code lost:
        r11[r15] = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01b4, code lost:
        r15 = r15 + 1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v1, types: [long] */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v5 */
    @Override // com.google.android.gms.internal.ads.zzmx
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo11805a(com.google.android.gms.internal.ads.zzob[] r8, boolean[] r9, com.google.android.gms.internal.ads.zznm[] r10, boolean[] r11, long r12) {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.ge0.mo11805a(com.google.android.gms.internal.ads.zzob[], boolean[], com.google.android.gms.internal.ads.zznm[], boolean[], long):long");
    }

    @Override // com.google.android.gms.internal.ads.zzjx
    /* renamed from: a */
    public final zzkg mo11891a(int i, int i2) {
        zznh zznhVar = this.f13190p.get(i);
        zznh zznhVar2 = zznhVar;
        if (zznhVar == null) {
            zznhVar2 = new zznh(this.f13181g);
            zznhVar2.m11778a(this);
            this.f13190p.put(i, zznhVar2);
        }
        return zznhVar2;
    }

    /* renamed from: a */
    public final void m26957a(int i, long j) {
        zznh valueAt = this.f13190p.valueAt(i);
        if (!this.f13173G || j <= valueAt.m11775b()) {
            valueAt.m11783a(j, true);
        } else {
            valueAt.m11770g();
        }
    }

    /* renamed from: a */
    public final void m26954a(me0 me0Var) {
        long j;
        if (this.f13169C == -1) {
            j = me0Var.f14167i;
            this.f13169C = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.zznj
    /* renamed from: a */
    public final void mo11767a(zzho zzhoVar) {
        this.f13189o.post(this.f13187m);
    }

    @Override // com.google.android.gms.internal.ads.zzjx
    /* renamed from: a */
    public final void mo11890a(zzke zzkeVar) {
        this.f13192r = zzkeVar;
        this.f13189o.post(this.f13187m);
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    /* renamed from: a */
    public final void mo11806a(zzna zznaVar, long j) {
        this.f13191q = zznaVar;
        this.f13186l.m11688b();
        m26946h();
    }

    @Override // com.google.android.gms.internal.ads.zzow
    /* renamed from: a */
    public final /* synthetic */ void mo11705a(me0 me0Var, long j, long j2) {
        m26954a(me0Var);
        this.f13173G = true;
        if (this.f13199y == -9223372036854775807L) {
            long l = m26940l();
            this.f13199y = l == Long.MIN_VALUE ? 0L : l + 10000;
            this.f13180f.mo11795a(new zznn(this.f13199y, this.f13192r.mo11848b()), null);
        }
        this.f13191q.mo11755a((zzna) this);
    }

    @Override // com.google.android.gms.internal.ads.zzow
    /* renamed from: a */
    public final /* synthetic */ void mo11703a(me0 me0Var, long j, long j2, boolean z) {
        m26954a(me0Var);
        if (!z && this.f13197w > 0) {
            int size = this.f13190p.size();
            for (int i = 0; i < size; i++) {
                this.f13190p.valueAt(i).m11776a(this.f13200z[i]);
            }
            this.f13191q.mo11755a((zzna) this);
        }
    }

    /* renamed from: a */
    public final boolean m26958a(int i) {
        if (!this.f13173G) {
            return !m26939m() && this.f13190p.valueAt(i).m11772e();
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzmx, com.google.android.gms.internal.ads.zznl
    /* renamed from: a */
    public final boolean mo11765a(long j) {
        if (this.f13173G) {
            return false;
        }
        if (this.f13194t && this.f13197w == 0) {
            return false;
        }
        boolean b = this.f13186l.m11688b();
        if (!this.f13184j.m11715a()) {
            m26946h();
            b = true;
        }
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    /* renamed from: b */
    public final long mo11804b(long j) {
        if (!this.f13192r.mo11848b()) {
            j = 0;
        }
        this.f13170D = j;
        int size = this.f13190p.size();
        boolean z = !m26939m();
        for (int i = 0; z && i < size; i++) {
            if (this.f13200z[i]) {
                z = this.f13190p.valueAt(i).m11783a(j, false);
            }
        }
        if (!z) {
            this.f13171E = j;
            this.f13173G = false;
            if (this.f13184j.m11715a()) {
                this.f13184j.m11708b();
            } else {
                for (int i2 = 0; i2 < size; i2++) {
                    this.f13190p.valueAt(i2).m11776a(this.f13200z[i2]);
                }
            }
        }
        this.f13196v = false;
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzjx
    /* renamed from: b */
    public final void mo11889b() {
        this.f13193s = true;
        this.f13189o.post(this.f13187m);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v5, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [long] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // com.google.android.gms.internal.ads.zzmx
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo11803c() {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.f13173G
            if (r0 == 0) goto L_0x000b
            r0 = -9223372036854775808
            return r0
        L_0x000b:
            r0 = r5
            boolean r0 = r0.m26939m()
            if (r0 == 0) goto L_0x0017
            r0 = r5
            long r0 = r0.f13171E
            return r0
        L_0x0017:
            r0 = r5
            boolean r0 = r0.f13168B
            if (r0 == 0) goto L_0x0061
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r6 = r0
            r0 = r5
            android.util.SparseArray<com.google.android.gms.internal.ads.zznh> r0 = r0.f13190p
            int r0 = r0.size()
            r8 = r0
            r0 = 0
            r9 = r0
        L_0x002d:
            r0 = r6
            r10 = r0
            r0 = r9
            r1 = r8
            if (r0 >= r1) goto L_0x0067
            r0 = r6
            r10 = r0
            r0 = r5
            boolean[] r0 = r0.f13167A
            r1 = r9
            r0 = r0[r1]
            if (r0 == 0) goto L_0x0058
            r0 = r6
            r1 = r5
            android.util.SparseArray<com.google.android.gms.internal.ads.zznh> r1 = r1.f13190p
            r2 = r9
            java.lang.Object r1 = r1.valueAt(r2)
            com.google.android.gms.internal.ads.zznh r1 = (com.google.android.gms.internal.ads.zznh) r1
            long r1 = r1.m11775b()
            long r0 = java.lang.Math.min(r0, r1)
            r10 = r0
        L_0x0058:
            int r9 = r9 + 1
            r0 = r10
            r6 = r0
            goto L_0x002d
        L_0x0061:
            r0 = r5
            long r0 = r0.m26940l()
            r10 = r0
        L_0x0067:
            r0 = r10
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0075
            r0 = r5
            long r0 = r0.f13170D
            return r0
        L_0x0075:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.ge0.mo11803c():long");
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    /* renamed from: c */
    public final void mo11802c(long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    /* renamed from: d */
    public final long mo11801d() {
        if (!this.f13196v) {
            return -9223372036854775807L;
        }
        this.f13196v = false;
        return this.f13170D;
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    /* renamed from: e */
    public final void mo11800e() throws IOException {
        this.f13184j.m11714a(Integer.MIN_VALUE);
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    /* renamed from: f */
    public final zznp mo11799f() {
        return this.f13198x;
    }

    /* renamed from: g */
    public final void m26948g() {
        this.f13184j.m11709a(new ke0(this, this.f13185k));
        this.f13189o.removeCallbacksAndMessages(null);
        this.f13174H = true;
    }

    /* renamed from: h */
    public final void m26946h() {
        zzke zzkeVar;
        me0 me0Var = new me0(this, this.f13175a, this.f13176b, this.f13185k, this.f13186l);
        if (this.f13194t) {
            zzoz.m11694b(m26939m());
            long j = this.f13199y;
            if (j == -9223372036854775807L || this.f13171E < j) {
                me0Var.m26628a(this.f13192r.mo11853a(this.f13171E), this.f13171E);
                this.f13171E = -9223372036854775807L;
            } else {
                this.f13173G = true;
                this.f13171E = -9223372036854775807L;
                return;
            }
        }
        this.f13172F = m26941k();
        int i = this.f13177c;
        int i2 = i;
        if (i == -1) {
            i2 = (this.f13194t && this.f13169C == -1 && ((zzkeVar = this.f13192r) == null || zzkeVar.mo11846c() == -9223372036854775807L)) ? 6 : 3;
        }
        this.f13184j.m11710a(me0Var, this, i2);
    }

    /* renamed from: i */
    public final void m26944i() throws IOException {
        this.f13184j.m11714a(Integer.MIN_VALUE);
    }

    /* renamed from: j */
    public final void m26942j() {
        if (!(this.f13174H || this.f13194t || this.f13192r == null || !this.f13193s)) {
            int size = this.f13190p.size();
            for (int i = 0; i < size; i++) {
                if (this.f13190p.valueAt(i).m11771f() == null) {
                    return;
                }
            }
            this.f13186l.m11687c();
            zznq[] zznqVarArr = new zznq[size];
            this.f13167A = new boolean[size];
            this.f13200z = new boolean[size];
            this.f13199y = this.f13192r.mo11846c();
            for (int i2 = 0; i2 < size; i2++) {
                zzho f = this.f13190p.valueAt(i2).m11771f();
                zznqVarArr[i2] = new zznq(f);
                String str = f.f28268f;
                boolean z = true;
                if (!zzpg.m11674b(str)) {
                    z = zzpg.m11675a(str);
                }
                this.f13167A[i2] = z;
                this.f13168B = z | this.f13168B;
            }
            this.f13198x = new zznp(zznqVarArr);
            this.f13194t = true;
            this.f13180f.mo11795a(new zznn(this.f13199y, this.f13192r.mo11848b()), null);
            this.f13191q.mo11796a((zzmx) this);
        }
    }

    /* renamed from: k */
    public final int m26941k() {
        int size = this.f13190p.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.f13190p.valueAt(i2).m11773d();
        }
        return i;
    }

    /* renamed from: l */
    public final long m26940l() {
        int size = this.f13190p.size();
        long j = Long.MIN_VALUE;
        for (int i = 0; i < size; i++) {
            j = Math.max(j, this.f13190p.valueAt(i).m11775b());
        }
        return j;
    }

    /* renamed from: m */
    public final boolean m26939m() {
        return this.f13171E != -9223372036854775807L;
    }
}
